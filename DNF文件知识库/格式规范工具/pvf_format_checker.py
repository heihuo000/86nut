#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
PVF文件格式验证工具

用于验证PVF文件是否符合标准格式规范
"""

import re
import sys
import os
from pathlib import Path

class PVFFormatChecker:
    def __init__(self):
        self.errors = []
        self.warnings = []
        self.line_number = 0
        
    def check_file(self, file_path):
        """检查PVF文件格式"""
        if not os.path.exists(file_path):
            return {"error": f"文件不存在: {file_path}"}
        
        try:
            with open(file_path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
        except Exception as e:
            return {"error": f"无法读取文件: {e}"}
        
        self.errors = []
        self.warnings = []
        
        # 检查文件头
        if lines and not lines[0].strip() == "#PVF_File":
            self.errors.append("第1行: 缺少正确的文件头 #PVF_File")
        
        for i, line in enumerate(lines, 1):
            self.line_number = i
            self._check_line(line, i)
        
        return {
            "errors": self.errors,
            "warnings": self.warnings,
            "total_lines": len(lines),
            "file_path": file_path
        }
    
    def _check_line(self, line, line_number):
        """检查单行格式"""
        # 跳过空行和注释
        stripped = line.strip()
        if not stripped or stripped.startswith("//"):
            return
        
        # 检查空格缩进
        if re.match(r'^[ ]+[^[ ]', line):
            self.errors.append(f"第 {line_number} 行: 使用了空格缩进，应该使用Tab键")
        
        # 检查错误的引号
        if re.search(r'"[^"]*"', line) or re.search(r"'[^']*'", line):
            self.errors.append(f"第 {line_number} 行: 使用了错误的引号，应该使用反引号 `` ` ``")
        
        # 检查字符串格式
        if '`' in line:
            if not re.search(r'`[^`]*`', line):
                self.warnings.append(f"第 {line_number} 行: 字符串格式可能不完整")
        
        # 检查参数分隔 (非标签行)
        if not re.match(r'^\[.*\]$', stripped) and not re.match(r'^\[/.*\]$', stripped):
            tab_count = line.count('\t')
            space_count = line.count(' ')
            
            if space_count > tab_count and tab_count <= 1:
                self.warnings.append(f"第 {line_number} 行: 可能使用了空格分隔参数，建议使用Tab键")

def check_pvf_format(file_path):
    """基础检查函数 - 检查PVF文件格式"""
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    errors = []
    
    for i, line in enumerate(lines, 1):
        # 检查空格缩进
        if re.match(r'^[ ]+[^[ ]', line):
            errors.append(f"第 {i} 行使用了空格缩进")
        
        # 检查错误的引号
        if re.search(r'"[^"]*"', line) or re.search(r"'[^']*'", line):
            errors.append(f"第 {i} 行使用了错误的引号")
        
        # 检查字符串格式
        if '`' in line:
            if not re.search(r'`[^`]*`', line):
                errors.append(f"第 {i} 行字符串格式错误")
    
    return errors

def batch_check_files(directory=".", file_pattern="*.equ"):
    """批量检查PVF文件"""
    checker = PVFFormatChecker()
    pvf_files = Path(directory).glob(f"**/{file_pattern}")
    
    results = []
    for file_path in pvf_files:
        result = checker.check_file(file_path)
        results.append(result)
        
        # 输出结果
        print(f"\n=== 检查文件: {file_path} ===")
        print(f"总行数: {result['total_lines']}")
        
        if result.get("error"):
            print(f"❌ 错误: {result['error']}")
            continue
        
        if result["errors"]:
            print(f"❌ 错误 ({len(result['errors'])}):")
            for error in result["errors"]:
                print(f"  {error}")
        
        if result["warnings"]:
            print(f"⚠️ 警告 ({len(result['warnings'])}):")
            for warning in result["warnings"]:
                print(f"  {warning}")
        
        if not result["errors"] and not result["warnings"]:
            print(f"✅ 文件格式正确!")
    
    return results

def fix_common_errors(file_path, backup=True):
    """自动修复常见格式错误"""
    if backup:
        backup_path = f"{file_path}.backup"
        import shutil
        shutil.copy2(file_path, backup_path)
        print(f"已创建备份: {backup_path}")
    
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # 修复空格缩进
    lines = content.split('\n')
    fixed_lines = []
    for line in lines:
        # 将行首空格替换为Tab
        fixed_line = re.sub(r'^[ ]+', lambda m: '\t' * (len(m.group()) // 4 + (1 if len(m.group()) % 4 else 0)), line)
        fixed_lines.append(fixed_line)
    
    content = '\n'.join(fixed_lines)
    
    # 修复错误的引号
    content = re.sub(r'"([^"]*)"', r'`\1`', content)  # 双引号替换
    content = re.sub(r"'([^']*)'", r'`\1`', content)     # 单引号替换
    
    with open(file_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"已修复文件: {file_path}")
    return True

def main():
    if len(sys.argv) < 2:
        print("使用方法:")
        print("  python pvf_format_checker.py <文件路径>     # 检查单个文件")
        print("  python pvf_format_checker.py -b <目录>    # 批量检查.equ文件")
        print("  python pvf_format_checker.py -f <文件路径> # 修复文件格式")
        sys.exit(1)
    
    if sys.argv[1] == "-b":
        # 批量检查
        directory = sys.argv[2] if len(sys.argv) > 2 else "."
        batch_check_files(directory)
    elif sys.argv[1] == "-f":
        # 修复文件
        if len(sys.argv) < 3:
            print("请提供要修复的文件路径")
            sys.exit(1)
        fix_common_errors(sys.argv[2])
    else:
        # 单个文件检查
        file_path = sys.argv[1]
        checker = PVFFormatChecker()
        result = checker.check_file(file_path)
        
        # 输出结果
        print(f"\n=== PVF文件格式验证结果 ===")
        print(f"文件: {result['file_path']}")
        print(f"总行数: {result['total_lines']}")
        
        if result.get("error"):
            print(f"❌ 错误: {result['error']}")
            sys.exit(1)
        
        if result["errors"]:
            print(f"\n❌ 错误 ({len(result['errors'])}):")
            for error in result["errors"]:
                print(f"  {error}")
        
        if result["warnings"]:
            print(f"\n⚠️ 警告 ({len(result['warnings'])}):")
            for warning in result["warnings"]:
                print(f"  {warning}")
        
        if not result["errors"] and not result["warnings"]:
            print(f"\n✅ 文件格式正确!")
        elif not result["errors"]:
            print(f"\n✅ 文件格式基本正确，但有一些建议改进的地方。")
        else:
            print(f"\n❌ 文件存在格式错误，需要修正。")

if __name__ == "__main__":
    main()