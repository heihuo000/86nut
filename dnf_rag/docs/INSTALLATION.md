# 安装指南 📦

本文档提供DNF知识库RAG系统的详细安装步骤，确保您能够顺利部署和运行系统。

## 📋 系统要求

### 硬件要求

| 组件 | 最低要求 | 推荐配置 |
|------|----------|----------|
| **CPU** | 双核 2.0GHz | 四核 3.0GHz+ |
| **内存** | 4GB RAM | 8GB+ RAM |
| **存储** | 2GB 可用空间 | 5GB+ SSD |
| **网络** | 稳定的互联网连接 | 高速宽带 |

### 软件要求

| 软件 | 版本要求 | 说明 |
|------|----------|------|
| **Python** | 3.8 - 3.11 | 推荐 3.9 或 3.10 |
| **pip** | 最新版本 | Python包管理器 |
| **Git** | 2.0+ | 代码版本控制 |

### 操作系统支持

- ✅ **Windows 10/11** (推荐)
- ✅ **macOS 10.15+**
- ✅ **Ubuntu 18.04+**
- ✅ **CentOS 7+**
- ✅ **Debian 10+**

## 🚀 快速安装

### 方法一：Git克隆安装（推荐）

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

# 4. 升级pip
python -m pip install --upgrade pip

# 5. 安装依赖
pip install -r requirements.txt

# 6. 验证安装
python -c "import langchain; print('安装成功！')"
```

### 方法二：下载压缩包安装

```bash
# 1. 下载并解压项目文件
# 从 GitHub Releases 下载最新版本的 zip 文件
# 解压到目标目录

# 2. 进入项目目录
cd dnf_rag

# 3. 后续步骤同方法一的步骤2-6
```

## 🔧 详细安装步骤

### 步骤1：Python环境准备

#### Windows系统

```powershell
# 检查Python版本
python --version

# 如果没有Python，从官网下载安装
# https://www.python.org/downloads/windows/

# 验证pip
pip --version

# 升级pip到最新版本
python -m pip install --upgrade pip
```

#### macOS系统

```bash
# 使用Homebrew安装Python（推荐）
brew install python@3.9

# 或使用pyenv管理Python版本
brew install pyenv
pyenv install 3.9.16
pyenv global 3.9.16

# 验证安装
python3 --version
pip3 --version
```

#### Linux系统

```bash
# Ubuntu/Debian
sudo apt update
sudo apt install python3 python3-pip python3-venv

# CentOS/RHEL
sudo yum install python3 python3-pip

# 验证安装
python3 --version
pip3 --version
```

### 步骤2：创建项目目录

```bash
# 创建项目根目录
mkdir -p ~/dnf-projects
cd ~/dnf-projects

# 克隆项目
git clone https://github.com/your-username/dnf-rag-system.git
cd dnf-rag-system/dnf_rag
```

### 步骤3：虚拟环境配置

#### 创建虚拟环境

```bash
# 创建虚拟环境
python -m venv rag_env

# 激活虚拟环境
# Windows
.\rag_env\Scripts\activate

# macOS/Linux
source rag_env/bin/activate

# 验证虚拟环境
which python  # 应该指向虚拟环境中的Python
```

#### 虚拟环境管理

```bash
# 停用虚拟环境
deactivate

# 删除虚拟环境（如需重新创建）
rm -rf rag_env  # Linux/macOS
rmdir /s rag_env  # Windows
```

### 步骤4：依赖包安装

#### 核心依赖安装

```bash
# 确保虚拟环境已激活
# 升级pip
python -m pip install --upgrade pip

# 安装核心依赖
pip install -r requirements.txt

# 验证关键包
python -c "import langchain; print('LangChain:', langchain.__version__)"
python -c "import faiss; print('FAISS: 安装成功')"
python -c "import dashscope; print('DashScope: 安装成功')"
```

#### 可选依赖安装

```bash
# 开发工具（可选）
pip install jupyter notebook ipython

# 性能监控（可选）
pip install psutil memory-profiler

# 测试工具（可选）
pip install pytest pytest-cov
```

### 步骤5：环境变量配置

#### 创建环境配置文件

```bash
# 复制环境变量模板
cp .env.example .env

# 编辑环境变量文件
# Windows
notepad .env

# macOS/Linux
nano .env
# 或
vim .env
```

#### 配置API密钥

在 `.env` 文件中添加以下配置：

```env
# ===========================================
# DNF RAG 系统环境配置
# ===========================================

# 通义千问API密钥（必需）
# 获取地址：https://dashscope.console.aliyun.com/
DASHSCOPE_API_KEY=your_dashscope_api_key_here

# ModelScope API密钥（可选，用于模型下载）
# 获取地址：https://modelscope.cn/my/myaccesstoken
MODELSCOPE_API_KEY=your_modelscope_api_key_here

# OpenAI API密钥（可选，备用LLM）
OPENAI_API_KEY=your_openai_api_key_here

# Hugging Face Token（可选，用于模型下载）
HF_TOKEN=your_huggingface_token_here

# ===========================================
# 系统配置
# ===========================================

# Python编码设置
PYTHONIOENCODING=utf-8

# 模型缓存目录
HF_HOME=./models/huggingface
MODELSCOPE_CACHE=./models/modelscope

# 日志级别
LOG_LEVEL=INFO

# 代理设置（如需要）
# HTTP_PROXY=http://proxy.example.com:8080
# HTTPS_PROXY=http://proxy.example.com:8080
```

### 步骤6：知识库准备

#### 下载知识库文件

```bash
# 创建知识库目录
mkdir -p ../DNF文件知识库
mkdir -p ../DAF学院内容整合

# 如果您有现有的知识库文件，请将其放置在上述目录中
# 知识库应包含以下类型的文件：
# - .md 文件（Markdown格式的文档）
# - .txt 文件（纯文本文档）
# - .json 文件（结构化数据）
```

#### 验证知识库结构

```bash
# 检查知识库目录结构
ls -la ../DNF文件知识库/
ls -la ../DAF学院内容整合/

# 知识库应包含以下内容：
# ├── 装备文件/
# ├── 技能文件/
# ├── 地图文件/
# ├── 角色文件/
# └── 其他相关文档/
```

## 🔍 安装验证

### 基础功能测试

```bash
# 1. 验证Python环境
python --version
python -c "import sys; print('Python路径:', sys.executable)"

# 2. 验证依赖包
python -c "
import langchain
import faiss
import dashscope
import numpy as np
import pandas as pd
print('所有依赖包安装成功！')
"

# 3. 验证配置文件
python -c "
import os
from dotenv import load_dotenv
load_dotenv()
api_key = os.getenv('DASHSCOPE_API_KEY')
print('API密钥配置:', '已配置' if api_key else '未配置')
"
```

### 系统组件测试

```bash
# 1. 测试配置加载
python -c "
import json
with open('config/config.json', 'r', encoding='utf-8') as f:
    config = json.load(f)
print('配置文件加载成功')
print('嵌入模型:', config.get('embedding_model'))
"

# 2. 测试知识库路径
python -c "
import os
import json
with open('config/config.json', 'r', encoding='utf-8') as f:
    config = json.load(f)
for path in config.get('knowledge_base_paths', []):
    exists = os.path.exists(path)
    print(f'知识库路径 {path}: {\"存在\" if exists else \"不存在\"}')"

# 3. 测试模型下载
python -c "
from sentence_transformers import SentenceTransformer
print('正在测试嵌入模型下载...')
model = SentenceTransformer('BAAI/bge-large-zh-v1.5')
print('嵌入模型加载成功！')
"
```

## 🛠️ 高级安装选项

### Docker安装（推荐生产环境）

```dockerfile
# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# 安装系统依赖
RUN apt-get update && apt-get install -y \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 复制项目文件
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 设置环境变量
ENV PYTHONPATH=/app
ENV PYTHONIOENCODING=utf-8

# 暴露端口
EXPOSE 8000

# 启动命令
CMD ["python", "mcp_server.py"]
```

```bash
# 构建Docker镜像
docker build -t dnf-rag-system .

# 运行容器
docker run -d \
  --name dnf-rag \
  -p 8000:8000 \
  -v $(pwd)/data:/app/data \
  -v $(pwd)/.env:/app/.env \
  dnf-rag-system
```

### Conda环境安装

```bash
# 创建Conda环境
conda create -n dnf-rag python=3.9
conda activate dnf-rag

# 安装依赖
conda install -c conda-forge faiss-cpu
pip install -r requirements.txt

# 验证安装
python -c "import faiss; print('FAISS安装成功')"
```

### 开发环境安装

```bash
# 安装开发依赖
pip install -r requirements-dev.txt

# 安装pre-commit钩子
pre-commit install

# 运行代码质量检查
black .
flake8 .
mypy .

# 运行测试
pytest tests/
```

## 🔧 配置优化

### 性能优化配置

```json
// config/config.json
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
  "performance": {
    "batch_size": 32,
    "max_workers": 4,
    "cache_size": 1000
  }
}
```

### 内存优化设置

```bash
# 设置环境变量优化内存使用
export OMP_NUM_THREADS=4
export MKL_NUM_THREADS=4
export TOKENIZERS_PARALLELISM=false

# 在.env文件中添加
echo "OMP_NUM_THREADS=4" >> .env
echo "MKL_NUM_THREADS=4" >> .env
echo "TOKENIZERS_PARALLELISM=false" >> .env
```

## 🐛 常见安装问题

### 问题1：Python版本不兼容

```bash
# 错误信息：Python version not supported
# 解决方案：
pyenv install 3.9.16
pyenv local 3.9.16
python --version  # 验证版本
```

### 问题2：FAISS安装失败

```bash
# Windows系统解决方案
pip install faiss-cpu --no-cache-dir

# macOS系统解决方案
conda install -c conda-forge faiss-cpu

# Linux系统解决方案
sudo apt-get install libblas-dev liblapack-dev
pip install faiss-cpu
```

### 问题3：网络连接问题

```bash
# 使用国内镜像源
pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/

# 或配置pip镜像
mkdir ~/.pip
cat > ~/.pip/pip.conf << EOF
[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple/
trusted-host = pypi.tuna.tsinghua.edu.cn
EOF
```

### 问题4：权限问题

```bash
# Linux/macOS权限问题
sudo chown -R $USER:$USER ~/dnf-projects/
chmod +x start_rag.py

# Windows权限问题
# 以管理员身份运行PowerShell
```

### 问题5：模型下载失败

```bash
# 设置代理（如需要）
export HTTP_PROXY=http://proxy.example.com:8080
export HTTPS_PROXY=http://proxy.example.com:8080

# 使用ModelScope镜像
export MODELSCOPE_CACHE=./models/modelscope

# 手动下载模型
python -c "
from modelscope import snapshot_download
snapshot_download('AI-ModelScope/bge-large-zh-v1.5', cache_dir='./models')
"
```

## ✅ 安装完成检查清单

- [ ] Python 3.8+ 已安装
- [ ] 虚拟环境已创建并激活
- [ ] 所有依赖包已安装
- [ ] 环境变量已配置
- [ ] API密钥已设置
- [ ] 知识库文件已准备
- [ ] 配置文件已检查
- [ ] 基础功能测试通过
- [ ] 系统组件测试通过

## 🚀 下一步

安装完成后，请参考以下文档继续配置和使用系统：

1. [使用指南](USAGE.md) - 学习如何使用各项功能
2. [API文档](API.md) - 了解MCP工具的详细参数
3. [故障排除](TROUBLESHOOTING.md) - 解决常见问题

---

如果在安装过程中遇到问题，请查看 [故障排除指南](TROUBLESHOOTING.md) 或在 [GitHub Issues](https://github.com/your-username/dnf-rag-system/issues) 中提交问题。