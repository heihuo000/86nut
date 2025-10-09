# pvf_formatter.py
import re
import os
from typing import List, Dict, Tuple

class PVFFormatter:
    def __init__(self):
        # 需要结束标记的标签
        self.need_end_tags = {
            'usable job', 'piece set ability', 'skill data up', 'aura ability', 
            'aurora graphic effects', 'custom animation', 'if', 'then'
        }
        
        # 标签分类
        self.basic_info_tags = {
            'name', 'name2', 'basic explain', 'explain', 'flavor text', 
            'grade', 'rarity', 'detail explain', 'no random'
        }
        
        self.equipment_attr_tags = {
            'physical attack', 'magical attack', 'physical defense', 
            'magical defense', 'all elemental attack', 'move speed', 
            'attack speed', 'cast speed', 'physical critical hit', 
            'magical critical hit', 'equipment physical attack', 
            'equipment magical attack', 'separate attack', 
            'equipment physical defense', 'HP MAX', 'MP MAX', 'SP MAX',
            'STR', 'DEX', 'INT', 'LUK', 'HP regen', 'MP regen', 
            'MP regen speed', 'STR rate', 'DEX rate', 'INT rate', 
            'LUK rate', 'physical attack rate', 'magical attack rate', 
            'physical defense rate', 'magical defense rate'
        }
        
        self.equipment_limit_tags = {
            'usable job', 'minimum level', 'attach type'
        }
        
        self.special_tags = {
            'piece set ability', 'skill data up', 'aura ability', 
            'aurora graphic effects'
        }
        
        self.economy_tags = {
            'price', 'repair price', 'value'
        }
        
        self.mechanism_tags = {
            'creation rate', 'durability', 'no random', 'possible kiri protect',
            'Force Result Item Rule'
        }
        
        self.display_tags = {
            'item group name', 'field image', 'weight', 'cool time'
        }
        
        self.environment_tags = {
            'fire resistance', 'ice resistance', 'lightning resistance',
            'holy resistance', 'dark resistance', 'poison resistance'
        }

    def parse_file(self, content: str) -> List[Tuple[str, str, str]]:
        """
        解析PVF文件内容，返回标签、值和结束标签的列表
        返回格式: [(标签名, 值, 结束标签名), ...]
        """
        lines = content.splitlines()
        result = []
        i = 0
        
        while i < len(lines):
            line = lines[i].strip()
            
            # 检查是否为标签行
            if line.startswith('[') and line.endswith(']'):
                tag_name = line[1:-1]  # 去掉方括号
                
                # 获取标签值
                values = []
                i += 1
                while i < len(lines):
                    next_line = lines[i].strip()
                    if not next_line:
                        i += 1
                        continue
                    # 如果遇到结束标签或新标签，则停止
                    if (next_line.startswith('[/') or 
                        (next_line.startswith('[') and next_line.endswith(']'))):
                        break
                    values.append(next_line)
                    i += 1
                
                value = '\n'.join(values)
                
                # 检查是否需要结束标签
                end_tag = None
                if tag_name in self.need_end_tags:
                    # 寻找对应的结束标签
                    while i < len(lines):
                        potential_end = lines[i].strip()
                        if potential_end == f'[/usable job]' and tag_name == 'usable job':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/piece set ability]' and tag_name == 'piece set ability':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/skill data up]' and tag_name == 'skill data up':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/aura ability]' and tag_name == 'aura ability':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/aurora graphic effects]' and tag_name == 'aurora graphic effects':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/custom animation]' and tag_name == 'custom animation':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/if]' and tag_name == 'if':
                            end_tag = potential_end
                            i += 1
                            break
                        elif potential_end == f'[/then]' and tag_name == 'then':
                            end_tag = potential_end
                            i += 1
                            break
                        else:
                            # 如果没找到对应的结束标签，继续
                            break
                
                result.append((tag_name, value, end_tag))
            else:
                i += 1
        
        return result

    def format_file(self, content: str) -> str:
        """
        格式化PVF文件内容
        """
        # 简单的格式化：确保每行之间有适当的空行，标签前后有空行
        lines = content.splitlines()
        formatted_lines = []
        
        # 添加文件头
        if lines and lines[0].strip() != '#PVF_File':
            formatted_lines.append('#PVF_File')
            formatted_lines.append('')
        
        i = 0
        while i < len(lines):
            line = lines[i]
            
            # 检查是否为标签行
            if re.match(r'^\[[^\]]+\]$', line.strip()):
                # 如果不是第一行，且前一行不是空行，则添加空行
                if formatted_lines and formatted_lines[-1] != '':
                    formatted_lines.append('')
                
                formatted_lines.append(line.strip())
                
                # 添加标签内容
                i += 1
                tag_content = []
                while i < len(lines):
                    content_line = lines[i]
                    # 检查是否为下一个标签或结束标签
                    if re.match(r'^(\[[^\]]+\]|(\[[^\]]+\].*[^\[]*\[[^\]]+\])|[/\w+\])$', content_line.strip()):
                        # 检查是否为结束标签
                        if content_line.strip().startswith('[/'):
                            # 添加结束标签，并跳出内循环
                            formatted_lines.append(content_line.strip())
                            break
                        else:
                            # 回退一行，让外循环处理下一个标签
                            i -= 1
                            break
                    else:
                        tag_content.append(content_line.rstrip())
                    i += 1
                
                # 添加标签内容（如果有）
                for content_line in tag_content:
                    formatted_lines.append(content_line)
                
                # 添加空行分隔
                if i < len(lines) - 1:  # 不是最后一行
                    formatted_lines.append('')
            else:
                # 普通行，通常在开头部分
                formatted_lines.append(line.rstrip())
                i += 1
        
        # 最后确保有适当的结尾
        if formatted_lines and formatted_lines[-1] != '':
            formatted_lines.append('')
        
        return '\n'.join(formatted_lines)

    def format_file_advanced(self, content: str) -> str:
        """
        高级格式化：按照标签类型分组排列
        """
        # 分离头部和内容
        lines = content.splitlines()
        header = []
        content_lines = []
        
        # 分离头部和内容部分
        in_content_section = False
        for line in lines:
            if line.strip().startswith('['):
                in_content_section = True
                content_lines.append(line)
            elif in_content_section:
                content_lines.append(line)
            else:
                header.append(line.rstrip())
        
        # 按类别分组
        categorized = {
            'basic_info': [],
            'equipment_limit': [],
            'equipment_attr': [],
            'special': [],
            'economy': [],
            'mechanism': [],
            'display': [],
            'environment': [],
            'other': []
        }
        
        # 解析内容，识别标签、值和结束标签
        i = 0
        while i < len(content_lines):
            line = content_lines[i].strip()
            if line.startswith('[') and line.endswith(']'):
                tag_name = line[1:-1]  # 去掉方括号
                tag_data = {'tag': line, 'values': [], 'end_tag': None}
                
                # 收集标签的值
                i += 1
                while i < len(content_lines):
                    value_line = content_lines[i].strip()
                    # 检查是否是结束标签
                    if value_line.startswith('[/') and value_line[2:-1] in [tag_name] + (['then'] if tag_name == 'if' else []):
                        tag_data['end_tag'] = value_line
                        i += 1
                        break
                    # 检查是否是新的标签
                    elif value_line.startswith('[') and value_line.endswith(']'):
                        i -= 1  # 回退一步，让外循环处理这个新标签
                        break
                    else:
                        tag_data['values'].append(content_lines[i])
                        i += 1
                
                # 按类别分类
                if tag_name in self.basic_info_tags:
                    categorized['basic_info'].append(tag_data)
                elif tag_name in self.equipment_limit_tags:
                    categorized['equipment_limit'].append(tag_data)
                elif tag_name in self.equipment_attr_tags:
                    categorized['equipment_attr'].append(tag_data)
                elif tag_name in self.special_tags:
                    categorized['special'].append(tag_data)
                elif tag_name in self.economy_tags:
                    categorized['economy'].append(tag_data)
                elif tag_name in self.mechanism_tags:
                    categorized['mechanism'].append(tag_data)
                elif tag_name in self.display_tags:
                    categorized['display'].append(tag_data)
                elif tag_name in self.environment_tags:
                    categorized['environment'].append(tag_data)
                else:
                    categorized['other'].append(tag_data)
            else:
                i += 1
        
        # 重构内容，按类别排列，但不加注释，保持原格式
        result_lines = []
        
        # 按预定义顺序添加类别
        categories = [
            'basic_info', 'equipment_limit', 'equipment_attr',
            'special', 'economy', 'mechanism', 'display', 'environment', 'other'
        ]
        
        for cat in categories:
            if categorized[cat]:
                for tag_data in categorized[cat]:
                    result_lines.append(tag_data['tag'])
                    for val in tag_data['values']:
                        result_lines.append(val.rstrip())  # 保留原格式
                    if tag_data['end_tag']:
                        result_lines.append(tag_data['end_tag'])
                
                # 类别间添加空行
                if cat != categories[-1]:  # 不在最后一组后加空行
                    result_lines.append('')
        
        # 组合头部和格式化后的内容
        if header and header[-1] != '':
            header.append('')
        
        return '\n'.join(header + result_lines)

def format_pvf_file(input_path: str, output_path: str = None):
    """
    格式化指定的PVF文件
    """
    if output_path is None:
        output_path = input_path
    
    formatter = PVFFormatter()
    
    with open(input_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    formatted_content = formatter.format_file_advanced(content)
    
    with open(output_path, 'w', encoding='utf-8') as f:
        f.write(formatted_content)
    
    print(f"成功格式化文件: {input_path} -> {output_path}")

if __name__ == "__main__":
    import sys
    
    if len(sys.argv) < 2:
        print("用法: python pvf_formatter.py <input_file> [output_file]")
        sys.exit(1)
    
    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) > 2 else input_file
    
    if not os.path.exists(input_file):
        print(f"错误: 文件 {input_file} 不存在")
        sys.exit(1)
    
    format_pvf_file(input_file, output_file)
    print(f"完成格式化: {input_file}")