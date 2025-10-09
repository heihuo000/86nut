#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
更新Trae MCP配置文件，添加DNF RAG工具
"""

import json
import os
import shutil
from pathlib import Path


def update_mcp_config():
    """更新MCP配置文件"""
    mcp_config_path = Path("C:/mcp.json")
    backup_path = Path("C:/mcp.json.backup")
    
    # DNF RAG工具配置
    dnf_rag_config = {
        "dnf_rag": {
            "command": "python",
            "args": ["mcp_server.py"],
            "cwd": str(Path(__file__).parent.absolute()).replace("\\", "/"),
            "env": {
                "PYTHONPATH": str(Path(__file__).parent.absolute()).replace("\\", "/"),
                "PYTHONIOENCODING": "utf-8"
            }
        }
    }
    
    try:
        # 备份原配置文件
        if mcp_config_path.exists():
            shutil.copy2(mcp_config_path, backup_path)
            print(f"✅ 已备份原配置文件到: {backup_path}")
            
            # 读取现有配置
            with open(mcp_config_path, 'r', encoding='utf-8') as f:
                existing_config = json.load(f)
        else:
            existing_config = {}
            print("📝 创建新的MCP配置文件")
        
        # 合并配置
        existing_config.update(dnf_rag_config)
        
        # 写入更新后的配置
        with open(mcp_config_path, 'w', encoding='utf-8') as f:
            json.dump(existing_config, f, ensure_ascii=False, indent=2)
        
        print(f"✅ MCP配置已更新: {mcp_config_path}")
        print("🔧 添加的工具配置:")
        print(json.dumps(dnf_rag_config, ensure_ascii=False, indent=2))
        
        return True
        
    except PermissionError:
        print(f"❌ 权限不足，无法修改 {mcp_config_path}")
        print("💡 请以管理员身份运行此脚本，或手动添加以下配置:")
        print(json.dumps(dnf_rag_config, ensure_ascii=False, indent=2))
        return False
        
    except Exception as e:
        print(f"❌ 更新配置失败: {e}")
        return False


def show_manual_config():
    """显示手动配置说明"""
    config_content = {
        "dnf_rag": {
            "command": "python",
            "args": ["mcp_server.py"],
            "cwd": str(Path(__file__).parent.absolute()).replace("\\", "/"),
            "env": {
                "PYTHONPATH": str(Path(__file__).parent.absolute()).replace("\\", "/"),
                "PYTHONIOENCODING": "utf-8"
            }
        }
    }
    
    print("\n📋 手动配置说明:")
    print("1. 打开 C:/mcp.json 文件")
    print("2. 添加以下配置到JSON对象中:")
    print(json.dumps(config_content, ensure_ascii=False, indent=2))
    print("\n3. 保存文件并重启Trae")


def main():
    """主函数"""
    print("🔧 DNF RAG MCP配置更新工具")
    print("=" * 50)
    
    # 检查当前目录
    current_dir = Path(__file__).parent.absolute()
    print(f"📁 当前工作目录: {current_dir}")
    
    # 检查必要文件
    required_files = ["mcp_server.py", "simple_rag_server.py", "simple_indexer.py"]
    missing_files = []
    
    for file in required_files:
        if not (current_dir / file).exists():
            missing_files.append(file)
    
    if missing_files:
        print(f"❌ 缺少必要文件: {missing_files}")
        return 1
    
    print("✅ 所有必要文件都存在")
    
    # 尝试更新配置
    if update_mcp_config():
        print("\n🎉 配置更新成功！")
        print("📝 请重启Trae以加载新的MCP工具")
    else:
        show_manual_config()
    
    return 0


if __name__ == "__main__":
    exit(main())