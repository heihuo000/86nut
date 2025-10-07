# 拔刀斩模组集成操作步骤

#### 技能添加及修改行为准则(非常重要!)
- 1. 修改和替换技能时先确认技能所属角色
- 2. 技能有冲突或者重复情况优先使用修改旧技能方案,不可盲目添加复制文件到pvf,以免出现两个同样的技能,或者其他的冲突
- 3. 执行分析需要修改的nut脚本位置,采用修改代码形式,除非确认这个nut脚本完全不在的情况下可以添加,不可直接替换原有的nut,避免其他技能或者角色功能收到影响
- 4. 分析所有关联到的文件依赖,进行知识不从参考,了解相关技术在开始工作,需要修改还是要替换,有些文件只能修改不可完全替换,必须提取要替换的内容进行小范围替换
- x. 对于sqr的关系和机制一定要理解清晰(可参考NUT文件知识库),从sqr/loadstate.nut文件入口 可用识别 sq_RunScript方法 追踪最用用到的依赖直到了解各个文件加载线路
- 5. 需要参考资料时可从 C:\Users\sen\Desktop\nut脚本\86nut\DNF文件知识库\快速导航.md 找到相关的技术参考
- 6. 关于pvf mcp工具的使用注意,搜索文件是尽量使用 pvfutility/search_pvf工具 或者 pvfutility/ai_smart_search工具,搜索不到内容是可以根据工具的参数进行调整搜索,如 search_type=2.
- 7. 添加文件是有些文件是要注册ID的要适当注册号ID不要ID冲突
## 🔍 当前PVF文件分析结果

### 现有拔刀斩技能状态
- `skill/swordman/momentaryslash.skl` - 鬼剑士(男)拔刀斩技能

### 职业目录对应关系
- `swordman` - 鬼剑士(男)系职业
- `atswordman` - 女鬼剑系职业  
- `demonicswordman` - 黑暗武士系职业
- `fighter` - 格斗家(女)系职业
- `atfighter` - 格斗家(男)系职业
- `gunner` - 神枪手(男)系职业
- `atgunner` - 神枪手(女)系职业
- `mage` - 魔法师(女)系职业
- `atmage` - 魔法师(男)系职业
- `priest` - 圣职者系职业
- `thief` - 暗夜使者系职业

### 现有技能配置详情
```
技能名称: 拔刀斩
技能描述: 拔刀并快速向周围敌人击出强大威力的斩击
所需等级: 35级
最大等级: 70级
指令: ←↓→ + Z
冷却时间: 15秒
消耗MP: 110-924 (等级递增)
```

## 🎯 集成方案选择

### 方案A: 差异化集成 (推荐)
将模组文件重命名避免冲突，保持原有功能的同时添加增强版本。

**实施步骤**:
1. **差异化文件重命名**
   - 将模组技能重命名为 `momentaryslash_enhanced.skl`
   - 修改技能ID避免冲突
   - 调整相关引用路径

2. **渐进式集成**
   - 先集成NUT脚本
   - 再集成被动对象
   - 最后集成技能文件

### 方案B: 选择性功能集成
仅集成部分功能模块，降低复杂度。

**实施策略**:
1. **提取核心功能**
   - 仅集成NUT脚本增强
   - 保留原有技能文件
   - 添加新的被动对象

2. **功能模块化**
   - 将模组功能拆分为独立模块
   - 可选择性启用特定功能

### 方案C: 完全替换集成
直接覆盖现有文件，获得完整的模组功能。

## 🛠️ 方案A: 差异化集成操作步骤

### 第一步: 环境准备
```powershell
# 检查PVF工具可用性
pvfutility --version

# 验证当前PVF文件完整性
pvfutility verify current.pvf

# 创建工作目录
mkdir pvf_integration_workspace
cd pvf_integration_workspace
```

## 3. 文件依赖关系分析

### 3.1 模组文件结构分析
基于对拔刀斩模组的详细分析，文件结构如下：

**NUT脚本文件**（位于 `sqr/` 目录）：
- `momentaryslash.nut` - 主技能逻辑，处理拔刀斩技能的状态设置、动画播放、音效、被动对象创建
- `po_swordman_baynk.nut` - 被动对象控制器，引用多个子脚本
- `baynk/setcustomdata.nut` - 设置被动对象的动画、音效、攻击信息等
- `baynk/onattack.nut` - 处理被动对象攻击逻辑，根据武器类型播放音效
- `baynk/setstate.nut` - 状态设置函数（当前为空）


**被动对象文件**（位于 `passiveobject/` 目录）：
- `baynk/swordman_baynk.obj` - 定义 `Baynk_Swordman_Passive_Object` 被动对象

**技能文件**（位于 `skill/` 目录）：
- `swordman/momentaryslash.skl` - 拔刀斩技能定义

**角色文件**（位于 `character/` 目录）：
- `swordman/swordman.chr` - 鬼剑士角色定义

**装备文件**（位于 `equipment/` 目录）：
- `character/swordman.lay` - 鬼剑士装备层定义

### 3.2 PVF现有文件检查结果
通过PVF搜索发现：
- **存在的文件**：
  - `passiveobject/baynk/swordman_baynk.obj` - 已存在拔刀斩被动对象
  - `skill/swordman/momentaryslash.skl` - 已存在拔刀斩技能文件
  - `character/swordman/swordman.chr` - 已存在鬼剑士角色文件
  - `equipment/character/swordman.lay` - 已存在鬼剑士装备层文件
  - `skill/swordmanskill.lst` - 已存在鬼剑士技能列表

- **缺失的文件**：
  - `sqr/character/swordman_load_state.nut` - 鬼剑士状态加载文件（需要创建）
  - `sqr/common.nut` - 通用函数文件（需要创建）
  - 所有模组NUT脚本文件（需要添加）

### 3.3 核心依赖关系
1. **技能注册链**：
   ```
   swordman_load_state.nut → momentaryslash.nut → po_swordman_baynk.nut → baynk子脚本
   ```

2. **被动对象链**：
   ```
   passiveobject.lst → swordman_baynk.obj → 攻击信息文件
   ```

3. **动画链**：
   ```
   swordman.chr → swordman.lay → 动画文件
   ```

## 4. 具体修改位置确定

### 4.1 需要创建的文件
1. **`sqr/character/swordman_load_state.nut`** - 新建文件
   ```nut
   // 需要添加的内容（基于代码添加.txt）：
   IRDSQRCharacter.pushScriptFiles("character/swordman/passive_skill_swordman.nut");  
   IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslash", 23, 9);
   IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslashre", 250, -1);
   IRDSQRCharacter.pushPassiveObj("baynk/po_swordman_baynk.nut", 24399);
   ```

2. **`sqr/common.nut`** - 新建文件
   - 包含 `SMals_ani`、`RemoveAllAnimation`、`SkillSizeSettings` 等通用函数

### 4.2 需要修改的现有文件
1. **`character/swordman/swordman.chr`** - 在 `[etc motion]` 标签中添加：
   ```
   `Animation/momentaryslashre_ready.ani`
   `Animation/momentaryslashre_attack.ani`
   ```

2. **`equipment/character/swordman.lay`** - 在 `[etc motion]` 标签中添加：
   ```
   `%s/momentaryslashre_ready.ani`
   `%s/momentaryslashre_attack.ani`
   ```

3. **`passiveobject/passiveobject.lst`** - 添加被动对象注册：
   ```
   24399	`baynk/swordman_baynk.obj`
   ```

### 4.3 需要复制的模组文件
- 所有 `sqr/` 目录下的NUT文件
- `passiveobject/baynk/swordman_baynk.obj`（如果与现有不同）

## 5. 具体集成步骤

### 5.1 文件复制阶段
1. 复制模组 `sqr/` 目录下所有NUT文件到PVF对应位置
2. 检查并更新 `passiveobject/baynk/swordman_baynk.obj`

### 5.2 文件修改阶段
1. 创建 `sqr/character/swordman_load_state.nut`
2. 创建 `sqr/common.nut`
3. 修改 `character/swordman/swordman.chr`
4. 修改 `equipment/character/swordman.lay`
5. 修改 `passiveobject/passiveobject.lst`

### 5.3 测试验证阶段
- 游戏内功能测试
- 兼容性检查

### 第二步: 文件预处理

#### 2.1 修改技能文件
编辑 `拔刀斩\skill\swordman\momentaryslash.skl`:

```
# 原始内容
[name]
	`拔刀斩`

# 修改为
[name]
	`拔刀斩·改`
```

将文件重命名为 `momentaryslash_enhanced.skl`

**注意**: 此路径适用于鬼剑士(男)系职业。如需支持其他职业系：
- 女鬼剑系：`skill/atswordman/momentaryslash.skl`
- 黑暗武士系：`skill/demonicswordman/momentaryslash.skl`

#### 2.2 修改技能ID
在技能文件中查找并修改技能ID:
```
# 查找类似这样的行并修改
# 原始: 技能ID 9
# 修改为: 技能ID 9001
```

#### 2.3 调整NUT脚本引用
编辑 `拔刀斩\sqr\character\swordman\momentaryslash\momentaryslash.nut`:

查找所有对技能ID的引用并更新:
```nut
// 查找类似的函数名并修改
// 原始: onSetState_swordman_momentaryslashre
// 修改为: onSetState_swordman_momentaryslashenhanced

// 查找技能ID引用并修改
// 原始: obj.sq_IsEnterSkill(9)
// 修改为: obj.sq_IsEnterSkill(9001)
```

#### 2.4 修改被动对象文件
编辑 `拔刀斩\passiveobject\baynk\swordman_baynk.obj`:

```
# 修改对象名称
[name]
	`Baynk_Swordman_Enhanced_Passive_Object`

# 更新攻击信息路径
[etc attack info]
	``
	`character/swordman/attackinfo/momentaryslash/momentaryslash_enhanced.atk`
	`character/swordman/attackinfo/momentaryslash/momentaryslash_enhanced_katana2.atk`
[/etc attack info]

**注意**: 攻击信息文件路径对应不同职业系：
- 鬼剑士(男)系：`character/swordman/attackinfo/`
- 女鬼剑系：`character/atswordman/attackinfo/`
- 黑暗武士系：`character/demonicswordman/attackinfo/`
```

### 第三步: 文件集成

#### 3.1 集成技能文件
```powershell
# 导入修改后的技能文件
pvfutility import current.pvf skill/swordman/momentaryslash_enhanced.skl
```

#### 3.2 集成NUT脚本
```powershell
# 导入NUT脚本目录
pvfutility import current.pvf sqr/character/swordman/momentaryslash/
```

#### 3.3 集成被动对象
```powershell
# 导入被动对象文件
pvfutility import current.pvf passiveobject/baynk/swordman_baynk.obj
```

#### 3.4 集成攻击信息文件
```powershell
# 如果有新的攻击信息文件，导入它们
pvfutility import current.pvf character/swordman/attackinfo/momentaryslash/
```

#### 3.5 集成动画文件
```powershell
# 导入动画文件
pvfutility import current.pvf character/swordman/effect/animation/momentaryslash/
```

**动画文件路径对应不同职业系**：
- 鬼剑士(男)系：`character/swordman/effect/animation/`
- 女鬼剑系：`character/atswordman/effect/animation/`
- 黑暗武士系：`character/demonicswordman/effect/animation/`

包含文件：
- `charge1.ani` - 蓄力动画1
- `charge2.ani` - 蓄力动画2
- `finish.ani` - 完成动画
- `start.ani` - 开始动画

### 第四步: 角色文件更新

编辑角色文件 `character/swordman/swordman.chr`，添加新技能:

```
# 在技能列表中添加新技能ID
[skill list]
	# ... 现有技能 ...
	9001	# 拔刀斩·改
[/skill list]
```

**注意**: 角色文件路径对应不同职业系：
- 鬼剑士(男)系：`character/swordman/swordman.chr`
- 女鬼剑系：`character/atswordman/atswordman.chr`
- 黑暗武士系：`character/demonicswordman/demonicswordman.chr`

### 第五步: 验证集成
```powershell
# 验证PVF文件完整性
pvfutility verify current.pvf

# 检查技能是否正确加载
pvfutility list current.pvf skill/swordman/
```

## 🛠️ 方案B: 选择性功能集成操作步骤

### 第一步: 仅集成NUT脚本增强
```powershell
# 只导入NUT脚本，不修改原有技能文件
pvfutility import current.pvf sqr/character/swordman/momentaryslash/
```

### 第二步: 添加新的被动对象
```powershell
# 重命名被动对象避免冲突
# 将 swordman_baynk.obj 重命名为 swordman_baynk_enhanced.obj
pvfutility import current.pvf passiveobject/baynk/swordman_baynk_enhanced.obj
```

### 第三步: 更新脚本引用
在NUT脚本中更新被动对象引用:
```nut
// 查找被动对象创建代码并更新ID
// 原始: obj.sq_SendCreatePassiveObjectPacket(24399, ...)
// 修改为: obj.sq_SendCreatePassiveObjectPacket(24400, ...)
```

---

## 🛠️ 方案C: 完全替换集成操作步骤

### 第一步: 直接文件替换
```powershell
# 直接导入所有模组文件
pvfutility import current.pvf skill/swordman/momentaryslash.skl
pvfutility import current.pvf sqr/character/swordman/momentaryslash/
pvfutility import current.pvf passiveobject/baynk/swordman_baynk.obj
```

### 第二步: 更新相关文件
```powershell
# 如果模组包含其他文件，一并导入
pvfutility import current.pvf character/swordman/attackinfo/momentaryslash/
pvfutility import current.pvf animation/character/swordman/
```

---

## 📋 通用后续步骤

### 1. 更新LST文件
如果添加了新文件，需要更新相应的LST索引文件:

```powershell
# 更新技能LST
pvfutility update-lst current.pvf skill/skill.lst

# 更新被动对象LST
pvfutility update-lst current.pvf passiveobject/passiveobject.lst
```

### 2. 重新打包PVF
```powershell
# 重新打包PVF文件
pvfutility repack current.pvf
```

### 3. 最终验证
```powershell
# 最终完整性检查
pvfutility verify current.pvf

# 检查文件结构
pvfutility tree current.pvf
```

---

## 🔧 常用命令参考

### PVF工具命令
```powershell
# 查看PVF内容
pvfutility list current.pvf [path]

# 提取文件
pvfutility extract current.pvf [file_path] [output_path]

# 导入文件
pvfutility import current.pvf [file_path]

# 删除文件
pvfutility delete current.pvf [file_path]

# 验证文件
pvfutility verify current.pvf

# 搜索内容
pvfutility search current.pvf [keyword]
```

### 文件操作命令
```powershell
# 复制文件
Copy-Item source.file destination.file

# 重命名文件
Rename-Item old_name.ext new_name.ext

# 创建目录
New-Item -ItemType Directory -Path "directory_name"

# 查看文件内容
Get-Content file.txt
```

---

## 📝 注意事项

1. **备份重要性**: 在进行任何修改前，务必备份原始PVF文件
2. **版本兼容性**: 确保所有文件版本与当前游戏版本兼容
3. **测试流程**: 每个阶段完成后都要进行测试验证
4. **文件完整性**: 确保所有依赖文件都已正确导入
5. **路径准确性**: 检查所有文件路径是否正确无误
6. **文件路径**: 确保所有路径使用正确的分隔符
7. **编码格式**: 文本文件使用UTF-8编码
8. **字符串格式**: 使用反引号 `` 而不是双引号 ""
9. **缩进格式**: 使用Tab键而不是空格
10. **文件扩展名**: 确保文件扩展名正确

## 🎮 职业系统说明

### DNF职业目录结构对照表

| 职业系 | 中文名称 | 目录名称 | 技能路径 | 角色文件路径 |
|--------|----------|----------|----------|--------------|
| 鬼剑士(男) | 鬼剑士、剑魂、狂战士、阿修罗、剑神 | `swordman` | `skill/swordman/` | `character/swordman/` |
| 女鬼剑 | 剑宗、驭剑士、暗帝、剑帝 | `atswordman` | `skill/atswordman/` | `character/atswordman/` |
| 黑暗武士 | 黑暗武士 | `demonicswordman` | `skill/demonicswordman/` | `character/demonicswordman/` |
| 格斗家(男) | 格斗家、散打、街霸、柔道、气功师 | `fighter` | `skill/fighter/` | `character/fighter/` |
| 格斗家(女) | 格斗家、散打、街霸、柔道、气功师 | `atfighter` | `skill/atfighter/` | `character/atfighter/` |
| 神枪手(男) | 神枪手、漫游枪手、枪炮师、机械师、弹药专家 | `gunner` | `skill/gunner/` | `character/gunner/` |
| 神枪手(女) | 神枪手、漫游枪手、枪炮师、机械师、弹药专家 | `atgunner` | `skill/atgunner/` | `character/atgunner/` |
| 魔法师(男) | 魔法师、元素师、召唤师、战斗法师、冰结师 | `mage` | `skill/mage/` | `character/mage/` |
| 魔法师(女) | 魔法师、元素师、召唤师、战斗法师、冰结师 | `atmage` | `skill/atmage/` | `character/atmage/` |
| 圣职者(男) | 圣职者、圣骑士、蓝拳圣使、驱魔师、复仇者 | `priest` | `skill/priest/` | `character/priest/` |
| 暗夜使者 | 刺客、忍者 | `thief` | `skill/thief/` | `character/thief/` |

### 拔刀斩技能多职业支持

如需为多个职业系添加拔刀斩技能，需要分别在对应的职业目录下创建技能文件：

1. **鬼剑士系拔刀斩**：
   - 技能文件：`skill/swordman/momentaryslash.skl`
   - 角色文件：`character/swordman/swordman.chr`
   - 动画路径：`character/swordman/effect/animation/momentaryslash/`

2. **女鬼剑系拔刀斩**：
   - 技能文件：`skill/atswordman/momentaryslash.skl`
   - 角色文件：`character/atswordman/atswordman.chr`
   - 动画路径：`character/atswordman/effect/animation/momentaryslash/`

3. **黑暗武士系拔刀斩**：
   - 技能文件：`skill/demonicswordman/momentaryslash.skl`
   - 角色文件：`character/demonicswordman/demonicswordman.chr`
   - 动画路径：`character/demonicswordman/effect/animation/momentaryslash/`

### 重要提醒

- 每个职业系的文件路径都是独立的，不能混用
- 修改技能时要确保对应职业的所有相关文件都已更新
- 测试时需要分别测试每个职业系的技能效果
- 参考 `DNF文件知识库\CHR文件知识库` 获取更详细的职业文件结构信息

---

**操作完成后，启动游戏测试新功能是否正常工作。**