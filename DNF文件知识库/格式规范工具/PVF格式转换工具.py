#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
PVF Format Conversion Tool - Based on Real PVF Format Specifications

Based on the format specifications observed from real PVF files:
1. String values are enclosed in backticks: `string content`
2. Numbers don't use any quotes, just write the number directly
3. Parameters are separated with tab characters (Tab)
4. Use tab character (Tab) for indentation
5. Use CRLF (\r\n) as line endings
6. Tag format: [tag_name] and [/tag_name]
7. File starts with #PVF_File

Author: Assistant
Version: 2.0 (Based on real PVF format)
"""

import os
import re
import argparse
import shutil
from typing import List, Tuple


class PVFFormatConverter:
    """PVF Format Converter - Based on Real PVF Format Specifications"""
    
    def __init__(self):
        self.changes_made = []
    
    def convert_file(self, input_path: str, output_path: str = None, backup: bool = False) -> bool:
        """
        Convert PVF file format
        
        Args:
            input_path: Input file path
            output_path: Output file path, if None then overwrite original file
            backup: Whether to create backup file
            
        Returns:
            bool: Whether conversion was performed
        """
        self.changes_made = []
        
        if not os.path.exists(input_path):
            print(f"File does not exist: {input_path}")
            return False
        
        if backup and output_path is None:
            backup_path = input_path + '.backup'
            shutil.copy2(input_path, backup_path)
            print(f"Backup created: {backup_path}")
        
        if output_path is None:
            output_path = input_path
        
        try:
            # Try UTF-8 encoding first
            with open(input_path, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            try:
                # Try GBK encoding
                with open(input_path, 'r', encoding='gbk') as f:
                    content = f.read()
                self.changes_made.append("File encoding converted from GBK to UTF-8")
            except Exception as e:
                print(f"Cannot read file {input_path}: {e}")
                return False
        except Exception as e:
            print(f"Cannot read file {input_path}: {e}")
            return False
        
        # Convert content
        converted_content = self._convert_content(content)
        
        try:
            # Save as UTF-8 encoding, keeping CRLF line endings
            with open(output_path, 'w', encoding='utf-8', newline='') as f:
                f.write(converted_content)
            
            if self.changes_made:
                print(f"File conversion completed: {input_path}")
                for change in self.changes_made:
                    print(f"  - {change}")
                return True
            else:
                print(f"File format is already correct: {input_path}")
                return False
                
        except Exception as e:
            print(f"Cannot save file {output_path}: {e}")
            return False
    
    def _convert_content(self, content: str) -> str:
        """Convert file content"""
        lines = content.splitlines(keepends=True)
        converted_lines = []
        
        for line_num, line in enumerate(lines, 1):
            converted_line = self._convert_line(line, line_num)
            converted_lines.append(converted_line)
        
        return ''.join(converted_lines)
    
    def _convert_line(self, line: str, line_num: int) -> str:
        """Convert single line format"""
        original_line = line
        
        # Remove line endings for processing
        line_content = line.rstrip('\r\n')
        
        # Skip empty lines and comment lines
        if not line_content.strip() or line_content.strip().startswith('#'):
            return line_content + '\r\n'
        
        # Conversion 1: Fix wrong quotes (double quotes and single quotes to backticks)
        if '"' in line_content or "'" in line_content:
            new_line = line_content
            # Replace paired double quotes with backticks
            new_line = re.sub(r'"([^"]*)"', r'`\1`', new_line)
            # Replace paired single quotes with backticks
            new_line = re.sub(r"'([^']*)'", r'`\1`', new_line)
            
            if new_line != line_content:
                self.changes_made.append(f"Line {line_num}: Fixed quote format (changed to backticks)")
                line_content = new_line
        
        # Conversion 2: Ensure parameters are separated with tabs (convert multiple spaces to tabs)
        if not line_content.strip().startswith('#'):
            # Detect and convert space separators between parameters
            # Match multiple spaces after a bracket
            new_line = re.sub(r'(\]) {2,}', r'\1\t', line_content)
            # Match multiple spaces between parameters (but don't affect string content)
            new_line = re.sub(r'(\S) {2,}(\S)', r'\1\t\2', new_line)
            
            if new_line != line_content:
                self.changes_made.append(f"Line {line_num}: Parameter separators changed to tabs")
                line_content = new_line
        
        # Conversion 3: Ensure indentation uses tabs (convert leading spaces to tabs)
        leading_spaces = len(line_content) - len(line_content.lstrip(' '))
        if leading_spaces > 0:
            # Convert leading spaces to tabs (assuming 4 spaces = 1 tab)
            tabs = '\t' * (leading_spaces // 4)
            remaining_spaces = ' ' * (leading_spaces % 4)
            new_line = tabs + remaining_spaces + line_content.lstrip(' ')
            
            if new_line != line_content:
                self.changes_made.append(f"Line {line_num}: Indentation changed to tabs")
                line_content = new_line
        
        # Conversion 4: Remove quotes from numbers
        # Match numbers enclosed in quotes (integers, decimals, negative numbers)
        number_pattern = r'[`"\'](-?\d+(?:\.\d+)?)[`"\']'
        if re.search(number_pattern, line_content):
            new_line = re.sub(number_pattern, r'\1', line_content)
            if new_line != line_content:
                self.changes_made.append(f"Line {line_num}: Removed quotes from numbers")
                line_content = new_line
        
        # Conversion 5: Fix tag format (remove extra whitespace inside tags)
        if '[' in line_content and ']' in line_content:
            new_line = re.sub(r'\[\s*([^\]]+?)\s*\]', r'[\1]', line_content)
            if new_line != line_content:
                self.changes_made.append(f"Line {line_num}: Fixed tag format")
                line_content = new_line
        
        # Conversion 6: Standardize line endings to CRLF (in line with real PVF format)
        if not original_line.endswith('\r\n'):
            self.changes_made.append(f"Line {line_num}: Standardized line ending to CRLF")
        
        return line_content + '\r\n'
    
    def convert_directory(self, dir_path: str, recursive: bool = False, backup: bool = False) -> int:
        """Convert all PVF files in directory"""
        converted_count = 0
        
        if not os.path.exists(dir_path):
            print(f"Directory does not exist: {dir_path}")
            return 0
        
        if recursive:
            for root, dirs, files in os.walk(dir_path):
                for file in files:
                    if file.endswith(('.stk', '.equ', '.pvf', '.map')):
                        file_path = os.path.join(root, file)
                        if self.convert_file(file_path, backup=backup):
                            converted_count += 1
        else:
            for file in os.listdir(dir_path):
                if file.endswith(('.stk', '.equ', '.pvf', '.map')):
                    file_path = os.path.join(dir_path, file)
                    if os.path.isfile(file_path):
                        if self.convert_file(file_path, backup=backup):
                            converted_count += 1
        
        return converted_count
    
    def preview_changes(self, input_path: str) -> List[str]:
        """Preview file conversion changes (without actually modifying file)"""
        self.changes_made = []
        
        if not os.path.exists(input_path):
            return [f"File does not exist: {input_path}"]
        
        try:
            # Try UTF-8 encoding first
            with open(input_path, 'r', encoding='utf-8') as f:
                content = f.read()
        except UnicodeDecodeError:
            try:
                # Try GBK encoding
                with open(input_path, 'r', encoding='gbk') as f:
                    content = f.read()
                self.changes_made.append("File encoding will be converted from GBK to UTF-8")
            except Exception as e:
                return [f"Cannot read file {input_path}: {e}"]
        except Exception as e:
            return [f"Cannot read file {input_path}: {e}"]
        
        # Simulate conversion process
        self._convert_content(content)
        
        if self.changes_made:
            return [f"Preview file changes: {input_path}"] + [f"  - {change}" for change in self.changes_made]
        else:
            return [f"File format is already correct: {input_path}"]

def main():
    """Main function - Command line interface"""
    parser = argparse.ArgumentParser(
        description='PVF Format Conversion Tool - Based on Real PVF Format Specifications',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Usage Examples:
  python PVFFormatConversionTool.py file.stk                    # Convert single file
  python PVFFormatConversionTool.py file.stk --backup           # Convert with backup
  python PVFFormatConversionTool.py ./files/                    # Convert directory
  python PVFFormatConversionTool.py ./files/ --recursive        # Recursive conversion
  python PVFFormatConversionTool.py file.stk --dry-run          # Preview changes
        """
    )
    
    parser.add_argument('path', help='Path to file or directory to convert')
    parser.add_argument('--recursive', '-r', action='store_true', help='Process subdirectories recursively')
    parser.add_argument('--backup', '-b', action='store_true', help='Create backup file')
    parser.add_argument('--dry-run', '-d', action='store_true', help='Preview changes without actual modification')
    
    args = parser.parse_args()
    
    converter = PVFFormatConverter()
    
    if os.path.isfile(args.path):
        # Process single file
        if args.dry_run:
            changes = converter.preview_changes(args.path)
            for change in changes:
                print(change)
        else:
            converter.convert_file(args.path, backup=args.backup)
    
    elif os.path.isdir(args.path):
        # Process directory
        if args.dry_run:
            print("Directory mode does not support preview function")
        else:
            converted_count = converter.convert_directory(args.path, args.recursive, args.backup)
            print(f"\nConversion completed, processed {converted_count} files")
    
    else:
        print(f"Path does not exist: {args.path}")


if __name__ == '__main__':
    main()