#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF知识库RAG服务器
提供基于向量检索的问答服务，支持MCP协议
"""

import os
import sys
import json
import asyncio
from typing import List, Dict, Any, Optional
from pathlib import Path
import argparse

# 导入必要的库
from langchain_community.vectorstores import FAISS
from langchain_community.embeddings import HuggingFaceEmbeddings
from langchain.schema import Document
from langchain.prompts import PromptTemplate
from langchain.chains import RetrievalQA
from langchain_community.llms import OpenAI
import dashscope
from dashscope import Generation


class DNFRAGServer:
    """DNF知识库RAG服务器"""
    
    def __init__(self, index_path: str, model_name: str = "sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2"):
        """
        初始化RAG服务器
        
        Args:
            index_path: 向量索引路径
            model_name: 嵌入模型名称
        """
        self.index_path = index_path
        self.model_name = model_name
        self.vectorstore = None
        self.embeddings = None
        self.retriever = None
        
        # 初始化组件
        self._initialize_components()
    
    def _initialize_components(self):
        """初始化各个组件"""
        print("正在初始化RAG服务器组件...")
        
        # 1. 初始化嵌入模型
        try:
            self.embeddings = HuggingFaceEmbeddings(
                model_name=self.model_name,
                model_kwargs={'device': 'cpu'},
                encode_kwargs={'normalize_embeddings': True}
            )
            print("嵌入模型初始化成功")
        except Exception as e:
            print(f"嵌入模型初始化失败: {e}")
            # 使用备用模型
            self.embeddings = HuggingFaceEmbeddings(
                model_name="sentence-transformers/all-MiniLM-L6-v2"
            )
        
        # 2. 加载向量索引
        try:
            if os.path.exists(self.index_path):
                self.vectorstore = FAISS.load_local(
                    self.index_path, 
                    self.embeddings,
                    allow_dangerous_deserialization=True
                )
                self.retriever = self.vectorstore.as_retriever(
                    search_type="similarity",
                    search_kwargs={"k": 5}  # 返回最相关的5个文档
                )
                print("向量索引加载成功")
            else:
                print(f"警告: 向量索引路径不存在: {self.index_path}")
        except Exception as e:
            print(f"向量索引加载失败: {e}")
    
    def vector_search(self, query: str, k: int = 5) -> List[Dict[str, Any]]:
        """
        向量检索功能
        
        Args:
            query: 查询问题
            k: 返回结果数量
            
        Returns:
            检索结果列表
        """
        if not self.vectorstore:
            return []
        
        try:
            # 执行相似性搜索
            docs = self.vectorstore.similarity_search(query, k=k)
            
            # 格式化结果
            results = []
            for i, doc in enumerate(docs):
                results.append({
                    'rank': i + 1,
                    'content': doc.page_content,
                    'source': doc.metadata.get('source', ''),
                    'score': 0.0  # FAISS不直接提供分数
                })
            
            return results
            
        except Exception as e:
            print(f"向量检索出错: {e}")
            return []
    
    def prompt_builder(self, query: str, search_results: List[Dict[str, Any]]) -> str:
        """
        构建提示词
        
        Args:
            query: 用户问题
            search_results: 检索结果
            
        Returns:
            构建好的提示词
        """
        # 提取相关内容
        context_parts = []
        for result in search_results:
            source = result.get('source', '').replace('\\', '/')
            content = result.get('content', '')
            context_parts.append(f"来源: {source}\n内容: {content}")
        
        context = "\n\n".join(context_parts)
        
        # 构建提示词模板
        prompt_template = """你是一个专业的DNF文件修改专家，请基于以下知识库内容回答用户问题。

知识库内容:
{context}

用户问题: {query}

请注意:
1. 严格按照PVF文件格式规范回答
2. 字符串必须使用反引号 ` 包围
3. 参数之间使用制表符(Tab)分隔
4. 提供具体的代码示例
5. 如果涉及文件路径，请给出完整路径
6. 如果知识库中没有相关信息，请明确说明

回答:"""
        
        return prompt_template.format(context=context, query=query)
    
    def generate_answer(self, prompt: str) -> str:
        """
        生成回答
        
        Args:
            prompt: 构建好的提示词
            
        Returns:
            生成的回答
        """
        try:
            # 使用通义千问生成回答
            dashscope.api_key = os.getenv('DASHSCOPE_API_KEY')
            
            if not dashscope.api_key:
                return "错误: 未设置DASHSCOPE_API_KEY环境变量"
            
            response = Generation.call(
                model='qwen-turbo',
                prompt=prompt,
                max_tokens=2000,
                temperature=0.1
            )
            
            if response.status_code == 200:
                return response.output.text
            else:
                return f"生成回答时出错: {response.message}"
                
        except Exception as e:
            return f"生成回答时出错: {e}"
    
    def process_query(self, query: str) -> Dict[str, Any]:
        """
        处理完整的查询流程
        
        Args:
            query: 用户查询
            
        Returns:
            处理结果
        """
        print(f"处理查询: {query}")
        
        # 1. 向量检索
        search_results = self.vector_search(query)
        print(f"检索到 {len(search_results)} 个相关文档")
        
        # 2. 构建提示词
        prompt = self.prompt_builder(query, search_results)
        
        # 3. 生成回答
        answer = self.generate_answer(prompt)
        
        return {
            'query': query,
            'search_results': search_results,
            'prompt': prompt,
            'answer': answer,
            'status': 'success'
        }
    
    def start_server(self, host: str = "localhost", port: int = 8000):
        """
        启动RAG服务器
        
        Args:
            host: 服务器地址
            port: 服务器端口
        """
        print(f"DNF RAG服务器启动在 {host}:{port}")
        print("服务器已就绪，等待查询...")
        
        # 这里可以添加HTTP服务器或其他协议的实现
        # 目前作为命令行工具使用
        
    def test_query(self, query: str):
        """测试查询功能"""
        result = self.process_query(query)
        
        print("=" * 50)
        print("查询结果:")
        print("=" * 50)
        print(f"问题: {result['query']}")
        print(f"检索结果数量: {len(result['search_results'])}")
        print("\n检索内容:")
        for i, res in enumerate(result['search_results'][:3]):  # 只显示前3个
            print(f"{i+1}. 来源: {res['source']}")
            print(f"   内容: {res['content'][:200]}...")
            print()
        
        print("生成的回答:")
        print(result['answer'])
        print("=" * 50)


# MCP工具函数
def vector_search_tool(query: str, k: int = 5) -> str:
    """MCP工具: 向量检索"""
    server = DNFRAGServer("dnf_rag/data/faiss_index")
    results = server.vector_search(query, k)
    return json.dumps(results, ensure_ascii=False, indent=2)


def prompt_builder_tool(query: str, search_results_json: str) -> str:
    """MCP工具: 提示词构建"""
    server = DNFRAGServer("dnf_rag/data/faiss_index")
    search_results = json.loads(search_results_json)
    prompt = server.prompt_builder(query, search_results)
    return prompt


def generate_answer_tool(prompt: str) -> str:
    """MCP工具: 生成回答"""
    server = DNFRAGServer("dnf_rag/data/faiss_index")
    answer = server.generate_answer(prompt)
    return answer


def main():
    """主函数"""
    parser = argparse.ArgumentParser(description='DNF知识库RAG服务器')
    parser.add_argument('--index-path', default='dnf_rag/data/faiss_index', help='向量索引路径')
    parser.add_argument('--model', default='sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2', 
                       help='嵌入模型名称')
    parser.add_argument('--test', help='测试查询')
    parser.add_argument('--host', default='localhost', help='服务器地址')
    parser.add_argument('--port', type=int, default=8000, help='服务器端口')
    
    args = parser.parse_args()
    
    # 创建RAG服务器
    server = DNFRAGServer(args.index_path, args.model)
    
    if args.test:
        # 测试模式
        server.test_query(args.test)
    else:
        # 启动服务器
        server.start_server(args.host, args.port)


if __name__ == "__main__":
    main()