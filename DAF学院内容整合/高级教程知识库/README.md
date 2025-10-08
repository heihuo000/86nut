# DNF高级教程知识库

## 📚 简介

本知识库整理了DAF学院关于DNF高级功能修改的教程和资料，涵盖ACT行为系统、ANI动画系统、NUT脚本系统、UI界面系统等高级内容。通过本知识库，您可以深入了解DNF高级功能的内部机制和修改方法。

## 🎯 核心功能

根据DAF学院的教程，DNF高级教程主要包含以下几个方面：

1. **ACT行为系统** - 控制怪物和角色的行为动画
2. **ANI动画系统** - 管理游戏中的动画效果
3. **NUT脚本系统** - 实现复杂的技能和功能逻辑
4. **UI界面系统** - 定制游戏界面和交互

## 🏗️ 高级文件结构

### 核心文件类型
- `*.act` - 行为系统文件
- `*.ani` - 动画文件
- `*.nut` - 脚本文件
- `*.ui` - 界面文件
- `*.ptl` - 粒子特效文件
- `*.img` - 图像文件

### 主要目录结构
- `Script/monster/` - 怪物行为文件
- `Animation/` - 动画文件
- `Script/skill/` - 技能脚本
- `UI/` - 界面文件
- `Particle/` - 粒子特效

## 🔧 ACT行为系统

### ACT文件结构
```
[MOTION]
    [BASE ANI]
        `../animation/Throw.ani`  // 调用的ani动画
    [SOUND]
        `THROW_STONE` 0           // 音头投掷音效
    [/SOUND]
    [SPEECH]
        `打死你個白嫖怪！` 1 33   // 怪物说话内容
        `嚶嚶嚶` 2 33            // 多条说话内容
    [/SPEECH]
[/MOTION]

[TRIGGER]
    [FRAME]
        2 2                      // 第二帧执行
    [DO BEHAVIOR]
    [ME]
        0
[/TRIGGER]

[BEHAVIOR]
[CREATE PASSIVEOBJECT]
[INDEX]
    8636                         // 特效编号
[PARTICLE FILENAME]
    `../Particle/speed.ptl`      // 特效轨迹文件
[LEVEL]
    60                           // 特效等级
[POS]
    100 0 0                      // XYZ坐标
[/CREATE PASSIVEOBJECT]
[/BEHAVIOR]
```

### ACT功能详解
1. **MOTION段** - 定义动作、音效、说话内容
2. **TRIGGER段** - 定义触发条件和帧数检查
3. **BEHAVIOR段** - 定义具体行为和特效创建
4. **SPEECH内容** - 怪物说话文本（需用繁体）

## 🔧 ANI动画系统

### ANI文件基础
- ANI文件控制角色和物品的动画效果
- 与IMG图像文件配合使用
- 通过UI和装备系统调用

### ANI制作要点
1. **文件命名** - 新增文件不能与原文件名冲突
2. **路径关联** - PVF指向与NPK内路径要对应
3. **导入导出** - 遵循从哪来回哪去原则

### ANI应用场景
- 称称动画效果
- 装备外观动画
- 角色动作动画
- 特效动画

## 🔧 NUT脚本系统

### NUT脚本基础
NUT是基于Squirrel语言的脚本系统，用于实现复杂的技能逻辑：

```
ENUM_ICE_CRASH_SUBSTATE_START <- 0;    // 状态枚举定义
ENUM_ICE_CRASH_SUBSTATE_LOOP  <- 1;
ENUM_ICE_CRASH_SUBSTATE_END   <- 3;

function checkExecutableSkill_IceCrash(obj)
{
    if(!obj) return false;
    
    local b_useskill = obj.sq_IsUseSkill(SKILL_ICE_CRASH);
    if(b_useskill) {
        obj.sq_IntVectClear();                    // 清空全局数组
        obj.sq_IntVectPush(ENUM_ICE_CRASH_SUBSTATE_START); // 放入状态
        obj.sq_AddSetStatePacket(STATE_ICE_CRASH , STATE_PRIORITY_USER, true); // 跳转状态
        return true;
    }
    return false;
}

function onSetState_IceCrash(obj, state, datas, isResetTimer)
{
    if(!obj) return;
    
    local level = sq_GetSkillLevel(obj, SKILL_ICE_CRASH);           // 获取技能等级
    local spinDistance = sq_GetIntData(obj, SKILL_ICE_CRASH, 0, level);  // 静态数据
    local spinSpeed = sq_GetIntData(obj, SKILL_ICE_CRASH, 1, level);     // 静态数据
    local spinTime = (spinDistance.tofloat()/spinSpeed.tofloat()) * 1000.0; // 计算时间
}
```

### NUT函数类型
1. **checkExecutableSkill_** - 检查技能是否可执行
2. **checkCommandEnable_** - 检查技能命令是否可用
3. **onSetState_** - 设置状态时执行
4. **onEndState_** - 结束状态时执行
5. **onUpdate_** - 更新状态时执行

## 🔧 UI界面系统

### UI文件路径参考
- `ui/actionsample/2.selectdungeon/selectdungeon.ui` - 副本难度选择
- `ui/advancealtar/advancealtarrewardwindow.ui` - 守护者祭坛挑战界面
- `ui/amplify/amplifyselectwindow.ui` - 增幅界面
- `ui/avatrarchangeoption/avatrarchangeoptionwindow.ui` - 时装变更界面
- `ui/channel/channels.ui` - 频道界面
- `ui/characterinfowindow/characterinfo.ui` - 个人信息界面

### UI修改要点
1. **界面布局** - 控制元素位置和大小
2. **功能关联** - 界面按钮与功能的关联
3. **显示逻辑** - 界面显示条件和规则
4. **样式设置** - 颜色、字体、大小等

## 📋 高级技巧

### ACT高级技巧
1. **多特效实现** - 并排写多个CREATE PASSIVEOBJECT
2. **坐标调整** - 精确控制特效位置
3. **音效同步** - 匹配动作和音效

### ANI高级技巧
1. **动画融合** - 实现平滑动画过渡
2. **残影效果** - 创建动态特效
3. **贴图替换** - 修改外观效果

### NUT高级技巧
1. **状态管理** - 维护技能执行状态
2. **数据获取** - 从不同来源获取参数
3. **函数合并** - 优化代码结构

### UI高级技巧
1. **界面适配** - 适配不同分辨率
2. **动态效果** - 实现界面动画
3. **交互优化** - 优化用户交互

## ⚠️ 注意事项

1. **备份策略** - 高级修改风险较高，务必备份原始文件
2. **测试验证** - 在测试环境中充分验证修改
3. **兼容性检查** - 确保修改不与其他系统冲突
4. **性能影响** - 注意高级功能对游戏性能的影响

## 🔍 实践应用

### 技能创建流程
1. 创建NUT脚本文件
2. 配置ACT行为文件
3. 制作ANI动画文件
4. 调整UI界面显示

### 特效添加流程
1. 设计PTL粒子特效
2. 创建ACT行为触发
3. 配置ANI动画效果
4. 测试整体效果

## 🌐 相关链接

- DNF文件知识库主目录
- PVF文件结构详解
- 各系统修改参考

## 📈 实践案例

本知识库包含多个实践案例，涵盖：
- ACT行为系统应用
- ANI动画制作
- NUT脚本开发
- UI界面定制

---
*本知识库基于DAF学院高级教程整理，旨在为DNF开发者提供全面的高级功能修改参考*