# API 文档 🔧

本文档详细介绍DNF知识库RAG系统的所有API接口，包括MCP工具、Python API和配置选项。

## 📋 目录

- [MCP工具API](#mcp工具api)
- [Python API](#python-api)
- [配置API](#配置api)
- [错误处理](#错误处理)
- [示例代码](#示例代码)

## 🔧 MCP工具API

DNF RAG系统提供三个核心MCP工具，完全兼容Model Context Protocol规范。

### 1. dnf_knowledge_search

在DNF知识库中搜索相关信息。

#### 参数

| 参数名 | 类型 | 必需 | 默认值 | 描述 |
|--------|------|------|--------|------|
| `query` | string | ✅ | - | 搜索查询，例如：'如何修改装备属性'、'PVF文件格式'、'技能文件结构'等 |
| `k` | integer | ❌ | 5 | 返回结果数量，范围：1-10 |

#### 返回值

```json
{
  "results": [
    {
      "content": "文档内容片段",
      "source": "来源文件路径",
      "score": 0.95,
      "metadata": {
        "file_type": "装备文件",
        "section": "属性配置",
        "last_updated": "2024-01-15"
      }
    }
  ],
  "total_results": 5,
  "query_time": 0.123,
  "status": "success"
}
```

#### 使用示例

```python
# MCP工具调用
{
  "name": "dnf_knowledge_search",
  "arguments": {
    "query": "85级史诗武器属性配置",
    "k": 5
  }
}
```

#### 错误响应

```json
{
  "error": "search_failed",
  "message": "搜索失败：索引文件不存在",
  "code": 404
}
```

### 2. dnf_knowledge_qa

基于DNF知识库回答问题，提供详细的操作指导和代码示例。

#### 参数

| 参数名 | 类型 | 必需 | 默认值 | 描述 |
|--------|------|------|--------|------|
| `question` | string | ✅ | - | 关于DNF文件修改的问题，例如：'如何创建新装备？'、'技能文件怎么配置？'等 |
| `context_size` | integer | ❌ | 5 | 检索上下文数量，范围：1-10 |

#### 返回值

```json
{
  "answer": "详细的回答内容，包含步骤说明和代码示例",
  "sources": [
    {
      "content": "参考文档内容",
      "source": "来源文件",
      "relevance": 0.92
    }
  ],
  "confidence": 0.88,
  "response_time": 2.45,
  "status": "success"
}
```

#### 使用示例

```python
# MCP工具调用
{
  "name": "dnf_knowledge_qa",
  "arguments": {
    "question": "如何创建一个85级史诗太刀，名称为'血影·鬼切'？",
    "context_size": 5
  }
}
```

#### 错误响应

```json
{
  "error": "generation_failed",
  "message": "答案生成失败：API调用超时",
  "code": 500
}
```

### 3. dnf_file_format_check

检查DNF文件格式规范，提供格式验证和修正建议。

#### 参数

| 参数名 | 类型 | 必需 | 默认值 | 描述 |
|--------|------|------|--------|------|
| `file_type` | string | ✅ | - | 文件类型：'equ'(装备)、'skl'(技能)、'chr'(角色)、'stk'(消耗品)、'ani'(动画)、'atk'(攻击)、'lay'(布局)、'obj'(对象)、'sho'(商店)、'map'(地图)、'mob'(怪物)、'nut'(脚本) |
| `content` | string | ❌ | - | 文件内容或代码片段 |
| `sub_type` | string | ❌ | - | 文件子类型，如装备类型：'weapon'(武器)、'armor'(防具)、'accessory'(饰品)等 |
| `enhanced` | boolean | ❌ | true | 是否使用增强模式（直接模板引用和字段对比），默认为True |

#### 返回值

```json
{
  "status": "valid|invalid|warning",
  "errors": [
    {
      "line": 5,
      "column": 12,
      "message": "字段名称格式错误：应使用反引号包围字符串",
      "severity": "error",
      "suggestion": "将 \"name\" 改为 `name`"
    }
  ],
  "warnings": [
    {
      "line": 8,
      "message": "建议添加 [grade] 字段以明确装备品级",
      "severity": "warning"
    }
  ],
  "suggestions": [
    "建议使用标准的装备模板格式",
    "添加必需的 [usable job] 字段"
  ],
  "template_comparison": {
    "matched_template": "standard_weapon_template",
    "missing_fields": ["grade", "rarity"],
    "extra_fields": [],
    "field_order_issues": []
  },
  "enhanced_analysis": {
    "format_compliance": 85,
    "completeness": 70,
    "best_practices": 90
  }
}
```

#### 支持的文件类型

| 类型 | 说明 | 子类型示例 |
|------|------|------------|
| `equ` | 装备文件 | weapon, armor, accessory, special |
| `skl` | 技能文件 | active, passive, buff, debuff |
| `chr` | 角色文件 | base_stats, growth, job_change |
| `stk` | 消耗品 | potion, material, quest_item |
| `map` | 地图文件 | dungeon, town, pvp |
| `mob` | 怪物文件 | normal, boss, elite |
| `ani` | 动画文件 | skill, effect, ui |
| `atk` | 攻击文件 | physical, magical, hybrid |
| `lay` | 布局文件 | ui, map_layout |
| `obj` | 对象文件 | npc, item, environment |
| `sho` | 商店文件 | equipment, consumable, special |
| `nut` | 脚本文件 | quest, event, system |

#### 使用示例

```python
# MCP工具调用
{
  "name": "dnf_file_format_check",
  "arguments": {
    "file_type": "equ",
    "content": "[name] `血影·鬼切`\n[grade] 4\n[rarity] 2",
    "sub_type": "weapon",
    "enhanced": true
  }
}
```

#### 错误响应

```json
{
  "error": "validation_failed",
  "message": "不支持的文件类型：xyz",
  "code": 400
}
```

## 🐍 Python API

### SimpleDNFRAGServer 类

主要的RAG服务器类，提供知识库检索和问答功能。

#### 初始化

```python
from simple_rag_server import SimpleDNFRAGServer

server = SimpleDNFRAGServer(
    index_path="data/simple_index.pkl",
    config_path="config/config.json",
    custom_config=None  # 可选的自定义配置
)
```

#### 参数

| 参数名 | 类型 | 必需 | 描述 |
|--------|------|------|------|
| `index_path` | str | ✅ | 向量索引文件路径 |
| `config_path` | str | ✅ | 配置文件路径 |
| `custom_config` | dict | ❌ | 自定义配置覆盖 |

#### 方法

##### search(query, k=5)

在知识库中搜索相关内容。

```python
def search(self, query: str, k: int = 5) -> List[Dict]:
    """
    搜索知识库
    
    Args:
        query: 搜索查询字符串
        k: 返回结果数量
        
    Returns:
        List[Dict]: 搜索结果列表
        
    Raises:
        ValueError: 查询字符串为空
        RuntimeError: 索引文件不存在或损坏
    """
```

**示例：**

```python
results = server.search("装备属性修改", k=5)
for result in results:
    print(f"相关度: {result['score']:.3f}")
    print(f"内容: {result['content'][:100]}...")
```

##### generate_answer(question, context_size=5)

基于知识库生成问题答案。

```python
def generate_answer(self, question: str, context_size: int = 5) -> str:
    """
    生成问题答案
    
    Args:
        question: 问题字符串
        context_size: 检索上下文数量
        
    Returns:
        str: 生成的答案
        
    Raises:
        ValueError: 问题字符串为空
        APIError: API调用失败
    """
```

**示例：**

```python
answer = server.generate_answer(
    "如何创建85级史诗武器？",
    context_size=5
)
print(answer)
```

##### get_server_info()

获取服务器状态信息。

```python
def get_server_info(self) -> Dict:
    """
    获取服务器信息
    
    Returns:
        Dict: 服务器状态信息
    """
```

**返回值：**

```python
{
    "status": "ready",
    "index_loaded": True,
    "config_loaded": True,
    "model_name": "BAAI/bge-large-zh-v1.5",
    "index_size": 1234,
    "last_updated": "2024-01-15T10:30:00Z"
}
```

### EnhancedFormatChecker 类

增强版文件格式检查器。

#### 初始化

```python
from enhanced_format_checker import EnhancedFormatChecker

checker = EnhancedFormatChecker(config_path="config/config.json")
```

#### 方法

##### check_format(file_type, content="", sub_type="", enhanced=True)

检查文件格式。

```python
def check_format(
    self, 
    file_type: str, 
    content: str = "", 
    sub_type: str = "", 
    enhanced: bool = True
) -> Dict:
    """
    检查文件格式
    
    Args:
        file_type: 文件类型
        content: 文件内容
        sub_type: 文件子类型
        enhanced: 是否启用增强模式
        
    Returns:
        Dict: 检查结果
        
    Raises:
        ValueError: 不支持的文件类型
    """
```

**示例：**

```python
result = checker.check_format(
    file_type="equ",
    content="[name] `测试装备`\n[grade] 4",
    sub_type="weapon",
    enhanced=True
)

print(f"状态: {result['status']}")
print(f"错误: {len(result['errors'])}")
print(f"警告: {len(result['warnings'])}")
```

### IndexBuilder 类

知识库索引构建器。

#### 初始化

```python
from index_builder import IndexBuilder

builder = IndexBuilder(config_path="config/config.json")
```

#### 方法

##### build_index(knowledge_base_paths, output_path)

构建知识库索引。

```python
def build_index(
    self, 
    knowledge_base_paths: List[str], 
    output_path: str
) -> bool:
    """
    构建知识库索引
    
    Args:
        knowledge_base_paths: 知识库路径列表
        output_path: 输出索引路径
        
    Returns:
        bool: 构建是否成功
        
    Raises:
        FileNotFoundError: 知识库路径不存在
        PermissionError: 输出路径无写入权限
    """
```

**示例：**

```python
success = builder.build_index(
    knowledge_base_paths=["../DNF文件知识库", "../DAF学院内容整合"],
    output_path="data/simple_index.pkl"
)

if success:
    print("索引构建成功！")
else:
    print("索引构建失败！")
```

## ⚙️ 配置API

### 配置文件结构

```json
{
  "embedding_model": "BAAI/bge-large-zh-v1.5",
  "knowledge_base_paths": [
    "../DNF文件知识库",
    "../DAF学院内容整合"
  ],
  "index_path": "data/simple_index.pkl",
  "chunk_size": 1000,
  "chunk_overlap": 200,
  "retrieval_k": 5,
  "api_config": {
    "dashscope_model": "qwen-turbo",
    "temperature": 0.1,
    "max_tokens": 2000,
    "timeout": 30
  },
  "format_checker": {
    "templates_path": "templates/",
    "strict_mode": false,
    "auto_fix": true
  },
  "performance": {
    "batch_size": 32,
    "max_workers": 4,
    "cache_size": 1000
  },
  "logging": {
    "level": "INFO",
    "file": "logs/rag_system.log",
    "max_size": "10MB",
    "backup_count": 5
  }
}
```

### 配置项说明

#### 基础配置

| 配置项 | 类型 | 默认值 | 描述 |
|--------|------|--------|------|
| `embedding_model` | string | "BAAI/bge-large-zh-v1.5" | 嵌入模型名称 |
| `knowledge_base_paths` | array | [] | 知识库路径列表 |
| `index_path` | string | "data/simple_index.pkl" | 索引文件路径 |
| `chunk_size` | integer | 1000 | 文档分块大小 |
| `chunk_overlap` | integer | 200 | 分块重叠大小 |
| `retrieval_k` | integer | 5 | 默认检索结果数量 |

#### API配置

| 配置项 | 类型 | 默认值 | 描述 |
|--------|------|--------|------|
| `dashscope_model` | string | "qwen-turbo" | 通义千问模型名称 |
| `temperature` | float | 0.1 | 生成温度参数 |
| `max_tokens` | integer | 2000 | 最大生成token数 |
| `timeout` | integer | 30 | API调用超时时间（秒） |

#### 格式检查配置

| 配置项 | 类型 | 默认值 | 描述 |
|--------|------|--------|------|
| `templates_path` | string | "templates/" | 模板文件路径 |
| `strict_mode` | boolean | false | 是否启用严格模式 |
| `auto_fix` | boolean | true | 是否自动修复格式错误 |

#### 性能配置

| 配置项 | 类型 | 默认值 | 描述 |
|--------|------|--------|------|
| `batch_size` | integer | 32 | 批处理大小 |
| `max_workers` | integer | 4 | 最大工作线程数 |
| `cache_size` | integer | 1000 | 缓存大小 |

### 动态配置更新

```python
from simple_rag_server import SimpleDNFRAGServer

# 初始化时使用自定义配置
custom_config = {
    "retrieval_k": 10,
    "api_config": {
        "temperature": 0.2,
        "max_tokens": 3000
    }
}

server = SimpleDNFRAGServer(
    "data/simple_index.pkl",
    "config/config.json",
    custom_config=custom_config
)

# 运行时更新配置
server.update_config({
    "retrieval_k": 8,
    "api_config": {
        "temperature": 0.15
    }
})
```

## ❌ 错误处理

### 错误类型

#### 1. 配置错误

```python
class ConfigError(Exception):
    """配置文件错误"""
    pass

# 示例
try:
    server = SimpleDNFRAGServer("invalid_path", "config.json")
except ConfigError as e:
    print(f"配置错误: {e}")
```

#### 2. 索引错误

```python
class IndexError(Exception):
    """索引文件错误"""
    pass

# 示例
try:
    results = server.search("test query")
except IndexError as e:
    print(f"索引错误: {e}")
```

#### 3. API错误

```python
class APIError(Exception):
    """API调用错误"""
    pass

# 示例
try:
    answer = server.generate_answer("test question")
except APIError as e:
    print(f"API错误: {e}")
```

#### 4. 格式错误

```python
class FormatError(Exception):
    """文件格式错误"""
    pass

# 示例
try:
    result = checker.check_format("invalid_type", "content")
except FormatError as e:
    print(f"格式错误: {e}")
```

### 错误处理最佳实践

```python
import logging
from typing import Optional

def safe_search(server, query: str, k: int = 5) -> Optional[List[Dict]]:
    """安全的搜索函数，包含完整错误处理"""
    try:
        # 参数验证
        if not query or not query.strip():
            raise ValueError("查询字符串不能为空")
        
        if k < 1 or k > 20:
            raise ValueError("k值必须在1-20之间")
        
        # 执行搜索
        results = server.search(query.strip(), k)
        
        # 结果验证
        if not results:
            logging.warning(f"查询 '{query}' 没有返回结果")
            return []
        
        return results
        
    except ValueError as e:
        logging.error(f"参数错误: {e}")
        return None
    except IndexError as e:
        logging.error(f"索引错误: {e}")
        return None
    except Exception as e:
        logging.error(f"未知错误: {e}")
        return None

def safe_generate_answer(
    server, 
    question: str, 
    context_size: int = 5,
    max_retries: int = 3
) -> Optional[str]:
    """安全的答案生成函数，包含重试机制"""
    for attempt in range(max_retries):
        try:
            if not question or not question.strip():
                raise ValueError("问题不能为空")
            
            answer = server.generate_answer(question.strip(), context_size)
            
            # 答案质量检查
            if len(answer.strip()) < 10:
                raise ValueError("生成的答案过短")
            
            return answer
            
        except APIError as e:
            logging.warning(f"第{attempt+1}次API调用失败: {e}")
            if attempt < max_retries - 1:
                time.sleep(2 ** attempt)  # 指数退避
            continue
        except Exception as e:
            logging.error(f"答案生成错误: {e}")
            return None
    
    logging.error(f"经过{max_retries}次重试后仍然失败")
    return None
```

## 📝 示例代码

### 完整的使用示例

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import json
import logging
from typing import List, Dict, Optional

from simple_rag_server import SimpleDNFRAGServer
from enhanced_format_checker import EnhancedFormatChecker
from index_builder import IndexBuilder

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s'
)
logger = logging.getLogger(__name__)

class DNFRAGClient:
    """DNF RAG系统客户端示例"""
    
    def __init__(self, config_path: str = "config/config.json"):
        """初始化客户端"""
        self.config_path = config_path
        self.server = None
        self.checker = None
        self.load_components()
    
    def load_components(self):
        """加载系统组件"""
        try:
            # 加载配置
            with open(self.config_path, 'r', encoding='utf-8') as f:
                self.config = json.load(f)
            
            # 初始化服务器
            self.server = SimpleDNFRAGServer(
                self.config['index_path'],
                self.config_path
            )
            
            # 初始化格式检查器
            self.checker = EnhancedFormatChecker(self.config_path)
            
            logger.info("系统组件加载成功")
            
        except Exception as e:
            logger.error(f"组件加载失败: {e}")
            raise
    
    def search_knowledge(self, query: str, k: int = 5) -> Optional[List[Dict]]:
        """搜索知识库"""
        try:
            results = self.server.search(query, k)
            logger.info(f"搜索 '{query}' 返回 {len(results)} 个结果")
            return results
        except Exception as e:
            logger.error(f"搜索失败: {e}")
            return None
    
    def ask_question(self, question: str, context_size: int = 5) -> Optional[str]:
        """提问获取答案"""
        try:
            answer = self.server.generate_answer(question, context_size)
            logger.info(f"问题 '{question}' 已生成答案")
            return answer
        except Exception as e:
            logger.error(f"问答失败: {e}")
            return None
    
    def check_file_format(
        self, 
        file_type: str, 
        content: str, 
        sub_type: str = "",
        enhanced: bool = True
    ) -> Optional[Dict]:
        """检查文件格式"""
        try:
            result = self.checker.check_format(
                file_type, content, sub_type, enhanced
            )
            logger.info(f"格式检查完成，状态: {result['status']}")
            return result
        except Exception as e:
            logger.error(f"格式检查失败: {e}")
            return None
    
    def demo_workflow(self):
        """演示完整工作流程"""
        print("=== DNF RAG系统演示 ===\n")
        
        # 1. 知识库搜索
        print("1. 知识库搜索演示")
        search_results = self.search_knowledge("85级史诗武器属性配置", k=3)
        if search_results:
            for i, result in enumerate(search_results, 1):
                print(f"   结果{i}: {result['content'][:80]}...")
        print()
        
        # 2. 智能问答
        print("2. 智能问答演示")
        question = "如何创建一个85级史诗太刀，名称为'血影·鬼切'？"
        answer = self.ask_question(question)
        if answer:
            print(f"   问题: {question}")
            print(f"   回答: {answer[:200]}...")
        print()
        
        # 3. 格式检查
        print("3. 格式检查演示")
        equipment_code = """
[name] `血影·鬼切`
[grade] 4
[rarity] 2
[usable job] `[swordman]`
[minimum level] 85
[physical attack] 800
"""
        format_result = self.check_file_format(
            "equ", equipment_code, "weapon", True
        )
        if format_result:
            print(f"   格式状态: {format_result['status']}")
            print(f"   错误数量: {len(format_result['errors'])}")
            print(f"   警告数量: {len(format_result['warnings'])}")
        
        print("\n=== 演示完成 ===")

def main():
    """主函数"""
    try:
        # 检查配置文件
        config_path = "config/config.json"
        if not os.path.exists(config_path):
            print(f"配置文件不存在: {config_path}")
            return
        
        # 创建客户端并运行演示
        client = DNFRAGClient(config_path)
        client.demo_workflow()
        
    except Exception as e:
        logger.error(f"程序运行失败: {e}")

if __name__ == "__main__":
    main()
```

### MCP服务器集成示例

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import json
import asyncio
from typing import Dict, Any

class MCPClientExample:
    """MCP客户端示例"""
    
    def __init__(self):
        self.tools = [
            "dnf_knowledge_search",
            "dnf_knowledge_qa", 
            "dnf_file_format_check"
        ]
    
    async def call_tool(self, tool_name: str, arguments: Dict[str, Any]) -> Dict:
        """调用MCP工具"""
        # 这里是示例代码，实际需要通过MCP协议调用
        request = {
            "jsonrpc": "2.0",
            "id": 1,
            "method": "tools/call",
            "params": {
                "name": tool_name,
                "arguments": arguments
            }
        }
        
        # 模拟MCP调用
        print(f"调用工具: {tool_name}")
        print(f"参数: {json.dumps(arguments, ensure_ascii=False, indent=2)}")
        
        # 这里应该是实际的MCP通信代码
        # response = await mcp_client.call(request)
        # return response
        
        return {"result": "模拟响应"}
    
    async def demo_mcp_usage(self):
        """演示MCP工具使用"""
        print("=== MCP工具演示 ===\n")
        
        # 1. 知识库搜索
        search_result = await self.call_tool(
            "dnf_knowledge_search",
            {
                "query": "装备属性修改方法",
                "k": 5
            }
        )
        print("搜索结果:", search_result)
        print()
        
        # 2. 智能问答
        qa_result = await self.call_tool(
            "dnf_knowledge_qa",
            {
                "question": "如何提高武器的攻击力？",
                "context_size": 5
            }
        )
        print("问答结果:", qa_result)
        print()
        
        # 3. 格式检查
        format_result = await self.call_tool(
            "dnf_file_format_check",
            {
                "file_type": "equ",
                "content": "[name] `测试装备`\n[grade] 4",
                "sub_type": "weapon",
                "enhanced": True
            }
        )
        print("格式检查结果:", format_result)

async def main():
    client = MCPClientExample()
    await client.demo_mcp_usage()

if __name__ == "__main__":
    asyncio.run(main())
```

---

## 📞 技术支持

如果您在使用API时遇到问题，请参考：

1. [故障排除指南](TROUBLESHOOTING.md)
2. [使用指南](USAGE.md)
3. [GitHub Issues](https://github.com/your-username/dnf-rag-system/issues)

更多技术细节和高级用法，请查看源代码中的详细注释和文档字符串。