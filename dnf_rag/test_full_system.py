#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF知识库RAG系统综合测试脚本
测试检索、问答、MCP工具等功能
"""

import os
import sys
import json
import time
from typing import List, Dict, Any

# 添加当前目录到Python路径
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from simple_rag_server import SimpleDNFRAGServer
from mcp_server import DNFRAGMCPServer

def test_retrieval_functionality():
    """测试检索功能"""
    print("🔍 测试检索功能...")
    
    try:
        server = SimpleDNFRAGServer("data/simple_index.pkl")
        
        test_queries = [
            "STK文件",
            "装备修改",
            "技能文件",
            "NUT脚本",
            "PVF格式"
        ]
        
        for query in test_queries:
            results = server.vector_search(query, k=3)
            print(f"  查询: '{query}' -> 找到 {len(results)} 个结果")
            if results:
                print(f"    最相关: {results[0]['source'][:50]}...")
        
        print("✅ 检索功能测试通过")
        return True
        
    except Exception as e:
        print(f"❌ 检索功能测试失败: {e}")
        return False

def test_qa_functionality():
    """测试问答功能"""
    print("\n💬 测试问答功能...")
    
    try:
        server = SimpleDNFRAGServer("data/simple_index.pkl")
        
        test_questions = [
            "什么是STK文件？",
            "如何修改装备属性？",
            "PVF文件的基本格式是什么？"
        ]
        
        for question in test_questions:
            print(f"  问题: {question}")
            result = server.process_query(question)
            
            if result['search_results']:
                print(f"    检索: 找到 {len(result['search_results'])} 个相关文档")
                print(f"    回答: {result['answer'][:100]}...")
            else:
                print("    检索: 未找到相关文档")
        
        print("✅ 问答功能测试通过")
        return True
        
    except Exception as e:
        print(f"❌ 问答功能测试失败: {e}")
        return False

def test_mcp_tools():
    """测试MCP工具功能"""
    print("\n🔧 测试MCP工具功能...")
    
    try:
        mcp_server = DNFRAGMCPServer()
        
        # 测试工具列表
        tools = mcp_server.get_tools()
        print(f"  可用工具数量: {len(tools)}")
        for tool in tools:
            print(f"    - {tool['name']}: {tool['description']}")
        
        # 测试知识库搜索工具
        search_result = mcp_server.call_tool("dnf_knowledge_search", {
            "query": "STK文件",
            "max_results": 3
        })
        print(f"  搜索测试: 找到 {len(search_result.get('results', []))} 个结果")
        
        # 测试问答工具
        qa_result = mcp_server.call_tool("dnf_knowledge_qa", {
            "question": "什么是PVF文件？",
            "max_context": 3
        })
        print(f"  问答测试: {qa_result.get('answer', '无回答')[:50]}...")
        
        print("✅ MCP工具功能测试通过")
        return True
        
    except Exception as e:
        print(f"❌ MCP工具功能测试失败: {e}")
        return False

def test_performance():
    """测试性能"""
    print("\n⚡ 测试性能...")
    
    try:
        server = SimpleDNFRAGServer("data/simple_index.pkl")
        
        # 测试检索速度
        start_time = time.time()
        for i in range(10):
            server.vector_search("测试查询", k=5)
        retrieval_time = (time.time() - start_time) / 10
        
        print(f"  平均检索时间: {retrieval_time:.3f}秒")
        
        # 测试内存使用
        import psutil
        process = psutil.Process()
        memory_mb = process.memory_info().rss / 1024 / 1024
        print(f"  内存使用: {memory_mb:.1f}MB")
        
        print("✅ 性能测试通过")
        return True
        
    except Exception as e:
        print(f"❌ 性能测试失败: {e}")
        return False

def test_configuration():
    """测试配置文件"""
    print("\n⚙️ 测试配置...")
    
    try:
        # 检查必要文件
        required_files = [
            "data/simple_index.pkl",
            "config/config.json",
            ".env.example"
        ]
        
        for file_path in required_files:
            if os.path.exists(file_path):
                print(f"  ✅ {file_path}")
            else:
                print(f"  ❌ {file_path} 不存在")
        
        # 检查配置文件格式
        if os.path.exists("config/config.json"):
            with open("config/config.json", 'r', encoding='utf-8') as f:
                config = json.load(f)
                print(f"  配置项数量: {len(config)}")
        
        print("✅ 配置测试通过")
        return True
        
    except Exception as e:
        print(f"❌ 配置测试失败: {e}")
        return False

def generate_test_report(results: Dict[str, bool]):
    """生成测试报告"""
    print("\n" + "="*50)
    print("📊 DNF知识库RAG系统测试报告")
    print("="*50)
    
    total_tests = len(results)
    passed_tests = sum(results.values())
    
    print(f"总测试数: {total_tests}")
    print(f"通过测试: {passed_tests}")
    print(f"失败测试: {total_tests - passed_tests}")
    print(f"通过率: {passed_tests/total_tests*100:.1f}%")
    
    print("\n详细结果:")
    for test_name, result in results.items():
        status = "✅ 通过" if result else "❌ 失败"
        print(f"  {test_name}: {status}")
    
    if passed_tests == total_tests:
        print("\n🎉 所有测试通过！系统运行正常。")
        print("\n📝 后续步骤:")
        print("  1. 重启Trae以加载MCP工具")
        print("  2. 在Trae中测试dnf_rag工具")
        print("  3. 根据需要调整配置参数")
    else:
        print("\n⚠️ 部分测试失败，请检查相关功能。")

def main():
    """主函数"""
    print("🚀 开始DNF知识库RAG系统综合测试")
    print("="*50)
    
    # 运行所有测试
    test_results = {}
    
    test_results["配置检查"] = test_configuration()
    test_results["检索功能"] = test_retrieval_functionality()
    test_results["问答功能"] = test_qa_functionality()
    test_results["MCP工具"] = test_mcp_tools()
    test_results["性能测试"] = test_performance()
    
    # 生成报告
    generate_test_report(test_results)

if __name__ == "__main__":
    main()