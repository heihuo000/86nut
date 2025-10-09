#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF RAG系统快速验证脚本
"""

import os
import sys
import json

# 添加当前目录到Python路径
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

def test_basic_functionality():
    """测试基本功能"""
    print("🔍 快速功能验证")
    print("="*40)
    
    try:
        # 测试检索功能
        from simple_indexer import SimpleDNFRetriever
        
        print("1. 测试检索功能...")
        retriever = SimpleDNFRetriever("data/simple_index.pkl")
        results = retriever.search("STK文件", k=3)
        print(f"   ✅ 检索成功，找到 {len(results)} 个结果")
        
        # 测试RAG服务器
        from simple_rag_server import SimpleDNFRAGServer
        
        print("2. 测试RAG服务器...")
        server = SimpleDNFRAGServer("data/simple_index.pkl")
        search_results = server.vector_search("装备修改", k=3)
        print(f"   ✅ RAG服务器正常，找到 {len(search_results)} 个结果")
        
        # 测试MCP工具
        from mcp_server import DNFRAGMCPServer
        
        print("3. 测试MCP工具...")
        mcp_server = DNFRAGMCPServer()
        tools = mcp_server.get_tools()
        print(f"   ✅ MCP工具正常，共 {len(tools)} 个工具")
        
        print("\n🎉 所有基本功能正常！")
        return True
        
    except Exception as e:
        print(f"❌ 测试失败: {e}")
        return False

def check_configuration():
    """检查配置状态"""
    print("\n⚙️ 配置状态检查")
    print("="*40)
    
    # 检查必要文件
    required_files = [
        "data/simple_index.pkl",
        "config/config.json",
        "mcp_server.py",
        "simple_rag_server.py",
        "simple_indexer.py"
    ]
    
    all_files_exist = True
    for file_path in required_files:
        if os.path.exists(file_path):
            print(f"✅ {file_path}")
        else:
            print(f"❌ {file_path} 缺失")
            all_files_exist = False
    
    # 检查MCP配置
    mcp_paths = ["C:/mcp.json", "C:/Users/sen/AppData/Roaming/Trae/User/mcp.json"]
    mcp_configured = False
    
    for path in mcp_paths:
        if os.path.exists(path):
            print(f"✅ 找到MCP配置: {path}")
            mcp_configured = True
            break
    
    if not mcp_configured:
        print("⚠️ 未找到MCP配置文件")
    
    return all_files_exist and mcp_configured

def show_usage_instructions():
    """显示使用说明"""
    print("\n📖 使用说明")
    print("="*40)
    
    print("1. 重启Trae以加载MCP工具")
    print("2. 在Trae中使用以下命令:")
    print("   @dnf_knowledge_search STK文件结构")
    print("   @dnf_knowledge_qa 如何修改装备属性？")
    print("   @dnf_file_format_check 检查PVF格式")
    
    print("\n3. 命令行使用:")
    print("   python test_retrieval.py")
    print("   python simple_rag_server.py --test '你的问题'")
    print("   python simple_rag_server.py --interactive")

def main():
    """主函数"""
    print("🚀 DNF RAG系统快速验证")
    print("="*50)
    
    # 基本功能测试
    basic_ok = test_basic_functionality()
    
    # 配置检查
    config_ok = check_configuration()
    
    # 显示使用说明
    show_usage_instructions()
    
    # 总结
    print("\n" + "="*50)
    if basic_ok and config_ok:
        print("🎉 系统验证通过！可以正常使用。")
    else:
        print("⚠️ 系统存在问题，请检查上述错误。")
    
    print("📝 如有问题，请查看 SYSTEM_STATUS.md 获取详细信息")

if __name__ == "__main__":
    main()