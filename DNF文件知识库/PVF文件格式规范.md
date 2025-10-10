# PVF文件格式规范（基于真实PVF文件分析）

## 概述

PVF（Player Versus Fighter）文件是DNF游戏中用于定义装备、道具、技能、地图等游戏内容的配置文件。本文档基于对真实PVF文件的深入分析，详细说明了PVF文件的实际格式规范和编写要求。

**本规范适用于所有PVF文件类型，包括但不限于：**
- **EQU文件** - 装备文件（武器、防具、首饰等）
- **STK文件** - 堆叠物品文件（消耗品、材料等）
- **MAP文件** - 地图文件
- **SKL文件** - 技能文件
- **ANI文件** - 动画文件
- **其他PVF格式文件**

## 🔥 重要知识点速查

> **本章节汇总了PVF文件编辑中最关键的知识点，建议优先掌握**
### 装备描述完善规范	
   - **功能描述一致性**：当为装备添加特效、状态效果、被动技能等功能时，必须同步更新 `[basic explain]` 部分的描述。
   - **描述写法灵活性**：参考标准格式样板，描述应自然流畅，避免"有功能无描述"的情况。
   - **适用范围**：此规范适用于所有装备类型（武器、防具、饰品等）和物品的描述编写。

### 💡 核心格式要点

#### 字符串格式 - 必须掌握
- ✅ **正确**：使用反引号 `` `装备名称` ``
- ❌ **错误**：使用双引号 `"装备名称"` 或单引号 `'装备名称'`

#### 数值格式 - 必须掌握  
- ✅ **正确**：直接写数字 `50`、`1000`、`1.5`
- ❌ **错误**：给数字加引号 `` `50` `` 或 `"1000"`

#### 缩进格式 - 必须掌握
- ✅ **正确**：使用Tab键缩进
- ❌ **错误**：使用空格缩进

#### 参数分隔 - 必须掌握
- ✅ **正确**：参数间用Tab分隔 `[icon mark]	`item.img`	14`
- ❌ **错误**：参数间用空格分隔 `[icon mark] item.img 14`

### 🎯 常见误区解析

#### [name] 标签的特殊性质
- **重要发现**：`[name]` 标签内容与职业限制**完全无关**
- **正确理解**：名称中的职业词汇（如"女鬼剑"）仅为描述性文字
- **实际控制**：职业限制由 `[usable job]` 标签决定

```
[name]
	`巧克力腰带(b)女鬼剑`              // 名称中的"女鬼剑"仅为描述
	
[usable job]                           // 真正的职业限制在这里
	`[swordman]`                       // 实际可用职业：鬼剑士
[/usable job]
```

#### 标签格式的三种类型
1. **同行参数**：`[grade]	27` - 标签和参数在同一行
2. **换行参数**：标签单独一行，参数在下一行缩进
3. **结束标签**：`[/usable job]` - 用于结束多行标签

### ⚠️ 致命错误避免

#### 编码错误
- **必须使用**：UTF-8编码
- **行尾符**：CRLF（\r\n）
- **避免使用**：GBK、ANSI等其他编码

#### 格式错误
- **禁止混用**：Tab和空格缩进
- **禁止使用**：错误的引号类型
- **禁止忽略**：参数分隔符规则

### 🛠️ 快速检查清单

编辑PVF文件时，请按此清单检查：

- [ ] 所有字符串都使用反引号 `` ` `` 包围
- [ ] 所有数值都没有使用引号
- [ ] 所有缩进都使用Tab键
- [ ] 所有参数分隔都使用Tab键
- [ ] 文件编码为UTF-8
- [ ] 标签名前后没有多余空格
- [ ] 职业限制使用 `[usable job]` 而非 `[name]`



### 🚨 紧急救援指南

#### 文件损坏时的修复步骤
1. **检查编码**：确保文件为UTF-8编码
2. **检查行尾符**：转换为CRLF（\r\n）
3. **替换引号**：将所有 `"` 和 `'` 替换为 `` ` ``
4. **修复缩进**：将所有空格缩进替换为Tab
5. **修复分隔符**：将参数间的空格替换为Tab

#### 常见错误快速修复
- **引号错误**：全局替换 `"` → `` ` `` 和 `'` → `` ` ``
- **缩进错误**：全局替换行首空格为Tab
- **分隔符错误**：检查参数间是否使用Tab分隔

### 📚 相关章节快速导航

- **详细格式规范** → [基本格式要求](#基本格式要求)
- **标签详解** → [标签格式](#6-标签格式)
- **数据类型说明** → [基础数据类型规则](#基础数据类型规则)
- **实际示例** → [真实文件示例分析](#真实文件示例分析)
- **验证工具** → [格式验证工具](#格式验证工具)

---

## 真实格式分析来源

本规范基于以下真实PVF文件的分析：
- `equipment/brac_2choro994.equ` - 装备文件
- `equipment/tonfa_2213101.equ` - 武器文件  
- `stackable/material/material_3291.stk` - 材料文件
- `map/hendonmyre/hendon_auction.map` - 地图文件

## 基本格式要求

### 1. 文件编码
- **必须使用UTF-8编码**
- 支持中文、韩文、日文等多种字符
- 避免使用GBK或其他编码格式

### 2. 行尾符
- **使用CRLF（\r\n）作为行尾符**
- 这是真实PVF文件中使用的标准格式
- 与之前认为的LF格式不同

### 3. 缩进格式
- **使用制表符（Tab）进行缩进**
- 每个缩进层级使用一个制表符
- 嵌套结构使用多个制表符表示层级

### 4. 参数分隔
- **参数之间使用制表符（Tab）分隔**
- 这是真实PVF文件中的标准做法
- 不要使用空格分隔参数

### 5. 标签格式
- 标签使用方括号包围：`[tag name]`
- 标签名称使用小写字母和空格
- 标签可以从行首开始，也可以有缩进

### 6. 参数值格式
**基于真实PVF文件的参数格式规则：**
- **数字值**：直接写数字，**不加任何引号**
	- 示例：`[level]	50`、`[price]	1000`
- **字符串值**：使用**反引号**包围 `` `string` ``
	- 示例：`[name]	`测试装备``、`[usable job]	`[all]``
- **特殊字符串**：某些特殊值可能使用双引号，但反引号是主流
- **布尔值**：通常用数字表示（0/1）或特定字符串

## 详细格式说明

### 1. 文件头格式
所有PVF文件都以 `#PVF_File` 开头：
```
#PVF_File

[name]	`装备名称`
```

### 2. 字符串值格式
**重要发现：真实PVF文件中字符串值使用反引号包围**

✅ 正确格式：
```
[name]
	`精 · 加持的禁锢之限手镯 : [湮灭黑洞]`
[description]	
`这是装备描述`
[type]	
`[normal]`
```

❌ 错误格式：
```
[name]	"装备名称"     // 不要使用双引号
[name]	'装备名称'     // 不要使用单引号
```

### 3. 数值格式
**数值直接写，不使用任何引号**

✅ 正确格式：
```
[level]
	50
[price]
	1000
[weight]
	1.5
[offset x]
	-10
```

❌ 错误格式：
```
[level]	`50`         // 数值不要用反引号
[price]	"1000"       // 数值不要用双引号
```

### 4. 参数分隔格式
**参数之间使用制表符（Tab）分隔**

✅ 正确格式：
```
[player number]
	2	8
[pvp start area]
	650	230	474	213
[icon mark]
	`item/equipment.img`	14
[equipment type]
	`[weapon]`	21
```

❌ 错误格式：
```
[player number] 2 8                    // 不要用空格分隔
[icon mark] `item.img`  14             // 不要用多个空格
```

### 5. 缩进格式
**使用制表符进行缩进，每层一个Tab**

✅ 正确格式：
```
[equipment option]
	[physical attack]	100	200
	[magical attack]	50	100
[/equipment option]

[background animation]
	[ani info]
		[filename]	`Animation/far00.ani`
		[layer]	`[distantback]`
	[/ani info]
[/background animation]
```

❌ 错误格式：
```
[equipment option]
    [physical attack] 100 200          // 不要用空格缩进
[/equipment option]
```

### 6. 标签格式

**重要发现：PVF文件中的标签有三种不同的参数格式**

#### 6.1 同行参数格式 (Inline Parameters)
标签和参数在同一行，用Tab分隔：
```
[标签名]	参数1	参数2	参数3
```

#### 6.2 换行参数格式 (Newline Parameters)
标签单独一行，参数在下一行缩进：
```
[标签名]
	参数1
	参数2
	参数3
```

#### 6.3 结束标签格式
```
[/标签名]                              // 结束标签
```

#### 6.4 重要标签说明

**[name] 标签特殊性质**

`[name]` 标签是装备和物品的显示名称，具有以下重要特点：

- **与职业限制无关**：`[name]` 标签中的内容仅用于游戏内显示，不影响职业使用限制
- **可任意命名**：名称内容完全由制作者自定义，可包含任意中文、英文、符号
- **描述性文字**：名称中出现的职业词汇（如"女鬼剑"、"法师"等）仅为描述性文字，不代表实际职业限制

**示例说明**：
```
[name]
	`巧克力腰带(b)女鬼剑`              // 名称中的"女鬼剑"仅为描述
	
[usable job]                           // 真正的职业限制在这里
	`[swordman]`                       // 实际可用职业：鬼剑士
[/usable job]
```

**真正控制职业限制的标签**：
- `[usable job]` - 定义哪些职业可以使用该装备
- `[animation job]` - 定义装备动画适用的职业

**常见误区**：
- ❌ 错误理解：认为名称中的职业词汇决定了装备的职业限制
- ✅ 正确理解：名称仅为显示文本，职业限制由专门的标签控制

### 7. 注释格式
- 使用双斜杠 `//` 开始注释
- 注释可以在行末或单独一行
- 注释前通常有空格或Tab
- 注释可以出现在任何位置

### 8. 空行规则
- 相关标签组之间可以有空行
- 文件末尾应该有一个空行
- 空行用于提高可读性

## 真实文件示例分析

### 装备文件示例（brac_2choro994.equ）
```
#PVF_File

[name]
	`精 · 加持的禁锢之限手镯 : [湮灭黑洞]`
[grade]
	2
[rarity]
	5
[icon mark]
	`item/new_equipment/05_acc/bracelet/br_a_2choro994.img`	0
[field image]	
`item/new_equipment/05_acc/bracelet/br_a_2choro994.img`	1
[equipment type]
	`[bracelet]`	23
[move wav]
	`BONE_TOUCH`
[durability]
	45
[weight]
	250
[price]
	632000
```

### 地图文件示例（hendon_auction.map）
```
#PVF_File

[background pos]
	80
[player number]
	2	8
[pvp start area]
	650	230	474	213
[type]	
`[normal]`
[tile]
	`Tile/hm01.til`
	`Tile/hm01.til`
[/tile]
[animation]
	`Animation/gate01.ani`	`[normal]`	1342	415	0
	`Animation/hmlight01.ani`	`[normal]`	1340	415	0
[/animation]
```

## 格式验证要点

### 必须检查的项目：
1. **文件编码**：UTF-8
2. **行尾符**：CRLF（\r\n）
3. **字符串引号**：使用反引号 `` ` ``
4. **数值格式**：无引号
5. **参数分隔**：制表符（Tab）
6. **缩进**：制表符（Tab）
7. **标签格式**：正确区分同行参数和换行参数标签

### 常见错误修正：

❌ **引号错误**：
```
[name]	"装备名称"
[type]	'类型'
```
✅ **修正后**：
```
[name]	`装备名称`
[type]	`类型`
```

❌ **数值引号错误**：
```
[level]	`50`
[price]	"1000"
```
✅ **修正后**：
```
[level]	50
[price]	1000
```

❌ **分隔符错误**：
```
[icon mark] `item.img` 14              // 空格分隔
[equipment type] `[weapon]`  21        // 多空格分隔
```
✅ **修正后**：
```
[icon mark]	`item.img`	14             // Tab分隔
[equipment type]	`[weapon]`	21       // Tab分隔
```

❌ **缩进错误**：
```
[equipment option]
    [physical attack] 100 200          // 空格缩进
[/equipment option]
```
✅ **修正后**：
```
[equipment option]
	[physical attack]	100	200        // Tab缩进和Tab分隔
[/equipment option]
```

❌ **标签格式错误**：
```
[name]	`装备名称`                     // 错误：name标签应该换行
[grade]                                // 错误：grade标签应该同行
	27
[usable job]	`[swordman]`	`[fighter]` // 错误：多值应该换行
```
✅ **修正后**：
```
[name]                                 // 正确：name标签换行格式
	`装备名称`
[grade]	27                             // 正确：grade标签同行格式
[usable job]                           // 正确：多值标签换行格式
	`[swordman]`
	`[fighter]`
[/usable job]
```

## 编辑器配置建议

### VS Code 设置：
```json
{
	"editor.insertSpaces": false,
	"editor.detectIndentation": false,
	"files.eol": "\r\n",
	"editor.renderWhitespace": "all"
}
```

### Notepad++ 设置：
- 编码：UTF-8
- 行尾符：Windows (CRLF)
- 显示：显示所有字符
- 缩进：使用制表符

## 验证工具

使用提供的格式检查工具验证文件格式：
```powershell
.\Check-PVFFormat.ps1 -FilePath "your_file.equ" -ShowDetails
```

## 不同文件类型的应用说明

### EQU文件（装备文件）
EQU文件严格遵循本规范的所有要求：
- 所有字符串值必须使用反引号 `` ` `` 包围
- 数值参数不使用任何引号
- 参数间使用制表符分隔
- 缩进使用制表符
- 特别注意装备属性、技能等级、套装信息等复杂结构的格式

### STK文件（堆叠物品文件）
STK文件同样遵循本规范：
- 物品名称、描述等字符串使用反引号
- 价格、重量、等级等数值直接写
- 嵌套结构（如booster info）严格按缩进规则
- 特别注意消耗品效果、材料属性等的格式

### 其他文件类型
MAP、SKL、ANI等文件类型也必须遵循相同的基础格式规范，只是具体的标签内容不同。

## 总结

基于真实PVF文件分析，标准格式为：
- 字符串：`` `内容` ``（反引号）
- 数值：直接写数字
- 分隔：制表符（Tab）
- 缩进：制表符（Tab）
- 行尾：CRLF（\r\n）

**这个规范适用于所有PVF文件类型，包括EQU、STK、MAP等所有格式。**

这与之前基于传言的格式规范有显著差异，请以此真实分析为准。

## 注意事项

- 本规范基于官方示例文件 `equipmentsamplebytool.equ.md` 等文件的实际格式分析
- 官方文件中存在一定的格式灵活性，但建议遵循一致的规范
- 在实际使用中，建议优先参考官方示例文件的格式

## 缩进规则详解

### ✅ 正确格式
```
[usable job]
	`[swordman]`
	`[fighter]`
[/usable job]

[avatar select ability]
	`[MAGICAL_ATTACK]`	`+`	45
	`[MAGICAL_DEFENSE]`	`+`	45
[/avatar select ability]
```

### ❌ 错误格式
```
[usable job]
    `[swordman]`        # 错误：使用空格缩进
    `[fighter]`
[/usable job]

[avatar select ability]
  `[MAGICAL_ATTACK]`	`+`	45    # 错误：使用空格缩进
  `[MAGICAL_DEFENSE]`	`+`	45
[/avatar select ability]
```

**规则**: 所有缩进必须使用TAB键，不能使用空格

## 标签格式规则

### ✅ 正确格式
```
[name]
	`物品名称`

[grade]
	2

[stackable type]
	`[consumable]`	0

[price]
	1000

[value]
	500
```

### ❌ 错误格式
```
[ name ]            # 错误：标签名前后有空格
	`物品名称`

[grade ]            # 错误：标签名后有空格
	2

[ stackable type]   # 错误：标签名前有空格
	`[consumable]`	0
```

**规则**: 标签名前后不能有空格，必须紧贴方括号

## 🔧 编辑器设置建议

### Visual Studio Code
```json
{
	"editor.insertSpaces": false,
	"editor.detectIndentation": false,
	"editor.tabSize": 4,
	"files.encoding": "utf8"
}
```

### Notepad++
1. 设置 → 首选项 → 语言
2. 取消勾选 "用空格替代制表符"
3. 设置制表符大小为4

### Sublime Text
```json
{
	"translate_tabs_to_spaces": false,
	"tab_size": 4,
	"detect_indentation": false
}
```

## 📝 格式检查清单

### 基础检查
- [ ] 所有字符串都使用反引号 `` ` `` 包围
- [ ] 参数之间使用TAB键分隔
- [ ] 缩进使用TAB键，不使用空格
- [ ] 标签名前后没有多余空格
- [ ] 文件编码为UTF-8

### 高级检查
- [ ] 数值参数没有使用引号
- [ ] 布尔值使用正确格式（0/1）
- [ ] 路径分隔符使用正斜杠 `/`
- [ ] 标签配对正确（开始/结束标签）

## 🛠️ 格式验证工具
该工具也不是100%准确仅供参考最终还是要对比,`DNF文件知识库\参考资料\标准格式样板\PVF文件样板`下的文件以及人工检查,确认无误后再使用。
格式验证工具的详细说明和使用方法已移至专门的文档：

📁 **[PVF格式验证工具](格式规范工具/PVF格式验证工具.md)**

该文档包含：
- Python验证脚本
- 完整的格式检查功能
- 错误修复工具
- 批量检查支持
- 构建流程集成

### 快速使用

*
**Python基础检查：**
```python
from check_pvf_format import check_pvf_format
errors = check_pvf_format("your_file.equ")
```

更多高级功能和详细使用方法，请参考专门的验证工具文档。

## 🏷️ 标签格式和数据类型详细说明

### 标签格式分类

根据对标准格式样板的深入分析，PVF文件中的标签按参数位置可分为三种格式：

#### 1. 同行参数标签 (Inline Parameters)
标签和参数在同一行，用Tab分隔。这类标签通常用于简单的数值或单个字符串参数：

**数值类标签：**
- `[grade]	27` - 等级
- `[rarity]	2` - 稀有度  
- `[minimum level]	25` - 最低等级
- `[physical attack]	43` - 物理攻击
- `[weight]	250` - 重量
- `[price]	25000` - 价格

**复合参数标签：**
- `[equipment type]	`[weapon]`	22` - 装备类型+子类型
- `[icon mark]	`item/equipment.img`	14` - 图标路径+索引
- `[equipment physical attack]	306	330` - 攻击力范围

#### 2. 换行参数标签 (Newline Parameters)
标签单独一行，参数在下一行缩进。这类标签通常用于字符串内容或多个相关参数：

**字符串内容标签：**
```
[name]
	`戾波之尖啸`

[explain]
	`攻击时， 有2%%的几率使敌人进入感电状态。`

[flavor text]
	`传说中的苍穹之啸断刃胸甲， 是由天界的工匠们用最珍贵的材料制作而成的。`
```

**多值列表标签：**
```
[usable job]
	`[swordman]`
	`[demonic swordman]`
[/usable job]

[animation job]
	`[swordman]`
	`[demonic swordman]`
```

#### 3. 多行数据标签 (Multi-line Data)
包含大量数据的标签，通常用于技能等级数据、数组等：

```
[MP]
	8	16	24	32	40	48	56	64	72	80	88	96	104	112	120	128	136	144	152	160	168	176	184	192	200	208	216	224	232	240	248	256	264	272	280	288	296	304	312	320	328	336	344	352	360	368	376	384	392	400	408	416	424	432	440	448	456	464	472	480	488	496	504	512	520	528	536	544	552	560	568	576	584	592	600

[level property]
	1	99	
	`物理攻击力 : <int>%%`	120	130	140	150	160	170	180	190	200	210	220	230	240	250	260	270	280	290	300	310	320	330	340	350	360	370	380	390	400	410	420	430	440	450	460	470	480	490	500	510	520	530	540	550	560	570	580	590	600	610	620	630	640	650	660	670	680	690	700	710	720	730	740	750	760	770	780	790	800	810	820	830	840	850	860	870	880	890	900	910	920	930	940	950	960	970	980	990	1000	1010	1020	1030	1040	1050	1060	1070	1080	1090	1100
```

### 基础数据类型规则

根据对真实PVF文件和标准样板的分析，PVF文件中的标签参数主要分为以下几种数据类型：

#### 1. 字符串类型 (String) - 使用反引号 `` ` ``
所有文本内容、路径、标识符等都属于字符串类型，必须使用反引号包围。

**装备基础信息类：**
- `[name]` - 装备名称：`` `装备名称` ``
- `[name2]` - 英文名称：`` `English Name` ``
- `[explain]` - 简要说明：`` `装备描述` ``
- `[basic explain]` - 基础说明：`` `基础功能描述` ``
- `[detail explain]` - 详细说明：`` `详细功能描述` ``
- `[flavor text]` - 风味文本：`` `背景故事文本` ``

**职业和类型类：**
- `[usable job]` - 可用职业：`` `[swordman]` ``、`` `[all]` ``
- `[attach type]` - 附加类型：`` `[trade]` ``、`` `[sealing]` ``
- `[equipment type]` - 装备类型：`` `[weapon]` ``、`` `[aurora avatar]` ``
- `[weapon type]` - 武器类型：`` `[ssword]` ``、`` `[sword]` ``
- `[sub type]` - 子类型：`` `[ssword]` ``

**资源路径类：**
- `[icon]` - 图标路径：`` `item/weapon/thief/ssword/ssword_2choro1.img` ``
- `[field image]` - 场景图像：`` `item/fieldimage/weapon/ssword.img` ``
- `[move wav]` - 移动音效：`` `SWORD_TOUCH` ``

**条件判断类：**
- `[if]` - 条件判断：`` `[all]` ``、`` `[weapon]` ``
- `[target]` - 目标选择：`` `[target]` ``

#### 2. 数值类型 (Number) - 直接写数字
所有数值参数都直接写数字，不使用任何引号。

**等级和稀有度类：**
- `[rarity]` - 稀有度：`3`（整数）
- `[minimum level]` - 最低等级：`90`（整数）
- `[grade]` - 等级：`73`（整数）

**物理属性类：**
- `[durability]` - 耐久度：`55`（整数）
- `[weight]` - 重量：`2.8`（浮点数）
- `[price]` - 价格：`2800000`（整数）
- `[repair price]` - 修理费用：`112000`（整数）
- `[value]` - 价值：`1400000`（整数）

**战斗属性类：**
- `[physical attack]` - 物理攻击：`685`（整数）
- `[magical attack]` - 魔法攻击：`685`（整数）
- `[independent attack]` - 独立攻击：`420`（整数）
- `[attack speed]` - 攻击速度：`120`（整数）
- `[cast speed]` - 施放速度：`15`（整数）
- `[move speed]` - 移动速度：`15`（整数）
- `[physical critical hit]` - 物理暴击：`8`（整数）
- `[magical critical hit]` - 魔法暴击：`8`（整数）

**生命值和魔法值类：**
- `[HP MAX]` - 最大HP：`180`（整数）
- `[MP MAX]` - 最大MP：`180`（整数）
- `[hit recovery]` - 硬直恢复：`120`（整数）

**其他数值类：**
- `[creation rate]` - 制作成功率：`0`（整数）
- `[random option]` - 随机选项：`1`（整数）
- `[usable period]` - 使用期限：`300`（整数）
- `[stuck]` - 卡住状态：`0`（整数）
- `[attack success]` - 攻击成功率：`15`（整数）

#### 3. 范围数值类型 (Range) - 两个数字用Tab分隔
某些属性使用范围值，表示最小值和最大值。

**装备攻击范围：**
- `[equipment physical attack]` - 装备物理攻击：`685	735`
- `[equipment magical attack]` - 装备魔法攻击：`685	735`
- `[separate attack]` - 独立攻击范围：`420	450`

#### 4. 复合类型 (Complex) - 多个参数组合
某些标签包含多个不同类型的参数，按顺序用Tab分隔。

**图标标记类：**
- `[icon mark]` - 图标标记：`` `Item/IconMark.img` ``	`0`（字符串+数字）
- `[icon]` - 图标：`` `item/weapon/thief/ssword/ssword_2choro1.img` ``（仅字符串）

**技能数据类：**
- `[skill data up]` - 技能数据提升：`` `[thief]` ``	`99`	`` `[all]` ``	`` `[level]` ``	`` `+2` ``
- `[all skill data up]` - 全技能数据提升：`` `[thief]` ``	`99`	`` `[all]` ``	`` `[level]` ``	`` `+1` ``

**强制结果类：**
- `[Force Result]` - 强制结果：`1`	`` `[equipment physical attack]` ``

**状态效果类：**
- `[active status]` - 激活状态：`` `shadow_damage` ``	`99`	`3000`	`1000`	`1`	`` `%` ``	`` `[hp]` ``	`` `-8` ``

#### 5. 数据段类型 (Data Section)
文件末尾的数据段包含不同类型的数据。

**整数数据段：**
```
[int data]
	`装备等级`	90
	`武器系列`	2001
	`暗影伤害倍率`	150
	`生命吸取率`	5
```

**字符串数据段：**
```
[string data]
	`制作者`	`暗影工匠·瓦伦`
	`武器来源`	`暗影教团秘宝`
	`特殊效果`	`暗影爆发`
```

**浮点数据段：**
```
[float data]
	`暴击伤害加成`	1.25
	`暗影爆发概率`	0.15
	`生命吸取系数`	0.05
```

### 特殊标签说明

#### 1. 嵌套结构标签
某些标签包含嵌套结构，需要使用开始和结束标签：

```
[appendage]
	`[shadow burst]`
	[name]
		`暗影爆发`
	[explain]
		`释放暗影力量，对敌人造成魔法伤害并吸取生命力`
	[icon]
		`item/stackable/consumption.img`	58
[/appendage]
```

#### 2. 条件判断标签
```
[if]
	`[weapon]`
[attack success]
	15
[then]
	`[target]`
		`[appendage]`
			`[shadow burst]`
		`[/appendage]`
	`[/target]`
[/if]
```

#### 3. 套装信息标签
```
[set item master]
	`暗影套装`

[set item]
	2	`暗影之力：攻击速度 +10%，移动速度 +10%`
	3	`噬魂之刃：攻击时有15%概率触发暗影爆发`
	5	`暗影主宰：所有技能等级 +2，暗属性强化 +30`
```

#### 4. 材料需求标签
```
[need material]
	`暗影精华`	120
	`噬魂水晶`	50
	`传说武器强化石`	10
```

### 数据类型验证规则

1. **字符串验证**：必须使用反引号 `` ` `` 包围，不能使用双引号或单引号
2. **数值验证**：直接写数字，不能使用任何引号
3. **范围验证**：两个数值之间用Tab分隔
4. **复合验证**：多个参数按类型要求，用Tab分隔
5. **嵌套验证**：正确使用开始和结束标签，保持缩进一致

## 📋 常见格式错误

### 错误1: 使用空格代替TAB
```
# 错误
[icon]
    `item/stackable/consume.img` 25

# 正确
[icon]
	`item/stackable/consume.img`	25
```

### 错误2: 字符串使用错误引号
```
# 错误
[name]
	"HP恢复药水"
	'HP恢复药水'

# 正确
[name]
	`HP恢复药水`
```

### 错误3: 参数使用空格分隔
```
# 错误
[strength] 25 300000

# 正确
[strength]	25	300000
```

### 错误4: 标签名包含空格
```
# 错误
[ name ]
	`物品名称`

# 正确
[name]
	`物品名称`
```

### 错误5: 数值使用引号
```
# 错误
[grade]
	`2`

# 正确
[grade]
	2
```

## 🎯 最佳实践

### 1. 编辑器配置
- 设置显示制表符和空格
- 禁用自动空格替换
- 使用UTF-8编码
- 设置制表符大小为4

### 2. 编写习惯
- 复制现有正确格式的文件作为模板
- 使用TAB键进行缩进和分隔
- 所有字符串使用反引号
- 定期使用检查工具验证

### 3. 测试流程
1. 编写完成后运行格式检查
2. 在游戏中测试文件是否正常加载
3. 检查功能是否按预期工作
4. 记录任何格式相关的问题

## ⚠️ 特别注意事项

1. **绝对不要混用空格和TAB**
2. **字符串内容可以包含空格，但分隔符必须是TAB**
3. **复制粘贴时要特别注意格式保持**
4. **不同编辑器可能会自动转换格式，需要检查**
5. **文件保存时确保使用UTF-8编码**

## 🔗 相关链接

- [格式规范工具](格式规范工具/) - 使用正确格式的模板和检查工具
- [PVF格式检查工具](格式规范工具/PVF格式检查工具.py) - 自动化格式检查
- [快速使用指南](格式规范工具/快速使用指南.md) - 格式规范快速入门

## 📋 常用标签格式参考表

### 同行参数标签 (Inline Parameters)

| 标签名称 | 格式示例 | 说明 |
|---------|---------|------|
| `[grade]` | `[grade]	27` | 等级，数值类型 |
| `[rarity]` | `[rarity]	2` | 稀有度，数值类型 |
| `[minimum level]` | `[minimum level]	25` | 最低等级 |
| `[physical attack]` | `[physical attack]	43` | 物理攻击力 |
| `[magical attack]` | `[magical attack]	35` | 魔法攻击力 |
| `[weight]` | `[weight]	250` | 重量 |
| `[price]` | `[price]	25000` | 价格 |
| `[durability]` | `[durability]	45` | 耐久度 |
| `[equipment type]` | `[equipment type]	`[weapon]`	22` | 装备类型+子类型 |
| `[icon mark]` | `[icon mark]	`item/equipment.img`	14` | 图标路径+索引 |
| `[equipment physical attack]` | `[equipment physical attack]	306	330` | 攻击力范围 |

### 换行参数标签 (Newline Parameters)

| 标签名称 | 格式示例 | 说明 |
|---------|---------|------|
| `[name]` | `[name]`<br>`	`装备名称`` | 装备名称，字符串类型 |
| `[explain]` | `[explain]`<br>`	`装备说明`` | 装备说明 |
| `[flavor text]` | `[flavor text]`<br>`	`风味文本`` | 风味描述文本 |
| `[usable job]` | `[usable job]`<br>`	`[swordman]``<br>`	`[fighter]``<br>`[/usable job]` | 可用职业列表 |
| `[animation job]` | `[animation job]`<br>`	`[swordman]``<br>`[/animation job]` | 动画职业 |
| `[skill levelup]` | `[skill levelup]`<br>`	1	1`<br>`[/skill levelup]` | 技能等级提升 |
| `[skill data up]` | `[skill data up]`<br>`	1	1	10`<br>`[/skill data up]` | 技能数据提升 |

### 多行数据标签 (Multi-line Data)

| 标签名称 | 格式示例 | 说明 |
|---------|---------|------|
| `[MP]` | `[MP]`<br>`	8	16	24	32	...` | MP消耗数组 |
| `[level property]` | `[level property]`<br>`	1	99`<br>`	`物理攻击力 : <int>%%`	120	130	...` | 等级属性数据 |
| `[static data]` | `[static data]`<br>`	0	0	0	0	...` | 静态数据数组 |
| `[level info]` | `[level info]`<br>`	1	2	3	4	...` | 等级信息数组 |

### 格式选择规则

1. **数值类参数** → 使用同行格式
2. **字符串内容** → 使用换行格式  
3. **多个相关值** → 使用换行格式
4. **大量数据数组** → 使用多行数据格式
5. **复合参数** → 根据参数数量选择同行或换行

## 📚 参考资料

- [DNF官方文档](https://dnf.qq.com/)
- [PVF文件结构分析](./参考资料/)
- [标准格式样板](./参考资料/标准格式样板/)

---

*最后更新：2024年1月*

---

**记住：PVF文件格式容不得半点马虎，一个字符的错误都可能导致整个文件失效！**