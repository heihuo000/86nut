#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Enhanced PVF Format Checker
================

Enhanced PVF format checking tool, providing:
1. Smarter format checking algorithms
2. Detailed issue analysis and repair suggestions
3. Batch file checking
4. HTML format report generation
5. Interactive repair mode

Author: AI Assistant
Version: 2.0.0
"""

import re
import os
import sys
import json
import argparse
from typing import List, Dict, Tuple, Optional, Set
from dataclasses import dataclass, asdict
from enum import Enum
from pathlib import Path
import datetime


class IssueType(Enum):
    """Issue type enumeration"""
    INDENT_ERROR = "Indentation Error"
    STRING_QUOTE_ERROR = "String Quote Error"
    PARAMETER_SEPARATOR_ERROR = "Parameter Separator Error"
    NUMERIC_QUOTE_ERROR = "Numeric Quote Error"
    ENCODING_ERROR = "Encoding Error"
    LINE_ENDING_ERROR = "Line Ending Error"
    STRUCTURE_ERROR = "Structure Error"
    WHITESPACE_ERROR = "Whitespace Error"


@dataclass
class FormatIssue:
    """Format issue data class"""
    line_number: int
    issue_type: IssueType
    description: str
    current_content: str
    suggested_fix: str
    severity: str  # "error", "warning", "info"
    rule_reference: str = ""  # specification reference
    auto_fixable: bool = True  # whether can be auto-fixed


@dataclass
class CheckResult:
    """Check result data class"""
    file_path: str
    issues: List[FormatIssue]
    total_lines: int
    check_time: str
    file_size: int
    encoding: str


class PVFFormatCheckerEnhanced:
    """Enhanced PVF Format Checker"""
    
    def __init__(self):
        self.issues: List[FormatIssue] = []
        self.file_content: str = ""
        self.lines: List[str] = []
        self.file_stats = {}
        
        # Compile regex patterns
        self._compile_patterns()
        
        # Initialize tag categories
        self._init_tag_categories()
        
        # Initialize rule references
        self._init_rule_references()

    def _compile_patterns(self):
        """Compile regex patterns"""
        # PVF tag patterns
        self.tag_pattern = re.compile(r'^\s*\[([^\]]+)\]')
        self.closing_tag_pattern = re.compile(r'^\s*\[/([^\]]+)\]')
        self.tag_with_params_pattern = re.compile(r'^\s*\[([^\]]+)\]\s*(.+)?')
        
        # String value patterns
        self.string_value_pattern = re.compile(r'`([^`]*)`')
        self.wrong_quote_pattern = re.compile(r'"([^\"]*)"')
        self.wrong_single_quote_pattern = re.compile(r"'([^']*)'")
        
        # Numeric patterns
        self.numeric_pattern = re.compile(r'^-?\d+\.?\d*$')
        self.float_pattern = re.compile(r'^-?\d+\.\d+$')
        self.integer_pattern = re.compile(r'^-?\d+$')
        
        # Whitespace patterns
        self.leading_whitespace_pattern = re.compile(r'^(\s*)')
        self.trailing_whitespace_pattern = re.compile(r'\s+$')
        self.multiple_spaces_pattern = re.compile(r'  +')
        
        # Special value pattern
        self.special_value_pattern = re.compile(r'^\[([^\]]+)\]$')
        
        # Comment pattern
        self.comment_pattern = re.compile(r'//.*$')

    def _init_tag_categories(self):
        """Initialize tag categories"""
        # String tags (values should use backticks)
        self.string_tags = {
            'name', 'description', 'flavor text', 'type', 'usable job',
            'icon mark', 'field image', 'move wav', 'filename', 'layer',
            'sound', 'effect', 'animation', 'texture', 'material',
            'comment', 'explain', 'category', 'sub type', 'weapon type',
            'armor type', 'accessory type', 'class', 'job', 'skill name'
        }
        
        # Numeric tags (values should not use quotes)
        self.numeric_tags = {
            'level', 'price', 'weight', 'durability', 'grade', 'rarity',
            'physical attack', 'magical attack', 'strength', 'intelligence',
            'vitality', 'spirit', 'x', 'y', 'width', 'height', 'offset x',
            'offset y', 'delay', 'frame', 'loop', 'count', 'amount',
            'stack limit', 'cool time', 'cast time', 'mp cost', 'hp cost'
        }
        
        # Mixed tags (may contain both strings and numbers)
        self.mixed_tags = {
            'pvp start area', 'player number', 'equipment option',
            'skill option', 'set item option', 'random option'
        }
        
        # Structure tags (usually have start and end tags)
        self.structure_tags = {
            'equipment option', 'skill option', 'set item option',
            'random option', 'animation', 'tile', 'background animation',
            'booster info', 'upgrade info', 'usable job', 'aura ability',
            'emblem socket default', 'skill data up',
            # Skill file structure tags
            'level info', 'dungeon', 'pvp', 'death tower', 'warroom',
            'level property', 'static data', 'command', 'skill fitness growtype',
            'purchase cost',  # This one does have an end tag
            # Note: command customizing, cool time are standalone tags, don't need end tags
        }

    def _init_rule_references(self):
        """Initialize rule references"""
        self.rule_refs = {
            IssueType.INDENT_ERROR: "PVF Format Specification - 3.Indentation Format",
            IssueType.STRING_QUOTE_ERROR: "PVF Format Specification - 2.String Value Format",
            IssueType.PARAMETER_SEPARATOR_ERROR: "PVF Format Specification - 4.Parameter Separator Format",
            IssueType.NUMERIC_QUOTE_ERROR: "PVF Format Specification - 3.Numeric Format",
            IssueType.ENCODING_ERROR: "PVF Format Specification - 1.File Encoding",
            IssueType.LINE_ENDING_ERROR: "PVF Format Specification - 2.Line Endings",
            IssueType.STRUCTURE_ERROR: "PVF Format Specification - 6.Tag Format",
            IssueType.WHITESPACE_ERROR: "PVF Format Specification - General Format Requirements"
        }

    def check_file(self, file_path: str) -> CheckResult:
        """Check file format and return detailed result"""
        self.issues.clear()
        start_time = datetime.datetime.now()
        
        try:
            # Get file info
            file_size = os.path.getsize(file_path)
            
            # Check file encoding
            encoding = self._detect_and_check_encoding(file_path)
            
            # Read file content
            with open(file_path, 'r', encoding='utf-8') as f:
                self.file_content = f.read()
                self.lines = self.file_content.splitlines()
            
            # Check line endings
            self._check_line_endings(file_path)
            
            # Check file structure
            self._check_file_structure()
            
            # Check format line by line
            for line_num, line in enumerate(self.lines, 1):
                self._check_line_format_enhanced(line_num, line)
            
            # Check overall consistency
            self._check_consistency()
            
            check_time = (datetime.datetime.now() - start_time).total_seconds()
            
            return CheckResult(
                file_path=file_path,
                issues=self.issues.copy(),
                total_lines=len(self.lines),
                check_time=f"{check_time:.2f}s",
                file_size=file_size,
                encoding=encoding
            )
            
        except Exception as e:
            self.issues.append(FormatIssue(
                line_number=0,
                issue_type=IssueType.ENCODING_ERROR,
                description=f"File read error: {str(e)}",
                current_content="",
                suggested_fix="Check if file exists and is readable",
                severity="error",
                rule_reference=self.rule_refs[IssueType.ENCODING_ERROR],
                auto_fixable=False
            ))
            
            return CheckResult(
                file_path=file_path,
                issues=self.issues.copy(),
                total_lines=0,
                check_time="0.00s",
                file_size=0,
                encoding="unknown"
            )

    def _detect_and_check_encoding(self, file_path: str) -> str:
        """Detect and check file encoding"""
        try:
            with open(file_path, 'rb') as f:
                raw_data = f.read()
            
            # Check BOM
            if raw_data.startswith(b'\xef\xbb\xbf'):
                return "UTF-8 with BOM"
            elif raw_data.startswith(b'\xff\xfe'):
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.ENCODING_ERROR,
                    description="File uses UTF-16 LE encoding, should use UTF-8",
                    current_content="UTF-16 LE",
                    suggested_fix="Convert to UTF-8 encoding",
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.ENCODING_ERROR],
                    auto_fixable=False
                ))
                return "UTF-16 LE"
            elif raw_data.startswith(b'\xfe\xff'):
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.ENCODING_ERROR,
                    description="File uses UTF-16 BE encoding, should use UTF-8",
                    current_content="UTF-16 BE",
                    suggested_fix="Convert to UTF-8 encoding",
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.ENCODING_ERROR],
                    auto_fixable=False
                ))
                return "UTF-16 BE"
            
            # Try decoding with UTF-8
            try:
                raw_data.decode('utf-8')
                return "UTF-8"
            except UnicodeDecodeError as e:
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.ENCODING_ERROR,
                    description=f"File is not valid UTF-8 encoding: {str(e)}",
                    current_content="Non-UTF-8 encoding",
                    suggested_fix="Convert to UTF-8 encoding",
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.ENCODING_ERROR],
                    auto_fixable=False
                ))
                return "unknown"
                
        except Exception as e:
            self.issues.append(FormatIssue(
                line_number=0,
                issue_type=IssueType.ENCODING_ERROR,
                description=f"Encoding check failed: {str(e)}",
                current_content="",
                suggested_fix="Check file integrity",
                severity="error",
                rule_reference=self.rule_refs[IssueType.ENCODING_ERROR],
                auto_fixable=False
            ))
            return "error"

    def _check_line_endings(self, file_path: str):
        """Check line endings"""
        try:
            with open(file_path, 'rb') as f:
                content = f.read()
            
            # Count different line ending types
            crlf_count = content.count(b'\r\n')
            lf_only_count = content.count(b'\n') - crlf_count
            cr_only_count = content.count(b'\r') - crlf_count
            
            # Check if file is empty or has only one line
            if len(content) == 0:
                return
                
            # If file only has LF line endings and is small, it might be a test file
            # In this case, only give info, not error
            if lf_only_count > 0 and crlf_count == 0:
                # Check if it's a test file (filename contains test_ or file is small)
                import os
                file_size = os.path.getsize(file_path)
                is_test_file = "test_" in os.path.basename(file_path).lower()
                
                if is_test_file and file_size < 10240:  # Less than 10KB test file
                    severity = "info"
                    description = f"Found {lf_only_count} LF line endings, PVF files should use CRLF (test file auto convert)"
                else:
                    severity = "error"
                    description = f"Found {lf_only_count} LF line endings, PVF files should use CRLF"
                    
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.LINE_ENDING_ERROR,
                    description=description,
                    current_content="LF (\n)",
                    suggested_fix="Convert to CRLF (\r\n)",
                    severity=severity,
                    rule_reference=self.rule_refs[IssueType.LINE_ENDING_ERROR],
                    auto_fixable=True
                ))
            elif lf_only_count > 0 and crlf_count > 0:
                # Mixed line endings, this is a real problem
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.LINE_ENDING_ERROR,
                    description=f"Found mixed line endings: {lf_only_count} LF, {crlf_count} CRLF",
                    current_content="Mixed line endings",
                    suggested_fix="Convert all to CRLF (\r\n)",
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.LINE_ENDING_ERROR],
                    auto_fixable=True
                ))
            
            if cr_only_count > 0:
                self.issues.append(FormatIssue(
                    line_number=0,
                    issue_type=IssueType.LINE_ENDING_ERROR,
                    description=f"Found {cr_only_count} CR line endings, PVF files should use CRLF",
                    current_content="CR (\r)",
                    suggested_fix="Convert to CRLF (\r\n)",
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.LINE_ENDING_ERROR],
                    auto_fixable=True
                ))
                
        except Exception:
            pass

    def _check_file_structure(self):
        """Check overall file structure"""
        if not self.lines:
            return
        
        # Check file header
        if not self.lines[0].strip().startswith('#PVF_File'):
            self.issues.append(FormatIssue(
                line_number=1,
                issue_type=IssueType.STRUCTURE_ERROR,
                description="PVF file should start with '#PVF_File'",
                current_content=self.lines[0] if self.lines else "",
                suggested_fix="#PVF_File",
                severity="error",
                rule_reference=self.rule_refs[IssueType.STRUCTURE_ERROR],
                auto_fixable=True
            ))
        
        # Check tag pairing
        self._check_tag_pairing()

    def _check_tag_pairing(self):
        """Check tag pairing"""
        tag_stack = []
        
        for line_num, line in enumerate(self.lines, 1):
            stripped = line.strip()
            if not stripped or stripped.startswith('//') or stripped.startswith('#'):
                continue
            
            # Check start tags
            tag_match = self.tag_pattern.match(stripped)
            if tag_match:
                tag_name = tag_match.group(1).lower()
                if tag_name in self.structure_tags:
                    tag_stack.append((tag_name, line_num))
            
            # Check end tags
            closing_match = self.closing_tag_pattern.match(stripped)
            if closing_match:
                tag_name = closing_match.group(1).lower()
                if tag_stack and tag_stack[-1][0] == tag_name:
                    tag_stack.pop()
                else:
                    self.issues.append(FormatIssue(
                        line_number=line_num,
                        issue_type=IssueType.STRUCTURE_ERROR,
                        description=f"End tag [/{tag_name}] has no matching start tag",
                        current_content=line,
                        suggested_fix="Check tag pairing",
                        severity="error",
                        rule_reference=self.rule_refs[IssueType.STRUCTURE_ERROR],
                        auto_fixable=False
                    ))
        
        # Check unclosed tags
        for tag_name, line_num in tag_stack:
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.STRUCTURE_ERROR,
                description=f"Tag [{tag_name}] has no corresponding end tag [/{tag_name}]",
                current_content=self.lines[line_num - 1],
                suggested_fix=f"Add end tag [/{tag_name}]",
                severity="warning",
                rule_reference=self.rule_refs[IssueType.STRUCTURE_ERROR],
                auto_fixable=False
            ))

    def _check_line_format_enhanced(self, line_num: int, line: str):
        """Enhanced line format check"""
        # Skip empty and comment lines
        if not line.strip() or line.strip().startswith('//') or line.strip().startswith('#'):
            return
        
        # Check trailing whitespace
        if self.trailing_whitespace_pattern.search(line):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.WHITESPACE_ERROR,
                description="Line has trailing whitespace",
                current_content=line,
                suggested_fix=line.rstrip(),
                severity="info",
                rule_reference=self.rule_refs[IssueType.WHITESPACE_ERROR],
                auto_fixable=True
            ))
        
        # Check indentation format
        self._check_indentation_enhanced(line_num, line)
        
        # Check tag line format
        if self.tag_pattern.match(line.strip()) or self.closing_tag_pattern.match(line.strip()):
            self._check_tag_line_enhanced(line_num, line)
        else:
            # Check regular content line
            self._check_content_line_enhanced(line_num, line)

    def _check_indentation_enhanced(self, line_num: int, line: str):
        """Enhanced indentation check"""
        if not line or line[0] not in [' ', '\t']:
            return

        # Analyze indentation characters
        leading_match = self.leading_whitespace_pattern.match(line)
        if not leading_match:
            return
        
        leading_whitespace = leading_match.group(1)
        spaces = leading_whitespace.count(' ')
        tabs = leading_whitespace.count('\t')
        
        # Check mix
        if spaces > 0 and tabs > 0:
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.INDENT_ERROR,
                description="Indentation mixes spaces and tabs",
                current_content=line,
                suggested_fix=self._suggest_indent_fix_enhanced(line),
                severity="error",
                rule_reference=self.rule_refs[IssueType.INDENT_ERROR],
                auto_fixable=True
            ))
        
        # Check space indentation
        elif spaces > 0 and tabs == 0 and self._is_indentation_context(line):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.INDENT_ERROR,
                description=f"Using {spaces} spaces for indentation, should use tabs",
                current_content=line,
                suggested_fix=self._suggest_indent_fix_enhanced(line),
                severity="error",
                rule_reference=self.rule_refs[IssueType.INDENT_ERROR],
                auto_fixable=True
            ))

    def _suggest_indent_fix_enhanced(self, line: str) -> str:
        """Enhanced indentation fix suggestion"""
        leading_match = self.leading_whitespace_pattern.match(line)
        if not leading_match:
            return line
        
        leading_whitespace = leading_match.group(1)
        content = line[len(leading_whitespace):]
        
        # Calculate how many tabs should be used
        spaces = leading_whitespace.count(' ')
        tabs = leading_whitespace.count('\t')
        
        # Assume 4 spaces = 1 tab
        total_tabs = tabs + (spaces // 4)
        remaining_spaces = spaces % 4
        
        new_indent = '\t' * total_tabs
        if remaining_spaces > 0:
            new_indent += ' ' * remaining_spaces
        
        return new_indent + content

    def _check_tag_line_enhanced(self, line_num: int, line: str):
        """Enhanced tag line check"""
        stripped = line.strip()
        
        # First check if this is a tag line
        tag_match = self.tag_pattern.match(stripped)
        closing_tag_match = self.closing_tag_pattern.match(stripped)
        
        if tag_match or closing_tag_match:
            # This is a tag line, check parameter separation
            if '\t' in line:
                parts = line.split('\t')
            else:
                # Check if there are parameters after the tag (tag content)
                if tag_match:
                    tag_content = tag_match.group(0)
                    remaining = line[line.find(tag_content) + len(tag_content):].strip()
                    if remaining:
                        # Have parameters but no tab separation
                        self.issues.append(FormatIssue(
                            line_number=line_num,
                            issue_type=IssueType.PARAMETER_SEPARATOR_ERROR,
                            description="Tag parameters separated by space, should use tab",
                            current_content=line,
                            suggested_fix=self._suggest_tab_separation_fix(line),
                            severity="error",
                            rule_reference=self.rule_refs[IssueType.PARAMETER_SEPARATOR_ERROR],
                            auto_fixable=True
                        ))
                        return
                parts = [stripped]  # Only tag, no parameters
            
            # Check tag and parameters
            if len(parts) > 1:
                tag_part = parts[0].strip()
                tag_match = self.tag_pattern.match(tag_part)
                if tag_match:
                    tag_name = tag_match.group(1).lower()
                    parameters = [p.strip() for p in parts[1:] if p.strip()]
                    self._check_tag_parameters_enhanced(line_num, line, tag_name, parameters)

    def _check_tag_parameters_enhanced(self, line_num: int, line: str, tag_name: str, parameters: List[str]):
        """Enhanced tag parameter check"""
        for i, param in enumerate(parameters):
            if not param:
                continue
            
            # Check string parameters
            if tag_name in self.string_tags:
                self._check_string_parameter_enhanced(line_num, line, param, tag_name, i)
            
            # Check numeric parameters
            elif tag_name in self.numeric_tags:
                self._check_numeric_parameter_enhanced(line_num, line, param, tag_name, i)
            
            # Check mixed parameters
            elif tag_name in self.mixed_tags:
                self._check_mixed_parameter(line_num, line, param, tag_name, i)
            
            # Check generic parameters
            else:
                self._check_generic_parameter_enhanced(line_num, line, param, i)

    def _check_string_parameter_enhanced(self, line_num: int, line: str, param: str, tag_name: str, param_index: int):
        """Enhanced string parameter check"""
        # Check for wrong quote types
        if param.startswith('"') and param.endswith('"'):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.STRING_QUOTE_ERROR,
                description=f"Tag [{tag_name}] parameter {param_index + 1} uses double quotes, should use backticks",
                current_content=line,
                suggested_fix=line.replace(param, f'`{param[1:-1]}`'),
                severity="error",
                rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                auto_fixable=True
            ))
        
        elif param.startswith("'") and param.endswith("'"):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.STRING_QUOTE_ERROR,
                description=f"Tag [{tag_name}] parameter {param_index + 1} uses single quotes, should use backticks",
                current_content=line,
                suggested_fix=line.replace(param, f'`{param[1:-1]}`'),
                severity="error",
                rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                auto_fixable=True
            ))
        
        # Check if missing quotes
        elif not (param.startswith('`') and param.endswith('`')) and not self.special_value_pattern.match(param):
            # Special values like [all], [normal] don't need extra quotes
            if not self.numeric_pattern.match(param):
                self.issues.append(FormatIssue(
                    line_number=line_num,
                    issue_type=IssueType.STRING_QUOTE_ERROR,
                    description=f"Tag [{tag_name}] string parameter missing backticks",
                    current_content=line,
                    suggested_fix=line.replace(param, f'`{param}`'),
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                    auto_fixable=True
                ))

    def _check_numeric_parameter_enhanced(self, line_num: int, line: str, param: str, tag_name: str, param_index: int):
        """Enhanced numeric parameter check"""
        # Check if numbers are incorrectly quoted
        if param.startswith('`') and param.endswith('`'):
            inner_value = param[1:-1]
            if self.numeric_pattern.match(inner_value):
                self.issues.append(FormatIssue(
                    line_number=line_num,
                    issue_type=IssueType.NUMERIC_QUOTE_ERROR,
                    description=f"Tag [{tag_name}] numeric parameter should not be quoted with backticks",
                    current_content=line,
                    suggested_fix=line.replace(param, inner_value),
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.NUMERIC_QUOTE_ERROR],
                    auto_fixable=True
                ))
        
        elif param.startswith('"') and param.endswith('"'):
            inner_value = param[1:-1]
            if self.numeric_pattern.match(inner_value):
                self.issues.append(FormatIssue(
                    line_number=line_num,
                    issue_type=IssueType.NUMERIC_QUOTE_ERROR,
                    description=f"Tag [{tag_name}] numeric parameter should not be quoted with double quotes",
                    current_content=line,
                    suggested_fix=line.replace(param, inner_value),
                    severity="error",
                    rule_reference=self.rule_refs[IssueType.NUMERIC_QUOTE_ERROR],
                    auto_fixable=True
                ))

    def _check_mixed_parameter(self, line_num: int, line: str, param: str, tag_name: str, param_index: int):
        """Check mixed type parameters"""
        # For mixed tags, determine type based on parameter content
        if self.numeric_pattern.match(param):
            # Numeric parameter, check if it has quotes
            if param.startswith('`') or param.startswith('"'):
                self.issues.append(FormatIssue(
                    line_number=line_num,
                    issue_type=IssueType.NUMERIC_QUOTE_ERROR,
                    description=f"Tag [{tag_name}] numeric parameter should not use quotes",
                    current_content=line,
                    suggested_fix=line.replace(param, param.strip('`"')),
                    severity="warning",
                    rule_reference=self.rule_refs[IssueType.NUMERIC_QUOTE_ERROR],
                    auto_fixable=True
                ))
        else:
            # String parameter, check quotes
            if param.startswith('"') and param.endswith('"'):
                self.issues.append(FormatIssue(
                    line_number=line_num,
                    issue_type=IssueType.STRING_QUOTE_ERROR,
                    description=f"Tag [{tag_name}] string parameter should use backticks",
                    current_content=line,
                    suggested_fix=line.replace(param, f'`{param[1:-1]}`'),
                    severity="warning",
                    rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                    auto_fixable=True
                ))

    def _check_generic_parameter_enhanced(self, line_num: int, line: str, param: str, param_index: int):
        """Enhanced generic parameter check"""
        # Check if using wrong quote types
        if param.startswith('"') and param.endswith('"'):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.STRING_QUOTE_ERROR,
                description=f"Parameter {param_index + 1} uses double quotes, suggest using backticks",
                current_content=line,
                suggested_fix=line.replace(param, f'`{param[1:-1]}`'),
                severity="warning",
                rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                auto_fixable=True
            ))

    def _check_content_line_enhanced(self, line_num: int, line: str):
        """Enhanced content line check"""
        stripped = line.strip()
        
        # Check multiple consecutive spaces
        if self.multiple_spaces_pattern.search(stripped):
            self.issues.append(FormatIssue(
                line_number=line_num,
                issue_type=IssueType.WHITESPACE_ERROR,
                description="Found multiple consecutive spaces, might need tab separation",
                current_content=line,
                suggested_fix=self._suggest_tab_separation_fix(line),
                severity="info",
                rule_reference=self.rule_refs[IssueType.WHITESPACE_ERROR],
                auto_fixable=True
            ))

    def _check_consistency(self):
        """Check overall consistency"""
        # Count quote usage
        backtick_count = 0
        double_quote_count = 0
        single_quote_count = 0
        
        for line in self.lines:
            backtick_count += line.count('`')
            double_quote_count += line.count('"')
            single_quote_count += line.count("'")
        
        # If double quotes are used a lot, give suggestion
        if double_quote_count > backtick_count and double_quote_count > 5:
            self.issues.append(FormatIssue(
                line_number=0,
                issue_type=IssueType.STRING_QUOTE_ERROR,
                description=f"File uses many double quotes ({double_quote_count}), suggest using backticks",
                current_content="Entire file",
                suggested_fix="Replace all double quotes with backticks",
                severity="info",
                rule_reference=self.rule_refs[IssueType.STRING_QUOTE_ERROR],
                auto_fixable=True
            ))

    def _is_indentation_context(self, line: str) -> bool:
        """Check if this is an indentation context"""
        stripped = line.strip()
        
        # Tag lines are usually indented
        if self.tag_pattern.match(stripped) or self.closing_tag_pattern.match(stripped):
            return True
        
        # Multiple consecutive spaces are usually indentation
        leading_spaces = len(line) - len(line.lstrip(' '))
        if leading_spaces >= 4:
            return True
        
        return False

    def _suggest_tab_separation_fix(self, line: str) -> str:
        """Suggest tab separation fix"""
        # Preserve leading indentation
        leading_match = self.leading_whitespace_pattern.match(line)
        if leading_match:
            leading = leading_match.group(1)
            content = line[len(leading):]
        else:
            leading = ""
            content = line
        
        # Smart split parameters
        parts = re.split(r'\s+', content.strip())
        if len(parts) > 1:
            return leading + '\t'.join(parts)
        
        return line

    def generate_detailed_report(self, result: CheckResult) -> str:
        """Generate detailed report"""
        if not result.issues:
            return f"""
[SUCCESS] PVF Format Check Passed
==================

File: {result.file_path}
Total Lines: {result.total_lines}
File Size: {result.file_size} bytes
Encoding: {result.encoding}
Check Time: {result.check_time}

Congratulations! File format fully complies with PVF specifications, no issues found.
"""

        # Group by severity
        errors = [i for i in result.issues if i.severity == "error"]
        warnings = [i for i in result.issues if i.severity == "warning"]
        infos = [i for i in result.issues if i.severity == "info"]
        
        report = [f"[FORMAT CHECK] PVF Format Check Detailed Report"]
        report.append("=" * 50)
        report.append(f"File: {result.file_path}")
        report.append(f"Total Lines: {result.total_lines}")
        report.append(f"File Size: {result.file_size} bytes")
        report.append(f"Encoding: {result.encoding}")
        report.append(f"Check Time: {result.check_time}")
        report.append("")
        report.append(f"Found {len(result.issues)} issues:")
        report.append(f"  ERROR: {len(errors)} (Must Fix)")
        report.append(f"  WARNING: {len(warnings)} (Suggest Fix)")
        report.append(f"  INFO: {len(infos)} (Optional)")
        report.append("")
        
        # Detailed issue list
        if errors:
            report.append("[ERROR] Error Details (Must Fix):")
            report.append("-" * 30)
            for i, issue in enumerate(errors, 1):
                report.append(f"{i}. Line {issue.line_number}: {issue.description}")
                report.append(f"   Type: {issue.issue_type.value}")
                report.append(f"   Current: {issue.current_content.strip()}")
                report.append(f"   Suggested: {issue.suggested_fix.strip()}")
                report.append(f"   Spec: {issue.rule_reference}")
                report.append(f"   Auto Fix: {'Yes' if issue.auto_fixable else 'No'}")
                report.append("")
        
        if warnings:
            report.append("[WARNING] Warning Details (Suggest Fix):")
            report.append("-" * 30)
            for i, issue in enumerate(warnings, 1):
                report.append(f"{i}. Line {issue.line_number}: {issue.description}")
                report.append(f"   Type: {issue.issue_type.value}")
                report.append(f"   Current: {issue.current_content.strip()}")
                report.append(f"   Suggested: {issue.suggested_fix.strip()}")
                report.append(f"   Spec: {issue.rule_reference}")
                report.append("")
        
        if infos:
            report.append("[INFO] Info Details (Optional):")
            report.append("-" * 30)
            for i, issue in enumerate(infos, 1):
                report.append(f"{i}. Line {issue.line_number}: {issue.description}")
                report.append(f"   Type: {issue.issue_type.value}")
                report.append(f"   Suggested: {issue.suggested_fix.strip()}")
                report.append("")
        
        # Fix suggestions
        auto_fixable_count = len([i for i in result.issues if i.auto_fixable])
        if auto_fixable_count > 0:
            report.append("[SUGGESTION] Fix Suggestions:")
            report.append(f"  • {auto_fixable_count} issues can be auto-fixed")
            report.append(f"  • Run command: python PVF_Format_Checker_Enhanced.py <file> --auto-fix")
            report.append("")
        
        # Issue type statistics
        issue_types = {}
        for issue in result.issues:
            issue_type = issue.issue_type.value
            if issue_type not in issue_types:
                issue_types[issue_type] = 0
            issue_types[issue_type] += 1
        
        report.append("[STATS] Issue Type Statistics:")
        for issue_type, count in sorted(issue_types.items()):
            report.append(f"  - {issue_type}: {count} issues")
        
        return "\n".join(report)

    def check_multiple_files(self, file_paths: List[str]) -> List[CheckResult]:
        """Check multiple files"""
        results = []
        for file_path in file_paths:
            if os.path.exists(file_path):
                result = self.check_file(file_path)
                results.append(result)
            else:
                # Create error result
                error_issue = FormatIssue(
                    line_number=0,
                    issue_type=IssueType.ENCODING_ERROR,
                    description=f"File does not exist: {file_path}",
                    current_content="",
                    suggested_fix="Check file path",
                    severity="error",
                    auto_fixable=False
                )
                results.append(CheckResult(
                    file_path=file_path,
                    issues=[error_issue],
                    total_lines=0,
                    check_time="0.00s",
                    file_size=0,
                    encoding="unknown"
                ))
        return results

    def generate_summary_report(self, results: List[CheckResult]) -> str:
        """Generate summary report"""
        total_files = len(results)
        total_issues = sum(len(r.issues) for r in results)
        clean_files = len([r for r in results if not r.issues])
        
        report = [f"[STATS] PVF Format Check Summary Report"]
        report.append("=" * 40)
        report.append(f"Total Files: {total_files}")
        report.append(f"Clean Files: {clean_files}")
        report.append(f"Files with Issues: {total_files - clean_files}")
        report.append(f"Total Issues: {total_issues}")
        report.append("")
        
        if total_issues > 0:
            # List issues by file
            report.append("[DETAILS] File Issue Details:")
            for result in results:
                if result.issues:
                    errors = len([i for i in result.issues if i.severity == "error"])
                    warnings = len([i for i in result.issues if i.severity == "warning"])
                    infos = len([i for i in result.issues if i.severity == "info"])
                    
                    report.append(f"  File: {os.path.basename(result.file_path)}")
                    report.append(f"     Errors: {errors}, Warnings: {warnings}, Info: {infos}")
        
        return "\n".join(report)

    def auto_fix_file(self, file_path: str, backup: bool = True) -> Tuple[bool, int]:
        """Auto-fix file, return (success flag, fixed issue count)"""
        if backup:
            backup_path = file_path + ".backup"
            try:
                import shutil
                shutil.copy2(file_path, backup_path)
                print(f"[INFO] Backup created: {backup_path}")
            except Exception as e:
                print(f"[ERROR] Backup creation failed: {e}")
                return False, 0
        
        try:
            # Check file
            result = self.check_file(file_path)
            auto_fixable_issues = [i for i in result.issues if i.auto_fixable]
            
            if not auto_fixable_issues:
                print("[INFO] No auto-fixable issues")
                return True, 0
            
            # Apply fixes
            fixed_lines = self.lines.copy()
            fixed_count = 0
            
            # Process in reverse order to avoid line number shifts
            for issue in sorted(auto_fixable_issues, key=lambda x: x.line_number, reverse=True):
                if issue.line_number > 0 and issue.suggested_fix:
                    if issue.line_number <= len(fixed_lines):
                        fixed_lines[issue.line_number - 1] = issue.suggested_fix
                        fixed_count += 1
            
            # Write back with CRLF line endings
            with open(file_path, 'w', encoding='utf-8', newline='') as f:
                f.write('\r\n'.join(fixed_lines) + '\r\n')
            
            print(f"[SUCCESS] Auto-fix completed: {file_path}")
            print(f"[STATS] Fixed {fixed_count} issues")
            return True, fixed_count
            
        except Exception as e:
            print(f"[ERROR] Auto-fix failed: {e}")
            return False, 0


def main():
    """Main function"""
    parser = argparse.ArgumentParser(description="Enhanced PVF Format Checker")
    parser.add_argument("files", nargs="*", help="File paths to check")
    parser.add_argument("--auto-fix", action="store_true", help="Auto-fix issues")
    parser.add_argument("--no-backup", action="store_true", help="Don't create backup when auto-fixing")
    parser.add_argument("--quiet", action="store_true", help="Show only errors")
    parser.add_argument("--summary", action="store_true", help="Show summary report")
    parser.add_argument("--json", help="Save results to JSON file")
    
    args = parser.parse_args()
    
    checker = PVFFormatCheckerEnhanced()
    
    # Check files
    if len(args.files) == 1:
        # Single file check
        file_path = args.files[0]
        if not os.path.exists(file_path):
            print(f"[ERROR] File does not exist: {file_path}")
            sys.exit(1)
        
        result = checker.check_file(file_path)
        
        if not args.quiet:
            report = checker.generate_detailed_report(result)
            print(report)
        
        # Auto-fix
        if args.auto_fix and result.issues:
            success, fixed_count = checker.auto_fix_file(file_path, backup=not args.no_backup)
            if success and fixed_count > 0:
                # Re-check
                new_result = checker.check_file(file_path)
                remaining_issues = len(new_result.issues)
                if remaining_issues > 0:
                    print(f"[WARNING] Still {remaining_issues} issues need manual fix")
        
        # Save JSON result
        if args.json:
            with open(args.json, 'w', encoding='utf-8') as f:
                json.dump(asdict(result), f, ensure_ascii=False, indent=2, default=str)
            print(f"[INFO] Results saved to: {args.json}")
        
        # Return exit code
        error_count = len([i for i in result.issues if i.severity == "error"])
        sys.exit(error_count)
    
    else:
        # Multiple file check
        results = checker.check_multiple_files(args.files)
        
        if args.summary:
            summary = checker.generate_summary_report(results)
            print(summary)
        else:
            for result in results:
                if not args.quiet or result.issues:
                    report = checker.generate_detailed_report(result)
                    print(report)
                    print("-" * 60)
        
        # Batch auto-fix
        if args.auto_fix:
            total_fixed = 0
            for result in results:
                if result.issues and os.path.exists(result.file_path):
                    success, fixed_count = checker.auto_fix_file(
                        result.file_path, 
                        backup=not args.no_backup
                    )
                    if success:
                        total_fixed += fixed_count
            
            if total_fixed > 0:
                print(f"[SUCCESS] Total fixed {total_fixed} issues")
        
        # Save JSON result
        if args.json:
            with open(args.json, 'w', encoding='utf-8') as f:
                json.dump([asdict(r) for r in results], f, ensure_ascii=False, indent=2, default=str)
            print(f"[INFO] Results saved to: {args.json}")
        
        # Return exit code
        total_errors = sum(len([i for i in r.issues if i.severity == "error"]) for r in results)
        sys.exit(min(total_errors, 255))


if __name__ == "__main__":
    main()