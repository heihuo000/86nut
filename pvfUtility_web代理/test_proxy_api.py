#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
pvfUtility API代理服务器测试脚本
用于测试代理服务器的各种功能
"""

import requests
import json
import time

# 配置
PROXY_BASE_URL = "http://192.168.1.6:8080"
LOCAL_BASE_URL = "http://localhost:8080"

def test_api(url, description):
    """测试API接口"""
    print(f"\n{'='*60}")
    print(f"测试: {description}")
    print(f"URL: {url}")
    print(f"{'='*60}")
    
    try:
        start_time = time.time()
        response = requests.get(url, timeout=10)
        end_time = time.time()
        
        print(f"状态码: {response.status_code}")
        print(f"响应时间: {end_time - start_time:.2f}秒")
        
        if response.status_code == 200:
            try:
                data = response.json()
                print(f"响应数据: {json.dumps(data, ensure_ascii=False, indent=2)}")
                return True
            except json.JSONDecodeError:
                print(f"响应内容: {response.text}")
                return True
        else:
            print(f"错误响应: {response.text}")
            return False
            
    except requests.exceptions.ConnectionError:
        print("❌ 连接失败 - 服务器可能未启动")
        return False
    except requests.exceptions.Timeout:
        print("❌ 请求超时")
        return False
    except Exception as e:
        print(f"❌ 请求异常: {str(e)}")
        return False

def main():
    """主测试函数"""
    print("pvfUtility API代理服务器测试")
    print("=" * 60)
    
    # 测试用例列表
    test_cases = [
        # 基础功能测试
        (f"{PROXY_BASE_URL}/", "代理服务器首页"),
        (f"{PROXY_BASE_URL}/health", "健康检查接口"),
        
        # pvfUtility API测试
        (f"{PROXY_BASE_URL}/Api/PvfUtiltiy/getVersion", "获取版本信息"),
        (f"{PROXY_BASE_URL}/Api/PvfUtiltiy/getPvfRootDirectory", "获取PVF根目录"),
        
        # 本地访问测试
        (f"{LOCAL_BASE_URL}/health", "本地健康检查"),
        (f"{LOCAL_BASE_URL}/Api/PvfUtiltiy/getVersion", "本地获取版本"),
    ]
    
    # 执行测试
    success_count = 0
    total_count = len(test_cases)
    
    for url, description in test_cases:
        if test_api(url, description):
            success_count += 1
            print("✅ 测试通过")
        else:
            print("❌ 测试失败")
    
    # 测试结果汇总
    print(f"\n{'='*60}")
    print(f"测试结果汇总")
    print(f"{'='*60}")
    print(f"总测试数: {total_count}")
    print(f"成功数: {success_count}")
    print(f"失败数: {total_count - success_count}")
    print(f"成功率: {success_count/total_count*100:.1f}%")
    
    if success_count == total_count:
        print("🎉 所有测试通过！代理服务器工作正常")
    else:
        print("⚠️  部分测试失败，请检查服务器状态")

if __name__ == "__main__":
    main()