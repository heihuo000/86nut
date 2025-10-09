#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
更新MCP配置为使用uv而不是python
"""

import json
import os
import shutil
from datetime import datetime

def update_mcp_to_uv():
    """更新MCP配置使用uv"""
    mcp_path = "C:/mcp.json"
    
    if not os.path.exists(mcp_path):
        print(f"❌ 未找到MCP配置文件: {mcp_path}")
        return False
    
    try:
        # 备份原配置
        backup_path = f"{mcp_path}.backup_{datetime.now().strftime('%Y%m%d_%H%M%S')}"
        shutil.copy2(mcp_path, backup_path)
        print(f"✅ 已备份原配置到: {backup_path}")
        
        # 读取配置
        with open(mcp_path, 'r', encoding='utf-8') as f:
            config = json.load(f)
        
        # 更新dnf_rag配置
        if 'mcpServers' in config and 'dnf_rag' in config['mcpServers']:
            config['mcpServers']['dnf_rag'] = {
                "command": "uv",
                "args": ["run", "python", "mcp_server.py"],
                "cwd": "c:\\Users\\sen\\Desktop\\nut脚本\\86nut\\dnf_rag",
                "env": {
                    "PYTHONPATH": "c:\\Users\\sen\\Desktop\\nut脚本\\86nut\\dnf_rag",
                    "PYTHONIOENCODING": "utf-8"
                }
            }
            
            # 写回配置
            with open(mcp_path, 'w', encoding='utf-8') as f:
                json.dump(config, f, indent=2, ensure_ascii=False)
            
            print("✅ 已更新MCP配置为使用uv")
            print("📝 新配置:")
            print(json.dumps(config['mcpServers']['dnf_rag'], indent=2, ensure_ascii=False))
            
            return True
        else:
            print("❌ 未找到dnf_rag配置项")
            return False
            
    except Exception as e:
        print(f"❌ 更新配置失败: {e}")
        return False

def verify_uv_available():
    """验证uv是否可用"""
    try:
        import subprocess
        result = subprocess.run(['uv', '--version'], 
                              capture_output=True, text=True, timeout=10)
        if result.returncode == 0:
            print(f"✅ uv可用: {result.stdout.strip()}")
            return True
        else:
            print("❌ uv不可用")
            return False
    except Exception as e:
        print(f"❌ 检查uv失败: {e}")
        return False

def main():
    """主函数"""
    print("🔄 更新MCP配置为使用uv")
    print("="*40)
    
    # 检查uv是否可用
    if not verify_uv_available():
        print("\n⚠️ 请先安装uv:")
        print("   pip install uv")
        print("   或访问: https://docs.astral.sh/uv/getting-started/installation/")
        return
    
    # 更新配置
    if update_mcp_to_uv():
        print("\n🎉 配置更新成功！")
        print("📝 请重启Trae以加载新配置")
    else:
        print("\n❌ 配置更新失败")

if __name__ == "__main__":
    main()