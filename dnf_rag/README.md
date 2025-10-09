# DNF知识库RAG系统 🎮

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://python.org)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![MCP](https://img.shields.io/badge/MCP-Compatible-orange.svg)](https://modelcontextprotocol.io)

基于向量检索增强生成(RAG)的DNF文件知识库智能问答系统，支持装备、技能、地图等PVF文件的智能检索、格式验证和代码生成。

## ✨ 核心特性

- 🔍 **智能检索**: 基于语义向量的知识库检索，支持中英文混合查询
- 🤖 **AI问答**: 集成通义千问大模型，提供专业的DNF文件修改指导
- 📋 **格式验证**: 增强版PVF文件格式检查，支持模板对比和错误诊断
- 🔧 **MCP集成**: 完整的Model Context Protocol支持，可集成到各种AI IDE
- 📚 **知识库**: 涵盖装备、技能、地图、怪物等完整DNF文件体系
- 🚀 **高性能**: 基于FAISS的向量索引，毫秒级检索响应

## 🎯 适用场景

- DNF私服开发者进行文件修改和调试
- 学习DNF文件格式和修改技巧
- 自动化PVF文件格式验证和错误修复
- AI辅助的游戏内容创作和修改

## 📦 快速安装

### 系统要求

- **操作系统**: Windows 10/11, macOS, Linux
- **Python**: 3.8 或更高版本
- **内存**: 建议 4GB 以上
- **存储**: 至少 2GB 可用空间

### 一键安装

```bash
# 1. 克隆项目
git clone https://github.com/your-username/dnf-rag-system.git
cd dnf-rag-system/dnf_rag

# 2. 创建虚拟环境
python -m venv rag_env

# 3. 激活虚拟环境
# Windows
.\rag_env\Scripts\activate
# macOS/Linux
source rag_env/bin/activate

# 4. 安装依赖
pip install -r requirements.txt

# 5. 配置API密钥
cp .env.example .env
# 编辑 .env 文件，填入你的 DASHSCOPE_API_KEY
```

### 配置API密钥

在 `.env` 文件中配置：

```env
# 通义千问API密钥（必需）
DASHSCOPE_API_KEY=your_dashscope_api_key_here

# ModelScope API密钥（可选，用于模型下载）
MODELSCOPE_API_KEY=your_modelscope_api_key_here

# OpenAI API密钥（可选）
OPENAI_API_KEY=your_openai_api_key_here
```

## 🚀 快速开始

### 1. 构建知识库索引

```bash
# 构建向量索引（首次运行必需）
python start_rag.py --build-index
```

### 2. 测试系统

```bash
# 测试知识库检索
python start_rag.py --test "如何修改装备的基础属性？"

# 测试格式检查
python demo_enhanced_checker.py
```

### 3. 启动MCP服务器

```bash
# 启动MCP服务器（用于IDE集成）
python mcp_server.py
```

### 4. 使用示例

```python
from simple_rag_server import SimpleDNFRAGServer

# 初始化RAG服务器
server = SimpleDNFRAGServer("data/simple_index.pkl", "config/config.json")

# 知识库检索
results = server.search("装备属性修改", k=5)

# 智能问答
answer = server.generate_answer("如何创建一个新的85级太刀？")
print(answer)
```

## 🛠️ 功能详解

### MCP工具集

系统提供三个核心MCP工具：

#### 1. 知识库搜索 (`dnf_knowledge_search`)

```python
# 搜索DNF相关知识
{
    "query": "装备属性修改",  # 搜索关键词
    "k": 5                   # 返回结果数量
}
```

#### 2. 智能问答 (`dnf_knowledge_qa`)

```python
# 基于知识库的智能问答
{
    "question": "如何创建新装备？",  # 问题
    "context_size": 5              # 检索上下文数量
}
```

#### 3. 格式检查 (`dnf_file_format_check`)

```python
# PVF文件格式验证
{
    "file_type": "equ",           # 文件类型
    "content": "[name] `测试装备`", # 文件内容
    "sub_type": "weapon",         # 子类型
    "enhanced": true              # 增强模式
}
```

### 支持的文件类型

| 类型 | 说明 | 示例 |
|------|------|------|
| `equ` | 装备文件 | 武器、防具、饰品 |
| `skl` | 技能文件 | 职业技能、被动技能 |
| `chr` | 角色文件 | 职业属性、成长数据 |
| `stk` | 消耗品 | 药水、材料、道具 |
| `map` | 地图文件 | 副本、城镇地图 |
| `mob` | 怪物文件 | 怪物属性、AI行为 |
| `ani` | 动画文件 | 技能动画、特效 |
| `atk` | 攻击文件 | 伤害判定、攻击范围 |

## 📁 项目结构

```
dnf_rag/
├── 📁 config/                    # 配置文件
│   └── config.json              # 主配置文件
├── 📁 data/                     # 数据文件
│   ├── simple_index.pkl         # 向量索引
│   ├── chunks_info.json         # 文档分块信息
│   └── faiss_index/             # FAISS索引文件
├── 📁 docs/                     # 文档目录
│   ├── INSTALLATION.md          # 安装指南
│   ├── USAGE.md                 # 使用指南
│   ├── API.md                   # API文档
│   └── TROUBLESHOOTING.md       # 故障排除
├── 📄 mcp_server.py             # MCP服务器
├── 📄 simple_rag_server.py      # RAG服务器
├── 📄 enhanced_format_checker.py # 格式检查器
├── 📄 index_builder.py          # 索引构建器
├── 📄 start_rag.py              # 启动脚本
├── 📄 demo_enhanced_checker.py  # 格式检查演示
├── 📄 final_validation.py       # 系统验证
├── 📄 .env.example              # 环境变量模板
├── 📄 requirements.txt          # 依赖列表
├── 📄 pyproject.toml            # 项目配置
└── 📄 README.md                 # 项目说明
```

## 🔧 配置说明

### config.json 配置项

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
    "max_tokens": 2000
  }
}
```

### MCP配置

在Trae IDE中配置MCP服务器：

```json
{
  "dnf_rag": {
    "command": "python",
    "args": ["mcp_server.py"],
    "cwd": "/path/to/dnf_rag",
    "env": {
      "PYTHONPATH": "/path/to/dnf_rag",
      "PYTHONIOENCODING": "utf-8",
      "DASHSCOPE_API_KEY": "your_api_key"
    }
  }
}
```

## 📊 性能指标

- **索引构建**: ~2-5分钟（取决于知识库大小）
- **检索延迟**: <100ms（本地向量检索）
- **问答延迟**: 1-3秒（包含API调用）
- **内存占用**: ~500MB-1GB（加载模型后）
- **存储需求**: ~200MB（索引文件）

## 🔍 使用示例

### 装备修改示例

```python
# 查询装备属性修改方法
query = "如何修改装备的基础攻击力和属性强化？"
results = server.search(query, k=3)

# 生成完整的装备文件
question = "创建一个85级史诗太刀，名称为'血月斩魂刃'，攻击力800"
answer = server.generate_answer(question)
```

### 格式验证示例

```python
# 验证装备文件格式
content = """
[name] `血月斩魂刃`
[grade] 4
[rarity] 2
[usable job] `[swordman]`
[minimum level] 85
[physical attack] 800
"""

result = format_checker.check_format("equ", content, "weapon", enhanced=True)
print(f"验证结果: {result['status']}")
print(f"错误数量: {len(result['errors'])}")
```

## 📚 文档

- [安装指南](docs/INSTALLATION.md) - 详细的安装步骤和环境配置
- [使用指南](docs/USAGE.md) - 完整的功能使用说明和最佳实践
- [API文档](docs/API.md) - MCP工具和Python API详细说明
- [故障排除](docs/TROUBLESHOOTING.md) - 常见问题解决方案和诊断指南
- [配置说明](docs/CONFIG.md) - 系统配置和参数调优
- [开发指南](docs/DEVELOPMENT.md) - 二次开发和扩展指南

## 🐛 常见问题

### Q: 索引构建失败怎么办？
A: 检查知识库路径是否正确，确保有足够的磁盘空间和内存。

### Q: API调用失败？
A: 验证API密钥是否正确设置，检查网络连接和API配额。

### Q: 检索结果不准确？
A: 尝试使用更具体的关键词，或调整检索参数k值。

### Q: MCP服务器无法启动？
A: 检查Python环境和依赖是否正确安装，查看错误日志。

更多问题请查看 [故障排除指南](docs/TROUBLESHOOTING.md)。

## 🤝 贡献指南

欢迎贡献代码、文档或反馈问题！

1. Fork 项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 Pull Request

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 🙏 致谢

- [LangChain](https://langchain.com/) - RAG框架支持
- [FAISS](https://faiss.ai/) - 向量检索引擎
- [通义千问](https://tongyi.aliyun.com/) - 大语言模型支持
- [ModelScope](https://modelscope.cn/) - 模型托管平台

## 📞 联系方式

- 项目主页: [GitHub Repository](https://github.com/your-username/dnf-rag-system)
- 问题反馈: [Issues](https://github.com/your-username/dnf-rag-system/issues)
- 讨论交流: [Discussions](https://github.com/your-username/dnf-rag-system/discussions)

---

<div align="center">

**🎯 让DNF文件修改变得更简单、更智能！**

[快速开始](#-快速安装) • [功能特性](#-核心特性) • [使用文档](docs/USAGE.md) • [API文档](docs/API.md)

</div>