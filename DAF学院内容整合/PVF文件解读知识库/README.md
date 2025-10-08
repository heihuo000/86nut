# DNF PVF文件解读知识库

## 📚 简介

本知识库整理了DAF学院关于DNF PVF文件结构和解读的教程，涵盖了PVF文件的基本结构、目录解析、参数对照表等内容。通过本知识库，您可以深入了解DNF的文件系统结构和各项参数的含义。

## 🎯 核心概念

### 1. PVF文件系统结构

根据DAF学院教程，DNF的PVF文件系统有以下特点：

- **物品分类**：
  - 可穿戴物品：`/equipment` 目录
  - 不可穿戴物品：`/stackable` 目录

- **关键文件**：
  - `*.lst` 文件：关联代码与实际文件路径
  - `*.str` 文件：包含游戏中文本信息
  - `*.etc` 文件：包含各种配置数据

### 2. 文件关联机制

- `.lst` 文件是将物品代码关联到实际物品的关键文件
- 修改不正确容易导致服务端无法启动
- 需要在 `.lst` 文件中添加关联，并在 `.kor.str` 文件中添加名称

## 🏗️ 目录结构解析

### aicharacter目录解析

#### 主要文件
- `aicharacter.kor.str` - APC相关文本语言文件
- `aicharacter.lst` - APC文件链接列表
- `operatingvalue.lst` - 操作值代码列表，如：'jump attack' 7 表示跳起攻击 7
- `towerofdespair_apc.etc` - 特定APC数据文件

#### APC数据结构
每个APC（AI Character）都有独立的文件夹，以APC编号命名，例如：
```
fighter/28
├── 28.aic
```

#### 28.aic 文件参数详解
- 第二行：人偶等级
- 状态/速度参数：影响AI行为
- 攻击速度：决定攻击节奏
- 自定义技能等级：设置AI使用的技能等级
- 远距离攻击反应几率：决定远程反应频率
- 技能代码：定义可使用技能
- 装备代码：定义APC装备
- 发呆时间：AI停止行动的时间（200约为2秒）
- 更换目标时间：AI切换目标的频率
- 保持距离：AI与目标的距离
- 好战度：AI攻击性参数
- 视野：AI感知范围
- 攻击距离：AI攻击范围

## 📊 数据参数对照表

### 装备属性参数
- `[width]` - 宽度
- `[HP MAX]` - 最大生命值
- `[EQUIPMENT_PHYSICAL_ATTACK]` - 物理攻击力
- `[EQUIPMENT_PHYSICAL_DEFENSE]` - 物理防御力
- `[EQUIPMENT_MAGICAL_ATTACK]` - 魔法攻击力
- `[EQUIPMENT_MAGICAL_DEFENSE]` - 魔法防御力

### 怪物属性参数
- `[level]` - 等级
- `[move speed]` - 移动速度
- `[attack speed]` - 攻击速度
- `[cast speed]` - 投掷速度
- `[hit recovery]` - 命中率
- `[weight]` - 重量
- `[sight]` - 视线范围
- `[warlike]` - 好战度
- `[attack delay]` - 攻击延迟

### 暴击率计算公式
- 根据专业教程，暴击率的计算有特定的公式和算法

### 怪物分类参数
- `[category]` - 类别
  - `[human]` - 人类
  - `[goblin]` - 哥布林
  - `[melee combat]` - 混战战斗
  - `[close-passive]` - 封闭被动

## 📁 常用路径说明

### 核心路径
- `/PVF/equipment/` - 装备文件目录
- `/PVF/stackable/` - 物品文件目录
- `/PVF/aicharacter/` - APC文件目录
- `/PVF/map/` - 地图文件目录

### 关键文件路径
- `equipment.lst` - 装备列表文件
- `stackable.lst` - 物品列表文件
- `*.kor.str` - 韩文字符串文件
- `*.etc` - 配置文件

## ⚠️ 注意事项

### LST文件修改注意事项
1. `.lst` 文件修改最容易导致服务端无法启动
2. 确保关联的文件路径确实存在
3. 检查文件末尾格式是否正确
4. 添加新条目后要加回车，但不能多加

### 安全修改原则
1. 修改前备份原文件
2. 修改后测试服务端是否正常启动
3. 遵循正确的语法格式
4. 确保所有关联文件都已正确配置

## 🔍 常用参数解析

### 通用参数
- `[ability category]` - 能力范畴
- `[category]` - 类别
- `[level]` - 等级
- `[move speed]` - 移动速度
- `[attack speed]` - 攻击速度
- `[cast speed]` - 投掷速度
- `[hit recovery]` - 命中率
- `[weight]` - 重量
- `[sight]` - 视线
- `[targeting nearest]` - 瞄准最近
- `[warlike]` - 好战度
- `[attack delay]` - 攻击延迟

### 战斗相关参数
- `[stuckbonus on damage]` - 缠绕上的损伤
- `[attack kind]` - 攻击种类
- `[die effect]` - 死亡效果
- `[face image]` - 人脸图像
- `[waiting motion]` - 等待动作
- `[move motion]` - 移动动作

## 📈 学习建议

1. **循序渐进**：先理解基础文件结构，再深入具体参数
2. **实践验证**：修改后及时测试效果
3. **安全备份**：每次修改前都要备份原文件
4. **参考对照**：使用参数对照表进行精确修改

## 📋 参考资料

- PVF系统基本概念
- 物品、装备文件结构
- 怪物AI参数详解
- 面板属性中英文对照

---
*本知识库基于DAF学院PVF文件解读教程整理，旨在帮助开发者理解DNF的PVF文件结构和参数含义*