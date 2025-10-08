#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
简化版文档格式转换工具
不依赖外部库，使用基本方法提取文本内容
"""

import os
import sys
import argparse
from pathlib import Path
import re


def extract_text_from_rtf(rtf_content):
    """
    从RTF内容中提取纯文本（简化方法）
    """
    # 移除RTF标记
    # 移除控制字和控制符号
    text = re.sub(r'\\[a-z]+\d*', '', rtf_content)
    text = re.sub(r'\\[A-Z]+', '', text)
    text = re.sub(r'\\.', '', text)
    text = re.sub(r'[{}]', '', text)
    
    # 解码常见的转义字符
    text = text.replace('\\\'b1', '±')
    text = text.replace('\\\'d7', '×')
    text = text.replace('\\par', '\n')
    text = text.replace('\\line', '\n')
    text = text.replace('\\tab', '\t')
    
    return text.strip()


def extract_text_from_simple_doc(doc_content):
    """
    从简单DOC内容中提取文本（基础方法）
    """
    # 这是一个非常简化的DOC处理方法
    # 实际DOC文件是二进制格式，这里只是示例
    lines = doc_content.split('\n')
    text_lines = []
    
    for line in lines:
        # 移除一些明显的格式标记
        clean_line = re.sub(r'\x00+', '', line)  # 移除空字节
        clean_line = re.sub(r'\x01+', '', clean_line)  # 移除控制字符
        if clean_line.strip():
            text_lines.append(clean_line.strip())
    
    return '\n'.join(text_lines)


def extract_text_from_xml_like(content):
    """
    从类似XML的内容中提取文本
    """
    # 移除XML/HTML标签
    text = re.sub(r'<[^>]+>', '', content)
    # 移除多余的空白行
    text = re.sub(r'\n\s*\n', '\n\n', text)
    return text.strip()


def convert_file_basic(input_path, output_path):
    """
    使用基本方法转换文件
    """
    try:
        # 尝试以文本方式读取文件
        with open(input_path, 'r', encoding='utf-8', errors='ignore') as f:
            content = f.read()
        
        # 根据文件扩展名决定处理方法
        file_ext = Path(input_path).suffix.lower()
        
        if file_ext == '.rtf':
            extracted_text = extract_text_from_rtf(content)
        elif file_ext in ['.doc', '.xls', '.ppt']:
            extracted_text = extract_text_from_simple_doc(content)
        elif file_ext in ['.docx', '.xlsx', '.pptx']:
            extracted_text = extract_text_from_xml_like(content)
        elif file_ext == '.pdf':
            # 对于PDF，尝试提取可见文本
            extracted_text = extract_text_from_xml_like(content)
        else:
            # 其他情况，简单清理内容
            extracted_text = content
        
        # 保存为文本文件
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(extracted_text)
        
        print(f"[OK] 已提取文本: {input_path} -> {output_path}")
        return True
        
    except Exception as e:
        print(f"[ERROR] 处理文件失败 {input_path}: {e}")
        return False


def is_convertible_file(file_path):
    """
    检查是否为可转换的文件
    """
    convertible_extensions = {
        '.doc', '.docx', '.rtf', '.xls', '.xlsx', 
        '.ppt', '.pptx', '.pdf', '.txt', '.md'
    }
    return Path(file_path).suffix.lower() in convertible_extensions


def process_single_file(input_path, output_path=None):
    """
    处理单个文件
    """
    if not os.path.exists(input_path):
        print(f"[ERROR] 文件不存在: {input_path}")
        return False
    
    if not is_convertible_file(input_path):
        print(f"[ERROR] 不支持的文件格式: {input_path}")
        return False
    
    # 自动生成输出路径
    if output_path is None:
        base_name = Path(input_path).stem
        output_path = Path(input_path).parent / f"{base_name}_extracted.txt"
    
    return convert_file_basic(input_path, output_path)


def process_directory(directory_path, recursive=True):
    """
    处理目录中的所有文件
    """
    directory = Path(directory_path)
    if not directory.exists():
        print(f"[ERROR] 目录不存在: {directory_path}")
        return
    
    # 获取所有可转换的文件
    if recursive:
        files = [f for f in directory.rglob('*') if f.is_file() and is_convertible_file(f)]
    else:
        files = [f for f in directory.iterdir() if f.is_file() and is_convertible_file(f)]
    
    total_files = len(files)
    print(f"[INFO] 找到 {total_files} 个可处理文件")
    
    if total_files == 0:
        print("[INFO] 未找到需要处理的文件")
        return
    
    successful = 0
    failed = 0
    
    for i, file_path in enumerate(files, 1):
        print(f"\n处理文件 {i}/{total_files}: {file_path.name}")
        base_name = file_path.stem
        output_path = file_path.parent / f"{base_name}_extracted.txt"
        
        if process_single_file(str(file_path), str(output_path)):
            successful += 1
        else:
            failed += 1
    
    print(f"\n[SUMMARY] 处理完成:")
    print(f"  总文件数: {total_files}")
    print(f"  成功处理: {successful}")
    print(f"  处理失败: {failed}")


def main():
    """
    主函数
    """
    parser = argparse.ArgumentParser(description='简化版文档格式转换工具 - 提取RTF、DOC等文档的文本内容')
    parser.add_argument('input', help='输入文件或目录路径')
    parser.add_argument('-o', '--output', help='输出文件路径（仅用于单文件处理）')
    parser.add_argument('--no-recursive', action='store_true', help='不递归处理子目录')
    
    args = parser.parse_args()
    
    input_path = args.input
    
    # 检查输入是文件还是目录
    if os.path.isfile(input_path):
        # 单文件处理
        process_single_file(input_path, args.output)
    elif os.path.isdir(input_path):
        # 目录处理
        process_directory(input_path, recursive=not args.no_recursive)
    else:
        print(f"[ERROR] 输入路径不存在: {input_path}")


if __name__ == "__main__":
    main()