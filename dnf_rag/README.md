# DNF知识库RAG系统

基于向量检索的DNF文件知识库问答系统，支持智能检索和代码生成。

## 🚀 快速开始

### 1. 环境准备

确保已激活虚拟环境：
```bash
# Windows
.\rag_env\Scripts\Activate.ps1

# 验证环境
python --version
pip list | findstr langchain
```

### 2. 配置API密钥

复制环境变量模板并配置：
```bash
copy .env.example .env
# 编辑 .env 文件，填入你的 DASHSCOPE_API_KEY
```

### 3. 构建知识库索引

```bash
# 方法1: 使用启动脚本（推荐）
python start_rag.py --build-index

# 方法2: 直接使用索引构建器
python index_builder.py "../DNF文件知识库" "data/faiss_index"
```

### 4. 测试系统

```bash
# 测试查询
python start_rag.py --test "如何修改装备的基础属性？"
```

### 5. 启动服务器

```bash
python start_rag.py --start-server
```

## 📁 项目结构

```
dnf_rag/
├── config/
│   └── config.json          # 配置文件
├── data/
│   ├── faiss_index/         # 向量索引文件
│   └── chunks_info.json     # 文档分块信息
├── models/                  # 模型缓存目录
├── tools/                   # 工具脚本目录
├── index_builder.py         # 索引构建器
├── rag_server.py           # RAG服务器
├── start_rag.py            # 启动脚本
├── .env.example            # 环境变量模板
└── README.md               # 说明文档
```

## 🔧 配置说明

### config.json 配置项

```json
{
  "embedding_model": "嵌入模型名称",
  "knowledge_base_paths": ["知识库路径列表"],
  "index_path": "索引保存路径",
  "chunk_size": 1000,
  "chunk_overlap": 200,
  "retrieval_k": 5
}
```

### 环境变量

- `DASHSCOPE_API_KEY`: 通义千问API密钥（必需）
- `OPENAI_API_KEY`: OpenAI API密钥（可选）
- `HF_HOME`: Hugging Face模型缓存目录

## 🛠️ 使用方法

### 命令行工具

```bash
# 构建索引
python start_rag.py --build-index

# 启动服务器
python start_rag.py --start-server

# 测试查询
python start_rag.py --test "你的问题"

# 一键构建并启动
python start_rag.py --all
```

### Python API

```python
from rag_server import DNFRAGServer

# 创建服务器实例
server = DNFRAGServer("data/faiss_index")

# 处理查询
result = server.process_query("如何修改装备属性？")
print(result['answer'])
```

### MCP工具集成

系统提供三个MCP工具：

1. `vector_search_tool(query, k=5)` - 向量检索
2. `prompt_builder_tool(query, search_results)` - 提示词构建  
3. `generate_answer_tool(prompt)` - 答案生成

## 🎯 支持的查询类型

- **装备修改**: "如何修改装备的基础属性？"
- **技能配置**: "怎样创建新的技能效果？"
- **文件格式**: "PVF文件的格式要求是什么？"
- **代码示例**: "给我一个完整的装备文件示例"
- **错误排查**: "为什么我的装备文件无法加载？"

## 🔍 检索优化

系统采用以下策略优化检索效果：

1. **多语言嵌入模型**: 支持中英文混合检索
2. **语义分块**: 按照文档结构智能分割
3. **重叠策略**: 保持上下文连续性
4. **相关性排序**: 返回最相关的文档片段

## 📊 性能监控

查看系统运行状态：

```bash
# 查看索引信息
cat data/metadata.json

# 查看分块信息
cat data/chunks_info.json
```

## 🐛 故障排除

### 常见问题

1. **索引构建失败**
   - 检查知识库路径是否正确
   - 确认有足够的磁盘空间
   - 查看是否有权限问题

2. **检索结果为空**
   - 确认索引文件存在
   - 检查查询语言是否匹配
   - 尝试使用更通用的关键词

3. **生成回答失败**
   - 检查API密钥是否正确设置
   - 确认网络连接正常
   - 查看API配额是否充足

### 日志查看

系统会输出详细的运行日志，包括：
- 索引构建进度
- 检索结果数量
- API调用状态
- 错误信息详情

## 🔄 更新维护

### 更新知识库

当知识库内容更新时：

```bash
# 重新构建索引
python start_rag.py --build-index
```

### 模型更新

修改 `config.json` 中的 `embedding_model` 配置，然后重新构建索引。

## 📞 技术支持

如遇到问题，请检查：
1. Python环境和依赖库版本
2. 配置文件格式是否正确
3. API密钥是否有效
4. 知识库路径是否存在

---

*🎯 让DNF文件修改变得更简单、更智能！*