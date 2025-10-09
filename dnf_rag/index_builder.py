#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
DNF知识库索引构建器
用于将DNF文件知识库转换为向量索引，支持语义检索
"""

import os
import sys
import json
import pickle
from pathlib import Path
from typing import List, Dict, Any
import argparse
from datetime import datetime

# 导入必要的库
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import DirectoryLoader, TextLoader
from langchain_community.vectorstores import FAISS
from langchain_community.embeddings import HuggingFaceEmbeddings
from sentence_transformers import SentenceTransformer


class DNFKnowledgeIndexBuilder:
    """DNF知识库索引构建器"""
    
    def __init__(self, model_name: str = "sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2"):
        """
        初始化索引构建器
        
        Args:
            model_name: 嵌入模型名称，默认使用多语言模型
        """
        self.model_name = model_name
        self.embeddings = None
        self.text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=1000,  # 每个文本块的大小
            chunk_overlap=200,  # 文本块之间的重叠
            separators=["\n\n", "\n", "。", "！", "？", "；", " ", ""]
        )
        
    def initialize_embeddings(self):
        """初始化嵌入模型"""
        print(f"正在初始化嵌入模型: {self.model_name}")
        try:
            self.embeddings = HuggingFaceEmbeddings(
                model_name=self.model_name,
                model_kwargs={'device': 'cpu'},  # 使用CPU
                encode_kwargs={'normalize_embeddings': True}
            )
            print("嵌入模型初始化成功")
        except Exception as e:
            print(f"嵌入模型初始化失败: {e}")
            # 备用模型
            print("尝试使用备用模型...")
            self.embeddings = HuggingFaceEmbeddings(
                model_name="sentence-transformers/all-MiniLM-L6-v2"
            )
    
    def load_documents(self, knowledge_base_path: str) -> List[Any]:
        """
        加载知识库文档
        
        Args:
            knowledge_base_path: 知识库路径
            
        Returns:
            文档列表
        """
        print(f"正在加载知识库文档: {knowledge_base_path}")
        
        # 支持的文件类型
        file_patterns = ["**/*.md", "**/*.txt"]
        documents = []
        
        for pattern in file_patterns:
            try:
                loader = DirectoryLoader(
                    knowledge_base_path,
                    glob=pattern,
                    loader_cls=TextLoader,
                    loader_kwargs={'encoding': 'utf-8'}
                )
                docs = loader.load()
                documents.extend(docs)
                print(f"加载 {pattern} 文件: {len(docs)} 个")
            except Exception as e:
                print(f"加载 {pattern} 文件时出错: {e}")
        
        print(f"总共加载文档: {len(documents)} 个")
        return documents
    
    def split_documents(self, documents: List[Any]) -> List[Any]:
        """
        分割文档为文本块
        
        Args:
            documents: 原始文档列表
            
        Returns:
            分割后的文本块列表
        """
        print("正在分割文档...")
        chunks = self.text_splitter.split_documents(documents)
        print(f"文档分割完成，共生成 {len(chunks)} 个文本块")
        
        # 保存分块信息用于调试
        chunks_info = []
        for i, chunk in enumerate(chunks):
            chunks_info.append({
                'chunk_id': i,
                'source': chunk.metadata.get('source', ''),
                'content_preview': chunk.page_content[:100] + '...' if len(chunk.page_content) > 100 else chunk.page_content,
                'content_length': len(chunk.page_content)
            })
        
        # 保存分块信息
        chunks_info_path = os.path.join('data', 'chunks_info.json')
        os.makedirs(os.path.dirname(chunks_info_path), exist_ok=True)
        with open(chunks_info_path, 'w', encoding='utf-8') as f:
            json.dump(chunks_info, f, ensure_ascii=False, indent=2)
        
        return chunks
    
    def build_index(self, chunks: List[Any], index_path: str):
        """
        构建向量索引
        
        Args:
            chunks: 文本块列表
            index_path: 索引保存路径
        """
        print("正在构建向量索引...")
        
        if not self.embeddings:
            self.initialize_embeddings()
        
        try:
            # 创建FAISS向量存储
            vectorstore = FAISS.from_documents(chunks, self.embeddings)
            
            # 保存索引
            os.makedirs(os.path.dirname(index_path), exist_ok=True)
            vectorstore.save_local(index_path)
            
            print(f"向量索引构建完成，保存至: {index_path}")
            
            # 保存元数据
            metadata = {
                'build_time': datetime.now().isoformat(),
                'total_chunks': len(chunks),
                'model_name': self.model_name,
                'index_path': index_path
            }
            
            metadata_path = os.path.join(os.path.dirname(index_path), 'metadata.json')
            with open(metadata_path, 'w', encoding='utf-8') as f:
                json.dump(metadata, f, ensure_ascii=False, indent=2)
            
            return vectorstore
            
        except Exception as e:
            print(f"构建向量索引时出错: {e}")
            raise
    
    def build_knowledge_base_index(self, knowledge_base_path: str, index_path: str):
        """
        构建完整的知识库索引
        
        Args:
            knowledge_base_path: 知识库路径
            index_path: 索引保存路径
        """
        print("=" * 50)
        print("DNF知识库索引构建开始")
        print("=" * 50)
        
        # 1. 加载文档
        documents = self.load_documents(knowledge_base_path)
        if not documents:
            print("未找到任何文档，请检查知识库路径")
            return
        
        # 2. 分割文档
        chunks = self.split_documents(documents)
        
        # 3. 构建索引
        vectorstore = self.build_index(chunks, index_path)
        
        print("=" * 50)
        print("DNF知识库索引构建完成")
        print("=" * 50)
        
        return vectorstore


def main():
    """主函数"""
    parser = argparse.ArgumentParser(description='DNF知识库索引构建器')
    parser.add_argument('knowledge_base_path', help='知识库路径')
    parser.add_argument('index_path', help='索引保存路径')
    parser.add_argument('--model', default='sentence-transformers/paraphrase-multilingual-MiniLM-L12-v2', 
                       help='嵌入模型名称')
    
    args = parser.parse_args()
    
    # 检查路径
    if not os.path.exists(args.knowledge_base_path):
        print(f"错误: 知识库路径不存在: {args.knowledge_base_path}")
        sys.exit(1)
    
    # 创建索引构建器
    builder = DNFKnowledgeIndexBuilder(model_name=args.model)
    
    # 构建索引
    try:
        builder.build_knowledge_base_index(args.knowledge_base_path, args.index_path)
        print("索引构建成功！")
    except Exception as e:
        print(f"索引构建失败: {e}")
        sys.exit(1)


if __name__ == "__main__":
    main()