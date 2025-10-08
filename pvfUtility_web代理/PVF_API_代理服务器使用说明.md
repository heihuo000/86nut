# pvfUtility WebApi 代理服务器使用说明

## 概述

这个代理服务器解决了pvfUtility WebApi只允许localhost访问的限制，使局域网内的其他机器能够访问pvfUtility的API服务。

## 功能特性

- ✅ 转发所有pvfUtility API请求到localhost:27000
- ✅ 支持GET、POST、PUT、DELETE请求方法
- ✅ 支持CORS跨域访问
- ✅ 允许局域网访问
- ✅ 完整的错误处理和日志记录
- ✅ 健康检查接口
- ✅ 自动重试和超时处理

## 快速开始

### 1. 环境要求

- Python 3.7+
- pvfUtility软件正在运行且WebApi功能已启用
- Windows防火墙已配置允许端口8080

### 2. 安装依赖

```bash
pip install -r requirements.txt
```

### 3. 启动代理服务器

```bash
python pvf_api_proxy.py
```

启动成功后会显示：
```
============================================================
pvfUtility WebApi 代理服务器启动中...
============================================================
代理服务器地址: http://192.168.1.6:8080
目标API地址: http://localhost:27000
============================================================
```

## 使用方法

### 基础访问地址

- **本机访问**: `http://localhost:8080`
- **局域网访问**: `http://192.168.1.6:8080`

### API接口格式

原始pvfUtility API格式：
```
http://localhost:27000/Api/PvfUtiltiy/[接口名称]
```

通过代理访问格式：
```
http://192.168.1.6:8080/Api/PvfUtiltiy/[接口名称]
```

### 常用API示例

#### 1. 获取版本信息
```bash
# 本机访问
curl http://localhost:8080/Api/PvfUtiltiy/getVersion

# 局域网访问
curl http://192.168.1.6:8080/Api/PvfUtiltiy/getVersion
```

响应示例：
```json
{
  "Data": "2023.3.9.1",
  "IsError": false,
  "Msg": null,
  "ErrorId": 0
}
```

#### 2. 获取PVF根目录列表
```bash
curl http://192.168.1.6:8080/Api/PvfUtiltiy/getPvfRootDirectory
```

#### 3. 获取文件列表
```bash
curl "http://192.168.1.6:8080/Api/PvfUtiltiy/GetFileList?dirName=equipment&returnType=0"
```

#### 4. 健康检查
```bash
curl http://192.168.1.6:8080/health
```

响应示例：
```json
{
  "proxy_status": "online",
  "pvfUtility_status": "online",
  "pvfUtility_version": "2023.3.9.1",
  "proxy_url": "http://192.168.1.6:8080",
  "target_url": "http://localhost:27000"
}
```

## 网络配置

### 防火墙规则

代理服务器已自动配置以下防火墙规则：
```bash
# 允许端口8080入站连接
netsh advfirewall firewall add rule name="Allow PVF Proxy Port 8080" dir=in action=allow protocol=TCP localport=8080
```

### 网络信息

- **本机IP地址**: 192.168.1.6
- **代理服务器端口**: 8080
- **目标API端口**: 27000 (pvfUtility)

## 错误处理

### 常见错误及解决方案

#### 1. 连接被拒绝
```json
{
  "error": "无法连接到pvfUtility API服务器",
  "message": "请确保pvfUtility软件正在运行且WebApi功能已启用"
}
```

**解决方案**: 确保pvfUtility软件正在运行

#### 2. 请求超时
```json
{
  "error": "请求超时",
  "message": "pvfUtility API响应超时"
}
```

**解决方案**: 检查pvfUtility软件状态，重启代理服务器

#### 3. API路径未找到
```json
{
  "error": "API路径未找到",
  "message": "请检查API路径是否正确"
}
```

**解决方案**: 检查API路径拼写是否正确

## 日志文件

代理服务器会生成日志文件：
- **文件位置**: `pvf_proxy.log`
- **日志级别**: INFO
- **编码格式**: UTF-8

日志内容包括：
- 请求信息（方法、URL、参数）
- 响应状态码
- 错误信息
- 连接状态

## 安全注意事项

1. **仅限局域网使用**: 代理服务器绑定到所有网络接口(0.0.0.0)，请确保仅在可信的局域网环境中使用
2. **防火墙配置**: 已配置防火墙规则允许端口8080，如需更严格的安全控制，可以限制特定IP访问
3. **HTTPS支持**: 当前版本使用HTTP协议，如需加密传输，建议在生产环境中配置HTTPS

## 性能优化

- **多线程支持**: 代理服务器启用了多线程支持，可以处理并发请求
- **超时设置**: API请求超时时间设置为30秒
- **连接复用**: 使用requests库的连接池功能

## 故障排除

### 1. 检查服务状态
```bash
# 检查代理服务器状态
curl http://192.168.1.6:8080/health

# 检查端口监听状态
netstat -an | findstr :8080
```

### 2. 检查防火墙规则
```bash
netsh advfirewall firewall show rule name="Allow PVF Proxy Port 8080"
```

### 3. 检查pvfUtility进程
```bash
tasklist | findstr -i pvf
```

## 开发者信息

- **版本**: 1.0.0
- **开发语言**: Python 3
- **依赖框架**: Flask, Flask-CORS, requests
- **支持平台**: Windows

## 更新日志

### v1.0.0 (2025-10-08)
- 初始版本发布
- 支持所有pvfUtility API转发
- 支持CORS和局域网访问
- 添加健康检查接口
- 完整的错误处理和日志记录