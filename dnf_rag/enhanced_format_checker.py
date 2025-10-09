#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
增强版DNF文件格式检查器
支持直接模板引用、格式对比和智能错误检测
"""

import os
import re
import json
import sys
from pathlib import Path
from typing import List, Dict, Any, Optional, Tuple
from dataclasses import dataclass
from simple_indexer import SimpleDNFRetriever


@dataclass
class FormatIssue:
    """格式问题数据类"""
    type: str  # 'error', 'warning', 'suggestion'
    field: str  # 字段名
    line_number: int  # 行号
    message: str  # 问题描述
    suggestion: str  # 修复建议
    
    def to_dict(self):
        """转换为字典格式，便于JSON序列化"""
        return {
            'type': self.type,
            'field': self.field,
            'line_number': self.line_number,
            'message': self.message,
            'suggestion': self.suggestion
        }


@dataclass
class FieldComparison:
    """字段对比结果"""
    field_name: str
    user_value: Optional[str]
    template_value: Optional[str]
    status: str  # 'match', 'mismatch', 'missing', 'extra'
    suggestion: Optional[str] = None
    
    def to_dict(self):
        """转换为字典格式，便于JSON序列化"""
        return {
            'field_name': self.field_name,
            'user_value': self.user_value,
            'template_value': self.template_value,
            'status': self.status,
            'suggestion': self.suggestion
        }


class EnhancedFormatChecker:
    """增强版格式检查器"""
    
    def __init__(self, retriever: SimpleDNFRetriever, template_base_path: str):
        """
        初始化增强版格式检查器
        
        Args:
            retriever: 检索器实例
            template_base_path: 标准格式模板基础路径
        """
        self.retriever = retriever
        self.template_base_path = Path(template_base_path)
        
        # 文件类型到模板文件的映射
        self.file_type_templates = {
            'equ': {
                'weapon': ['sword.equ', 'katana.equ', 'spear.equ', 'axe.equ'],
                'armor': ['robe_cloth.equ', 'coat_leather.equ', 'vest_plate.equ'],
                'accessory': ['ring.equ', 'necklace.equ', 'bracelet.equ']
            },
            'chr': {
                'player': ['fighter.chr', 'gunner.chr', 'mage.chr'],
                'npc': ['npc_basic.chr']
            },
            'skl': {
                'active': ['active_skill.skl'],
                'passive': ['passive_skill.skl'],
                'buff': ['buff_skill.skl']
            },
            'stk': {
                'consumable': ['potion.stk', 'food.stk'],
                'material': ['material.stk']
            }
        }
        
        # 常见格式错误模式
        self.error_patterns = {
            'unclosed_tag': r'\[([^\]]+)(?!\])',
            'invalid_encoding': r'[^\x00-\x7F\u4e00-\u9fff]',
            'missing_quotes': r'^\s*\[name\]\s*([^`\n]+)$',
            'wrong_indent': r'^( +)\[',
            'empty_field': r'^\s*\[([^\]]+)\]\s*$'
        }
        
        # 必需字段定义
        self.required_fields = {
            'equ': ['name', 'grade', 'rarity', 'usable job', 'minimum level', 'icon', 'equipment type'],
            'chr': ['name', 'level', 'job', 'hp', 'mp'],
            'skl': ['name', 'type', 'level', 'mp cost'],
            'stk': ['name', 'type', 'price', 'icon']
        }
    
    def get_template_files(self, file_type: str, sub_type: str = None) -> List[Path]:
        """
        获取指定文件类型的模板文件列表
        
        Args:
            file_type: 文件类型 (equ, chr, skl, stk)
            sub_type: 子类型 (weapon, armor, etc.)
        
        Returns:
            模板文件路径列表
        """
        template_files = []
        
        # 直接扫描目录查找模板文件
        try:
            # 根据文件类型确定搜索路径
            if file_type == 'equ':
                # 装备文件在武器目录下
                search_paths = [
                    self.template_base_path / "武器" / "1",
                    self.template_base_path / "装备",
                    self.template_base_path / "equ"
                ]
            else:
                # 其他文件类型
                search_paths = [
                    self.template_base_path / file_type,
                    self.template_base_path / file_type.upper()
                ]
            
            for search_path in search_paths:
                if search_path.exists() and search_path.is_dir():
                    # 查找对应扩展名的文件
                    pattern = f"*.{file_type}"
                    found_files = list(search_path.glob(pattern))
                    template_files.extend(found_files)
                    
                    # 如果找到文件就停止搜索
                    if found_files:
                        break
        
        except Exception as e:
            print(f"搜索模板文件时出错: {e}")
        
        return template_files[:5]  # 限制返回数量
    
    def load_template_content(self, template_path: Path) -> Dict[str, Any]:
        """
        加载模板文件内容并解析字段
        
        Args:
            template_path: 模板文件路径
        
        Returns:
            解析后的模板数据
        """
        try:
            with open(template_path, 'r', encoding='utf-8') as f:
                content = f.read()
            
            fields = self.parse_pvf_fields(content)
            
            return {
                'path': str(template_path),
                'content': content,
                'fields': fields,
                'field_order': list(fields.keys())
            }
        except Exception as e:
            print(f"[ERROR] 加载模板文件失败 {template_path}: {e}", file=sys.stderr)
            return {}
    
    def parse_pvf_fields(self, content: str) -> Dict[str, str]:
        """
        解析PVF文件字段
        
        Args:
            content: 文件内容
        
        Returns:
            字段字典 {字段名: 字段值}
        """
        fields = {}
        lines = content.split('\n')
        current_field = None
        field_content = []
        
        for line in lines:
            line = line.strip()
            
            # 检测字段开始
            field_match = re.match(r'^\[([^\]]+)\](.*)$', line)
            if field_match:
                # 保存上一个字段
                if current_field:
                    fields[current_field] = '\n'.join(field_content).strip()
                
                # 开始新字段
                current_field = field_match.group(1).strip()
                field_value = field_match.group(2).strip()
                field_content = [field_value] if field_value else []
            elif current_field and line:
                # 继续当前字段的内容
                field_content.append(line)
        
        # 保存最后一个字段
        if current_field:
            fields[current_field] = '\n'.join(field_content).strip()
        
        return fields
    
    def detect_format_errors(self, content: str) -> List[FormatIssue]:
        """
        检测格式错误
        
        Args:
            content: 文件内容
        
        Returns:
            格式问题列表
        """
        issues = []
        lines = content.split('\n')
        
        for line_num, line in enumerate(lines, 1):
            # 检查未闭合标签
            if re.search(self.error_patterns['unclosed_tag'], line):
                issues.append(FormatIssue(
                    type='error',
                    field='',
                    line_number=line_num,
                    message='发现未闭合的标签',
                    suggestion='确保所有标签都有对应的闭合括号 ]'
                ))
            
            # 检查name字段缺少反引号
            if re.search(self.error_patterns['missing_quotes'], line):
                issues.append(FormatIssue(
                    type='error',
                    field='name',
                    line_number=line_num,
                    message='name字段值应该使用反引号包围',
                    suggestion='将name字段值改为 `值` 的格式'
                ))
            
            # 检查错误的缩进（使用空格而非Tab）
            if re.search(self.error_patterns['wrong_indent'], line):
                issues.append(FormatIssue(
                    type='warning',
                    field='',
                    line_number=line_num,
                    message='使用了空格缩进，建议使用Tab缩进',
                    suggestion='将空格缩进替换为Tab缩进'
                ))
            
            # 检查空字段
            if re.search(self.error_patterns['empty_field'], line):
                field_name = re.search(self.error_patterns['empty_field'], line).group(1)
                issues.append(FormatIssue(
                    type='warning',
                    field=field_name,
                    line_number=line_num,
                    message=f'字段 [{field_name}] 为空',
                    suggestion=f'为字段 [{field_name}] 提供适当的值'
                ))
        
        return issues
    
    def compare_with_template(self, user_content: str, template_data: Dict[str, Any], file_type: str) -> List[FieldComparison]:
        """
        与模板进行字段对比
        
        Args:
            user_content: 用户文件内容
            template_data: 模板数据
            file_type: 文件类型
        
        Returns:
            字段对比结果列表
        """
        user_fields = self.parse_pvf_fields(user_content)
        template_fields = template_data.get('fields', {})
        required_fields = self.required_fields.get(file_type, [])
        
        comparisons = []
        all_fields = set(user_fields.keys()) | set(template_fields.keys())
        
        for field in all_fields:
            user_value = user_fields.get(field)
            template_value = template_fields.get(field)
            
            if field in user_fields and field in template_fields:
                # 字段都存在，比较值
                if user_value == template_value:
                    status = 'match'
                    suggestion = None
                else:
                    status = 'mismatch'
                    suggestion = f'模板值: {template_value}'
            elif field in user_fields:
                # 用户有，模板没有
                status = 'extra'
                suggestion = '此字段在模板中不存在，请确认是否需要'
            else:
                # 模板有，用户没有
                status = 'missing'
                if field in required_fields:
                    suggestion = f'必需字段，建议添加。模板值: {template_value}'
                else:
                    suggestion = f'可选字段，模板值: {template_value}'
            
            comparisons.append(FieldComparison(
                field_name=field,
                user_value=user_value,
                template_value=template_value,
                status=status,
                suggestion=suggestion
            ))
        
        return comparisons
    
    def enhanced_format_check(self, file_type: str, content: str = None, sub_type: str = None) -> Dict[str, Any]:
        """
        增强版格式检查
        
        Args:
            file_type: 文件类型
            content: 文件内容（可选）
            sub_type: 子类型（可选）
        
        Returns:
            检查结果
        """
        result = {
            'file_type': file_type,
            'sub_type': sub_type,
            'templates_found': [],
            'format_errors': [],
            'field_comparisons': [],
            'suggestions': [],
            'summary': {}
        }
        
        # 获取相关模板
        template_files = self.get_template_files(file_type, sub_type)
        
        if not template_files:
            # 使用传统检索方式
            query = f"{file_type} 文件格式 标准模板"
            search_results = self.retriever.search(query, k=5)
            
            result['suggestions'].append("未找到直接模板文件，使用知识库检索结果")
            result['search_results'] = search_results
            
            if content:
                format_errors = self.detect_format_errors(content)
                result['format_errors'] = [error.to_dict() for error in format_errors]
        else:
            # 使用直接模板引用
            for template_path in template_files:
                template_data = self.load_template_content(template_path)
                if template_data:
                    result['templates_found'].append(template_data)
            
            if content and result['templates_found']:
                # 进行格式检查
                format_errors = self.detect_format_errors(content)
                result['format_errors'] = [error.to_dict() for error in format_errors]
                
                # 与最佳匹配模板进行对比
                best_template = result['templates_found'][0]  # 简单选择第一个
                field_comparisons = self.compare_with_template(
                    content, best_template, file_type
                )
                result['field_comparisons'] = [comp.to_dict() for comp in field_comparisons]
        
        # 生成总结
        result['summary'] = self.generate_summary(result)
        
        return result
    
    def generate_summary(self, check_result: Dict[str, Any]) -> Dict[str, Any]:
        """
        生成检查结果总结
        
        Args:
            check_result: 检查结果
        
        Returns:
            总结信息
        """
        # 安全获取数据，避免KeyError
        format_errors = check_result.get('format_errors', [])
        field_comparisons = check_result.get('field_comparisons', [])
        templates_found = check_result.get('templates_found', [])
        
        summary = {
            'total_errors': len([e for e in format_errors if e.get('type') == 'error']),
            'total_warnings': len([e for e in format_errors if e.get('type') == 'warning']),
            'templates_used': len(templates_found),
            'missing_required_fields': 0,
            'extra_fields': 0,
            'status': 'unknown'
        }
        
        # 统计字段对比结果
        for comp in field_comparisons:
            if comp.get('status') == 'missing' and '必需字段' in (comp.get('suggestion') or ''):
                summary['missing_required_fields'] += 1
            elif comp.get('status') == 'extra':
                summary['extra_fields'] += 1
        
        # 确定整体状态
        if summary['total_errors'] == 0 and summary['missing_required_fields'] == 0:
            if summary['total_warnings'] == 0:
                summary['status'] = 'perfect'
            else:
                summary['status'] = 'good'
        elif summary['total_errors'] > 0:
            summary['status'] = 'error'
        else:
            summary['status'] = 'warning'
        
        return summary
    
    def format_check_report(self, check_result: Dict[str, Any]) -> str:
        """
        生成格式检查报告
        
        Args:
            check_result: 检查结果
        
        Returns:
            格式化的报告文本
        """
        report_lines = []
        summary = check_result['summary']
        
        # 标题
        report_lines.append(f"# {check_result['file_type'].upper()} 文件格式检查报告")
        report_lines.append("")
        
        # 总结
        status_emoji = {
            'perfect': '✅',
            'good': '⚠️',
            'warning': '⚠️',
            'error': '❌',
            'unknown': '❓'
        }
        
        report_lines.append(f"## 检查结果 {status_emoji.get(summary['status'], '❓')}")
        report_lines.append(f"- 错误: {summary['total_errors']} 个")
        report_lines.append(f"- 警告: {summary['total_warnings']} 个")
        report_lines.append(f"- 缺少必需字段: {summary['missing_required_fields']} 个")
        report_lines.append(f"- 额外字段: {summary['extra_fields']} 个")
        report_lines.append(f"- 使用模板: {summary['templates_used']} 个")
        report_lines.append("")
        
        # 格式错误详情
        if check_result.get('format_errors'):
            report_lines.append("## 格式错误详情")
            for error in check_result['format_errors']:
                # 处理字典格式的错误
                error_type = error.get('type') if isinstance(error, dict) else error.type
                error_line = error.get('line_number') if isinstance(error, dict) else error.line_number
                error_message = error.get('message') if isinstance(error, dict) else error.message
                error_suggestion = error.get('suggestion') if isinstance(error, dict) else error.suggestion
                
                emoji = '❌' if error_type == 'error' else '⚠️'
                report_lines.append(f"{emoji} **行 {error_line}**: {error_message}")
                if error_suggestion:
                    report_lines.append(f"   💡 建议: {error_suggestion}")
            report_lines.append("")
        
        # 字段对比结果
        if check_result.get('field_comparisons'):
            report_lines.append("## 字段对比结果")
            
            # 按状态分组
            status_groups = {}
            for comp in check_result['field_comparisons']:
                # 处理字典格式的对比结果
                comp_status = comp.get('status') if isinstance(comp, dict) else comp.status
                if comp_status not in status_groups:
                    status_groups[comp_status] = []
                status_groups[comp_status].append(comp)
            
            status_names = {
                'missing': '❌ 缺少字段',
                'extra': '➕ 额外字段',
                'mismatch': '⚠️ 值不匹配',
                'match': '✅ 匹配字段'
            }
            
            for status, comps in status_groups.items():
                if comps:
                    report_lines.append(f"### {status_names.get(status, status)}")
                    for comp in comps:
                        # 处理字典格式的对比结果
                        field_name = comp.get('field_name') if isinstance(comp, dict) else comp.field_name
                        user_value = comp.get('user_value') if isinstance(comp, dict) else comp.user_value
                        suggestion = comp.get('suggestion') if isinstance(comp, dict) else comp.suggestion
                        
                        report_lines.append(f"- **{field_name}**")
                        if user_value:
                            report_lines.append(f"  - 当前值: {user_value}")
                        if suggestion:
                            report_lines.append(f"  - 💡 {suggestion}")
                    report_lines.append("")
        
        # 使用的模板
        if check_result.get('templates_found'):
            report_lines.append("## 参考模板")
            for template in check_result['templates_found']:
                template_path = template.get('file_path') if isinstance(template, dict) else template.get('path', str(template))
                report_lines.append(f"- {template_path}")
            report_lines.append("")
        
        return '\n'.join(report_lines)


def main():
    """测试函数"""
    # 这里可以添加测试代码
    pass


if __name__ == "__main__":
    main()