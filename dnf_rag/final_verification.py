#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF RAG系统最终验证脚本
"""

import os
import sys
import json
import subprocess

def test_uv_environment():
    """测试uv环境"""
    print("🔍 测试uv环境")
    print("-" * 30)
    
    try:
        # 测试uv版本
        result = subprocess.run(['uv', '--version'], 
                              capture_output=True, text=True, timeout=10)
        if result.returncode == 0:
            print(f"✅ uv版本: {result.stdout.strip()}")
        else:
            print("❌ uv不可用")
            return False
        
        # 测试uv run
        result = subprocess.run(['uv', 'run', 'python', '-c', 'import numpy; print("numpy版本:", numpy.__version__)'], 
                              capture_output=True, text=True, timeout=15)
        if result.returncode == 0:
            print(f"✅ {result.stdout.strip()}")
        else:
            print("❌ uv run numpy测试失败")
            return False
            
        # 测试所有关键依赖
        test_imports = [
            'numpy',
            'sklearn',
            'langchain',
            'openai',
            'dashscope',
            'mcp'
        ]
        
        for module in test_imports:
            result = subprocess.run(['uv', 'run', 'python', '-c', f'import {module}; print("{module}: OK")'], 
                                  capture_output=True, text=True, timeout=10)
            if result.returncode == 0:
                print(f"✅ {result.stdout.strip()}")
            else:
                print(f"❌ {module}导入失败")
                return False
        
        return True
        
    except Exception as e:
        print(f"❌ 测试uv环境失败: {e}")
        return False

def test_mcp_server():
    """测试MCP服务器启动"""
    print("\n🚀 测试MCP服务器启动")
    print("-" * 30)
    
    try:
        # 测试MCP服务器能否导入
        result = subprocess.run(['uv', 'run', 'python', '-c', 
                               'from mcp_server import DNFRAGMCPServer; print("MCP服务器导入成功")'], 
                              capture_output=True, text=True, timeout=15)
        if result.returncode == 0:
            print("✅ MCP服务器导入成功")
            return True
        else:
            print(f"❌ MCP服务器导入失败: {result.stderr}")
            return False
            
    except Exception as e:
        print(f"❌ 测试MCP服务器失败: {e}")
        return False

def check_mcp_config():
    """检查MCP配置"""
    print("\n⚙️ 检查MCP配置")
    print("-" * 30)
    
    mcp_path = "C:/mcp.json"
    
    if not os.path.exists(mcp_path):
        print("❌ 未找到MCP配置文件")
        return False
    
    try:
        with open(mcp_path, 'r', encoding='utf-8') as f:
            config = json.load(f)
        
        if 'mcpServers' in config and 'dnf_rag' in config['mcpServers']:
            dnf_config = config['mcpServers']['dnf_rag']
            print("✅ 找到dnf_rag配置:")
            print(f"   命令: {dnf_config.get('command')}")
            print(f"   参数: {dnf_config.get('args')}")
            
            if dnf_config.get('command') == 'uv' and 'run' in dnf_config.get('args', []):
                print("✅ 配置正确使用uv")
                return True
            else:
                print("❌ 配置未正确使用uv")
                return False
        else:
            print("❌ 未找到dnf_rag配置")
            return False
            
    except Exception as e:
        print(f"❌ 读取配置失败: {e}")
        return False

def show_usage_guide():
    """显示使用指南"""
    print("\n📖 使用指南")
    print("=" * 50)
    
    print("1. 🔄 重启Trae以加载新配置")
    print("2. 🛠️ 在Trae中使用DNF知识库工具:")
    print("   @dnf_knowledge_search STK文件结构")
    print("   @dnf_knowledge_qa 如何修改装备属性？")
    print("   @dnf_file_format_check 检查PVF格式")
    
    print("\n3. 💻 命令行使用:")
    print("   uv run python test_retrieval.py")
    print("   uv run python simple_rag_server.py --test '你的问题'")
    print("   uv run python mcp_server.py")
    
    print("\n4. 🔧 环境管理:")
    print("   uv sync                    # 同步依赖")
    print("   uv add <package>           # 添加新依赖")
    print("   uv run <command>           # 在uv环境中运行命令")

def main():
    """主函数"""
    print("🎯 DNF RAG系统最终验证")
    print("=" * 50)
    
    # 测试uv环境
    uv_ok = test_uv_environment()
    
    # 测试MCP服务器
    mcp_ok = test_mcp_server()
    
    # 检查MCP配置
    config_ok = check_mcp_config()
    
    # 总结
    print("\n" + "=" * 50)
    if uv_ok and mcp_ok and config_ok:
        print("🎉 所有测试通过！系统已准备就绪。")
        show_usage_guide()
    else:
        print("❌ 存在问题，请检查上述错误。")
        
        if not uv_ok:
            print("💡 建议: 检查uv安装和依赖")
        if not mcp_ok:
            print("💡 建议: 检查MCP服务器代码")
        if not config_ok:
            print("💡 建议: 检查MCP配置文件")

if __name__ == "__main__":
    main()