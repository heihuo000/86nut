# DNF怪物修改知识库

## 📚 简介

本知识库整理了DAF学院关于DNF怪物修改的教程和资料，涵盖从基础的怪物属性调整到高级的怪物AI和技能修改等内容。通过本知识库，您可以深入了解DNF怪物系统的内部机制和修改方法。

## 🎯 核心功能

根据DAF学院的教程，DNF怪物修改主要包含以下几个方面：

1. **怪物属性修改** - 调整怪物的生命值、攻击力、防御力等基础属性
2. **怪物技能修改** - 修改或添加怪物的攻击技能
3. **怪物AI调整** - 调整怪物的行为模式和智能
4. **怪物变身** - 实现怪物的形态变化
5. **怪物免疫设置** - 设置怪物对特定属性的免疫
6. **怪物显示修改** - 调整怪物的外观和特效

## 🏗️ 怪物文件结构

### 核心文件类型
- `*.etc` - 怪物参数文件
- `monster.lst` - 怪物列表文件
- `monster.kor.str` - 怪物名称显示文件
- `*.ptl` - 怪物特效文件
- `*.ani` - 怪物动画文件

### 怪物文件路径
- `monster/monster.lst` - 怪物列表信息文件

## 🔧 修改技巧与方法

### 1. 怪物属性修改方法

#### 仅修改基础属性（安全方法）
当仅修改怪物的攻击力、防御、血量、属性抗性时，只修改以下部分：

```
[ability category]
  `[HP MAX]`  `*` 54950
  `[EQUIPMENT_PHYSICAL_ATTACK]`  `*`  1300
  `[EQUIPMENT_PHYSICAL_DEFENSE]`  `*` 330
  `[EQUIPMENT_MAGICAL_ATTACK]`  `*`  1100
  `[EQUIPMENT_MAGICAL_DEFENSE]`  `*` 300
[/ability category]
```

- `[HP MAX]` - 生命值
- `[EQUIPMENT_PHYSICAL_ATTACK]` - 物理攻击力
- `[EQUIPMENT_PHYSICAL_DEFENSE]` - 物理防御力
- `[EQUIPMENT_MAGICAL_ATTACK]` - 魔法攻击力
- `[EQUIPMENT_MAGICAL_DEFENSE]` - 魔法防御力

#### 安全修改提示
- 修改基础属性时，不要改动其他部分
- 避免修改可能导致服务端问题的配置

### 2. 怪物技能修改方法

#### 修改怪物技能示例：投掷哥布林扔炸弹
1. 找到怪物文件中的 `[throw attack]` 段落
2. 修改 `passive object number` 参数为新的技能ID
3. 将对应的 `.ptl` 文件复制并替换

示例代码：
```
[throw attack]
'[attack index]' 0 '[passive object number]' 8225 '[passive object filename]' 'Particle/ThrowStone.ptl' '[object type]' 1 '[passive object index]' 8225 '[power]' 0 '[throw frame]' 2 '[passive object start x cood]' 20 '[passive object start y cood]' 0 '[passive object start z cood]' 60 '[attack number]' 1 '[throw sound]' 'THROW_STONE'
[/throw attack]
```

### 3. 怪物全面属性配置

#### 基础显示属性
- **[floating height]** - 浮空高度
  - 0: 地面型怪物
  - 大于0: 浮空型怪物，数值为浮空高度

- **[name]** - 怪物名称
  - 格式: `<7::name_9035>` 
  - 对应 `monster.kor.str` 文件中的代码

- **[face image]** - 怪物脸部形象
  - 格式: `Monster/MonsterFace.img` 303
  - 文件路径和对应IMG中的序号

#### 死亡效果设置
```
[die effect]
0 4 0
```

参数解释：
- 参数1: 死亡效果类型（通常为0）
- 参数2: 碎块颜色代码
- 参数3: 死亡过程中的光效

效果控制码：
- 0: 全部展示（碎块+血+烟雾+白色影子）
- 1: 不展示碎块
- 2: 不展示血
- 4: 不展示烟雾
- 8: 不展示死亡后的白影

#### 能力表调用
```
[ability table]
0
```

调用不同参数表：
- 0: 调用 monsterbaseparameter.tbl
- 1: 调用 summonmonsterbaseparameter.tbl
- 2: 调用 warroommonsterbaseparameter.tbl

#### 混合能力配置
```
[ability category]
`[HP MAX]` `*` 500
`[PHYSICAL_ATTACK]` `*` 100
`[PHYSICAL_DEFENSE]` `*` 100
`[MAGICAL_ATTACK]` `*` 100
`[MAGICAL_DEFENSE]` `*` 100
`[EQUIPMENT_PHYSICAL_ATTACK]` `*` 100
`[EQUIPMENT_MAGICAL_DEFENSE]` `+` 50000
[/ability category]
```

- `*` 表示用倍率乘以tbl参数
- `+` 表示固定值

### 4. 怪物变身原理

#### 变身机制
- 怪物可以通过特定条件实现变身
- 需要预设多个形态的怪物文件
- 通过触发条件实现形态切换

### 5. 怪物AI解析

#### AI参数设置
- **[warlike]**: 好战度，控制怪物攻击倾向
- **[sight]**: 视野范围，控制怪物发现玩家的距离
- **[move speed]**: 移动速度
- **[attack speed]**: 攻击速度

## 📋 核心标签详解

### 基础属性标签
- `[HP MAX]` - 最大生命值
- `[EQUIPMENT_PHYSICAL_ATTACK]` - 物理攻击力  
- `[EQUIPMENT_PHYSICAL_DEFENSE]` - 物理防御力
- `[EQUIPMENT_MAGICAL_ATTACK]` - 魔法攻击力
- `[EQUIPMENT_MAGICAL_DEFENSE]` - 魔法防御力
- `[level]` - 怪物等级
- `[move speed]` - 移动速度
- `[attack speed]` - 攻击速度
- `[cast speed]` - 施法速度
- `[hit recovery]` - 命中恢复
- `[weight]` - 重量
- `[sight]` - 视野
- `[warlike]` - 好战度
- `[attack delay]` - 攻击延迟

### 类别标签
- `[category]` - 怪物类别
  - `[human]` - 人类
  - `[goblin]` - 哥布林
  - `[melee combat]` - 近战战斗
  - `[close-passive]` - 封闭被动

## ⚠️ 注意事项

1. **安全修改**: 修改怪物属性时，仅修改基础属性部分以避免服务端问题
2. **文件备份**: 修改前备份原始文件
3. **测试验证**: 修改后进行充分测试
4. **数值平衡**: 合理设置怪物属性，避免数值失衡
5. **路径正确**: 确保所有引用路径正确

## 🔍 高级技巧

### 1. 全局怪物增强
通过修改全局怪物参数，可以统一增强所有怪物的属性。

### 2. 单个怪物强化
可以针对特定怪物设置独特的属性和技能。

### 3. 怪物智能提升
通过调整AI参数，让怪物变得更智能，例如：
- 跟踪玩家
- 选择最佳攻击时机
- 使用策略性行为

## 🌐 相关链接

- DNF文件知识库主目录
- PVF文件结构详解
- 技能系统修改参考

## 📈 实践案例

本知识库包含多个实践案例，涵盖：
- 怪物基础属性修改
- 怪物技能修改
- 怪物AI调整
- 特殊效果实现

---
*本知识库基于DAF学院怪物修改教程整理，旨在为DNF开发者提供全面的怪物系统修改参考*