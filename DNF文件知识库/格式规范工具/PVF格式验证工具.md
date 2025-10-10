# PVF格式验证工具

## 概述

本文档提供了用于验证PVF文件格式的Python脚本工具，帮助检查PVF文件是否符合标准格式规范。

Python验证脚本文件：`pvf_format_checker.py`

## 🛠️ 格式验证工具

### 功能特性

- ✅ **基础格式检查**：缩进、引号、字符串格式
- ✅ **高级验证**：文件头、参数分隔、编码检测
- ✅ **批量检查**：支持批量检查整个目录的PVF文件
- ✅ **自动修复**：自动修复常见格式错误
- ✅ **详细报告**：提供清晰的错误和警告信息

## 使用方法

### 基础使用

```bash
# 检查单个文件
python pvf_format_checker.py your_file.equ

# 批量检查当前目录下的所有.equ文件
python pvf_format_checker.py -b .

# 修复文件格式（自动备份）
python pvf_format_checker.py -f your_file.equ
```

### 在Python代码中使用

```python
# 基础检查
from pvf_format_checker import check_pvf_format
errors = check_pvf_format("your_file.equ")
for error in errors:
    print(error)

# 高级检查
from pvf_format_checker import PVFFormatChecker
checker = PVFFormatChecker()
result = checker.check_file("your_file.equ")
print(f"错误: {len(result['errors'])}")
print(f"警告: {len(result['warnings'])}")

# 批量检查
from pvf_format_checker import batch_check_files
results = batch_check_files(".", "*.equ")

# 自动修复
from pvf_format_checker import fix_common_errors
fix_common_errors("your_file.equ", backup=True)
```

## 使用方法


### Python脚本使用

1. **基础检查**（简单版）：
```python
# 在Python中导入函数使用
from check_pvf_format import check_pvf_format
errors = check_pvf_format("your_file.equ")
for error in errors:
    print(error)
```

2. **完整验证**（推荐）：
```bash
# 命令行使用
python check_pvf_format.py your_file.equ

# 或者作为模块导入
from pvf_format_checker import PVFFormatChecker
checker = PVFFormatChecker()
result = checker.check_file("your_file.equ")
```

## 检查项目说明

### ✅ 基础检查项目
- **文件头格式**：检查是否以 `#PVF_File` 开头
- **缩进格式**：确保使用Tab键而非空格
- **字符串引号**：验证使用反引号 `` ` `` 而非双引号 `"` 或单引号 `'`
- **参数分隔**：检查参数间使用Tab键分隔
- **编码格式**：确保文件为UTF-8编码

### ⚠️ 高级检查项目
- **字符串完整性**：检查反引号是否正确配对
- **参数分隔一致性**：识别可能使用空格分隔的情况
- **标签格式**：验证标签名称的正确性
- **数值格式**：检查数值是否使用了错误的引号

### ❌ 错误级别
- **错误**：必须修正的格式问题，会导致文件无法正常使用
- **警告**：建议改进的格式问题，不会立即影响功能但可能影响兼容性

## 输出结果说明

```
=== PVF文件格式验证结果 ===
文件: test.equ
总行数: 156

❌ 错误 (3):
  第 15 行: 使用了空格缩进，应该使用Tab键
  第 23 行: 使用了错误的引号，应该使用反引号 `` ` ``
  第 45 行: 使用了空格缩进，应该使用Tab键

⚠️ 警告 (1):
  第 67 行: 可能使用了空格分隔参数，建议使用Tab键

❌ 文件存在格式错误，需要修正。
```

## 常见问题修复

### 空格缩进问题
```powershell
# PowerShell一键修复（将行首空格替换为Tab）
(Get-Content "file.equ") -replace '^ +', "`t" | Set-Content "file_fixed.equ"
```

### 引号错误修复
```powershell
# PowerShell替换错误的引号
$content = Get-Content "file.equ" -Raw
$content = $content -replace '"([^"]*)"', '`$1`'  # 双引号替换
$content = $content -replace "'([^']*)'", '`$1`'   # 单引号替换
$content | Set-Content "file_fixed.equ"
```

### 参数分隔修复
```powershell
# 将多个空格替换为Tab（需谨慎使用）
(Get-Content "file.equ") -replace ' {2,}', "`t" | Set-Content "file_fixed.equ"
```

## 注意事项

1. **备份原文件**：在运行修复脚本前，务必备份原始文件
2. **逐步修复**：建议逐个修复错误，避免引入新的问题
3. **人工检查**：自动修复后，建议人工检查关键部分
4. **测试验证**：修复后使用游戏客户端测试文件是否正常工作

## 扩展功能

### 批量检查
```powershell
# 批量检查当前目录下的所有.equ文件
Get-ChildItem -Filter "*.equ" | ForEach-Object {
    Write-Host "`n检查文件: $($_.Name)" -ForegroundColor Cyan
    Check-PVFFormat $_.FullName
}
```

### 集成到构建流程
```python
# 在构建脚本中集成格式检查
def build_with_format_check():
    checker = PVFFormatChecker()
    
    # 检查所有PVF文件
    pvf_files = Path("output").glob("**/*.equ")
    
    for file in pvf_files:
        result = checker.check_file(file)
        if result["errors"]:
            print(f"❌ {file}: 存在格式错误")
            return False
        elif result["warnings"]:
            print(f"⚠️ {file}: 存在格式警告")
    
    print("✅ 所有文件格式检查通过")
    return True
```

## 更新日志

- **v1.0.0**: 基础格式检查功能
- **v1.1.0**: 增加完整验证脚本和错误修复功能
- **v1.2.0**: 增加批量检查和构建集成支持