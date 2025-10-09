#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
测试DNF知识库检索功能
"""

import sys
from simple_indexer import SimpleDNFRetriever


def test_retrieval():
    """测试检索功能"""
    print("🧪 开始测试检索功能...")
    
    # 初始化检索器
    try:
        retriever = SimpleDNFRetriever("data/simple_index.pkl")
        print("✅ 检索器初始化成功")
    except Exception as e:
        print(f"❌ 检索器初始化失败: {e}")
        return
    
    # 测试查询列表
    test_queries = [
        "装备",
        "属性",
        "技能",
        "PVF文件",
        "如何修改装备属性",
        "装备基础属性修改",
        "技能文件格式",
        "NUT脚本",
        "CHR文件",
        "STK文件"
    ]
    
    for query in test_queries:
        print(f"\n🔍 测试查询: '{query}'")
        try:
            results = retriever.search(query, k=3)
            print(f"   检索到 {len(results)} 个结果")
            
            for i, result in enumerate(results, 1):
                score = result.get('score', 0)
                source = result['metadata'].get('source', '未知来源')
                content_preview = result['content'][:100].replace('\n', ' ')
                print(f"   [{i}] 相关度: {score:.3f} | 来源: {source}")
                print(f"       内容预览: {content_preview}...")
                
        except Exception as e:
            print(f"   ❌ 检索失败: {e}")
    
    print("\n✅ 检索功能测试完成")


def interactive_test():
    """交互式测试"""
    print("💬 进入交互式检索测试，输入 'quit' 退出")
    
    try:
        retriever = SimpleDNFRetriever("data/simple_index.pkl")
        print("✅ 检索器初始化成功")
    except Exception as e:
        print(f"❌ 检索器初始化失败: {e}")
        return
    
    while True:
        try:
            query = input("\n❓ 请输入检索查询: ").strip()
            if query.lower() in ['quit', 'exit', '退出']:
                break
            if not query:
                continue
            
            results = retriever.search(query, k=5)
            print(f"\n🔍 检索到 {len(results)} 个相关文档:")
            
            for i, result in enumerate(results, 1):
                score = result.get('score', 0)
                source = result['metadata'].get('source', '未知来源')
                content = result['content'][:300]
                
                print(f"\n【结果 {i}】(相关度: {score:.3f})")
                print(f"来源: {source}")
                print(f"内容: {content}...")
                print("-" * 50)
                
        except KeyboardInterrupt:
            print("\n👋 再见！")
            break
        except Exception as e:
            print(f"❌ 检索时出错: {e}")


if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] == "--interactive":
        interactive_test()
    else:
        test_retrieval()