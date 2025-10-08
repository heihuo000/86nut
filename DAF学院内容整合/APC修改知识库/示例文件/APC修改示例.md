# DNF APC修改示例

## 📁 示例文件目录

本目录包含多种APC修改的示例，用于演示不同类型的APC修改方法和最佳实践。

### 示例分类

1. [基础APC属性修改示例](#基础APC属性修改示例)
2. [高级APC配置示例](#高级APC配置示例)
3. [召唤道具修改示例](#召唤道具修改示例)
4. [AI行为调整示例](#AI行为调整示例)
5. [特殊功能APC示例](#特殊功能APC示例)

## 🤖 基础APC属性修改示例

### 示例1: 基础APC属性（37参数详解）

```
[character status rate]
20 70 1 5 2 5 2 5 2 5 1 30 30 1.200000 1.300000 1 70 1.400000 1 1 1 1 1 1 1 5 1 80 1 10 1 10 1 1 1 1 1 0.300000 10 1 1
[warlike] 80
[sight] 280
[move speed] 350
[attack speed] 450
[cast speed] 700
[action file] 'ActionObject/APC/Simple.act'
[animation file] 'Animation/APC/Simple.ani'
[physical attack power] 1500
[magical attack power] 1300
[physical defense] 600
[magical defense] 500
```

#### 功能拆解
- [character status rate] 包含全部37个参数
- 1-6: HP、MP、四维属性比例
- 7-9: 负重和回复能力
- 10-16: 速度和命中相关
- 17-37: 各种抗性属性
- 设置基础AI参数

---

### 示例2: 高攻型APC配置

```
[character status rate]
30 50 2 3 1 2 1 3 1 4 2 25 25 1.500000 1.200000 1 50 1.200000 1 1 1 1 1 1 1 3 1 60 1 8 1 8 1 1 1 1 1 0.500000 8 1 1
[warlike] 95
[sight] 320
[move speed] 400
[attack speed] 550
[cast speed] 800
[physical attack power] 2500
[magical attack power] 2200
[physical defense] 400
[magical defense] 350
```

#### 功能拆解
- 优先提升攻击力相关参数
- 调高warlike值增加攻击性
- 提升攻击和施法速度

## ⚔️ 高级APC配置示例

### 示例3: 完整APC配置（西岚类型）

```
[character status rate]
25 60 1 4 3 4 2 4 2 5 1 35 35 1.300000 1.400000 1 75 1.500000 1 1 1 1 1 1 1 6 1 85 1 12 1 12 1 1 1 1 1 0.350000 12 1 1
[warlike] 90
[sight] 350
[move speed] 450
[attack speed] 600
[cast speed] 850
[action file] 'ActionObject/APC/Soldoros.act'
[animation file] 'Animation/APC/Soldoros.ani'
[physical attack power] 3000
[magical attack power] 2800
[physical defense] 1000
[magical defense] 900
```

#### 功能拆解
- 高等级APC的完整配置
- 均衡的属性分配
- 高级别的攻防数值
- 专业的动画和行为文件

---

### 示例4: 防御型APC配置

```
[character status rate]
40 40 1 2 1 2 3 2 3 3 1 20 20 1.100000 1.100000 2 80 0.800000 2 2 2 2 2 2 2 8 2 90 2 5 2 5 2 2 2 2 2 0.200000 5 2 2
[warlike] 60
[sight] 200
[move speed] 300
[attack speed] 400
[cast speed] 600
[physical attack power] 800
[magical attack power] 700
[physical defense] 2000
[magical defense] 1800
```

#### 功能拆解
- 优先提升防御相关参数
- 降低攻击倾向(warlike)
- 提高各类抗性数值
- 适合前排坦克型APC

## 🎒 召喚道具修改示例

### 示例5: 基礎召喚道具

```
[summon apc]
1001 60 60  // 召喚1001號APC，等級60
[cooltime] 30000  // 30秒冷卻
[needitem] 0
[needsp] 0
[needhp] 0
[needmp] 0
```

#### 功能拆解
- 召喚指定編號的APC
- 設置30秒冷卻時間
- 無需消耗其他資源

---

### 示例6: 無限召喚道具

```
[summon apc]
1511 90 90  // 召喚西嵐APC，等級90
[cooltime] 0  // 無冷卻時間
[needitem] 0
[needsp] 0
[needhp] 0
[needmp] 0
```

#### 功能拆解
- 冷卻時間設為0實現無限召喚
- 高級APC配置
- 注意可能導致性能問題

### 示例7: 多種APC召喚道具

```
[item function]
[summon apc group]
1001 70 70
1002 70 70
1003 70 70
[/summon apc group]
[cooltime] 60000  // 60秒冷卻
```

## 🧠 AI行為調整示例

### 示例8: 高智能APC

```
[character status rate]
20 70 1 5 2 5 2 5 2 5 1 30 30 1.200000 1.300000 1 70 1.400000 1 1 1 1 1 1 1 5 1 80 1 10 1 10 1 1 1 1 1 0.300000 10 1 1
[warlike] 98  // 極高攻擊性
[sight] 400  // 最大視野
[move speed] 500  // 最快移動速度
[attack speed] 700  // 最快攻擊速度
[cast speed] 900  // 最快施法速度
[physical attack power] 2200
[magical attack power] 2000
[physical defense] 800
[magical defense] 700
```

#### 功能拆解
- 100戰鬥傾向，極度主動攻擊
- 最大視野範圍，易於發現敵人
- 最快的各種速度參數
- 高攻擊力配置

---

### 示例9: 守護型APC

```
[character status rate]
35 50 1 3 1 3 4 3 4 4 1 25 25 1.150000 1.150000 1 85 0.900000 1 1 1 1 1 1 1 7 1 95 1 7 1 7 1 1 1 1 1 0.250000 7 1 1
[warlike] 30  // 低攻擊性，偏向防禦
[sight] 250  // 中等視野
[move speed] 350  // 中等移動速度
[attack speed] 450  // 中等攻擊速度
[cast speed] 650  // 中等施法速度
[physical attack power] 1200
[magical attack power] 1000
[physical defense] 1800
[magical defense] 1600
```

#### 功能拆解
- 低戰鬥傾向，偏向守護
- 較高的防禦力
- 中等級的各項速度
- 適合保護玩家的APC

## ✨ 特殊功能APC示例

### 示例10: 傳說級APC配置

```
[character status rate]
45 35 3 2 4 2 1 1 1 6 2 15 15 1.800000 1.900000 3 40 2.000000 3 3 3 3 3 3 3 10 3 100 3 15 3 15 3 3 3 3 3 0.100000 15 3 3
[warlike] 100  // 100%戰鬥傾向
[sight] 500  // 超大視野
[move speed] 600  // 最高移動速度
[attack speed] 800  // 最高攻擊速度
[cast speed] 950  // 最高施法速度
[physical attack power] 5000
[magical attack power] 4800
[physical defense] 3000
[magical defense] 2800
[action file] 'ActionObject/APC/Legendary.act'
[animation file] 'Animation/APC/Legendary.ani'
```

#### 功能拆解
- 極高屬性配置
- 完美的抗性比例
- 專業的資源文件
- 傳說級別的APC

## 🧩 配置最佳實踐

### 屬性平衡原則
1. 攻擊和防禦之間保持合理比例
2. 速度參數與角色定位匹配
3. 避免單一屬性過高

### AI參數設置原則
1. 職業定位決定AI行為
2. 視野範圍影響APC威脅性
3. 速度參數影響戰鬥節奏

### 性能優化建議
1. 控制APC數量避免性能問題
2. 合理設置召喚冷卻時間
3. 優化AI複雜度

### 安全修改建議
1. 備份原始文件防止損壞
2. 測試環境中驗證後再部署
3. 監控系統性能影響

---
*本示例文件基於DAF學院APC修改教程整理，旨在為開發者提供實用的APC修改模板*