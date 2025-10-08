# DNF时装修改知识库

## 📚 简介

本知识库整理了DAF学院关于DNF时装修改的教程和资料，涵盖从基础的时装属性调整到高级的时装套装效果、光环系统、时装变身等内容。通过本知识库，您可以深入了解DNF时装系统的内部机制和修改方法。

## 🎯 核心功能

根据DAF学院的教程，DNF时装修改主要包含以下几个方面：

1. **时装基础属性修改** - 调整时装的外观、属性加成等
2. **时装套装系统** - 创建和管理时装套装效果
3. **光环系统** - 修改和创建光环效果
4. **时装变身** - 实现副本中时装变身效果
5. **徽章镶嵌** - 设置时装的徽章插槽
6. **时效与时装** - 管理时装的时效性

## 🏗️ 时装文件结构

### 核心文件类型
- `*.avt` - 时装参数文件
- `avatar.lst` - 时装列表文件
- `*.str` - 时装名称显示文件
- `etc/equipmentpartset.etc` - 时装套装配置文件
- `etc/additionaleffectlist.etc` - 附加效果配置文件

### 时装分类
- **普通时装** - 基础外观类时装
- **稀有时装** - 带有属性加成的时装
- **光环** - 特殊的光环类时装
- **天空套** - 特殊的套装时装
- **透明时装** - 特殊效果时装

## 🔧 修改技巧与方法

### 1. 时装基础文件格式

#### 通用部分
```
[name]
<3::name_2050009``>

[name2]
<3::name2_2050009``>

[explain]
<3::basic_explain_2050009``>

[grade]
3

[rarity]
2

[part set index]
3

[usable job]
`[at fighter]`
[/usable job]

[attach type]
`[free]`

[minimum level]
1

[icon]
`item/avatar/common/IconClone.img` 13

[equipment type]
`[coat avatar]` 0
```

#### 标签说明
- **name**: 时装主名称(调用kor内容)
- **name2**: 时装副名称
- **explain**: 时装说明
- **grade**: 掉落等级
- **rarity**: 稀有度
- **part set index**: 套装文件编号
- **usable job**: 适用职业
- **attach type**: 交易类型
- **minimum level**: 最低佩戴等级
- **icon**: 图标文件
- **equipment type**: 装备类型

### 2. 时装时效与价格设置

#### 时效与价格配置
```
[avatar type select]
7 0 0 1500 0    // 7天时效，售价1500
30 0 0 3000 0   // 30天时效，售价3000
0 0 0 6000 0    // 永久时效，售价6000
0 0 0 6500 3 `[S socket]` `[C socket]` `[C socket]`
[/avatar type select]
```

#### 参数说明
- 第一个数值：时效天数（0为无期限）
- 第二个数值：未知
- 第三个数值：未知
- 第四个数值：出售价格（D币或D点）
- 第五个数值：徽章镶嵌槽数量

### 3. 时装属性加成

#### 属性能力选择
```
[avatar select ability]
`[SKILL_LEVEL]` `[at fighter]` 36 1    // 战士36号技能+1
`[MAGICAL_ATTACK]` `+` 45              // 魔法攻击力+45
`[SKILL_LEVEL]` `[at fighter]` 88 1    // 战士88号技能+1
[/avatar select ability]
```

#### 技能提升
```
[skill levelup]
`[at fighter]` 5 1
`[at fighter]` 46 1
[/skill levelup]
```

### 4. 光环系统详解

#### 光环基础配置
```
[equipment type]
`[aurora avatar]` 0

[avatar func filter]
2

[aura hud icon]
2

[emblem socket default]
`[M socket]` `[M socket]`
[/emblem socket default]

[aura ability]
`[party teleport]` 10    // 组队传送能力
[/aura ability]
```

#### 光环特效配置
```
[aurora graphic effects]
4 1 `Character/Common/Animation/Aura/aura02_front.ani`
1 `Character/Common/Animation/Aura/aura02_front_dodge.ani`
0 `Character/Common/Animation/Aura/aura02_back.ani`
0 `Character/Common/Animation/Aura/aura02_back_dodge.ani`
```

### 5. 时装外观与动画

#### 职业动画配置
```
[animation job]
`[swordman]`

[variation]
102 1

[layer variation]
100 `face_b`

[equipment ani script]
`equipment/character/swordman.lay`
```

### 6. 时装套装系统

#### 套装特效关联
```
[effect part set index]
2  // 调用天空套特效代码

[reference effect part set index]
1  // 特效冲突，1代码的特效不触发
```

### 7. 时装变身系统

#### 副本触发时装变身
- 通过特定配置实现在副本中时装变身效果
- 需要额外的变身资源文件

## 📋 核心标签详解

### 时装基础标签
- `[name]` - 时装名称
- `[name2]` - 时装副名称  
- `[explain]` - 时装说明
- `[grade]` - 掉落等级
- `[rarity]` - 稀有度
- `[part set index]` - 套装编号
- `[usable job]` - 适用职业
- `[attach type]` - 交易类型
- `[minimum level]` - 最低等级
- `[icon]` - 图标
- `[equipment type]` - 装备类型

### 时效与价格标签
- `[avatar type select]` - 时效与价格选择
- 各参数: [时效天数] [未知] [未知] [价格] [徽章槽]

### 属性与技能标签
- `[avatar select ability]` - 属性能力选择
- `[skill levelup]` - 技能等级提升
- 格式: `属性` `运算符` `数值`

### 光环特有标签
- `[aura ability]` - 光环能力
- `[aurora graphic effects]` - 光环图形特效
- `[aura hud icon]` - 光环HUD图标
- `[emblem socket default]` - 默认徽章孔

## ⚠️ 注意事项

1. **关联复杂** - 时装系统关联文件众多，修改需谨慎
2. **文件备份** - 修改前备份原始文件
3. **测试验证** - 修改后进行充分测试
4. **格式检查** - 确保所有标签格式正确
5. **套装配置** - 注意套装特效的配置文件

## 🔍 高级技巧

### 1. 时装套装效果
- 通过`etc/equipmentpartset.etc`配置套装效果
- 使用`[effect part set index]`关联特效

### 2. 光环传送功能
- 组队传送: `party teleport`
- 单人传送: `solo teleport`

### 3. 徽章系统
- 配置不同类型的徽章插槽
- S槽、C槽、M槽等不同类型

### 4. 时装变身实现
- 配置副本触发机制
- 添加变身资源文件

## 🌐 相关链接

- DNF文件知识库主目录
- PVF文件结构详解
- 装备系统修改参考

## 📈 实践案例

本知识库包含多个实践案例，涵盖：
- 单件时装制作
- 时装套装系统
- 光环功能实现
- 时装变身效果

---
*本知识库基于DAF学院时装修改教程整理，旨在为DNF开发者提供全面的时装系统修改参考*