# DNF PVF文件修改示例

## 📁 示例文件目录

本目录包含多种PVF文件修改的示例，用于演示不同类型的PVF文件修改方法和最佳实践。

### 示例分类

1. [基础装备参数修改示例](#基础装备参数修改示例)
2. [怪物属性修改示例](#怪物属性修改示例)
3. [物品列表配置示例](#物品列表配置示例)
4. [APC参数配置示例](#APC参数配置示例)
5. [PVF结构分析示例](#PVF结构分析示例)

## ⚔️ 基础装备参数修改示例

### 示例1: 简单装备属性调整

```
[width] 2
[ability category]
"[HP MAX]" "*" 70
"[EQUIPMENT_PHYSICAL_ATTACK]" "*" 90
"[EQUIPMENT_PHYSICAL_DEFENSE]" "*" 90
"[EQUIPMENT_MAGICAL_ATTACK]" "*" 90
"[EQUIPMENT_MAGICAL_DEFENSE]" "*" 90
[/ability category]
[category]
"[equipment_weapon]"
"*[sword]*"
[/category]
[level] 1
6
[move speed] 300
300
[attack speed] 400
400
[cast speed] 700
790
[hit recovery] 500
500
```

#### 功能拆解
- `[width] 2` - 设置装备在背包中占2格
- `[HP MAX]` - 界定最大生命值加成
- `[EQUIPMENT_PHYSICAL_ATTACK]` - 设置物理攻击力加成
- `[EQUIPMENT_PHYSICAL_DEFENSE]` - 设置物理防御力加成
- `[EQUIPMENT_MAGICAL_ATTACK]` - 设置魔法攻击力加成
- `[EQUIPMENT_MAGICAL_DEFENSE]` - 设置魔法防御力加成

#### 扩展指导
- 增加更多属性参数来调整装备功能
- 添加特殊效果参数实现高级功能

---

### 示例2: 高级装备属性配置

```
[ability category]
"[STR]" "*" 15
"[DEX]" "*" 15
"[INT]" "*" 15
"[LUK]" "*" 15
"[HP MAX]" "*" 100
"[MP MAX]" "*" 100
"[EQUIPMENT_PHYSICAL_ATTACK]" "*" 50
"[EQUIPMENT_MAGICAL_ATTACK]" "*" 50
[/ability category]
[category]
"[equipment_armor]"
"[equipment_suit]"
[/category]
[level] 50
55
[required level] 50
```

#### 功能拆解
- STR/DEX/INT/LUK - 四维属性加成
- HP MAX/MP MAX - 生命值和魔法值加成
- 物理和魔法攻击力加成
- 等级要求设置

## 👹 怪物属性修改示例

### 示例3: 怪物基础属性调整

```
[level] 65
[move speed] 250
[attack speed] 350
[cast speed] 650
[hit recovery] 450
[weight] 40000
[sight] 250
[targeting nearest] 1
[warlike] 75
[attack delay] 1200
[stuckbonus on damage] 0 0 0 0
[attack kind]
10.00
1.00
1.00
1
0
0
0
0
0
0
0
0
100.00
0.00
0.00
0
50
0
50
0
50
0
50
0
[/attack kind]
```

#### 功能拆解
- `[level]` - 怪物等级，影响强度和奖励
- `[move speed]` - 移动速度，控制怪物移动快慢
- `[warlike]` - 好战度，控制攻击倾向
- `[sight]` - 视野范围，控制发现玩家的距离
- `[attack kind]` - 攻击类型，定义攻击属性

---

### 示例4: 怪物掉落配置

```
[item]
1000 50
1047 200
1004 100
[/item]
[common champion drop item]
[/common champion drop item]
```

#### 功能拆解
- 每行格式为: 物品编码 几率
- 多个掉落项可以同时配置

## 📦 物品列表配置示例

### 示例5: 装备列表配置 (.lst)

```
"Equipment/Weapon/Sword/Sword_01.equ" 1000001
"Equipment/Weapon/Sword/Sword_02.equ" 1000002
"Equipment/Armor/Chest/Chest_01.equ" 1100001
"Equipment/Armor/Pants/Pants_01.equ" 1100002
"Equipment/Accessory/Ring/Ring_01.equ" 1200001
```

#### 功能拆解
- 左侧: 文件相对路径
- 右侧: 游戏内唯一ID
- 每行一个物品配置
- 文件末尾需要换行

---

### 示例6: 物品列表配置 (.lst)

```
"Stackable/Consumable/Potion_01.stk" 2000001
"Stackable/Material/Mat_01.stk" 2000101
"Stackable/SkillBook/SkillBook_01.stk" 2000201
```

## 🤖 APC参数配置示例

### 示例7: APC基础配置

```
// 28.aic - 一个标准APC配置示例
[ability category]
"[HP MAX]" "*" 70
"[EQUIPMENT_PHYSICAL_ATTACK]" "*" 85
[/ability category]
[level] 60
65
[move speed] 320
[attack speed] 420
[cast speed] 720
[hit recovery] 520
[weight] 42000
[sight] 320
[warlike] 65
[attack delay] 1600
[targeting nearest] 1
```

#### 功能拆解
- 人偶等级设置
- 各项速度参数配置
- 战斗相关参数设置
- AI行为参数设置

---

### 示例8: APC技能和装备配置

```
// 技能代码配置
[skill code] 1001 5
[skill code] 1002 3
// 装备代码配置
[equipment code] 1000001
[equipment code] 1000002
// 快速使用物品
[quick use item] 1
// 发呆时间 (200约等于2秒)
[delay time] 200
// 更换目标时间
[target change time] 300
// 保持距离
[keep distance] 150
```

## 🔍 PVF结构分析示例

### 示例9: 完整PVF文件分析

```
// 装备完整配置示例
[width] 2
[height] 3
[ability category]
"[STR]" "*" 20
"[DEX]" "*" 15
"[INT]" "*" 10
"[LUK]" "*" 5
"[HP MAX]" "*" 150
"[MP MAX]" "*" 120
"[EQUIPMENT_PHYSICAL_ATTACK]" "*" 75
"[EQUIPMENT_PHYSICAL_DEFENSE]" "*" 50
"[EQUIPMENT_MAGICAL_ATTACK]" "*" 65
"[EQUIPMENT_MAGICAL_DEFENSE]" "*" 45
[/ability category]
[category]
"[equipment_weapon]"
"[*[sword]*]"
[/category]
[level] 60
65
[required level] 55
[required STR] 20
[required DEX] 15
[required INT] 10
[required LUK] 5
[required job] 0
[required gender] 2
```

#### 功能拆解
- 基础显示参数 (width, height)
- 属性加成 (STR, DEX, INT, LUK, HP, MP)
- 攻击防御参数
- 职业性别要求
- 等级要求

## 🚀 性能优化技巧

### 1. 参数精简
- 移除不必要的参数配置
- 使用默认值代替重复定义
- 压缩参数空间以提高加载速度

### 2. 逻辑优化
- 合理安排参数顺序
- 优化数值计算逻辑
- 减少跨文件引用

### 3. 测试验证
- 在独立环境中测试修改
- 逐步增加参数复杂度
- 监控系统性能变化

## ⚠️ 常见错误避免

### 1. LST文件错误
- 确保文件末尾格式正确
- 不要少加或多加换行
- 验证所有路径都存在

### 2. ID冲突避免
- 使用唯一ID，避免重复
- 建立ID分配规范
- 预留ID扩展空间

### 3. 数值范围检查
- 确保参数值在合理范围内
- 避免数值溢出
- 遵循游戏设计逻辑

---
*本示例文件基于DAF学院PVF文件解读教程整理，旨在为开发者提供实用的PVF修改模板*