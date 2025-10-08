# ATK文件映射关系详解

## 🎯 核心概念

ATK文件在DNF技能系统中通过**攻击信息索引映射**与NUT脚本建立关联，定义技能的攻击判定、伤害计算、状态效果等核心战斗逻辑。

## 📊 ATK文件的映射机制

### 攻击信息调用结构

```
NUT脚本调用 → ATK文件索引 → 攻击信息定义
     ↓              ↓              ↓
sq_SetCurrentAttackInfo(0)  第0个攻击信息  具体攻击参数
```

### 实际案例：拔刀斩项目

#### 1. NUT脚本中的ATK调用

```nut
// 拔刀斩攻击信息设置
function onSetState_MomentarySlashAttack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        // 设置攻击动画
        obj.sq_SetCurrentAnimation(186);  // momentaryslashre_attack.ani
        
        // 设置攻击信息 ⭐
        obj.sq_SetCurrentAttackInfo(0);   // 使用第0个攻击信息
    }
}
```

#### 2. ATK文件结构示例

```
// AttackInfo/MomentarySlash.atk
[attack info]
    [weapon damage apply]
        1    // 是否应用武器伤害

    [attack type]
        `PHYSICAL_ATTACK`    // 物理攻击类型

    [attack direction]
        `FORWARD`            // 攻击方向

    [hit info]
        [blow]
            [level]
                0            // 击飞等级
            [hit direction]
                `FORWARD`    // 击飞方向

    [damage]
        [damage type]
            `SUPERARMOR_BREAK`    // 破霸体伤害
        [damage]
            500    600    700    800    900    // 各等级伤害值

    [attack area]
        [width]
            150              // 攻击范围宽度
        [height]
            100              // 攻击范围高度
        [x]
            80               // X轴偏移
        [y]
            0                // Y轴偏移
[/attack info]
```

## 🔗 ATK文件与其他文件的映射关系

### ATK ↔ NUT 关系

```
NUT脚本：定义何时使用哪个攻击信息
ATK文件：定义具体的攻击参数和效果

NUT中的索引 → ATK文件中的[attack info]块 → 具体攻击效果
```

#### 多攻击信息管理

```nut
// 技能的不同阶段使用不同的攻击信息
function onSetState_MomentarySlash(obj, state, datas, isResetTimer)
{
    if (state == 0) {
        // 准备阶段：无攻击判定
        obj.sq_SetCurrentAnimation(185);
        // 不设置攻击信息
    }
    else if (state == 1) {
        // 第一段攻击
        obj.sq_SetCurrentAnimation(186);
        obj.sq_SetCurrentAttackInfo(0);    // 第一段攻击信息
    }
    else if (state == 2) {
        // 第二段攻击（如果有）
        obj.sq_SetCurrentAnimation(187);
        obj.sq_SetCurrentAttackInfo(1);    // 第二段攻击信息
    }
}
```

#### 对应的ATK文件结构

```
// AttackInfo/MomentarySlash.atk
[attack info]                    // 索引 0：第一段攻击
    [damage]
        [damage]
            300    400    500    600    700
    [attack area]
        [width]
            120
        [height]
            80
[/attack info]

[attack info]                    // 索引 1：第二段攻击
    [damage]
        [damage]
            500    600    700    800    900
    [attack area]
        [width]
            180
        [height]
            120
[/attack info]
```

### ATK ↔ ANI 关系

```
ANI文件：定义攻击动画的播放时序
ATK文件：定义攻击判定的生效时机

动画帧序列 + 攻击信息 = 完整的攻击效果
```

#### 时序同步示例

```nut
function onSetState_MomentarySlash(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        obj.sq_SetCurrentAnimation(186);      // 设置攻击动画
        obj.sq_SetCurrentAttackInfo(0);       // 设置攻击信息
    }
    
    // 在特定帧数时激活攻击判定
    local currentFrame = obj.sq_GetCurrentFrameIndex();
    if (currentFrame == 8) {  // 第8帧开始攻击判定
        obj.sq_SetAttackBonusRate(100);       // 设置攻击加成
    }
    else if (currentFrame == 12) {  // 第12帧结束攻击判定
        obj.sq_SetAttackBonusRate(0);         // 清除攻击加成
    }
}
```

## 🎮 ATK文件映射的实际应用

### 1. **攻击信息索引管理**

```nut
// 定义攻击信息常量
MOMENTARY_SLASH_ATTACK_1 <- 0    // 第一段攻击
MOMENTARY_SLASH_ATTACK_2 <- 1    // 第二段攻击
MOMENTARY_SLASH_FINISHER <- 2    // 终结攻击

// 安全的攻击信息设置
function setAttackInfoSafely(obj, attackIndex, attackName)
{
    if (attackIndex < 0 || attackIndex > MAX_ATTACK_INFO_INDEX) {
        print("错误：攻击信息索引 " + attackIndex + " (" + attackName + ") 超出范围");
        return false;
    }
    
    obj.sq_SetCurrentAttackInfo(attackIndex);
    return true;
}
```

### 2. **动态攻击信息切换**

```nut
function onSetState_ComboAttack(obj, state, datas, isResetTimer)
{
    local comboCount = obj.sq_GetIntData(COMBO_COUNT);
    
    switch (comboCount) {
        case 1:
            obj.sq_SetCurrentAnimation(COMBO_ANI_1);
            obj.sq_SetCurrentAttackInfo(COMBO_ATK_1);
            break;
        case 2:
            obj.sq_SetCurrentAnimation(COMBO_ANI_2);
            obj.sq_SetCurrentAttackInfo(COMBO_ATK_2);
            break;
        case 3:
            obj.sq_SetCurrentAnimation(COMBO_ANI_3);
            obj.sq_SetCurrentAttackInfo(COMBO_ATK_3);
            break;
    }
}
```

### 3. **条件性攻击信息应用**

```nut
function onSetState_ConditionalAttack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        obj.sq_SetCurrentAnimation(SKILL_ANIMATION);
        
        // 根据角色状态选择不同的攻击信息
        if (obj.sq_IsMyControlObject()) {
            // 玩家角色使用标准攻击信息
            obj.sq_SetCurrentAttackInfo(PLAYER_ATTACK_INFO);
        } else {
            // NPC使用简化攻击信息
            obj.sq_SetCurrentAttackInfo(NPC_ATTACK_INFO);
        }
    }
}
```

## ⚠️ ATK映射关系中的关键注意事项

### 1. **攻击信息索引准确性**

```
❌ 错误：使用超出范围的索引
obj.sq_SetCurrentAttackInfo(10);  // ATK文件中只有3个攻击信息

✅ 正确：确保索引在有效范围内
if (attackIndex < totalAttackInfoCount) {
    obj.sq_SetCurrentAttackInfo(attackIndex);
}
```

### 2. **攻击信息与动画同步**

```nut
// 确保攻击信息的生效时机与动画匹配
function onSetState_SynchronizedAttack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        obj.sq_SetCurrentAnimation(ATTACK_ANIMATION);
        // 延迟设置攻击信息，等待动画到达攻击帧
        obj.sq_AddSetStatePacket(STATE_ATTACK_ACTIVE, STATE_PRIORITY_USER, false);
    }
}

function onSetState_AttackActive(obj, state, datas, isResetTimer)
{
    // 在攻击帧设置攻击信息
    obj.sq_SetCurrentAttackInfo(ATTACK_INFO_INDEX);
}
```

### 3. **ATK文件完整性验证**

```
// 确保ATK文件包含必要的标签
[attack info]
    [weapon damage apply]        // 必须：武器伤害应用
        1
    [attack type]               // 必须：攻击类型
        `PHYSICAL_ATTACK`
    [damage]                    // 必须：伤害定义
        [damage]
            100    200    300    400    500
    [attack area]               // 必须：攻击范围
        [width]
            100
        [height]
            80
[/attack info]
```

## 🔧 高级ATK映射技巧

### 1. **攻击信息池管理**

```nut
// 创建攻击信息池，便于管理
local attackInfoPool = {
    "basic_attack": 0,
    "heavy_attack": 1,
    "special_attack": 2,
    "finisher_attack": 3
};

function useAttackInfo(obj, attackName)
{
    if (attackName in attackInfoPool) {
        obj.sq_SetCurrentAttackInfo(attackInfoPool[attackName]);
        return true;
    }
    print("错误：未找到攻击信息 " + attackName);
    return false;
}
```

### 2. **攻击信息继承机制**

```nut
// 基础攻击信息
function setBaseAttackInfo(obj, baseIndex)
{
    obj.sq_SetCurrentAttackInfo(baseIndex);
    
    // 设置通用攻击属性
    obj.sq_SetAttackBonusRate(100);
    obj.sq_SetHitBonusRate(100);
}

// 特殊攻击信息（继承基础设置）
function setSpecialAttackInfo(obj, specialIndex)
{
    setBaseAttackInfo(obj, specialIndex);
    
    // 添加特殊效果
    obj.sq_SetAttackBonusRate(150);  // 增加攻击力
    obj.sq_AddStatusEffect(STATUS_BURN);  // 添加燃烧状态
}
```

### 3. **攻击信息缓存优化**

```nut
// 缓存攻击信息，避免重复设置
local currentAttackInfo = -1;

function setAttackInfoCached(obj, attackIndex)
{
    if (currentAttackInfo != attackIndex) {
        obj.sq_SetCurrentAttackInfo(attackIndex);
        currentAttackInfo = attackIndex;
    }
}
```

## 📈 性能优化建议

### 1. **攻击信息预加载**

```nut
// 在技能初始化时预加载攻击信息
function preloadAttackInfos()
{
    local skillAttackInfos = [0, 1, 2];  // 技能使用的攻击信息索引
    
    foreach (atkIndex in skillAttackInfos) {
        preloadAttackInfo(atkIndex);
    }
}
```

### 2. **攻击判定优化**

```nut
// 优化攻击判定的检测频率
function optimizedAttackCheck(obj)
{
    local currentFrame = obj.sq_GetCurrentFrameIndex();
    
    // 只在攻击帧检测攻击判定
    if (currentFrame >= ATTACK_START_FRAME && currentFrame <= ATTACK_END_FRAME) {
        obj.sq_CheckAttackHit();
    }
}
```

### 3. **内存使用优化**

```nut
// 及时清理不需要的攻击信息
function cleanupAttackInfo(obj)
{
    if (obj.sq_IsEnd()) {
        obj.sq_SetCurrentAttackInfo(-1);  // 清除攻击信息
        currentAttackInfo = -1;           // 重置缓存
    }
}
```

## 🎯 实战开发流程

### 步骤1：设计攻击信息结构

1. 分析技能的攻击阶段
2. 确定每个阶段的攻击参数
3. 规划攻击信息的索引分配

### 步骤2：创建ATK文件

1. 定义攻击类型和方向
2. 设置伤害值和攻击范围
3. 配置击飞和状态效果

### 步骤3：建立映射关系

1. 在NUT脚本中定义攻击信息常量
2. 在适当的时机调用攻击信息
3. 确保与动画的时序同步

### 步骤4：测试和调优

1. 在游戏中测试攻击效果
2. 调整攻击范围和伤害值
3. 优化攻击判定的时机

## 💡 调试技巧

### 1. **攻击信息调试**

```nut
function debugAttackInfo(obj)
{
    local currentAttack = obj.sq_GetCurrentAttackInfo();
    print("当前攻击信息索引：" + currentAttack);
    
    // 输出攻击范围信息
    local attackArea = obj.sq_GetAttackArea();
    print("攻击范围：" + attackArea.width + "x" + attackArea.height);
}
```

### 2. **伤害计算调试**

```nut
function debugDamageCalculation(obj, target)
{
    local baseDamage = obj.sq_GetBaseDamage();
    local finalDamage = obj.sq_GetFinalDamage(target);
    print("基础伤害：" + baseDamage + " → 最终伤害：" + finalDamage);
}
```

### 3. **攻击判定可视化**

```nut
function visualizeAttackArea(obj)
{
    // 在开发模式下显示攻击范围
    if (DEVELOPMENT_MODE) {
        obj.sq_ShowAttackArea(true);
        obj.sq_ShowHitArea(true);
    }
}
```

## 📝 总结

ATK文件的映射关系是DNF技能系统中**攻击逻辑的核心**。通过合理的索引管理和攻击信息设计，可以创造出丰富多样的战斗效果。

### 关键要点

1. **索引管理**：使用常量定义，避免硬编码
2. **时序同步**：确保攻击信息与动画帧同步
3. **性能优化**：合理使用缓存和预加载
4. **调试验证**：充分测试攻击效果和判定

掌握ATK文件的映射机制，是开发高质量DNF技能的重要基础！