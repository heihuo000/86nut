#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版DNF知识库索引构建器
使用本地TF-IDF向量化，无需网络连接
"""

import os
import json
import pickle
from datetime import datetime
from pathlib import Path
from typing import List, Dict, Any

import sys  # 添加stderr输出支持
import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import DirectoryLoader, TextLoader
from langchain.schema import Document


class SimpleDNFIndexBuilder:
    """简化版DNF知识库索引构建器"""
    
    def __init__(self, chunk_size: int = 1000, chunk_overlap: int = 200):
        self.chunk_size = chunk_size
        self.chunk_overlap = chunk_overlap
        self.text_splitter = RecursiveCharacterTextSplitter(
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            separators=["\n\n", "\n", "。", "！", "？", "；", " ", ""]
        )
        self.vectorizer = TfidfVectorizer(
            max_features=10000,
            stop_words=None,  # 保留中文停用词
            ngram_range=(1, 2),
            min_df=1,
            max_df=0.95
        )
        
    def load_documents(self, knowledge_base_path: str) -> List[Document]:
        """加载知识库文档
        
        Args:
            knowledge_base_path: 知识库路径
        
        Returns:
            文档列表
        """
        print(f"[INFO] 加载知识库文档: {knowledge_base_path}", file=sys.stderr)
        
        all_docs = []
        
        # 加载Markdown文件
        try:
            md_loader = DirectoryLoader(
                knowledge_base_path,
                glob="**/*.md",
                loader_cls=TextLoader,
                loader_kwargs={"encoding": "utf-8"}
            )
            md_docs = md_loader.load()
            print(f"[INFO] 加载 Markdown 文件: {len(md_docs)} 个", file=sys.stderr)
            all_docs.extend(md_docs)
        except Exception as e:
            print(f"[ERROR] 加载 Markdown 文件时出错: {e}", file=sys.stderr)
        
        # 加载文本文件
        try:
            txt_loader = DirectoryLoader(
                knowledge_base_path,
                glob="**/*.txt",
                loader_cls=TextLoader,
                loader_kwargs={"encoding": "utf-8"}
            )
            txt_docs = txt_loader.load()
            print(f"[INFO] 加载 Text 文件: {len(txt_docs)} 个", file=sys.stderr)
            all_docs.extend(txt_docs)
        except Exception as e:
            print(f"[ERROR] 加载 Text 文件时出错: {e}", file=sys.stderr)
        
        # 额外：加载 NUT 与 PVF 文本类文件（.nut/.obj/.atk 等）
        # 这些文件均为纯文本格式，适合直接纳入检索索引
        extra_patterns = [
            "**/*.nut",  # NUT脚本
            "**/*.obj",  # PVF对象文件
            "**/*.atk",  # 攻击信息
            "**/*.ani",  # 动画文件
            "**/*.lay",  # 布局文件
            "**/*.map",  # 地图文件
            "**/*.mob",  # 怪物文件
            "**/*.sho",  # SHO文件
            "**/*.stk",  # STK文件
            "**/*.chr",  # 角色文件
            "**/*.equ"   # 装备文件
        ]
        for pattern in extra_patterns:
            try:
                loader = DirectoryLoader(
                    knowledge_base_path,
                    glob=pattern,
                    loader_cls=TextLoader,
                    loader_kwargs={"encoding": "utf-8"}
                )
                docs = loader.load()
                print(f"[INFO] 加载 {pattern} 文件: {len(docs)} 个", file=sys.stderr)
                all_docs.extend(docs)
            except Exception as e:
                print(f"[ERROR] 加载 {pattern} 文件时出错: {e}", file=sys.stderr)
        
        print(f"[INFO] 总共加载文档: {len(all_docs)} 个", file=sys.stderr)
        return all_docs
    
    def split_documents(self, documents: List[Document]) -> List[Document]:
        """分割文档为文本块"""
        print("[INFO] 正在分割文档...", file=sys.stderr)
        chunks = self.text_splitter.split_documents(documents)
        print(f"[INFO] 文档分割完成，共生成 {len(chunks)} 个文本块", file=sys.stderr)
        
        # 保存分块信息
        chunks_info = {
            'total_chunks': len(chunks),
            'chunk_size': self.chunk_size,
            'chunk_overlap': self.chunk_overlap,
            'timestamp': datetime.now().isoformat(),
            'source_files': list(set([chunk.metadata.get('source', 'unknown') for chunk in chunks]))
        }
        
        chunks_info_path = os.path.join('data', 'chunks_info.json')
        os.makedirs(os.path.dirname(chunks_info_path), exist_ok=True)
        with open(chunks_info_path, 'w', encoding='utf-8') as f:
            json.dump(chunks_info, f, ensure_ascii=False, indent=2)
        
        return chunks
    
    def build_index(self, chunks: List[Document], index_path: str):
        """构建TF-IDF索引"""
        print("[INFO] 正在构建TF-IDF索引...", file=sys.stderr)
        
        # 提取文本内容
        texts = [chunk.page_content for chunk in chunks]
        
        # 构建TF-IDF矩阵
        tfidf_matrix = self.vectorizer.fit_transform(texts)
        
        # 准备索引数据
        index_data = {
            'tfidf_matrix': tfidf_matrix,
            'vectorizer': self.vectorizer,
            'chunks': chunks,
            'texts': texts,
            'metadata': {
                'total_chunks': len(chunks),
                'vocabulary_size': len(self.vectorizer.vocabulary_),
                'timestamp': datetime.now().isoformat()
            }
        }
        
        # 保存索引
        os.makedirs(os.path.dirname(index_path), exist_ok=True)
        with open(index_path, 'wb') as f:
            pickle.dump(index_data, f)
        
        print(f"[OK] 索引构建完成，保存到: {index_path}", file=sys.stderr)
        print(f"[INFO] 词汇表大小: {len(self.vectorizer.vocabulary_)}", file=sys.stderr)
        print(f"[INFO] 文档向量维度: {tfidf_matrix.shape}", file=sys.stderr)
        
        return index_data
    
    def build_knowledge_base(self, knowledge_base_paths: List[str], index_path: str):
        """构建完整的知识库索引"""
        all_docs = []
        
        # 加载所有知识库
        for kb_path in knowledge_base_paths:
            if os.path.exists(kb_path):
                docs = self.load_documents(kb_path)
                all_docs.extend(docs)
            else:
                print(f"[WARN] 知识库路径不存在: {kb_path}", file=sys.stderr)
        
        if not all_docs:
            raise ValueError("没有找到任何文档，请检查知识库路径")
        
        # 分割文档
        chunks = self.split_documents(all_docs)
        
        # 构建索引
        index_data = self.build_index(chunks, index_path)
        
        return index_data


class SimpleDNFRetriever:
    """简化版DNF知识库检索器"""
    
    def __init__(self, index_path: str):
        self.index_path = index_path
        self.index_data = None
        self.load_index()
    
    def load_index(self):
        """加载索引"""
        if not os.path.exists(self.index_path):
            raise FileNotFoundError(f"索引文件不存在: {self.index_path}")
        
        with open(self.index_path, 'rb') as f:
            self.index_data = pickle.load(f)
        
        print(f"[OK] 索引加载成功: {self.index_data['metadata']}", file=sys.stderr)
    
    def search(self, query: str, k: int = 5) -> List[Dict[str, Any]]:
        """搜索相关文档"""
        if not self.index_data:
            raise ValueError("索引未加载")
        
        # 向量化查询
        query_vector = self.index_data['vectorizer'].transform([query])
        
        # 计算相似度
        similarities = cosine_similarity(query_vector, self.index_data['tfidf_matrix']).flatten()
        
        # 获取最相似的文档索引
        top_indices = np.argsort(similarities)[::-1][:k]
        
        # 构建结果
        results = []
        for idx in top_indices:
            if similarities[idx] > 0:  # 只返回有相似度的结果
                chunk = self.index_data['chunks'][idx]
                results.append({
                    'content': chunk.page_content,
                    'metadata': chunk.metadata,
                    'score': float(similarities[idx])
                })
        
        return results


def main():
    """主函数"""
    import argparse
    
    parser = argparse.ArgumentParser(description='简化版DNF知识库索引构建器')
    parser.add_argument('knowledge_base_paths', nargs='+', help='知识库路径列表')
    parser.add_argument('index_path', help='索引保存路径')
    parser.add_argument('--chunk-size', type=int, default=1000, help='文本块大小')
    parser.add_argument('--chunk-overlap', type=int, default=200, help='文本块重叠大小')
    
    args = parser.parse_args()
    
    # 构建索引
    builder = SimpleDNFIndexBuilder(
        chunk_size=args.chunk_size,
        chunk_overlap=args.chunk_overlap
    )
    
    try:
        builder.build_knowledge_base(args.knowledge_base_paths, args.index_path)
        print("[OK] 知识库索引构建成功", file=sys.stderr)
    except Exception as e:
        print(f"[ERROR] 构建失败: {e}", file=sys.stderr)
        return 1
    
    return 0


if __name__ == "__main__":
    exit(main())