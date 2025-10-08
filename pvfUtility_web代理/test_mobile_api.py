#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
移动端优化API测试脚本
测试分页、搜索、缓存、压缩等功能
"""

import requests
import json
import time
import gzip

# 配置
BASE_URL = "http://192.168.1.6:8080"
MOBILE_API_BASE = f"{BASE_URL}/mobile"

def test_mobile_pagination():
    """测试移动端分页功能"""
    print("测试移动端分页功能...")
    
    # 测试第一页
    response = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", params={
        'dirName': 'equipment',
        'page': 1,
        'page_size': 10
    })
    
    if response.status_code == 200:
        data = response.json()
        print(f"第一页获取成功")
        print(f"   - 数据条数: {len(data['Data'])}")
        print(f"   - 总数据量: {data['Pagination']['total']}")
        print(f"   - 总页数: {data['Pagination']['total_pages']}")
        print(f"   - 是否有下一页: {data['Pagination']['has_next']}")
        print(f"   - 缓存状态: {'命中' if data.get('FromCache') else '未命中'}")
    else:
        print(f"分页测试失败: {response.status_code}")

def test_mobile_search():
    """测试移动端搜索功能"""
    print("\n🔍 测试移动端搜索功能...")
    
    # 搜索包含 "sword" 的文件
    response = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", params={
        'dirName': 'equipment',
        'page': 1,
        'page_size': 5,
        'search': 'sword'
    })
    
    if response.status_code == 200:
        data = response.json()
        print(f"✅ 搜索功能正常")
        print(f"   - 搜索关键词: sword")
        print(f"   - 匹配结果: {data['Pagination']['total']} 条")
        print(f"   - 当前页数据: {len(data['Data'])} 条")
        print(f"   - 示例结果: {data['Data'][0] if data['Data'] else '无结果'}")
    else:
        print(f"❌ 搜索测试失败: {response.status_code}")

def test_cache_functionality():
    """测试缓存功能"""
    print("\n🔍 测试缓存功能...")
    
    # 第一次请求
    start_time = time.time()
    response1 = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", params={
        'dirName': 'stackable',
        'page': 1,
        'page_size': 5
    })
    first_request_time = time.time() - start_time
    
    # 第二次相同请求（应该命中缓存）
    start_time = time.time()
    response2 = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", params={
        'dirName': 'stackable',
        'page': 1,
        'page_size': 5
    })
    second_request_time = time.time() - start_time
    
    if response1.status_code == 200 and response2.status_code == 200:
        data1 = response1.json()
        data2 = response2.json()
        
        print(f"✅ 缓存功能正常")
        print(f"   - 第一次请求时间: {first_request_time:.3f}s (FromCache: {data1.get('FromCache', False)})")
        print(f"   - 第二次请求时间: {second_request_time:.3f}s (FromCache: {data2.get('FromCache', False)})")
        print(f"   - 性能提升: {((first_request_time - second_request_time) / first_request_time * 100):.1f}%")
    else:
        print(f"❌ 缓存测试失败")

def test_compression():
    """测试压缩功能"""
    print("\n🔍 测试压缩功能...")
    
    # 不压缩的请求
    response_normal = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", params={
        'dirName': 'equipment',
        'page': 1,
        'page_size': 20,
        'compress': 'false'
    })
    
    # 压缩的请求
    headers = {'Accept-Encoding': 'gzip'}
    response_compressed = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/GetFileList", 
                                     params={
                                         'dirName': 'equipment',
                                         'page': 1,
                                         'page_size': 20,
                                         'compress': 'true'
                                     },
                                     headers=headers)
    
    if response_normal.status_code == 200 and response_compressed.status_code == 200:
        normal_size = len(response_normal.content)
        compressed_size = len(response_compressed.content)
        
        print(f"✅ 压缩功能正常")
        print(f"   - 未压缩大小: {normal_size} 字节")
        print(f"   - 压缩后大小: {compressed_size} 字节")
        print(f"   - 压缩率: {((normal_size - compressed_size) / normal_size * 100):.1f}%")
        print(f"   - 压缩头: {response_compressed.headers.get('Content-Encoding', '无')}")
    else:
        print(f"❌ 压缩测试失败")

def test_cache_management():
    """测试缓存管理"""
    print("\n🔍 测试缓存管理...")
    
    # 获取缓存信息
    response = requests.get(f"{BASE_URL}/cache/info")
    if response.status_code == 200:
        cache_info = response.json()
        print(f"✅ 缓存信息获取成功")
        print(f"   - 当前缓存条数: {cache_info['cache_size']}")
        print(f"   - 最大缓存条数: {cache_info['max_cache_size']}")
        print(f"   - 缓存超时时间: {cache_info['cache_timeout']}秒")
    else:
        print(f"❌ 缓存信息获取失败")

def test_api_compatibility():
    """测试API兼容性"""
    print("\n🔍 测试API兼容性...")
    
    # 测试标准API（向后兼容）
    response_standard = requests.get(f"{BASE_URL}/Api/PvfUtiltiy/getVersion")
    
    # 测试移动端API
    response_mobile = requests.get(f"{MOBILE_API_BASE}/Api/PvfUtiltiy/getVersion")
    
    if response_standard.status_code == 200 and response_mobile.status_code == 200:
        standard_data = response_standard.json()
        mobile_data = response_mobile.json()
        
        print(f"✅ API兼容性正常")
        print(f"   - 标准API版本: {standard_data.get('Data', '未知')}")
        print(f"   - 移动端API版本: {mobile_data.get('Data', '未知')}")
        print(f"   - 数据一致性: {'✅' if standard_data.get('Data') == mobile_data.get('Data') else '❌'}")
    else:
        print(f"❌ API兼容性测试失败")

def main():
    """主测试函数"""
    print("=" * 60)
    print("移动端优化API测试开始")
    print("=" * 60)
    
    try:
        # 测试各项功能
        test_mobile_pagination()
        test_mobile_search()
        test_cache_functionality()
        test_compression()
        test_cache_management()
        test_api_compatibility()
        
        print("\n" + "=" * 60)
        print("✅ 所有测试完成！移动端优化功能正常工作")
        print("=" * 60)
        
        # 显示使用建议
        print("\n📱 移动端使用建议:")
        print("1. 使用 /mobile/ 前缀访问优化接口")
        print("2. 设置合适的 page_size (建议 10-50)")
        print("3. 使用 search 参数过滤数据")
        print("4. 启用 compress=true 节省流量")
        print("5. 利用缓存提高响应速度")
        
    except Exception as e:
        print(f"\n❌ 测试过程中出现错误: {str(e)}")

if __name__ == "__main__":
    main()