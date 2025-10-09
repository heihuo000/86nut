import re

def parse_pvf_content(content):
    """
    解析PVF文件内容，提取所有标签及其值
    返回一个按标签分组的字典
    """
    # 找到所有标签和值对
    pattern = r'(\[[^\]]+\])\s*\n((?:(?!\[[^\]]+\])[^\n]*\n?)*)'
    matches = re.findall(pattern, content)
    
    result = {}
    for tag, value in matches:
        tag_name = tag.strip('[]')
        # 处理可能的结束标签
        if tag_name.startswith('/'):
            continue
        
        # 检查是否存在对应的结束标签
        end_pattern = rf'\[/{tag_name}\]'
        has_end_tag = re.search(end_pattern, content)
        
        # 清理值，移除空行并保留有意义的内容
        cleaned_value = '\n'.join(line.rstrip() for line in value.split('\n') if line.strip())
        
        if has_end_tag:
            cleaned_value += f"\n[/{tag_name}]"
        
        result[tag_name] = cleaned_value
    
    return result

def normalize_content(content):
    """
    标准化内容，移除多余的空格和空行，但保留有意义的内容
    """
    lines = content.splitlines()
    normalized_lines = []
    
    for line in lines:
        stripped_line = line.rstrip()  # 移除行末空格
        if stripped_line or (normalized_lines and normalized_lines[-1]):  # 保留非连续的空行
            normalized_lines.append(stripped_line)
    
    # 移除开头和结尾的空行
    while normalized_lines and not normalized_lines[0]:
        normalized_lines.pop(0)
    while normalized_lines and not normalized_lines[-1]:
        normalized_lines.pop()
    
    return '\n'.join(normalized_lines)

def validate_formatter(original_path, formatted_path):
    """
    验证格式化工具是否保留了原始内容的逻辑等价性
    """
    with open(original_path, 'r', encoding='utf-8') as f:
        original_content = f.read()
    
    with open(formatted_path, 'r', encoding='utf-8') as f:
        formatted_content = f.read()
    
    print("=== 验证格式化工具 ===")
    print(f"原始文件: {original_path}")
    print(f"格式化文件: {formatted_path}")
    
    # 解析两个文件的内容
    orig_parsed = parse_pvf_content(original_content)
    fmt_parsed = parse_pvf_content(formatted_content)
    
    # 比较标签集合
    orig_tags = set(tag for tag in orig_parsed.keys() if not tag.startswith('#'))
    fmt_tags = set(tag for tag in fmt_parsed.keys() if not tag.startswith('#') and tag != '/usable job' and tag != '/skill data up' and tag != '/aura ability' and tag != '/aurora graphic effects')
    
    print(f"\n原始文件标签数量: {len(orig_tags)}")
    print(f"格式化文件标签数量: {len(fmt_tags)}")
    print(f"标签集合是否一致: {orig_tags == fmt_tags}")
    
    # 对于需要结束标签的标签，也检查结束标签
    need_end_tags = {'usable job', 'skill data up', 'aura ability', 'aurora graphic effects'}
    
    orig_with_end = set()
    fmt_with_end = set()
    
    for tag in orig_parsed.keys():
        if tag in need_end_tags:
            orig_with_end.add(tag)
            orig_with_end.add(f'/{tag}')
        else:
            orig_with_end.add(tag)
    
    # 移除注释标签
    orig_with_end = {tag for tag in orig_with_end if not tag.startswith('#')}
    
    for tag in fmt_parsed.keys():
        if not tag.startswith('#'):
            fmt_with_end.add(tag)
    
    print(f"包含结束标签的集合是否一致: {orig_with_end == fmt_with_end}")
    
    # 检查值是否基本一致
    print("\n=== 详细比较 ===")
    all_tags_ok = True
    
    for tag in orig_tags:
        if tag in fmt_parsed:
            orig_val = orig_parsed[tag].strip()
            fmt_val = fmt_parsed[tag].strip()
            
            # 比较值，忽略空格差异
            if normalize_whitespace(orig_val) == normalize_whitespace(fmt_val):
                print(f"[OK] {tag}: 值匹配")
            else:
                print(f"[ERROR] {tag}: 值不匹配")
                print(f"  原始: {repr(orig_val)}")
                print(f"  格式化: {repr(fmt_val)}")
                all_tags_ok = False
        else:
            print(f"[ERROR] {tag}: 格式化文件中缺少此标签")
            all_tags_ok = False
    
    print(f"\n整体验证结果: {'通过' if all_tags_ok and orig_tags == fmt_tags else '失败'}")
    
    return all_tags_ok and orig_tags == fmt_tags

def normalize_whitespace(text):
    """
    标准化空白字符，将所有空白字符序列（制表符、空格）替换为单个空格
    """
    # 将制表符和其他空白字符替换为空格，然后合并多个连续空格
    import re
    text = re.sub(r'\s+', ' ', text)
    return text.strip()

# 测试
if __name__ == "__main__":
    import sys
    if len(sys.argv) < 3:
        print("用法: python validate_formatter.py <original_file> <formatted_file>")
        sys.exit(1)
    
    original_file = sys.argv[1]
    formatted_file = sys.argv[2]
    
    validate_formatter(original_file, formatted_file)