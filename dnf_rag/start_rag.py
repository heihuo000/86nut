#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF RAG系统启动脚本
简化RAG系统的构建和启动流程
"""

import os
import sys
import json
import argparse
from pathlib import Path

# 添加当前目录到Python路径
sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from index_builder import DNFKnowledgeIndexBuilder
from rag_server import DNFRAGServer


def load_config(config_path: str = "config/config.json") -> dict:
    """加载配置文件"""
    try:
        with open(config_path, 'r', encoding='utf-8') as f:
            return json.load(f)
    except Exception as e:
        print(f"加载配置文件失败: {e}")
        return {}


def build_index(config: dict):
    """构建知识库索引"""
    print("开始构建知识库索引...")
    
    builder = DNFKnowledgeIndexBuilder(config.get('embedding_model'))
    
    # 合并所有知识库路径
    all_docs = []
    for kb_path in config.get('knowledge_base_paths', []):
        if os.path.exists(kb_path):
            print(f"处理知识库: {kb_path}")
            docs = builder.load_documents(kb_path)
            all_docs.extend(docs)
        else:
            print(f"警告: 知识库路径不存在: {kb_path}")
    
    if not all_docs:
        print("未找到任何文档，请检查知识库路径配置")
        return False
    
    # 分割文档
    chunks = builder.split_documents(all_docs)
    
    # 构建索引
    index_path = config.get('index_path', 'data/faiss_index')
    builder.build_index(chunks, index_path)
    
    print("知识库索引构建完成！")
    return True


def start_server(config: dict):
    """启动RAG服务器"""
    print("启动RAG服务器...")
    
    index_path = config.get('index_path', 'data/faiss_index')
    if not os.path.exists(index_path):
        print("错误: 向量索引不存在，请先构建索引")
        return False
    
    server = DNFRAGServer(
        index_path=index_path,
        model_name=config.get('embedding_model')
    )
    
    server_config = config.get('server', {})
    server.start_server(
        host=server_config.get('host', 'localhost'),
        port=server_config.get('port', 8000)
    )
    
    return True


def test_query(config: dict, query: str):
    """测试查询功能"""
    print(f"测试查询: {query}")
    
    index_path = config.get('index_path', 'data/faiss_index')
    if not os.path.exists(index_path):
        print("错误: 向量索引不存在，请先构建索引")
        return False
    
    server = DNFRAGServer(
        index_path=index_path,
        model_name=config.get('embedding_model')
    )
    
    server.test_query(query)
    return True


def main():
    """主函数"""
    parser = argparse.ArgumentParser(description='DNF RAG系统启动脚本')
    parser.add_argument('--build-index', action='store_true', help='构建知识库索引')
    parser.add_argument('--start-server', action='store_true', help='启动RAG服务器')
    parser.add_argument('--test', help='测试查询')
    parser.add_argument('--config', default='config/config.json', help='配置文件路径')
    parser.add_argument('--all', action='store_true', help='构建索引并启动服务器')
    
    args = parser.parse_args()
    
    # 加载配置
    config = load_config(args.config)
    if not config:
        print("使用默认配置")
        config = {
            'embedding_model': 'sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2',
            'knowledge_base_paths': ['../DNF文件知识库', '../DAF学院内容整合'],
            'index_path': 'data/faiss_index'
        }
    
    # 执行操作
    if args.all:
        # 构建索引并启动服务器
        if build_index(config):
            start_server(config)
    elif args.build_index:
        build_index(config)
    elif args.start_server:
        start_server(config)
    elif args.test:
        test_query(config, args.test)
    else:
        print("请指定操作: --build-index, --start-server, --test, 或 --all")
        print("使用 --help 查看详细帮助")


if __name__ == "__main__":
    main()