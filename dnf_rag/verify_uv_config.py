#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
验证uv配置是否正确
"""

import json
import os
import subprocess

def check_mcp_config():
    """检查MCP配置"""
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
            print(f"   工作目录: {dnf_config.get('cwd')}")
            
            if dnf_config.get('command') == 'uv':
                print("✅ 已配置为使用uv")
                return True
            else:
                print("❌ 未配置为使用uv")
                return False
        else:
            print("❌ 未找到dnf_rag配置")
            return False
            
    except Exception as e:
        print(f"❌ 读取配置失败: {e}")
        return False

def test_uv_command():
    """测试uv命令"""
    try:
        result = subprocess.run(['uv', '--version'], 
                              capture_output=True, text=True, timeout=10)
        if result.returncode == 0:
            print(f"✅ uv版本: {result.stdout.strip()}")
            return True
        else:
            print("❌ uv命令失败")
            return False
    except Exception as e:
        print(f"❌ 测试uv失败: {e}")
        return False

def test_uv_run():
    """测试uv run命令"""
    try:
        # 测试简单的python命令
        result = subprocess.run(['uv', 'run', 'python', '--version'], 
                              capture_output=True, text=True, timeout=15)
        if result.returncode == 0:
            print(f"✅ uv run python版本: {result.stdout.strip()}")
            return True
        else:
            print("❌ uv run python失败")
            return False
    except Exception as e:
        print(f"❌ 测试uv run失败: {e}")
        return False

def main():
    """主函数"""
    print("🔍 验证uv配置")
    print("="*40)
    
    # 检查MCP配置
    config_ok = check_mcp_config()
    
    print("\n🧪 测试uv功能")
    print("-"*20)
    
    # 测试uv命令
    uv_ok = test_uv_command()
    
    # 测试uv run
    uv_run_ok = test_uv_run()
    
    print("\n📋 总结")
    print("-"*20)
    
    if config_ok and uv_ok and uv_run_ok:
        print("🎉 所有检查通过！")
        print("📝 配置已成功更新为使用uv")
        print("🔄 请重启Trae以加载新配置")
        
        print("\n💡 新的MCP配置:")
        print("   命令: uv run python mcp_server.py")
        print("   这将使用uv管理的Python环境运行MCP服务器")
    else:
        print("❌ 存在问题，请检查上述错误")

if __name__ == "__main__":
    main()