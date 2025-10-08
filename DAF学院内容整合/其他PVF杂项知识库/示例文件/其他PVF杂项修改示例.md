# DNF其他PVF杂项修改示例

## 📁 示例文件目录

本目录包含多种其他PVF杂项修改的示例，用于演示不同类型的修改方法和最佳实践。

### 示例分类

1. [APD效果配置示例](#apd效果配置示例)
2. [频道系统配置示例](#频道系统配置示例)
3. [角色参数配置示例](#角色参数配置示例)
4. [系统功能修复示例](#系统功能修复示例)
5. [特殊效果实现示例](#特殊效果实现示例)

## 🎨 APD效果配置示例

### 示例1: 技能等级提升APD

```
#PVF_File

[type]
`skill data up`

[duration]
300000  // 5分钟持续时间

[buff]
0

[icon image]
`Skill/BuffIcon.img` 101

[max overlap]
1

[int data]
[/int data]

[string data]
`[swordman]` `5` `[all]` `[level]` `0` `%` `200`  // 鬼剑士5号技能提升至200%
`[demonic swordman]` `5` `[all]` `[level]` `0` `%` `200`
`[fighter]` `5` `[all]` `[level]` `0` `%` `200`
`[gunner]` `5` `[all]` `[level]` `0` `%` `200`
`[at gunner]` `5` `[all]` `[level]` `0` `%` `200`
`[mage]` `5` `[all]` `[level]` `0` `%` `200`
`[priest]` `5` `[all]` `[level]` `0` `%` `200`
`[thief]` `5` `[all]` `[level]` `0` `%` `200`
`[at fighter]` `5` `[all]` `[level]` `0` `%` `200`
`[at mage]` `5` `[all]` `[level]` `0` `%` `200`
[/string data]

[float data]
[/float data]
```

#### 功能拆解
- 提升全职业技能等级
- 5分钟持续时间
- 全职业通用
- 2倍技能等级

---

### 示例2: 独立攻击力提升APD

```
#PVF_File

[type]
`equipment physical attack`

[duration]
600000  // 10分钟持续时间

[buff]
0

[icon image]
`Item/Icon.img` 205

[max overlap]
1

[int data]
1
[/int data]

[float data]
50.00 60.00  // 独立攻击力增加50-60
[/float data]

[string data]
`equipment physical attack`
[/string data]
```

#### 功能拆解
- 提升独立攻击力
- 10分钟持续时间
- 持续增加50-60点独立攻击力

## 📡 频道系统配置示例

### 示例3: 频道配置文件

```
// 频道配置示例 (在频道配置文件中)
[channel config]
[total channels]
20  // 总共20个频道

[channel list]
1 `主城频道1` 1
2 `主城频道2` 1
3 `PK频道` 2
4 `新玩家频道` 1
5 `高级玩家频道` 1
6 `决斗场频道` 2
7 `活动频道1` 1
8 `活动频道2` 1
9 `活动频道3` 1
10 `活动频道4` 1
11 `活动频道5` 1
12 `活动频道6` 1
13 `活动频道7` 1
14 `活动频道8` 1
15 `活动频道9` 1
16 `活动频道10` 1
17 `活动频道11` 1
18 `活动频道12` 1
19 `活动频道13` 1
20 `活动频道14` 1

[channel restrictions]
`[pk level]` 0  // PK等级限制
`[entry level]` 1  // 进入等级限制
`[experience rate]` 1.0  // 经验倍率
```

#### 功能拆解
- 配置20个频道
- 不同频道有不同用途
- 设置频道限制参数

---

### 示例4: 频道名称修改

```
// 频道名称配置示例
[channel names]
1 `新世界1区`
2 `新世界2区`
3 `PK天堂`
4 `新手村`
5 `高级区`
6 `决斗圣域`
7 `活动乐园`
8 `活动天堂`
// ... 更多频道名称配置
```

## 👤 角色参数配置示例

### 示例5: 职业参数配置

```
// 鬼剑士职业参数示例 (atswordman.chr)
[initial stats]
[str] 18
[dex] 15
[int] 10
[luk] 8

[job growth]
[str growth] 1.20
[dex growth] 1.10
[int growth] 0.80
[luk growth] 0.70

[weapon types]
`sword` `katana` `bigsword` `dagger` `blunt` `axe` `dualblade` `gun`

[attack types]
`physical` `melee`

[skill tree]
`swordman` 1
`fighter` 2
`knight` 3
`berserker` 4
`soulmaster` 5
`darktemplar` 6
// ... 更多技能树配置

[animation files]
`idle` `Animation/Swordman/Idle.ani`
`walk` `Animation/Swordman/Walk.ani`
`attack` `Animation/Swordman/Attack.ani`
`skill` `Animation/Swordman/Skill.ani`
```

#### 功能拆解
- 设置角色初始属性
- 定义职业成长参数
- 配置可使用武器类型
- 设置动画文件路径

---

### 示例6: 角色成长参数

```
// 角色升级参数
[level up growth]
1-10 `str + 1.5, hp + 50`
11-20 `str + 1.6, hp + 55, mp + 25`
21-30 `str + 1.7, hp + 60, mp + 30`
31-40 `str + 1.8, hp + 65, mp + 35`
41-50 `str + 1.9, hp + 70, mp + 40`
51-60 `str + 2.0, hp + 75, mp + 45`
61-70 `str + 2.1, hp + 80, mp + 50`
71-80 `str + 2.2, hp + 85, mp + 55`
81-90 `str + 2.3, hp + 90, mp + 60`
91-100 `str + 2.4, hp + 95, mp + 65`

[stat points per level]
5

[skill points per level]
1

[base damage]
50

[base defense]
30
```

## 🔧 系统功能修复示例

### 示例7: 骨戒回收修复配置

```
// tw_deleteinvaliditem.etc 文件内容
[delete item]
// 原本的骨戒回收代码
24081  // 骨戒代码
7113   // 相关代码
30

// 修改后（防止回收）
26     // 改为无用代码
30
[/delete item]

[send mail title]
"tw_halgi_delete_reward_title"

[send mail content]
"tw_halgi_delete_reward_content"
```

#### 功能拆解
- 修改骨戒回收机制
- 将回收代码改为无用代码
- 防止骨戒被系统回收

---

### 示例8: 金币上限配置

```
// goldlimibylevel.etc 文件内容
[level gold limit]
1 1000000      // 1级时金币上限100万
10 5000000     // 10级时金币上限500万
20 10000000    // 20级时金币上限1000万
30 50000000    // 30级时金币上限5000万
40 100000000   // 40级时金币上限1亿
50 500000000   // 50级时金币上限5亿
60 1000000000  // 60级时金币上限10亿
70 5000000000  // 70级时金币上限50亿
80 10000000000 // 80级时金币上限100亿
90 50000000000 // 90级时金币上限500亿
100 100000000000 // 100级时金币上限1000亿
```

## ✨ 特殊效果实现示例

### 示例9: 残影效果APD

```
#PVF_File

[type]
`movement effect`

[duration]
5000  // 5秒持续时间

[buff]
0

[icon image]
`Effect/Residual.img` 1

[max overlap]
3  // 最大叠加3层

[int data]
1
[/int data]

[float data]
0.50 0.80  // 残影效果参数
[/float data]

[string data]
`residual image effect`
[/string data]
```

#### 功能拆解
- 实现人物移动残影效果
- 5秒持续时间
- 可叠加3层
- 特殊移动效果

---

### 示例10: 称称特殊效果配置

```
// 称称APD效果示例
#PVF_File

[type]
`title effect`

[duration]
-1  // 永久效果

[buff]
1

[icon image]
`Title/Effects.img` 15

[max overlap]
1

[string data]
`[title]` `[all]` `[damage]` `+` `10`  // 攻击力+10%
`[title]` `[all]` `[move speed]` `+` `5`  // 移动速度+5
[/string data]

[int data]
1
[/int data]

[float data]
1.10 1.05  // 伤害和速度倍率
[/float data]
```

#### 功能拆解
- 称称特殊效果
- 永久持续时间
- 攻击和移动速度加成
- 全时间生效

### 示例11: 自动邮件奖励配置

```
// 邮件奖励配置示例
[daily reward]
[trigger time]
06:00:00  // 每天6点触发

[reward items]
2000001 5  // 红药水5个
2000002 5  // 蓝药水5个
5000001 10000  // 金币1万

[mail title]
`每日登录奖励`

[mail content]
`感谢您的登录，这是您的每日奖励`

[condition]
[level] 10  // 10级以上可领取
[not received today]  // 今日未领取过
```

## 🧩 配置最佳实践

### 效果平衡原则
1. 效果强度与持续时间平衡
2. 堆叠数量与效果值平衡
3. 遵活性与专业性平衡

### 用户体验优化
1. 清晰的效果说明
2. 合理的持续时间
3. 明确的图标提示

### 系统性能考虑
1. 控制效果复杂度
2. 优化APD文件大小
3. 合理设置叠加限制

### 安全性考虑
1. 验证所有ID的有效性
2. 防止效果过强导致失衡
3. 合理设置使用权限

---
*本示例文件基于DAF学院其他PVF杂项修改教程整理，旨在为开发者提供实用的杂项修改模板*