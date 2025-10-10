# DNF PVF文件格式化规范报告

## 1. 基本结构

- 文件以 `#PVF_File` 开头
- 使用 `[标签名]` 格式定义数据段
- 文本值用反引号 `` ` `` 包围

## 2. 标签分类与使用规则

### 2.1 基本信息标签
- `[name]` - 物品名称,要换行
- `[name2]` - 物品英文名称,要换行
- `[basic explain]` 或 `[explain]` - 物品属性说明,要换行
- `[flavor text]` - 物品描述文本
- `[grade]` - 品质等级
- `[rarity]` - 稀有度
- `[detail explain]` - 详细说明

### 2.2 装备属性标签
- `[physical attack]` - 物理攻击力
- `[magical attack]` - 魔法攻击力
- `[physical defense]` - 物理防御
- `[magical defense]` - 魔法防御
- `[all elemental attack]` - 全属性攻击
- `[move speed]` - 移动速度
- `[attack speed]` - 攻击速度
- `[cast speed]` - 施放速度
- `[physical critical hit]` - 物理暴击率
- `[magical critical hit]` - 魔法暴击率
- `[equipment physical attack]` - 装备物理攻击力
- `[equipment magical attack]` - 装备魔法攻击力
- `[separate attack]` - 独立攻击力
- `[equipment physical defense]` - 装备物理防御
- `[HP MAX]` - 最大HP
- `[MP MAX]` - 最大MP
- `[SP MAX]` - 最大SP
- `[STR]` - 力量
- `[DEX]` - 体力
- `[INT]` - 智力
- `[LUK]` - 精神
- `[HP regen]` - HP恢复
- `[MP regen]` - MP恢复
- `[MP regen speed]` - MP恢复速度
- `[STR rate]` - 力量加成率
- `[DEX rate]` - 体力加成率
- `[INT rate]` - 智力加成率
- `[LUK rate]` - 精神加成率
- `[physical attack rate]` - 物理攻击力加成率
- `[magical attack rate]` - 魔法攻击力加成率
- `[physical defense rate]` - 物理防御力加成率
- `[magical defense rate]` - 魔法防御力加成率

### 2.3 装备限制标签
- `[usable job]` - 可使用职业（需要配对的结束标记 `[/usable job]`）
- `[minimum level]` - 最低使用等级
- `[attach type]` - 附加类型

### 2.4 特殊标签
- `[piece set ability]` - 套装效果（需要配对的结束标记 `[/piece set ability]`）
- `[skill data up]` - 技能数据提升（需要配对的结束标记 `[/skill data up]`）
- `[aura ability]` - 光环能力（需要配对的结束标记 `[/aura ability]`）
- `[aurora graphic effects]` - 光环特效（需要配对的结束标记 `[/aurora graphic effects]`）

### 2.5 经济系统标签
- `[price]` - 价格
- `[repair price]` - 修理价格
- `[value]` - 价值

### 2.6 游戏机制标签
- `[creation rate]` - 制作率
- `[durability]` - 耐久度
- `[no random]` - 不使用随机属性
- `[possible kiri protect]` - 可能的保护机制
- `[Force Result Item Rule]` - 强制结果物品规则

### 2.7 物品展示标签
- `[item group name]` - 物品组名
- `[field image]` - 场景图像
- `[weight]` - 重量
- `[cool time]` - 冷却时间

### 2.8 环境标签
- `[fire resistance]` - 火属性抗性
- `[ice resistance]` - 冰属性抗性
- `[lightning resistance]` - 光属性抗性
- `[holy resistance]` - 暗属性抗性
- `[dark resistance]` - 神圣属性抗性
- `[poison resistance]` - 毒属性抗性

## 3. 结束标记使用规则

DNF PVF文件中，并非所有标签都需要配对的结束标记。具体规则如下：

### 3.1 不需要结束标记的标签
- 单值标签（如 `[name]`, `[grade]`, `[physical attack]` 等）
- 简单内容标签（如 `[basic explain]`, `[flavor text]` 等）

### 3.2 需要结束标记的标签
- 复合结构标签（如 `[piece set ability]`, `[skill data up]` 等）
- 列表标签（如 `[usable job]` 等）
- 块定义标签（如 `[aura ability]`, `[aurora graphic effects]` 等）

## 4. 缩进规范
- 使用制表符 `\t` 进行缩进
- 标签与值之间用换行分隔
- 嵌套结构按层级缩进

## 5. 特殊值格式
- 文本值使用反引号包围
- 数字值直接书写
- 特殊关键字如 `[all]`, `[pvp]`, `[dungeon]` 等使用方括号包围

## 6. 条件效果结构
- 条件效果使用 `[if]`/`[then]` 对
- 条件包括：`[attack success]`, `[casting]`, `[hit]`, `[set my state]`, `[my state]` 等
- 效果包括：`[stat]`, `[duration]`, `[probability]`, `[restore]` 等
- 模块限制包括：`[dead tower]`, `[dungeon]`, `[war room]`, `[blood system]`, `[pvp]` 等
- 条件块内部保持逻辑缩进关系

## 7. 职业和等级相关
- 装备通常指定适用职业，使用 `[usable job]` 标签
- 许多装备支持 `[all]` 职业，表示所有职业可用
- `[minimum level]` 指定最低使用等级

## 8. 物品类型和分类
- `[equipment type]` 定义物品类型，如 `[aurora avatar]`, `[title name]` 等
- `[sub type]` 进一步细分装备类型
- `[attach type]` 指定附加类型，如 `[trade]`, `[sealing]` 等

## 9. 视觉和音效
- `[icon]` 指定图标路径和索引
- `[move wav]` 指定音效
- `[aurora graphic effects]` 定义光环或其他视觉效果

## 10. 数据组织方式
- 数值属性通常以制表符 `\t` 分隔
- 文本属性用反引号 `` ` `` 包围
- 多个值或选项使用制表符分隔
- 装备属性按类别有序排列

## 11. 套装处理
- 套装装备具有特殊结构，使用 `[piece set ability]` 定义套装效果

## 12. 格式化工具开发建议
- 根据标签类型判断是否需要结束标记
- 对单值标签格式化时不需要添加结束标记
- 对复合结构标签格式化时需要添加配对的结束标记
- 保持标签内容的原始结构和换行格式
- 装备属性应按类别有序排列
- 复杂条件效果需要保持逻辑缩进关系
- 模块限制和条件效果需要正确解析和处理
- 考虑扩展标签的处理，如经济系统、游戏机制等标签