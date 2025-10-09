# 故障排除指南 🔧

本指南帮助您解决DNF知识库RAG系统使用过程中可能遇到的常见问题。

## 📋 目录

- [安装问题](#安装问题)
- [配置问题](#配置问题)
- [运行时错误](#运行时错误)
- [性能问题](#性能问题)
- [MCP集成问题](#mcp集成问题)
- [API调用问题](#api调用问题)
- [文件格式问题](#文件格式问题)
- [日志分析](#日志分析)
- [常用诊断命令](#常用诊断命令)

## 🚀 安装问题

### 问题1：Python版本不兼容

**症状：**
```
ERROR: This package requires Python >=3.8
```

**解决方案：**
1. 检查Python版本：
   ```bash
   python --version
   ```
2. 升级到Python 3.8+：
   - Windows: 从[python.org](https://python.org)下载最新版本
   - Linux: `sudo apt update && sudo apt install python3.8`
   - macOS: `brew install python@3.8`

### 问题2：依赖包安装失败

**症状：**
```
ERROR: Could not install packages due to an EnvironmentError
```

**解决方案：**
1. 使用管理员权限：
   ```bash
   # Windows
   pip install -r requirements.txt --user
   
   # Linux/macOS
   sudo pip install -r requirements.txt
   ```

2. 使用国内镜像源：
   ```bash
   pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
   ```

3. 清理pip缓存：
   ```bash
   pip cache purge
   pip install -r requirements.txt
   ```

### 问题3：虚拟环境创建失败

**症状：**
```
Error: Unable to create virtual environment
```

**解决方案：**
1. 检查venv模块：
   ```bash
   python -m venv --help
   ```

2. 安装virtualenv：
   ```bash
   pip install virtualenv
   virtualenv venv
   ```

3. 使用conda（推荐）：
   ```bash
   conda create -n dnf_rag python=3.8
   conda activate dnf_rag
   ```

### 问题4：Git克隆失败

**症状：**
```
fatal: unable to access 'https://github.com/...': SSL certificate problem
```

**解决方案：**
1. 配置Git SSL：
   ```bash
   git config --global http.sslverify false
   ```

2. 使用SSH克隆：
   ```bash
   git clone git@github.com:username/dnf-rag-system.git
   ```

3. 下载ZIP包：
   直接从GitHub下载压缩包解压使用

## ⚙️ 配置问题

### 问题1：配置文件格式错误

**症状：**
```
JSONDecodeError: Expecting ',' delimiter: line 5 column 10
```

**解决方案：**
1. 验证JSON格式：
   ```python
   import json
   with open('config/config.json', 'r') as f:
       config = json.load(f)  # 会显示具体错误位置
   ```

2. 使用在线JSON验证器检查格式

3. 重新生成配置文件：
   ```bash
   python scripts/generate_config.py
   ```

### 问题2：API密钥配置错误

**症状：**
```
AuthenticationError: Invalid API key
```

**解决方案：**
1. 检查环境变量：
   ```bash
   # Windows
   echo %DASHSCOPE_API_KEY%
   
   # Linux/macOS
   echo $DASHSCOPE_API_KEY
   ```

2. 重新设置API密钥：
   ```bash
   # Windows
   set DASHSCOPE_API_KEY=your_api_key_here
   
   # Linux/macOS
   export DASHSCOPE_API_KEY=your_api_key_here
   ```

3. 在配置文件中直接设置（不推荐）：
   ```json
   {
     "api_config": {
       "api_key": "your_api_key_here"
     }
   }
   ```

### 问题3：知识库路径错误

**症状：**
```
FileNotFoundError: Knowledge base path not found
```

**解决方案：**
1. 检查路径是否存在：
   ```python
   import os
   print(os.path.exists("../DNF文件知识库"))
   ```

2. 使用绝对路径：
   ```json
   {
     "knowledge_base_paths": [
       "C:/Users/username/Desktop/DNF文件知识库"
     ]
   }
   ```

3. 创建软链接：
   ```bash
   # Windows
   mklink /D "DNF文件知识库" "C:\path\to\actual\knowledge\base"
   
   # Linux/macOS
   ln -s /path/to/actual/knowledge/base DNF文件知识库
   ```

## 🏃 运行时错误

### 问题1：内存不足

**症状：**
```
MemoryError: Unable to allocate array
```

**解决方案：**
1. 减少批处理大小：
   ```json
   {
     "performance": {
       "batch_size": 16,
       "chunk_size": 500
     }
   }
   ```

2. 启用内存映射：
   ```python
   # 在代码中添加
   import gc
   gc.collect()  # 强制垃圾回收
   ```

3. 增加虚拟内存（Windows）：
   - 控制面板 → 系统 → 高级系统设置 → 性能设置 → 虚拟内存

### 问题2：索引文件损坏

**症状：**
```
PickleError: Could not load index file
```

**解决方案：**
1. 重新构建索引：
   ```bash
   python build_index.py --rebuild
   ```

2. 检查磁盘空间：
   ```bash
   # Windows
   dir
   
   # Linux/macOS
   df -h
   ```

3. 备份恢复：
   ```bash
   cp data/simple_index.pkl.backup data/simple_index.pkl
   ```

### 问题3：模型加载失败

**症状：**
```
OSError: Can't load tokenizer for 'BAAI/bge-large-zh-v1.5'
```

**解决方案：**
1. 检查网络连接：
   ```bash
   ping huggingface.co
   ```

2. 使用本地模型：
   ```json
   {
     "embedding_model": "./models/bge-large-zh-v1.5"
   }
   ```

3. 设置代理：
   ```bash
   export HF_ENDPOINT=https://hf-mirror.com
   ```

### 问题4：编码错误

**症状：**
```
UnicodeDecodeError: 'gbk' codec can't decode byte
```

**解决方案：**
1. 设置环境变量：
   ```bash
   # Windows
   set PYTHONIOENCODING=utf-8
   
   # Linux/macOS
   export PYTHONIOENCODING=utf-8
   ```

2. 在代码中强制UTF-8：
   ```python
   import sys
   sys.stdout.reconfigure(encoding='utf-8')
   sys.stderr.reconfigure(encoding='utf-8')
   ```

## 🚀 性能问题

### 问题1：搜索速度慢

**症状：**
搜索响应时间超过5秒

**解决方案：**
1. 优化索引参数：
   ```json
   {
     "performance": {
       "batch_size": 64,
       "max_workers": 8,
       "cache_size": 2000
     }
   }
   ```

2. 使用GPU加速：
   ```bash
   pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
   ```

3. 启用缓存：
   ```python
   from functools import lru_cache
   
   @lru_cache(maxsize=1000)
   def cached_search(query, k):
       return server.search(query, k)
   ```

### 问题2：内存使用过高

**症状：**
系统内存使用率超过80%

**解决方案：**
1. 调整缓存大小：
   ```json
   {
     "performance": {
       "cache_size": 500,
       "max_workers": 2
     }
   }
   ```

2. 启用分页处理：
   ```python
   def paginated_search(query, total_k=100, page_size=10):
       results = []
       for i in range(0, total_k, page_size):
           batch = server.search(query, page_size)
           results.extend(batch)
       return results
   ```

### 问题3：并发处理问题

**症状：**
多用户同时访问时出现错误

**解决方案：**
1. 使用线程池：
   ```python
   from concurrent.futures import ThreadPoolExecutor
   
   with ThreadPoolExecutor(max_workers=4) as executor:
       futures = [executor.submit(server.search, query) for query in queries]
       results = [f.result() for f in futures]
   ```

2. 实现请求队列：
   ```python
   import queue
   import threading
   
   request_queue = queue.Queue(maxsize=100)
   ```

## 🔌 MCP集成问题

### 问题1：MCP服务器启动失败

**症状：**
```
Error: MCP server failed to start
```

**解决方案：**
1. 检查端口占用：
   ```bash
   # Windows
   netstat -ano | findstr :8000
   
   # Linux/macOS
   lsof -i :8000
   ```

2. 更换端口：
   ```bash
   python mcp_server.py --port 8001
   ```

3. 检查防火墙设置：
   ```bash
   # Windows
   netsh advfirewall firewall add rule name="DNF RAG MCP" dir=in action=allow protocol=TCP localport=8000
   ```

### 问题2：MCP协议通信错误

**症状：**
```
JSONRPCError: Invalid request format
```

**解决方案：**
1. 验证JSON-RPC格式：
   ```json
   {
     "jsonrpc": "2.0",
     "id": 1,
     "method": "tools/list",
     "params": {}
   }
   ```

2. 检查编码设置：
   ```python
   import sys
   sys.stdout.reconfigure(encoding='utf-8')
   ```

3. 启用调试模式：
   ```bash
   python mcp_server.py --debug
   ```

### 问题3：工具调用失败

**症状：**
```
ToolError: Tool 'dnf_knowledge_search' not found
```

**解决方案：**
1. 检查工具注册：
   ```python
   server = DNFRAGMCPServer()
   tools = server.get_tools()
   print([tool['name'] for tool in tools])
   ```

2. 重启MCP服务器：
   ```bash
   python mcp_server.py --reload
   ```

## 📡 API调用问题

### 问题1：API超时

**症状：**
```
TimeoutError: Request timed out after 30 seconds
```

**解决方案：**
1. 增加超时时间：
   ```json
   {
     "api_config": {
       "timeout": 60
     }
   }
   ```

2. 实现重试机制：
   ```python
   import time
   from functools import wraps
   
   def retry(max_attempts=3, delay=1):
       def decorator(func):
           @wraps(func)
           def wrapper(*args, **kwargs):
               for attempt in range(max_attempts):
                   try:
                       return func(*args, **kwargs)
                   except Exception as e:
                       if attempt < max_attempts - 1:
                           time.sleep(delay * (2 ** attempt))
                           continue
                       raise e
               return wrapper
           return decorator
   ```

### 问题2：API配额超限

**症状：**
```
QuotaExceededError: API quota exceeded
```

**解决方案：**
1. 检查API使用量：
   ```bash
   curl -H "Authorization: Bearer $DASHSCOPE_API_KEY" \
        https://dashscope.aliyuncs.com/api/v1/usage
   ```

2. 实现请求限流：
   ```python
   import time
   from threading import Lock
   
   class RateLimiter:
       def __init__(self, max_calls=100, time_window=60):
           self.max_calls = max_calls
           self.time_window = time_window
           self.calls = []
           self.lock = Lock()
       
       def wait_if_needed(self):
           with self.lock:
               now = time.time()
               self.calls = [call for call in self.calls if now - call < self.time_window]
               
               if len(self.calls) >= self.max_calls:
                   sleep_time = self.time_window - (now - self.calls[0])
                   time.sleep(sleep_time)
               
               self.calls.append(now)
   ```

### 问题3：API响应格式错误

**症状：**
```
JSONDecodeError: Expecting value: line 1 column 1
```

**解决方案：**
1. 检查API响应：
   ```python
   import requests
   
   response = requests.get(api_url)
   print(f"Status: {response.status_code}")
   print(f"Headers: {response.headers}")
   print(f"Content: {response.text[:200]}")
   ```

2. 添加响应验证：
   ```python
   def validate_api_response(response):
       if response.status_code != 200:
           raise APIError(f"API returned status {response.status_code}")
       
       try:
           data = response.json()
       except ValueError:
           raise APIError("Invalid JSON response")
       
       return data
   ```

## 📄 文件格式问题

### 问题1：PVF文件解析错误

**症状：**
```
FormatError: Invalid PVF file format
```

**解决方案：**
1. 检查文件编码：
   ```python
   import chardet
   
   with open('file.pvf', 'rb') as f:
       raw_data = f.read()
       encoding = chardet.detect(raw_data)['encoding']
       print(f"文件编码: {encoding}")
   ```

2. 转换文件编码：
   ```python
   # 转换为UTF-8
   with open('file.pvf', 'r', encoding='gbk') as f:
       content = f.read()
   
   with open('file_utf8.pvf', 'w', encoding='utf-8') as f:
       f.write(content)
   ```

3. 使用格式检查工具：
   ```python
   from enhanced_format_checker import EnhancedFormatChecker
   
   checker = EnhancedFormatChecker()
   result = checker.check_format('equ', content)
   print(result['errors'])
   ```

### 问题2：模板匹配失败

**症状：**
```
TemplateError: No matching template found
```

**解决方案：**
1. 检查模板文件：
   ```bash
   ls templates/
   cat templates/equipment_template.json
   ```

2. 手动指定模板：
   ```python
   result = checker.check_format(
       'equ', 
       content, 
       template='weapon_template'
   )
   ```

3. 创建自定义模板：
   ```json
   {
     "name": "custom_equipment",
     "fields": {
       "name": {"required": true, "type": "string"},
       "grade": {"required": true, "type": "integer"}
     }
   }
   ```

## 📊 日志分析

### 启用详细日志

```python
import logging

# 配置详细日志
logging.basicConfig(
    level=logging.DEBUG,
    format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler('logs/debug.log', encoding='utf-8'),
        logging.StreamHandler()
    ]
)

# 设置特定模块的日志级别
logging.getLogger('urllib3').setLevel(logging.WARNING)
logging.getLogger('transformers').setLevel(logging.WARNING)
```

### 常见日志模式

#### 1. 成功的搜索请求
```
2024-01-15 10:30:15 - dnf_rag.search - INFO - 搜索查询: "装备属性修改"
2024-01-15 10:30:15 - dnf_rag.embedding - DEBUG - 生成查询向量, 维度: 1024
2024-01-15 10:30:15 - dnf_rag.retrieval - DEBUG - 检索到 5 个相关文档
2024-01-15 10:30:15 - dnf_rag.search - INFO - 搜索完成, 耗时: 0.123s
```

#### 2. API调用错误
```
2024-01-15 10:30:20 - dnf_rag.api - ERROR - API调用失败: HTTPSConnectionPool(host='dashscope.aliyuncs.com', port=443)
2024-01-15 10:30:20 - dnf_rag.api - DEBUG - 重试第1次...
2024-01-15 10:30:22 - dnf_rag.api - INFO - API调用成功
```

#### 3. 内存警告
```
2024-01-15 10:30:25 - dnf_rag.memory - WARNING - 内存使用率: 85%, 建议清理缓存
2024-01-15 10:30:25 - dnf_rag.cache - INFO - 清理缓存, 释放内存: 256MB
```

### 日志分析脚本

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import re
from collections import defaultdict, Counter
from datetime import datetime

def analyze_logs(log_file):
    """分析日志文件"""
    
    error_patterns = defaultdict(int)
    performance_data = []
    api_calls = []
    
    with open(log_file, 'r', encoding='utf-8') as f:
        for line in f:
            # 提取错误信息
            if 'ERROR' in line:
                error_msg = re.search(r'ERROR - (.+)', line)
                if error_msg:
                    error_patterns[error_msg.group(1)] += 1
            
            # 提取性能数据
            perf_match = re.search(r'耗时: ([\d.]+)s', line)
            if perf_match:
                performance_data.append(float(perf_match.group(1)))
            
            # 提取API调用
            if 'API调用' in line:
                timestamp = re.search(r'(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2})', line)
                if timestamp:
                    api_calls.append(timestamp.group(1))
    
    # 生成报告
    print("=== 日志分析报告 ===")
    print(f"分析时间: {datetime.now()}")
    print()
    
    print("错误统计:")
    for error, count in error_patterns.most_common(10):
        print(f"  {error}: {count}次")
    print()
    
    if performance_data:
        print("性能统计:")
        print(f"  平均响应时间: {sum(performance_data)/len(performance_data):.3f}s")
        print(f"  最快响应: {min(performance_data):.3f}s")
        print(f"  最慢响应: {max(performance_data):.3f}s")
        print()
    
    print(f"API调用次数: {len(api_calls)}")

if __name__ == "__main__":
    analyze_logs("logs/rag_system.log")
```

## 🛠️ 常用诊断命令

### 系统环境检查

```bash
# 检查Python环境
python --version
pip list | grep -E "(torch|transformers|sentence-transformers)"

# 检查系统资源
# Windows
systeminfo | findstr /C:"Total Physical Memory"
wmic cpu get name

# Linux/macOS
free -h
lscpu
```

### 网络连接测试

```bash
# 测试API连接
curl -I https://dashscope.aliyuncs.com
ping huggingface.co

# 测试模型下载
python -c "from sentence_transformers import SentenceTransformer; SentenceTransformer('BAAI/bge-large-zh-v1.5')"
```

### 文件权限检查

```bash
# Windows
icacls data\simple_index.pkl

# Linux/macOS
ls -la data/simple_index.pkl
```

### 进程监控

```bash
# Windows
tasklist | findstr python

# Linux/macOS
ps aux | grep python
top -p $(pgrep -f mcp_server.py)
```

## 🆘 获取帮助

如果以上解决方案都无法解决您的问题，请：

1. **收集诊断信息：**
   ```bash
   python scripts/collect_diagnostics.py > diagnostics.txt
   ```

2. **查看详细日志：**
   ```bash
   tail -f logs/rag_system.log
   ```

3. **创建最小复现示例：**
   ```python
   # minimal_example.py
   from simple_rag_server import SimpleDNFRAGServer
   
   try:
       server = SimpleDNFRAGServer("data/simple_index.pkl", "config/config.json")
       result = server.search("test", 1)
       print("成功:", result)
   except Exception as e:
       print("错误:", e)
       import traceback
       traceback.print_exc()
   ```

4. **提交Issue：**
   - 访问 [GitHub Issues](https://github.com/your-username/dnf-rag-system/issues)
   - 包含错误信息、系统环境、复现步骤
   - 附上诊断信息和日志文件

5. **社区支持：**
   - 查看 [FAQ文档](FAQ.md)
   - 参与 [讨论区](https://github.com/your-username/dnf-rag-system/discussions)
   - 联系维护者：your-email@example.com

---

**记住：** 大多数问题都有解决方案，保持耐心，仔细阅读错误信息，按步骤排查问题。如果需要帮助，请提供详细的错误信息和系统环境。