# 86nut - DNF 文件修改与开发工具集

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)

## 🎯 项目简介

86nut 是一个专为 DNF（地下城与勇士）游戏文件修改和开发而设计的综合性工具集。项目包含了完整的知识库、智能工具和实用脚本，帮助开发者高效地进行 PVF 文件编辑、模组开发和游戏内容定制。

## ✨ 核心特性

- 📚 **完整的 DNF 文件知识库** - 涵盖所有 PVF 文件格式的详细文档
- 🤖 **智能 RAG 系统** - 基于 AI 的文档检索和问答系统
- 🛠️ **专业开发工具** - PVF 格式化、编码转换、代理服务等
- 📖 **教程与案例** - 从基础到高级的完整学习路径
- 🔧 **实用脚本集** - 常用的 NUT 脚本和模组示例

## 📁 项目结构

```
86nut/
├── 📚 DNF文件知识库/           # 完整的 DNF 文件格式知识库
│   ├── CHR文件知识库/          # 角色文件格式文档
│   ├── 技能文件知识库/         # 技能系统文档
│   ├── STK文件知识库/          # 消耗品文件文档
│   ├── MAP文件知识库/          # 地图文件文档
│   ├── MOB文件知识库/          # 怪物文件文档
│   ├── NUT文件知识库/          # NUT 脚本文档
│   ├── 参考资料/               # 官方样本和教程
│   └── 格式规范工具/           # 格式检查工具
│
├── 🎓 DAF学院内容整合/         # 教学内容和案例
│   ├── 装备修改知识库/         # 装备修改教程
│   ├── 技能修改教程知识库/     # 技能修改教程
│   ├── 怪物修改知识库/         # 怪物修改教程
│   └── 高级教程知识库/         # 高级开发技巧
│
├── 🤖 dnf_rag/                # AI 智能检索系统
│   ├── docs/                  # 详细文档
│   ├── config/                # 配置文件
│   ├── tools/                 # 工具脚本
│   └── mcp_server.py          # MCP 服务器
│
├── 🌐 pvfUtility_web代理/      # Web API 代理服务
│   ├── pvf_api_proxy.py       # API 代理服务器
│   └── 移动端API优化使用指南.md
│
├── 🛠️ 实用工具/
│   ├── pvf_formatter.py       # PVF 格式化工具
│   ├── 智能PVF编码转换工具.py  # 编码转换工具
│   └── 简化版文档转换工具.py   # 文档转换工具
│
└── 📝 项目文档/
    ├── nut函数笔记.md          # NUT 函数参考
    ├── 拔刀斩模组集成操作步骤.md
    └── 墓碑脱手功能添加方案.md
```

## 🚀 快速开始

### 1. 环境准备

```bash
# 克隆项目
git clone https://github.com/your-username/86nut.git
cd 86nut

# 安装 Python 依赖（如果使用 RAG 系统）
cd dnf_rag
pip install -r requirements.txt
```

### 2. 使用知识库

- 📖 浏览 `DNF文件知识库/` 获取文件格式文档
- 🎯 查看 `DAF学院内容整合/` 学习修改教程
- 🔍 使用 `dnf_rag/` 进行智能文档检索

### 3. 启动 RAG 系统

```bash
cd dnf_rag
python start_rag.py
```

## 🎯 主要功能模块

### 📚 DNF 文件知识库
- **完整格式文档**: 涵盖 CHR、STK、MAP、MOB 等所有文件类型
- **官方样本**: 包含官方注释的标准格式样板
- **实用工具**: 格式检查和验证工具

### 🤖 智能 RAG 系统
- **语义检索**: 基于向量数据库的智能文档搜索
- **AI 问答**: 自然语言问答，快速获取开发指导
- **格式验证**: 智能 PVF 文件格式检查和修正建议

### 🛠️ 开发工具集
- **PVF 格式化**: 自动格式化和美化 PVF 文件
- **编码转换**: 智能处理文件编码问题
- **Web 代理**: 提供 HTTP API 接口

### 🎓 教学资源
- **分层教程**: 从基础到高级的完整学习路径
- **实战案例**: 真实的模组开发案例
- **最佳实践**: 经验总结和开发规范

## 📖 详细文档

- [📥 安装指南](dnf_rag/docs/INSTALLATION.md) - 详细的安装和配置说明
- [📘 使用手册](dnf_rag/docs/USAGE.md) - 完整的功能使用指南
- [🔧 API 文档](dnf_rag/docs/API.md) - 开发接口说明
- [❓ 故障排除](dnf_rag/docs/TROUBLESHOOTING.md) - 常见问题解决方案

## 🎯 应用场景

### 🎮 游戏模组开发
- 装备属性修改和平衡调整
- 技能效果定制和新技能创建
- 怪物行为修改和新怪物设计
- 地图内容扩展和副本创建

### 📚 学习和研究
- DNF 文件格式学习和理解
- 游戏机制研究和分析
- 模组开发技能提升

### 🛠️ 工具开发
- 基于知识库的自动化工具开发
- PVF 文件处理工具集成
- 批量修改和格式化工具

## 🤝 贡献指南

我们欢迎所有形式的贡献！

1. **Fork** 本项目
2. 创建特性分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送到分支 (`git push origin feature/AmazingFeature`)
5. 开启 **Pull Request**

### 贡献类型
- 📝 文档改进和错误修正
- 🐛 Bug 修复和问题报告
- ✨ 新功能开发和工具添加
- 📚 知识库内容扩充
- 🎯 案例和教程贡献

## 📄 许可证

本项目采用 [MIT 许可证](LICENSE) - 查看 LICENSE 文件了解详情。

## 🙏 致谢

- DNF 开发社区的知识分享和支持
- 所有贡献者的宝贵建议和代码贡献
- 开源社区提供的优秀工具和库

## 📞 联系我们

- 📧 **邮箱**: [your-email@example.com]
- 💬 **讨论**: [GitHub Discussions](https://github.com/your-username/86nut/discussions)
- 🐛 **问题报告**: [GitHub Issues](https://github.com/your-username/86nut/issues)

---

⭐ 如果这个项目对您有帮助，请给我们一个 Star！