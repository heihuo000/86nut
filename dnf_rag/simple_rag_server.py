#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版DNF知识库RAG服务器
使用本地TF-IDF检索和通义千问API
"""

import os
import json
import sys
from typing import List, Dict, Any, Optional
from datetime import datetime

# 导入简化版检索器
from simple_indexer import SimpleDNFRetriever

# 导入API客户端
try:
    import dashscope
    from dashscope import Generation
    DASHSCOPE_AVAILABLE = True
except ImportError:
    DASHSCOPE_AVAILABLE = False
    print("警告: dashscope 未安装，将无法使用通义千问API", file=sys.stderr)

try:
    import openai
    OPENAI_AVAILABLE = True
except ImportError:
    OPENAI_AVAILABLE = False
    print("警告: openai 未安装，将无法使用OpenAI API", file=sys.stderr)

# ModelScope 支持 (使用 OpenAI 兼容接口)
MODELSCOPE_AVAILABLE = OPENAI_AVAILABLE  # ModelScope 使用 OpenAI 兼容接口


class SimpleDNFRAGServer:
    """简化版DNF知识库RAG服务器"""
    
    def __init__(self, index_path: str, config_path: str = "config/config.json"):
        self.index_path = index_path
        self.config = self.load_config(config_path)
        self.retriever = None
        self.init_retriever()
        self.init_llm()
    
    def load_config(self, config_path: str) -> Dict[str, Any]:
        """加载配置文件"""
        try:
            with open(config_path, 'r', encoding='utf-8') as f:
                config = json.load(f)
            return config
        except Exception as e:
            print(f"警告: 无法加载配置文件 {config_path}: {e}")
            return self.get_default_config()
    
    def get_default_config(self) -> Dict[str, Any]:
        """获取默认配置"""
        return {
            "retrieval_k": 5,
            "max_context_length": 4000,
            "llm_model": "qwen-turbo",
            "temperature": 0.1
        }
    
    def init_retriever(self):
        """初始化检索器"""
        try:
            self.retriever = SimpleDNFRetriever(self.index_path)
            print("[OK] 检索器初始化成功", file=sys.stderr)  # 输出到stderr，ASCII日志
        except Exception as e:
            print(f"[ERROR] 检索器初始化失败: {e}", file=sys.stderr)
            raise
    
    def init_llm(self):
        """初始化大语言模型"""
        # 设置API密钥
        dashscope_key = os.getenv('DASHSCOPE_API_KEY')
        openai_key = os.getenv('OPENAI_API_KEY')
        modelscope_key = os.getenv('MODELSCOPE_API_KEY')
        
        if dashscope_key and DASHSCOPE_AVAILABLE:
            dashscope.api_key = dashscope_key
            self.llm_provider = 'dashscope'
            print("[OK] DashScope API初始化成功", file=sys.stderr)
        elif modelscope_key and MODELSCOPE_AVAILABLE:
            self.llm_provider = 'modelscope'
            self.modelscope_api_key = modelscope_key
            print("[OK] ModelScope API初始化成功", file=sys.stderr)
        elif openai_key and OPENAI_AVAILABLE:
            openai.api_key = openai_key
            self.llm_provider = 'openai'
            print("[OK] OpenAI API初始化成功", file=sys.stderr)
        else:
            self.llm_provider = None
            print("[WARN] 未配置API密钥，将只提供检索功能", file=sys.stderr)
    
    def vector_search(self, query: str, k: int = None) -> List[Dict[str, Any]]:
        """向量检索"""
        if not self.retriever:
            raise ValueError("检索器未初始化")
        
        k = k or self.config.get('retrieval_k', 5)
        results = self.retriever.search(query, k)
        
        print(f"[INFO] 检索到 {len(results)} 个相关文档", file=sys.stderr)
        return results
    
    def build_prompt(self, query: str, search_results: List[Dict[str, Any]]) -> str:
        """构建提示词"""
        if not search_results:
            return f"""请回答以下关于DNF文件修改的问题：

问题：{query}

由于没有找到相关的知识库内容，请基于你的通用知识回答。如果不确定，请说明需要更多信息。"""
        
        # 构建上下文
        context_parts = []
        for i, result in enumerate(search_results, 1):
            source = result['metadata'].get('source', '未知来源')
            content = result['content'][:800]  # 限制长度
            score = result.get('score', 0)
            
            context_parts.append(f"""
【参考资料 {i}】(相关度: {score:.3f})
来源: {source}
内容: {content}
""")
        
        context = "\n".join(context_parts)
        
        prompt = f"""你是一个专业的DNF文件修改助手。请基于以下知识库内容回答用户问题。

知识库内容：
{context}

用户问题：{query}

请根据知识库内容提供准确、详细的回答。如果知识库内容不足以完全回答问题，请说明需要哪些额外信息。

回答要求：
1. 优先使用知识库中的信息
2. 提供具体的操作步骤或代码示例
3. 注意PVF文件格式的严格要求
4. 如果涉及文件修改，请提醒备份原文件

回答："""
        
        return prompt
    
    def generate_answer(self, prompt: str) -> str:
        """生成回答"""
        if not self.llm_provider:
            return "抱歉，未配置API密钥，无法生成回答。请设置 DASHSCOPE_API_KEY、MODELSCOPE_API_KEY 或 OPENAI_API_KEY 环境变量。"
        
        try:
            if self.llm_provider == 'dashscope':
                return self._generate_with_dashscope(prompt)
            elif self.llm_provider == 'modelscope':
                return self._generate_with_modelscope(prompt)
            elif self.llm_provider == 'openai':
                return self._generate_with_openai(prompt)
        except Exception as e:
            return f"生成回答时出错: {e}"
    
    def _generate_with_dashscope(self, prompt: str) -> str:
        """使用通义千问生成回答"""
        response = Generation.call(
            model=self.config.get('llm_model', 'qwen-turbo'),
            prompt=prompt,
            temperature=self.config.get('temperature', 0.1),
            max_tokens=2000
        )
        
        if response.status_code == 200:
            return response.output.text
        else:
            return f"API调用失败: {response.message}"
    
    def _generate_with_openai(self, prompt: str) -> str:
        """使用OpenAI API生成回答"""
        try:
            # 兼容新版本的OpenAI API
            client = openai.OpenAI(api_key=self.config.get('openai_api_key'))
            response = client.chat.completions.create(
                model=self.config.get('openai_model', 'gpt-3.5-turbo'),
                messages=[
                    {"role": "system", "content": "你是一个DNF游戏文件修改专家，请根据提供的资料回答问题。"},
                    {"role": "user", "content": prompt}
                ],
                max_tokens=self.config.get('max_tokens', 1000),
                temperature=self.config.get('temperature', 0.7)
            )
            return response.choices[0].message.content
        except Exception as e:
            return f"OpenAI API调用失败: {e}"
    
    def _generate_with_modelscope(self, prompt: str) -> str:
        """使用ModelScope API生成回答"""
        try:
            # 获取 ModelScope 配置
            modelscope_config = self.config.get('modelscope', {})
            
            # 使用 OpenAI 兼容接口调用 ModelScope
            client = openai.OpenAI(
                base_url=modelscope_config.get('base_url', 'https://api-inference.modelscope.cn/v1'),
                api_key=self.modelscope_api_key
            )
            
            response = client.chat.completions.create(
                model=modelscope_config.get('model', 'Qwen/Qwen3-Coder-480B-A35B-Instruct'),
                messages=[
                    {"role": "system", "content": "你是一个DNF游戏文件修改专家，请根据提供的资料回答问题。"},
                    {"role": "user", "content": prompt}
                ],
                max_tokens=modelscope_config.get('max_tokens', 2000),
                temperature=modelscope_config.get('temperature', 0.1),
                stream=False  # 不使用流式输出以简化处理
            )
            return response.choices[0].message.content
        except Exception as e:
            return f"ModelScope API调用失败: {e}"
    
    def process_query(self, query: str, k: int = None) -> Dict[str, Any]:
        """处理完整的查询流程"""
        print(f"[INFO] 处理查询: {query}", file=sys.stderr)
        
        # 1. 向量检索
        search_results = self.vector_search(query, k)
        
        # 2. 构建提示词
        prompt = self.build_prompt(query, search_results)
        
        # 3. 生成回答
        answer = self.generate_answer(prompt)
        
        # 4. 返回结果
        result = {
            'query': query,
            'answer': answer,
            'search_results': search_results,
            'timestamp': datetime.now().isoformat()
        }
        
        return result
    
    def get_mcp_tools(self) -> List[Dict[str, Any]]:
        """获取MCP工具定义"""
        return [
            {
                "name": "vector_search_tool",
                "description": "在DNF知识库中进行向量检索",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "query": {"type": "string", "description": "检索查询"},
                        "k": {"type": "integer", "description": "返回结果数量", "default": 5}
                    },
                    "required": ["query"]
                }
            },
            {
                "name": "prompt_builder_tool",
                "description": "基于检索结果构建提示词",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "query": {"type": "string", "description": "用户查询"},
                        "search_results": {"type": "array", "description": "检索结果"}
                    },
                    "required": ["query", "search_results"]
                }
            },
            {
                "name": "generate_answer_tool",
                "description": "使用大语言模型生成回答",
                "inputSchema": {
                    "type": "object",
                    "properties": {
                        "prompt": {"type": "string", "description": "提示词"}
                    },
                    "required": ["prompt"]
                }
            }
        ]
    
    def call_mcp_tool(self, tool_name: str, arguments: Dict[str, Any]) -> Dict[str, Any]:
        """调用MCP工具"""
        try:
            if tool_name == "vector_search_tool":
                query = arguments["query"]
                k = arguments.get("k", 5)
                results = self.vector_search(query, k)
                return {"success": True, "results": results}
            
            elif tool_name == "prompt_builder_tool":
                query = arguments["query"]
                search_results = arguments["search_results"]
                prompt = self.build_prompt(query, search_results)
                return {"success": True, "prompt": prompt}
            
            elif tool_name == "generate_answer_tool":
                prompt = arguments["prompt"]
                answer = self.generate_answer(prompt)
                return {"success": True, "answer": answer}
            
            else:
                return {"success": False, "error": f"未知工具: {tool_name}"}
        
        except Exception as e:
            return {"success": False, "error": str(e)}


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(description='简化版DNF知识库RAG服务器')
    parser.add_argument('--index-path', default='data/simple_index.pkl', help='索引文件路径')
    parser.add_argument('--config-path', default='config/config.json', help='配置文件路径')
    parser.add_argument('--test', help='测试查询')
    parser.add_argument('--interactive', action='store_true', help='交互模式')
    
    args = parser.parse_args()
    
    # 创建服务器
    try:
        server = SimpleDNFRAGServer(args.index_path, args.config_path)
        print("[START] RAG服务器启动成功!", file=sys.stderr)
    except Exception as e:
        print(f"[ERROR] 服务器启动失败: {e}", file=sys.stderr)
        return 1
    
    # 测试模式
    if args.test:
        print(f"\n[TEST] 测试查询: {args.test}", file=sys.stderr)
        result = server.process_query(args.test)
        print(f"\n[ANSWER] \n{result['answer']}")
        print(f"\n[INFO] 检索到 {len(result['search_results'])} 个相关文档", file=sys.stderr)
        return 0
    
    # 交互模式
    if args.interactive:
        print("\n[INTERACTIVE] 输入 'quit' 退出", file=sys.stderr)
        while True:
            try:
                query = input("\n请输入问题: ").strip()
                if query.lower() in ['quit', 'exit', '退出']:
                    break
                if not query:
                    continue
                
                result = server.process_query(query)
                print(f"\n[ANSWER] \n{result['answer']}")
                
            except KeyboardInterrupt:
                print("\n[BYE] 再见!", file=sys.stderr)
                break
            except Exception as e:
                print(f"[ERROR] 处理查询时出错: {e}", file=sys.stderr)
    
    return 0


if __name__ == "__main__":
    exit(main())