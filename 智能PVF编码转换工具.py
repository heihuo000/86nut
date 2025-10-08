#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
智能PVF文件编码转换工具
用于批量转换指定目录下的所有PVF相关文件，自动检测编码并进行转换
"""

import os
import chardet
import shutil
from pathlib import Path


def detect_encoding(file_path):
    """
    检测文件编码
    """
    with open(file_path, 'rb') as f:
        raw_data = f.read()
        result = chardet.detect(raw_data)
        return result['encoding']


def is_pvf_file(file_path):
    """
    检查是否为PVF相关文件
    """
    # 支持的PVF文本文件扩展名
    pvf_extensions = {'.equ', '.stk', '.ani', '.atk', '.skl', '.map', '.mob', '.npc', '.pet', '.shp', 
                      '.qst', '.wgn', '.wdm', '.chr', '.ora', '.obj', '.act', '.ptl', '.etc', '.til', 
                      '.twn', '.ui', '.dl', '.dgn', '.cre', '.sho', '.nut', '.str', '.txt', '.als',
                      '.mm', '.tbl', '.lay', '.scr', '.cfg', '.btm', '.ini', '.xml', '.json', '.csv'}
    
    # 排除的二进制文件扩展名
    exclude_extensions = {'.doc', '.docx', '.rtf', '.xls', '.xlsx', '.ppt', '.pptx', '.pdf', '.exe', 
                          '.dll', '.bin', '.dat', '.zip', '.rar', '.7z', '.jpg', '.jpeg', '.png', '.gif', 
                          '.bmp', '.ico', '.mp3', '.wav', '.mp4', '.avi', '.mov', '.wmv'}
    
    file_extension = Path(file_path).suffix.lower()
    
    # 如果是排除的二进制文件，直接返回False
    if file_extension in exclude_extensions:
        return False
    
    # 如果是支持的PVF文件扩展名，返回True
    return file_extension in pvf_extensions


def read_file_with_encoding(file_path, encodings_to_try=['utf-8', 'euc-kr', 'cp949', 'gbk', 'shift-jis', 'big5', 'ascii']):
    """
    尝试多种编码读取文件，特别优化韩文文件处理
    """
    # 对于特定扩展名的文件，优先尝试韩文编码
    file_extension = Path(file_path).suffix.lower()
    korean_extensions = {'.als', '.mm', '.tbl', '.act', '.ani', '.equ', '.stk', '.mob', '.npc', '.pet'}
    
    if file_extension in korean_extensions:
        # 对于韩文相关文件，优先尝试韩文编码
        encodings_to_try = ['euc-kr', 'cp949', 'utf-8', 'gbk', 'shift-jis', 'big5', 'ascii']
    
    for encoding in encodings_to_try:
        try:
            with open(file_path, 'r', encoding=encoding) as f:
                content = f.read()
            return content, encoding
        except UnicodeDecodeError:
            continue
        except Exception as e:
            # 特殊处理一些二进制文件
            if encoding == encodings_to_try[-1]:  # 最后一个编码仍然失败
                raise e
            continue
    return None, None


def convert_file(file_path, backup=True):
    """
    转换单个文件
    """
    print(f"正在处理: {file_path}")
    
    # 检测编码
    detected_encoding, used_encoding = None, None
    
    # 首先尝试使用chardet检测
    try:
        detected_encoding = detect_encoding(file_path)
        print(f"  检测到编码: {detected_encoding}")
    except:
        print(f"  编码检测失败，尝试常见编码")
    
    # 尝试读取文件
    content, used_encoding = read_file_with_encoding(file_path)
    
    if content is None:
        print(f"  [ERROR] 无法读取文件: {file_path}")
        return False
    
    print(f"  使用编码成功读取: {used_encoding}")
    
    # 创建备份
    if backup:
        backup_path = file_path + '.backup'
        shutil.copy2(file_path, backup_path)
        print(f"  已创建备份: {backup_path}")
    
    # 保存为UTF-8编码，使用CRLF行尾符
    try:
        # 将内容統一轉換為CRLF行尾符
        content = content.replace('\r\n', '\n').replace('\n', '\r\n')
        
        with open(file_path, 'w', encoding='utf-8', newline='') as f:
            f.write(content)
        print(f"  [OK] 转换完成: {file_path} (转换为UTF-8 + CRLF)")
        return True
    except Exception as e:
        print(f"  [ERROR] 保存文件失败: {e}")
        # 如果转换失败，恢复备份
        if backup and os.path.exists(file_path + '.backup'):
            shutil.copy2(file_path + '.backup', file_path)
            print(f"  已恢复备份文件")
        return False


def convert_directory(directory_path, backup=True, recursive=True):
    """
    转换目录下所有PVF相关文件
    """
    directory = Path(directory_path)
    if not directory.exists():
        print(f"目录不存在: {directory_path}")
        return
    
    print(f"开始处理目录: {directory_path}")
    print(f"递归处理: {'是' if recursive else '否'}")
    print(f"创建备份: {'是' if backup else '否'}")
    print("-" * 50)
    
    # 获取所有PVF相关文件
    if recursive:
        files = [f for f in directory.rglob('*') if f.is_file() and is_pvf_file(f)]
    else:
        files = [f for f in directory.iterdir() if f.is_file() and is_pvf_file(f)]
    
    total_files = len(files)
    print(f"找到 {total_files} 个PVF相关文件")
    
    if total_files == 0:
        print("未找到需要转换的文件")
        return
    
    successful_conversions = 0
    failed_conversions = 0
    
    for file_path in files:
        print(f"\n处理文件 {successful_conversions + failed_conversions + 1}/{total_files}:")
        if convert_file(str(file_path), backup):
            successful_conversions += 1
        else:
            failed_conversions += 1
    
    print("\n" + "=" * 50)
    print("转换完成总结:")
    print(f"总文件数: {total_files}")
    print(f"成功转换: {successful_conversions}")
    print(f"转换失败: {failed_conversions}")
    
    if failed_conversions == 0:
        print("[OK] 所有文件转换成功！")
    else:
        print(f"[WARNING] {failed_conversions} 个文件转换失败，请手动处理")


def main():
    """
    主函数
    """
    import argparse
    
    parser = argparse.ArgumentParser(description='智能PVF文件编码转换工具')
    parser.add_argument('directory', help='要处理的目录路径')
    parser.add_argument('--no-backup', action='store_true', help='不创建备份文件')
    parser.add_argument('--no-recursive', action='store_true', help='不递归处理子目录')
    
    args = parser.parse_args()
    
    convert_directory(
        directory_path=args.directory,
        backup=not args.no_backup,
        recursive=not args.no_recursive
    )


if __name__ == "__main__":
    # 如果直接运行，使用命令行参数，否则提供交互界面
    import sys
    if len(sys.argv) > 1:
        main()
    else:
        # 交互界面
        print("智能PVF文件编码转换工具")
        print("=" * 40)
        directory = input("请输入要处理的目录路径: ").strip()
        
        if not directory:
            print("未输入目录路径")
            sys.exit(1)
        
        backup = input("是否创建备份文件？(Y/n，默认Y): ").strip().lower() != 'n'
        recursive = input("是否递归处理子目录？(Y/n，默认Y): ").strip().lower() != 'n'
        
        print()
        convert_directory(
            directory_path=directory,
            backup=backup,
            recursive=recursive
        )