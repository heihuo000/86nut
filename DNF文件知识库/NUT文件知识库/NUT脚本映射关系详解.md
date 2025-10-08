# NUT脚本映射关系详解

## 🎯 核心概念

NUT脚本是DNF技能系统的**核心调度器**，通过函数映射机制与各种文件建立关联，实现技能逻辑控制、动画播放、攻击判定、状态管理等功能，是整个技能系统的"大脑"。

## 📊 NUT脚本的映射架构

### 多层映射体系

```
NUT脚本 (核心调度器)
    ├── CHR文件映射 → 动画索引控制
    ├── ATK文件映射 → 攻击信息索引
    ├── LAY文件映射 → 图层资源管理
    ├── ANI文件映射 → 动画播放控制
    └── 状态机映射 → 技能状态管理
```

### 实际案例：拔刀斩项目的完整映射

#### 1. NUT脚本中的核心映射函数

```nut
// momentaryslash.nut - 拔刀斩技能脚本

// ⭐ 动画索引映射 - 连接CHR文件
function onSetState_MomentarySlash_Ready(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        // 映射到CHR文件索引185 (momentaryslash_ready.ani)
        obj.sq_SetCurrentAnimation(185);
        
        // 映射到LAY文件索引185 (momentaryslash_ready.img)
        obj.sq_SetCurrentLayer(185);
    }
}

function onSetState_MomentarySlash_Attack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        // 映射到CHR文件索引186 (momentaryslash_attack.ani)
        obj.sq_SetCurrentAnimation(186);
        
        // 映射到LAY文件索引186 (momentaryslash_attack.img)
        obj.sq_SetCurrentLayer(186);
        
        // ⭐ 攻击信息映射 - 连接ATK文件
        obj.sq_SetCurrentAttackInfo(0);  // 映射到ATK文件第0个[attack info]
    }
}

// ⭐ 状态机映射 - 技能状态流转控制
function onProc_MomentarySlash(obj)
{
    if (!obj) return;
    
    local state = obj.sq_GetState();
    local substate = obj.sq_GetSubState();
    
    switch (state) {
        case STATE_READY:
            // 准备状态逻辑
            if (obj.sq_IsEnd()) {
                obj.sq_SetState(STATE_ATTACK, SUBSTATE_NORMAL);
            }
            break;
            
        case STATE_ATTACK:
            // 攻击状态逻辑
            if (obj.sq_IsEnd()) {
                obj.sq_SetState(STATE_END, SUBSTATE_NORMAL);
            }
            break;
    }
}
```

#### 2. 对应的CHR文件映射

```
// character/swordman/swordman.chr
[etc motion]
    ...
    `Animation/DungeonFighter/swordman/Effect/Animation/momentaryslash_ready.ani`     // 索引 185 ⭐
    `Animation/DungeonFighter/swordman/Effect/Animation/momentaryslash_attack.ani`    // 索引 186 ⭐
    ...
[/etc motion]
```

#### 3. 对应的ATK文件映射

```
// skill/swordman/momentaryslash.atk
[attack info]  // 索引 0 ⭐ 对应 sq_SetCurrentAttackInfo(0)
    [weapon damage apply]
        1
    [attack type]
        `[normal]`
    [attack damage]
        100
    [elemental property]
        `[no element]`
[/attack info]

[attack info]  // 索引 1 ⭐ 可用于技能升级或其他变体
    [weapon damage apply]
        1
    [attack type]
        `[normal]`
    [attack damage]
        150
    [elemental property]
        `[fire]`
[/attack info]
```

## 🔗 NUT脚本与各文件的映射关系

### NUT ↔ CHR 映射关系

```
NUT脚本：控制何时播放哪个动画
CHR文件：定义动画索引到文件路径的映射

映射函数：obj.sq_SetCurrentAnimation(index)
```

#### 动画索引管理系统

```nut
// 动画索引映射管理器
class AnimationIndexManager
{
    indexMap = {};
    
    constructor()
    {
        initializeAnimations();
    }
    
    function initializeAnimations()
    {
        // 基础动作映射
        indexMap["idle"] <- 0;
        indexMap["walk"] <- 1;
        indexMap["run"] <- 2;
        
        // 攻击动作映射
        indexMap["attack1"] <- 10;
        indexMap["attack2"] <- 11;
        indexMap["attack3"] <- 12;
        
        // 技能动作映射
        indexMap["momentary_slash_ready"] <- 185;
        indexMap["momentary_slash_attack"] <- 186;
        indexMap["momentary_slash_end"] <- 187;
    }
    
    function getAnimationIndex(name)
    {
        return (name in indexMap) ? indexMap[name] : -1;
    }
    
    function playAnimation(obj, animName)
    {
        local index = getAnimationIndex(animName);
        if (index != -1) {
            obj.sq_SetCurrentAnimation(index);
            return true;
        }
        
        print("警告：未找到动画 " + animName);
        return false;
    }
}

// 全局动画管理器
local g_AnimMgr = AnimationIndexManager();

// 使用示例
function onSetState_SkillReady(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        g_AnimMgr.playAnimation(obj, "momentary_slash_ready");
    }
}
```

### NUT ↔ ATK 映射关系

```
NUT脚本：控制何时使用哪个攻击信息
ATK文件：定义攻击信息的具体参数

映射函数：obj.sq_SetCurrentAttackInfo(index)
```

#### 攻击信息动态切换

```nut
// 攻击信息管理器
class AttackInfoManager
{
    attackInfos = {};
    
    function registerAttackInfo(skillName, level, index)
    {
        if (!(skillName in attackInfos)) {
            attackInfos[skillName] <- {};
        }
        attackInfos[skillName][level] <- index;
    }
    
    function getAttackInfoIndex(skillName, level)
    {
        if (skillName in attackInfos && level in attackInfos[skillName]) {
            return attackInfos[skillName][level];
        }
        return 0;  // 默认使用第0个攻击信息
    }
    
    function applyAttackInfo(obj, skillName, level)
    {
        local index = getAttackInfoIndex(skillName, level);
        obj.sq_SetCurrentAttackInfo(index);
        
        print("应用攻击信息：" + skillName + " Lv." + level + " (索引:" + index + ")");
    }
}

// 全局攻击信息管理器
local g_AttackMgr = AttackInfoManager();

// 注册攻击信息映射
g_AttackMgr.registerAttackInfo("momentary_slash", 1, 0);   // 1级使用索引0
g_AttackMgr.registerAttackInfo("momentary_slash", 5, 1);   // 5级使用索引1
g_AttackMgr.registerAttackInfo("momentary_slash", 10, 2);  // 10级使用索引2

// 使用示例
function onSetState_MomentarySlash_Attack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        local skillLevel = obj.sq_GetSkillLevel(SKILL_MOMENTARY_SLASH);
        g_AttackMgr.applyAttackInfo(obj, "momentary_slash", skillLevel);
        
        obj.sq_SetCurrentAnimation(186);
    }
}
```

### NUT ↔ LAY 映射关系

```
NUT脚本：控制何时显示哪个图层
LAY文件：定义图层索引到图片路径的映射

映射函数：obj.sq_SetCurrentLayer(index)
```

#### 图层效果管理

```nut
// 图层效果管理器
class LayerEffectManager
{
    layerEffects = {};
    
    function addLayerEffect(layerIndex, effectType, duration, intensity)
    {
        layerEffects[layerIndex] <- {
            effect = effectType,
            duration = duration,
            intensity = intensity,
            startTime = getCurrentTime()
        };
    }
    
    function updateLayerEffects(obj)
    {
        local currentTime = getCurrentTime();
        
        foreach (layerIndex, effect in layerEffects) {
            local elapsed = currentTime - effect.startTime;
            
            if (elapsed >= effect.duration) {
                // 效果结束
                obj.sq_RemoveLayerEffect(layerIndex, effect.effect);
                delete layerEffects[layerIndex];
            } else {
                // 更新效果强度
                local progress = elapsed.tofloat() / effect.duration;
                local currentIntensity = effect.intensity * (1.0 - progress);
                obj.sq_UpdateLayerEffect(layerIndex, effect.effect, currentIntensity);
            }
        }
    }
    
    function clearAllEffects(obj)
    {
        foreach (layerIndex, effect in layerEffects) {
            obj.sq_RemoveLayerEffect(layerIndex, effect.effect);
        }
        layerEffects.clear();
    }
}

// 全局图层效果管理器
local g_LayerEffectMgr = LayerEffectManager();

// 使用示例
function onSetState_SpecialEffect(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        // 设置基础图层
        obj.sq_SetCurrentLayer(186);
        
        // 添加特殊效果
        g_LayerEffectMgr.addLayerEffect(186, EFFECT_GLOW, 1000, 0.8);
        g_LayerEffectMgr.addLayerEffect(187, EFFECT_FLASH, 500, 1.0);
    }
    
    // 更新图层效果
    g_LayerEffectMgr.updateLayerEffects(obj);
}
```

### NUT ↔ 状态机映射

```
NUT脚本：定义状态转换逻辑和条件
状态机：管理技能的生命周期

映射函数：obj.sq_SetState(), obj.sq_GetState()
```

#### 状态机映射管理

```nut
// 状态机映射管理器
class StateMachineManager
{
    stateMap = {};
    transitionRules = {};
    
    function registerState(stateName, stateIndex, animIndex, attackIndex)
    {
        stateMap[stateName] <- {
            index = stateIndex,
            animation = animIndex,
            attack = attackIndex
        };
    }
    
    function registerTransition(fromState, toState, condition)
    {
        if (!(fromState in transitionRules)) {
            transitionRules[fromState] <- [];
        }
        
        transitionRules[fromState].append({
            target = toState,
            condition = condition
        });
    }
    
    function setState(obj, stateName)
    {
        if (!(stateName in stateMap)) {
            print("错误：未知状态 " + stateName);
            return false;
        }
        
        local state = stateMap[stateName];
        
        // 设置状态
        obj.sq_SetState(state.index, SUBSTATE_NORMAL);
        
        // 设置对应的动画
        if (state.animation != -1) {
            obj.sq_SetCurrentAnimation(state.animation);
        }
        
        // 设置对应的攻击信息
        if (state.attack != -1) {
            obj.sq_SetCurrentAttackInfo(state.attack);
        }
        
        print("状态切换：" + stateName + " (索引:" + state.index + ")");
        return true;
    }
    
    function checkTransitions(obj, currentStateName)
    {
        if (!(currentStateName in transitionRules)) {
            return false;
        }
        
        foreach (transition in transitionRules[currentStateName]) {
            if (transition.condition(obj)) {
                setState(obj, transition.target);
                return true;
            }
        }
        
        return false;
    }
}

// 全局状态机管理器
local g_StateMgr = StateMachineManager();

// 注册状态映射
g_StateMgr.registerState("ready", STATE_READY, 185, -1);
g_StateMgr.registerState("attack", STATE_ATTACK, 186, 0);
g_StateMgr.registerState("end", STATE_END, 187, -1);

// 注册状态转换规则
g_StateMgr.registerTransition("ready", "attack", function(obj) {
    return obj.sq_IsEnd();
});

g_StateMgr.registerTransition("attack", "end", function(obj) {
    return obj.sq_IsEnd();
});

// 使用示例
function onProc_MomentarySlash(obj)
{
    local currentState = obj.sq_GetState();
    local stateName = getStateName(currentState);
    
    // 检查状态转换
    g_StateMgr.checkTransitions(obj, stateName);
}
```

## 🎮 NUT脚本映射的实际应用

### 1. **技能组合映射**

```nut
// 技能组合映射管理
class SkillComboManager
{
    comboChains = {};
    currentCombo = "";
    comboStep = 0;
    
    function registerCombo(comboName, steps)
    {
        comboChains[comboName] <- steps;
    }
    
    function startCombo(obj, comboName)
    {
        if (!(comboName in comboChains)) {
            return false;
        }
        
        currentCombo = comboName;
        comboStep = 0;
        
        executeComboStep(obj);
        return true;
    }
    
    function nextComboStep(obj)
    {
        if (currentCombo == "") return false;
        
        comboStep++;
        
        if (comboStep >= comboChains[currentCombo].len()) {
            // 连招结束
            currentCombo = "";
            comboStep = 0;
            return false;
        }
        
        executeComboStep(obj);
        return true;
    }
    
    function executeComboStep(obj)
    {
        local step = comboChains[currentCombo][comboStep];
        
        // 设置动画
        obj.sq_SetCurrentAnimation(step.animation);
        
        // 设置攻击信息
        if ("attack" in step) {
            obj.sq_SetCurrentAttackInfo(step.attack);
        }
        
        // 设置状态
        obj.sq_SetState(step.state, SUBSTATE_NORMAL);
        
        print("连招步骤：" + currentCombo + " 第" + (comboStep + 1) + "步");
    }
}

// 全局连招管理器
local g_ComboMgr = SkillComboManager();

// 注册连招映射
g_ComboMgr.registerCombo("triple_slash", [
    { animation = 10, attack = 0, state = STATE_ATTACK1 },
    { animation = 11, attack = 1, state = STATE_ATTACK2 },
    { animation = 12, attack = 2, state = STATE_ATTACK3 }
]);

// 使用示例
function onKeyDown_ComboAttack(obj, key)
{
    if (key == KEY_ATTACK) {
        if (g_ComboMgr.currentCombo == "") {
            g_ComboMgr.startCombo(obj, "triple_slash");
        } else {
            g_ComboMgr.nextComboStep(obj);
        }
    }
}
```

### 2. **条件映射系统**

```nut
// 条件映射系统
class ConditionalMappingSystem
{
    mappingRules = [];
    
    function addMappingRule(condition, mapping)
    {
        mappingRules.append({
            condition = condition,
            mapping = mapping
        });
    }
    
    function applyMapping(obj, context)
    {
        foreach (rule in mappingRules) {
            if (rule.condition(obj, context)) {
                executeMapping(obj, rule.mapping);
                return true;
            }
        }
        
        return false;
    }
    
    function executeMapping(obj, mapping)
    {
        if ("animation" in mapping) {
            obj.sq_SetCurrentAnimation(mapping.animation);
        }
        
        if ("attack" in mapping) {
            obj.sq_SetCurrentAttackInfo(mapping.attack);
        }
        
        if ("layer" in mapping) {
            obj.sq_SetCurrentLayer(mapping.layer);
        }
        
        if ("state" in mapping) {
            obj.sq_SetState(mapping.state, SUBSTATE_NORMAL);
        }
    }
}

// 全局条件映射系统
local g_ConditionalMgr = ConditionalMappingSystem();

// 添加映射规则
g_ConditionalMgr.addMappingRule(
    // 条件：角色血量低于30%
    function(obj, context) {
        return obj.sq_GetHPRate() < 0.3;
    },
    // 映射：使用特殊动画和攻击
    {
        animation = 200,  // 绝望攻击动画
        attack = 5,       // 高伤害攻击信息
        layer = 200       // 红色光效图层
    }
);

g_ConditionalMgr.addMappingRule(
    // 条件：装备特定武器
    function(obj, context) {
        return obj.sq_GetWeaponType() == WEAPON_LIGHTSABER;
    },
    // 映射：使用光剑专用效果
    {
        animation = 250,  // 光剑动画
        attack = 3,       // 光属性攻击
        layer = 250       // 光效图层
    }
);

// 使用示例
function onSetState_ConditionalAttack(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        local context = {
            skillLevel = obj.sq_GetSkillLevel(SKILL_MOMENTARY_SLASH),
            weaponType = obj.sq_GetWeaponType()
        };
        
        // 应用条件映射
        if (!g_ConditionalMgr.applyMapping(obj, context)) {
            // 使用默认映射
            obj.sq_SetCurrentAnimation(186);
            obj.sq_SetCurrentAttackInfo(0);
        }
    }
}
```

### 3. **动态资源映射**

```nut
// 动态资源映射管理器
class DynamicResourceManager
{
    resourceCache = {};
    loadingQueue = [];
    
    function preloadResources(resourceList)
    {
        foreach (resource in resourceList) {
            if (!(resource.id in resourceCache)) {
                loadingQueue.append(resource);
            }
        }
        
        processLoadingQueue();
    }
    
    function processLoadingQueue()
    {
        while (loadingQueue.len() > 0) {
            local resource = loadingQueue.remove(0);
            loadResource(resource);
        }
    }
    
    function loadResource(resource)
    {
        switch (resource.type) {
            case "animation":
                resourceCache[resource.id] <- loadAnimationResource(resource.path);
                break;
            case "attack":
                resourceCache[resource.id] <- loadAttackResource(resource.path);
                break;
            case "layer":
                resourceCache[resource.id] <- loadLayerResource(resource.path);
                break;
        }
        
        print("资源加载完成：" + resource.id);
    }
    
    function getResource(resourceId)
    {
        return (resourceId in resourceCache) ? resourceCache[resourceId] : null;
    }
    
    function applyResourceMapping(obj, mappingConfig)
    {
        foreach (key, resourceId in mappingConfig) {
            local resource = getResource(resourceId);
            if (resource != null) {
                switch (key) {
                    case "animation":
                        obj.sq_SetCurrentAnimation(resource.index);
                        break;
                    case "attack":
                        obj.sq_SetCurrentAttackInfo(resource.index);
                        break;
                    case "layer":
                        obj.sq_SetCurrentLayer(resource.index);
                        break;
                }
            }
        }
    }
}

// 全局动态资源管理器
local g_ResourceMgr = DynamicResourceManager();

// 预加载技能资源
local skillResources = [
    { id = "slash_ready", type = "animation", path = "momentary_slash_ready.ani" },
    { id = "slash_attack", type = "animation", path = "momentary_slash_attack.ani" },
    { id = "slash_damage", type = "attack", path = "momentary_slash.atk" },
    { id = "slash_effect", type = "layer", path = "momentary_slash_effect.img" }
];

g_ResourceMgr.preloadResources(skillResources);

// 使用示例
function onSetState_DynamicMapping(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        local mapping = {
            animation = "slash_attack",
            attack = "slash_damage",
            layer = "slash_effect"
        };
        
        g_ResourceMgr.applyResourceMapping(obj, mapping);
    }
}
```

## ⚠️ NUT映射关系中的关键注意事项

### 1. **索引同步准确性**

```
❌ 错误：索引不匹配
NUT: obj.sq_SetCurrentAnimation(185);
CHR: 索引185对应的是其他技能的动画

✅ 正确：索引完全匹配
NUT: obj.sq_SetCurrentAnimation(185);
CHR: 索引185对应momentary_slash_ready.ani
```

#### 索引验证工具

```nut
// 索引映射验证工具
class IndexValidator
{
    function validateAnimationIndex(obj, index, expectedAnimation)
    {
        local actualAnimation = obj.sq_GetAnimationName(index);
        if (actualAnimation != expectedAnimation) {
            print("动画索引不匹配：");
            print("  期望：" + expectedAnimation);
            print("  实际：" + actualAnimation);
            return false;
        }
        return true;
    }
    
    function validateAttackIndex(obj, index, expectedDamage)
    {
        local actualDamage = obj.sq_GetAttackDamage(index);
        if (actualDamage != expectedDamage) {
            print("攻击索引不匹配：");
            print("  期望伤害：" + expectedDamage);
            print("  实际伤害：" + actualDamage);
            return false;
        }
        return true;
    }
    
    function validateAllMappings(obj, mappings)
    {
        local allValid = true;
        
        foreach (mapping in mappings) {
            if ("animation" in mapping) {
                if (!validateAnimationIndex(obj, mapping.animation.index, mapping.animation.name)) {
                    allValid = false;
                }
            }
            
            if ("attack" in mapping) {
                if (!validateAttackIndex(obj, mapping.attack.index, mapping.attack.damage)) {
                    allValid = false;
                }
            }
        }
        
        return allValid;
    }
}

// 全局索引验证器
local g_IndexValidator = IndexValidator();

// 使用示例
function onSkillInit_MomentarySlash(obj)
{
    local mappings = [
        {
            animation = { index = 185, name = "momentary_slash_ready" },
            attack = { index = 0, damage = 100 }
        },
        {
            animation = { index = 186, name = "momentary_slash_attack" },
            attack = { index = 0, damage = 100 }
        }
    ];
    
    if (!g_IndexValidator.validateAllMappings(obj, mappings)) {
        print("警告：技能映射验证失败");
    }
}
```

### 2. **状态同步管理**

```
❌ 错误：状态不同步
NUT设置了动画，但没有同步设置对应的状态

✅ 正确：状态完全同步
动画、攻击信息、图层、状态机都保持同步
```

#### 状态同步管理器

```nut
// 状态同步管理器
class StateSyncManager
{
    syncGroups = {};
    
    function createSyncGroup(groupName, components)
    {
        syncGroups[groupName] <- components;
    }
    
    function syncState(obj, groupName, index)
    {
        if (!(groupName in syncGroups)) {
            print("错误：未找到同步组 " + groupName);
            return false;
        }
        
        local components = syncGroups[groupName];
        
        // 同步所有组件
        if ("animation" in components) {
            obj.sq_SetCurrentAnimation(components.animation[index]);
        }
        
        if ("attack" in components) {
            obj.sq_SetCurrentAttackInfo(components.attack[index]);
        }
        
        if ("layer" in components) {
            obj.sq_SetCurrentLayer(components.layer[index]);
        }
        
        if ("state" in components) {
            obj.sq_SetState(components.state[index], SUBSTATE_NORMAL);
        }
        
        print("状态同步完成：" + groupName + " 索引 " + index);
        return true;
    }
}

// 全局状态同步管理器
local g_SyncMgr = StateSyncManager();

// 创建同步组
g_SyncMgr.createSyncGroup("momentary_slash", {
    animation = [185, 186, 187],  // 准备、攻击、结束动画
    attack = [-1, 0, -1],         // 只有攻击阶段有攻击信息
    layer = [185, 186, 187],      // 对应的图层
    state = [STATE_READY, STATE_ATTACK, STATE_END]  // 对应的状态
});

// 使用示例
function onSetState_SyncedTransition(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        local phase = obj.sq_GetIntData(PHASE_INDEX);
        g_SyncMgr.syncState(obj, "momentary_slash", phase);
    }
}
```

### 3. **错误处理和回退机制**

```
❌ 错误：没有错误处理
映射失败时程序崩溃或行为异常

✅ 正确：完善的错误处理
映射失败时有合理的回退机制
```

#### 错误处理框架

```nut
// 映射错误处理框架
class MappingErrorHandler
{
    fallbackMappings = {};
    errorLog = [];
    
    function setFallbackMapping(mappingType, fallbackValue)
    {
        fallbackMappings[mappingType] <- fallbackValue;
    }
    
    function safeSetAnimation(obj, index)
    {
        try {
            obj.sq_SetCurrentAnimation(index);
            return true;
        } catch (error) {
            logError("动画设置失败", "索引: " + index, error);
            
            if ("animation" in fallbackMappings) {
                obj.sq_SetCurrentAnimation(fallbackMappings.animation);
            }
            
            return false;
        }
    }
    
    function safeSetAttackInfo(obj, index)
    {
        try {
            obj.sq_SetCurrentAttackInfo(index);
            return true;
        } catch (error) {
            logError("攻击信息设置失败", "索引: " + index, error);
            
            if ("attack" in fallbackMappings) {
                obj.sq_SetCurrentAttackInfo(fallbackMappings.attack);
            }
            
            return false;
        }
    }
    
    function logError(type, details, error)
    {
        local errorEntry = {
            type = type,
            details = details,
            error = error,
            timestamp = getCurrentTime()
        };
        
        errorLog.append(errorEntry);
        print("映射错误：" + type + " - " + details);
        
        // 限制错误日志大小
        if (errorLog.len() > 100) {
            errorLog.remove(0);
        }
    }
    
    function getErrorReport()
    {
        return errorLog;
    }
}

// 全局错误处理器
local g_ErrorHandler = MappingErrorHandler();

// 设置回退映射
g_ErrorHandler.setFallbackMapping("animation", 0);  // 默认待机动画
g_ErrorHandler.setFallbackMapping("attack", 0);     // 默认攻击信息

// 使用示例
function onSetState_SafeMapping(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        // 安全设置动画
        if (!g_ErrorHandler.safeSetAnimation(obj, 186)) {
            print("使用回退动画");
        }
        
        // 安全设置攻击信息
        if (!g_ErrorHandler.safeSetAttackInfo(obj, 0)) {
            print("使用回退攻击信息");
        }
    }
}
```

## 🔧 高级NUT映射技巧

### 1. **映射缓存优化**

```nut
// 映射缓存系统
class MappingCache
{
    cache = {};
    hitCount = 0;
    missCount = 0;
    
    function getCachedMapping(key)
    {
        if (key in cache) {
            hitCount++;
            return cache[key];
        }
        
        missCount++;
        return null;
    }
    
    function setCachedMapping(key, mapping)
    {
        cache[key] <- mapping;
    }
    
    function getHitRate()
    {
        local total = hitCount + missCount;
        return (total > 0) ? (hitCount.tofloat() / total) : 0.0;
    }
    
    function clearCache()
    {
        cache.clear();
        hitCount = 0;
        missCount = 0;
    }
}

// 全局映射缓存
local g_MappingCache = MappingCache();
```

### 2. **映射性能监控**

```nut
// 映射性能监控器
class MappingProfiler
{
    timings = {};
    
    function startTiming(operation)
    {
        timings[operation] <- getCurrentTime();
    }
    
    function endTiming(operation)
    {
        if (operation in timings) {
            local elapsed = getCurrentTime() - timings[operation];
            print("映射操作 " + operation + " 耗时: " + elapsed + "ms");
            delete timings[operation];
            return elapsed;
        }
        return 0;
    }
    
    function profileMapping(obj, mappingFunc, operationName)
    {
        startTiming(operationName);
        local result = mappingFunc(obj);
        endTiming(operationName);
        return result;
    }
}

// 全局性能监控器
local g_Profiler = MappingProfiler();

// 使用示例
function onSetState_ProfiledMapping(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        g_Profiler.profileMapping(obj, function(o) {
            o.sq_SetCurrentAnimation(186);
            o.sq_SetCurrentAttackInfo(0);
            o.sq_SetCurrentLayer(186);
            return true;
        }, "complete_mapping");
    }
}
```

### 3. **映射模板系统**

```nut
// 映射模板系统
class MappingTemplate
{
    templates = {};
    
    function registerTemplate(name, template)
    {
        templates[name] <- template;
    }
    
    function applyTemplate(obj, templateName, parameters)
    {
        if (!(templateName in templates)) {
            print("错误：未找到模板 " + templateName);
            return false;
        }
        
        local template = templates[templateName];
        
        // 应用模板映射
        foreach (key, value in template) {
            local finalValue = (typeof(value) == "function") ? value(parameters) : value;
            
            switch (key) {
                case "animation":
                    obj.sq_SetCurrentAnimation(finalValue);
                    break;
                case "attack":
                    obj.sq_SetCurrentAttackInfo(finalValue);
                    break;
                case "layer":
                    obj.sq_SetCurrentLayer(finalValue);
                    break;
                case "state":
                    obj.sq_SetState(finalValue, SUBSTATE_NORMAL);
                    break;
            }
        }
        
        return true;
    }
}

// 全局模板系统
local g_TemplateMgr = MappingTemplate();

// 注册模板
g_TemplateMgr.registerTemplate("basic_attack", {
    animation = function(params) { return params.baseIndex + 0; },
    attack = function(params) { return params.attackLevel; },
    layer = function(params) { return params.baseIndex + 0; },
    state = STATE_ATTACK
});

g_TemplateMgr.registerTemplate("skill_cast", {
    animation = function(params) { return params.baseIndex + 1; },
    attack = function(params) { return params.skillLevel; },
    layer = function(params) { return params.baseIndex + 1; },
    state = STATE_SKILL
});

// 使用示例
function onSetState_TemplateMapping(obj, state, datas, isResetTimer)
{
    if (isResetTimer) {
        local params = {
            baseIndex = 185,
            attackLevel = 0,
            skillLevel = obj.sq_GetSkillLevel(SKILL_MOMENTARY_SLASH)
        };
        
        g_TemplateMgr.applyTemplate(obj, "skill_cast", params);
    }
}
```

## 📈 性能优化建议

### 1. **映射预计算**

```nut
// 映射预计算系统
function precomputeMappings(skillData)
{
    local precomputed = {};
    
    foreach (level, data in skillData) {
        precomputed[level] <- {
            animation = calculateAnimationIndex(data),
            attack = calculateAttackIndex(data),
            layer = calculateLayerIndex(data)
        };
    }
    
    return precomputed;
}

// 使用预计算的映射
local g_PrecomputedMappings = precomputeMappings(SKILL_DATA);
```

### 2. **批量映射操作**

```nut
// 批量映射操作
function batchSetMappings(obj, mappings)
{
    // 一次性设置所有映射，减少函数调用开销
    obj.sq_BatchSetMappings(mappings);
}
```

### 3. **映射延迟加载**

```nut
// 映射延迟加载
function lazyLoadMapping(obj, mappingKey)
{
    if (!isMappingLoaded(mappingKey)) {
        loadMapping(mappingKey);
    }
    
    return getMapping(mappingKey);
}
```

## 🎯 实战开发流程

### 步骤1：设计映射架构

1. 分析技能需求和复杂度
2. 设计映射层次结构
3. 确定索引分配策略

### 步骤2：实现核心映射

1. 创建基础映射函数
2. 实现状态机逻辑
3. 添加错误处理机制

### 步骤3：优化映射性能

1. 实现映射缓存
2. 添加性能监控
3. 优化关键路径

### 步骤4：测试映射正确性

1. 验证索引同步
2. 测试状态转换
3. 检查错误处理

### 步骤5：维护和扩展

1. 监控映射性能
2. 更新映射规则
3. 扩展新功能

## 💡 调试技巧

### 1. **映射状态可视化**

```nut
function debugMappingState(obj)
{
    print("=== 映射状态调试 ===");
    print("当前动画索引：" + obj.sq_GetCurrentAnimationIndex());
    print("当前攻击信息索引：" + obj.sq_GetCurrentAttackInfoIndex());
    print("当前图层索引：" + obj.sq_GetCurrentLayerIndex());
    print("当前状态：" + obj.sq_GetState());
    print("==================");
}
```

### 2. **映射历史追踪**

```nut
// 映射历史追踪器
class MappingTracker
{
    history = [];
    maxHistory = 50;
    
    function trackMapping(type, oldValue, newValue)
    {
        history.append({
            type = type,
            old = oldValue,
            new = newValue,
            timestamp = getCurrentTime()
        });
        
        if (history.len() > maxHistory) {
            history.remove(0);
        }
    }
    
    function printHistory()
    {
        print("=== 映射历史 ===");
        foreach (entry in history) {
            print(entry.type + ": " + entry.old + " → " + entry.new + " (" + entry.timestamp + ")");
        }
        print("===============");
    }
}

// 全局映射追踪器
local g_MappingTracker = MappingTracker();
```

### 3. **映射一致性检查**

```nut
function checkMappingConsistency(obj)
{
    local animIndex = obj.sq_GetCurrentAnimationIndex();
    local layerIndex = obj.sq_GetCurrentLayerIndex();
    
    if (animIndex != layerIndex) {
        print("警告：动画和图层索引不一致");
        print("动画索引：" + animIndex);
        print("图层索引：" + layerIndex);
        return false;
    }
    
    return true;
}
```

## 📝 总结

NUT脚本的映射关系是DNF技能系统的**核心枢纽**，正确理解和运用映射机制是开发高质量技能的基础。

### 关键要点

1. **统一调度**：NUT脚本作为中央调度器，协调所有文件的协作
2. **索引管理**：严格管理各种索引的同步和一致性
3. **状态控制**：通过状态机实现复杂的技能逻辑
4. **错误处理**：建立完善的错误处理和回退机制

### 最佳实践

1. 建立完整的映射管理系统
2. 实现自动化的同步验证
3. 优化映射操作的性能
4. 保持良好的代码组织结构

掌握NUT脚本的映射机制，是成为DNF技能开发专家的必经之路！