
# nut 函数笔记
1. 挂载外部文件 #本地测试 #不用退游戏就更改源码
   1. dofile("以客户端为根目录的路径");
1. nut数组 表用法
   1. 数组

//声明一个数组 local iKeyList =[]; //更改数组的大小 iKeyList.resize(3); iKeyList.resize(size,[fill]); //设置数组中的元素 iKeyList[0] = 0; iKeyList[1] = 15; iKeyList[2] = -15; //追加到数组末尾 iKeyList.append(666); iKeyList.push(666); //删除数组中的所有项目 iKeyList.clear(); //获取数组的长度 iKeyList.len(); //把另外一个数组加入到数组内 iKeyList.extend(array); //删除数组最后面的一个值 并返回它 iKeyList.pop(); //返回一个较高索引的数组值 [iKeyList.top](http://ikeylist.top/)(); //在数组的某个位置插入值 iKeyList.insert(idx,val); //删除数组中某个位置的值 iKeyList.remove(idx); //反向排序数组顺序 iKeyList.reverse(); //截取中间一段数组 //以新数组的形式返回数组的一部分。从开始到结束的副本(不包括)。如果开始为负，则计算索引长度+开始，如果结束为负，则计算索引长度+开始。如果结束被省略，结束等于数组长度。 iKeyList.slice(start,[end]); 

1. 表

getroottable()["iceAreaRainCreatePos"] <- {}; getroottable()["iceAreaRainCreatePos"] =                                                                   [[26,-30],[91,15],[-66,-5],[114,-39],[-37,-34],[-109,5],							 [26,20],[-20,4],[134,-12],[-92,-42],[-44,25],[-120,-23], [-23,-52],[62,-55],[55,1],[-10,-13],[84,-24]]; //赋值给变量 local pos = ::iceAreaRainCreatePos[currentIndex];//取出数组 local x = pos[0]; local y = pos[1]; //得到总数 ::iceAreaRainCreatePos.len(); 

1. 函数名事件 #人物状态 #特效 #ap #事件函数 #某一个事件达成时会运行的函数
   1. 角色事件函数名 #角色的事件不是状态的
      1. 被动技能 使用被动技能 #被动技能的设置

function ProcPassiveSkill\_ATMage(obj, skill\_index, skill\_level) {         if (skill\_index == SKILL\_EXPRESSION)         {                 if(skill\_level > 0)                 {                         local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, skill\_index, false, "Character/ATMage/Expressions/ap\_atmage\_expression.nut", true);                                 print(" expression appendage:" + appendage);                         if(appendage)                         {                                                                                                                                                                                                                                                     local magicalAtkChangeRate = sq\_GetLevelData(obj, skill\_index, SKL\_LVL\_COLUMN\_IDX\_1, skill\_level);				                                 local change\_appendage = appendage.sq\_getChangeStatus("expression");                                 if(!change\_appendage) {                                         change\_appendage = appendage.sq\_AddChangeStatus("expression",obj, obj, 0, CHANGE\_STATUS\_TYPE\_MAGICAL\_ATTACK, false, magicalAtkChangeRate );                                 }                                 if(change\_appendage)                                 {                                         change\_appendage.clearParameter();                                         print(" expression attack rate:" + magicalAtkChangeRate.tofloat());                                         change\_appendage.addParameter(CHANGE\_STATUS\_TYPE\_MAGICAL\_ATTACK, false, magicalAtkChangeRate.tofloat());                                 }                         }                 }         }         else if(skill\_index == SKILL\_DIEHARD)         { // 碳餌                 if(skill\_level > 0)                 {                         local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, skill\_index, false,                          "Character/ATMage/DieHard/ap\_ATMage\_DieHard.nut", true);                         if(appendage)                         {                         }                 }         }         else if(skill\_index == SKILL\_TUNDRASOUL)         { // 矗萄塭曖 陛                 if(skill\_level > 0)                 {                         local skill = sq\_GetSkill(obj, SKILL\_TUNDRASOUL);                         if(!skill)                                 return true;                         print( " passive\_skill\_tundrasoul");                         //if(!skill.isSealFunction())                         {                                 local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, skill\_index, false,                                  "Character/ATMage/TundraSoul/ap\_ATMage\_TundraSoul.nut", true);                                 if(appendage)                                 {                                         print(" passive object isinBattle:" + obj.isInBattle());                                         //if(!skill.isSealFunction())                                         //{                                                 //if(sq\_IsInBattle())                                                 //{                                                         //local range = obj.sq\_GetIntData(SKILL\_TUNDRASOUL , 0);// 0. 綵唸 鼻鷓檜鼻縑 勘葬朝 婁彰嬪                                                         //local AuraTundraSoulAppendage = appendage.sq\_AddSquirrelAuraMaster("AuraTundraSoul",obj, obj, range, 18, 5, 0);                                                 //}                                                 //else                                                 //{                                                         //appendage.sq\_DeleteAppendages();                                                 //}                                         //}                                         //else                                         //{                                                 //appendage.sq\_DeleteAppendages();                                         //}                                 }                         }                 }         }         return true; } function onUseSkillPassiveSkill\_ATMage(obj,skillIndex, skillLevel) {         if(!obj)                                                                           return;		         print( " onuseskill"); }

1. 刷新技能按键状态时 #这里可以设置技能亮不亮

function flushCommandEnable\_Avenger(obj) {         if (!obj) return S\_FLOW\_NORMAL;         if (!obj.isInBattle())         {                 sq\_SetAllCommandEnable(obj, false); // 瞪癱醞橾隆 賅萇 蝶鑒擊 餌辨 熱 橈蝗棲棻.                 return S\_FLOW\_RETURN;         }         if (isAvengerAwakenning(obj) == true)         {                 if (obj.isMyControlObject())                         sq\_SetAllCommandEnable(obj, false); // 賅萇 state蒂 殘嬴場朝棻..  }

1. 增加设置状态包时 #可以驳回状态 #且可以再次设置别的状态

function addSetStatePacket\_Avenger(obj, state, datas) {         if (!obj)                 return -1;         if (isAvengerAwakenning(obj) == true)         {                 switch (state)                 {                 case 7://發送過來的狀態是跳躍攻擊 源狀態是跳躍 則 發給覺醒狀態 來跳躍攻擊             if(obj.getState()==6)             {                 obj.sq\_IntVectClear();                 obj.sq\_IntVectPush(4); // substate撮                 obj.sq\_addSetStatePacket(STATE\_AVENGER\_AWAKENING, STATE\_PRIORITY\_USER, true);                 return -1;             }             break; 		} 	} }

1. 进入副本时

function onStartDungeon\_CreatorMage(obj) {         if (!obj)                 return;         if (sq\_IsMyCharacter(obj))         {                 lockMouse(obj);                 //////////////////////////////////////////////////////                 obj.getVar("lbdown").clear\_timer\_vector();                 obj.getVar("lbdown").push\_timer\_vector();                 obj.getVar("lbdown").push\_timer\_vector();                                          local t = obj.getVar("lbdown").get\_timer\_vector(0);                 t.setParameter(20, -1);                 t.resetInstant(0);                 obj.getVar("lbdown").clear\_ct\_vector();                 obj.getVar("lbdown").push\_ct\_vector();                 local timer = obj.getVar("lbdown").get\_ct\_vector(0);                 timer.Reset();                 timer.Start(10000,0);                 //////////////////////////////////////////////////////                 // 觼溯檜攪曖 賅萇 樓撩 啪檜雖 醱瞪擊 衛濛棲棻.                 onAllChargeCreatorMageGauge(obj);         } }

1. 进入map房间时

function onStartMap\_CreatorMage(obj) {         if(!obj)                 return;         lockMouse(obj);         obj.getVar("dstpos").clear\_vector();         // 寞檜 剩橫鬲朝等 熱 橫蛤雖陛 氈棻賊..         // 餉薯鄹棲棻.         // 棻擠寞縑憮紫 婁陛 雖樓腎晦 陽僥殮棲棻.         local appendage = CNSquirrelAppendage.sq\_GetAppendage(obj, "Appendage/Character/ap\_common\_suck.nut");         if (appendage)         {                 appendage.sq\_DeleteAppendages();                 CNSquirrelAppendage.sq\_RemoveAppendage(obj, "Appendage/Character/ap\_common\_suck.nut");         } }

1. 设置状态时

function setState\_ATMage(obj, state, datas, isResetTimer) {         if(state == STATE\_DIE)                                          obj.sq\_RemoveSkillLoad(SKILL\_HOLONG\_LIGHT);	// 避戲賊 煬碳 UI 薯剪         return 0; }

1. 被动

function procAppend\_CreatorMage(obj) {         if (!obj)                 return 0;         local type = getCreatorSkillStateSkillIndex(obj);         if (type == CREATOR\_TYPE\_DISTURB)         {                 onProc\_Mgrab(obj);         }         if (!obj.isMyControlObject())                 return 0;                         local STATE\_ACTIVE = 1;		         local cashState = sq\_GetStateCashShop();         local isClipCursor = sq\_IsClipCursor(); // 醴憮陛 陘氈朝雖 羹觼棲棻.         if (cashState == STATE\_ACTIVE)         {                 // 撮塭憧檜 翮溜朝等 醴憮陛 off賅萄陛 腎橫憮朝 寰腌棲棻.                 if (isClipCursor)                         unLockMouse(obj);         }         else         {                 // 葆辦蝶塊檜 葬雖 彊擎 唳辦 葆雖虞 湍瞪 贗葬橫鼻鷓檣雖 羹觼瑣棲棻.                 if (sq\_GetResultState() || sq\_GetRewardState())                 {                         // 唸婁璽檜 釭螃朝 翕寰縑紫 鼻濠蛔擊 睡敷幗葬晦 嬪                         // 檜廓縛 羲戲煎 ui撩酈蒂 援腦賊 葆辦蝶蒂 濡掬幗董棲棻.                         local hotKey = sq\_IsDownHotKeyCreatorCursor();                         if (hotKey)                         {                                 // ui撩酈陛 揚萼鼻鷓縑憮朝 贗董檜 溥氈棻賊..                                 // 棻衛 濡掬幗董棲棻.                                 if (!isClipCursor)                                         lockMouse(obj);                         }                         else                         {                                 if (isClipCursor)                                 {                                         unLockMouse(obj);                                 }                         }                         return 0;                 }                 if (IsInBattleCreator(obj))                 { // 瞪濰醞檜塭賊..                         local hotKey = sq\_IsDownHotKeyCreatorCursor();                         if (hotKey)                         {                                 // ui撩 酈蒂 援艇 鼻鷓縑歙 葆辦蝶陛 濡啣朝雖 羹觼瑣棲棻.                                 if (isClipCursor)                                 {                                         // 葆辦蝶陛 濡啣棻賊                                         unLockMouse(obj);                                 }                         }                         else                         {                                 // 營 葆辦蝶 謝陛 孺紫辦 賊寰薹縑 氈朝 羹觼棲棻.                                 //print(" isClipCursor:" + isClipCursor);                                 if (!isClipCursor)                                                                                                                                                                                                                                                                                             { // 葆辦蝶塊檜 萼 鼻鷓塭賊					                                         //print(" isopencreator:" + sq\_IsOpenCreatorControlPopupWindows());                                         if (!sq\_IsOpenCreatorControlPopupWindows())                                         {                                                 if (sq\_IsMousePtInWindowRect())                                                 { // 葆辦蝶陛 頂睡縑 謝蒂 氈棻賊..                                                         // ui撩 酈蒂 援艇 鼻鷓縑憮 諼睡瓣璽擊 援腦賊 橾衛瞳戲煎                                                          // ui撩 酈陛 false煎 腎朝等 檜陽 葆辦蝶塊擊 勘橫輿賊 寰腌棲棻.                                                         lockMouse(obj);                                                 }                                         }                                 }                         }                 }                 else                 {                         if (isClipCursor == true)                         {                                 unLockMouse(obj);                         }                 }         }         return 1; }

1. 前冲被动

function procDash\_ATMage(obj) {         if(!obj)                 return;         local ani = sq\_GetCurrentAnimation(obj);         if(!ani)                 return;         local isFlag = obj.sq\_IsKeyFrameFlag(ani, 1);         local result = CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/IceRoad/ap\_ATMage\_IceRoad.nut");         if (result == true) // 嬴檜蝶煎萄蒂 麵堡擊 隆 嫦濠措模葬陛 夥荸棲棻.         {                 if(isFlag)                 {                         obj.sq\_PlaySound("R\_ICE\_WALK");                 }                 obj.sq\_ClearKeyFrameFlag(ani);         }         else         {                 //print(" procDash");                 if (isFlag)                 {                         local stage = sq\_GetGlobaludpModuleStage();                         if(!stage)                                 return;                         local dungeon = sq\_GetDungeonByStage(stage);                         if(!dungeon)                                 return;                                                                                          local dungeonIndex = sq\_GetDuegonIndex(dungeon);			                         local mapIndex = sq\_GetMapIndex(stage);                         //撲骯薹 湍瞪曖 唳辦 40廓, 撲骯曖 蹺瞳 PVP裘曖 唳辦 50019廓.                         if (dungeonIndex == 40 || mapIndex == 50019)                         {                                 obj.sq\_PlaySound("R\_RUN\_SNOW");                         }                         else                         {                                 local weight = sq\_GetObjectWeight(obj);                                 if (sq\_GetShadowTypeByAnimation() != 0)                                         obj.sq\_PlaySound("R\_RUN\_FLOOR");                                 else if (weight < LIGHT\_OBJECT\_MAX\_WEIGHT)                                         obj.sq\_PlaySound("RUN\_STONE");                                 else if (weight < MIDDLE\_OBJECT\_MAX\_WEIGHT)                                         obj.sq\_PlaySound("RUN\_SOIL");                                 else                                         obj.sq\_PlaySound("RUN\_GRASS");                         }                 }                 obj.sq\_ClearKeyFrameFlag(ani);         } }

1. 被动技能

function procSkill\_ATMage(obj) {         procSkill\_IceRoad(obj);         procSkill\_MagicShield(obj); } function procSkill\_IceRoad(obj) {         local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap\_ATMage\_IceRoad.nut");         if(appendage) {                 local isvalid = appendage.isValid();                 if(isvalid) {                         local currentT = appendage.getTimer().Get();                         local t = appendage.sq\_var.get\_timer\_vector(0);                         local t2 = appendage.sq\_var.get\_timer\_vector(1); // 橡擠褻陝擊 虜萄朝匙婁 滌紫煎 縞模賅朝 棻艇顫檜該煎 給嬴陛憮 mp模賅蒂 衛霾棲棻.                         if (t2.isOnEvent(currentT) == true)                         {                                 local skill = sq\_GetSkill(obj, SKILL\_ICEROAD);                                 if(skill)                                 {                                         local skill\_level = obj.sq\_GetSkillLevel(SKILL\_ICEROAD);                                         local spendMp = obj.sq\_GetLevelData(SKILL\_ICEROAD, SKL\_LV\_0, skill\_level); // 0.衛除渡MP 模賅榆                                         if (spendMp > obj.getMp())                                         {                                                 appendage.setValid(false);                                                 skill.setSealActiveFunction(true);                                                 return;                                         }                                         else                                         {                                                 // MP陛 醱碟棻賊 橡擠曖 望 褻陝擊 虜萇棻..                                                 print( " spendMp:" + spendMp);                                                 obj.sendSetMpPacket(obj.getMp() - spendMp);                                         }                                 }                         }                         if (t.getEventTerm() == -1)                                 return;                         if (t.isOnEvent(currentT) == true)                         {                                 if(obj.isMyControlObject())                                 {                                         if(obj.getZPos() == 0)                                         {                                                 local skill\_level = sq\_GetSkillLevel(obj, SKILL\_ICEROAD);                                                 local change\_time = sq\_GetLevelData(obj, SKILL\_ICEROAD, SKL\_LV\_1, skill\_level); // 雖樓衛除                                                 local rate = sq\_GetLevelData(obj, SKILL\_ICEROAD, SKL\_LV\_3, skill\_level); // 檜樓 徽                                                 local movSpd = sq\_GetLevelData(obj, SKILL\_ICEROAD, SKL\_LV\_2, skill\_level); //                                                  sq\_BinaryStartWrite();                                                         sq\_BinaryWriteDword(change\_time);	// 衛除                                                                                                                                          sq\_BinaryWriteDword(rate);			// 徽                                                                 sq\_BinaryWriteDword(movSpd);		// 馬模纂                                                  // 嬴檜蝶 煎萄 撩 衛粽 蝶鑒擊 寡錫棻賊 蜃擎 瞳檜 綵唸 鼻鷓檜鼻縑 勘萼棻.                                                 local skillLevel = sq\_GetSkillLevel(obj, SKILL\_ICEROAD\_EX);                                                 sq\_BinaryWriteWord(skillLevel);                                                 if (skillLevel > 0)                                                 {                                                         local prob = sq\_GetLevelData(obj, SKILL\_ICEROAD\_EX, 4, skillLevel) / 10.0;// 鼻鷓檜鼻 綵唸曖 睦                                                                 local asLevel = sq\_GetLevelData(obj, SKILL\_ICEROAD\_EX, 5, skillLevel);	// 鼻鷓檜鼻 綵唸曖 溯漣                                                                 local validTime = sq\_GetLevelData(obj, SKILL\_ICEROAD\_EX, 6, skillLevel);	// 鼻鷓檜鼻 綵唸曖 衛除                                                                 sq\_BinaryWriteFloat(prob.tofloat());	// 睦                                                                                                                                                          sq\_BinaryWriteWord(asLevel);			// 溯漣                                                                                 sq\_BinaryWriteDword(validTime);			// 衛除                                                 }                                                 sq\_SendCreatePassiveObjectPacket(obj, 24243, 0, 0, 0, 0, obj.getDirection());                                         }                                 }                         }                 }                 }	 }

1. 得到设置被攻击属性伤害率

function getImmuneTypeDamgeRate\_ATMage(obj,damageRate, attacker) {         // 碳晦菅 錳剪葬 奢問曖 等嘐雖蒂 N%虜躑 馬模衛酈堅, 唳霜擊 嫡雖 彊蝗棲棻.         if(obj.getVar("firepillar").size\_vector() > 0)         {                 if(obj.getVar("firepillar").get\_vector(VECTOR\_FLAG\_2))                 {                         if(attacker)                         {                                 print( " damageRate:" + damageRate);                                 local skillLevel = obj.sq\_GetSkillLevel(SKILL\_FIREPILLAR);                                 local N = obj.sq\_GetLevelData(SKILL\_FIREPILLAR, 0, skillLevel); // 0.錳剪葬 還罹輿朝 馬模纂(%)                                 // 錳剪葬 奢問檜塭賊..                                 damageRate = damageRate - N;                                 //damageRate = 10;                                 print( " convert damageRate:" + damageRate);                         }                 }         }                 // 碳餌煎 犒衛縛 等嘐雖陛 2寡(1.5寡?) 菟橫除棻.	         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap\_ATMage\_DieHardSlowHeal.nut")) //         {                 //0. 問衛 嫡朝 等嘐雖 隸陛徽(%)                 local increaseDamageRate = sq\_GetIntData(obj, SKILL\_DIEHARD, SKL\_STATIC\_INT\_IDX\_0);                  //increaseDamageRate.tofloat() / 100.0;                 damageRate = damageRate + increaseDamageRate;         }         return damageRate; }

1. 得到被攻击的属性

function getImmuneType\_ATMage(obj,type, attacker) {         local immuneType = type;         return immuneType; }

1. 使用技能前

function useSkill\_before\_ATMage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)         {	         local bChangedMp = false;         print(" consumpMp:" + consumeMp + " oldSkillMpRate:" + oldSkillMpRate);         local appendage = obj.GetSquirrelAppendage("Character/ATMage/ManaBurst/ap\_ATMage\_ManaBurst.nut");         if(appendage)         {                 local isvalid = appendage.isValid();                 if(isvalid)                 {                         local skillLevel = obj.sq\_GetSkillLevel(SKILL\_MANABURST);                         local mpComsumeRate = sq\_GetLevelData(obj, SKILL\_MANABURST, SKL\_LVL\_COLUMN\_IDX\_0, skillLevel);                         local newMpRate = oldSkillMpRate.tofloat() \* (100 + mpComsumeRate.tofloat()) / 100;                         print(" newMpRate:" + newMpRate);                         obj.setSkillMpRate(skillIndex, newMpRate.tofloat());                         bChangedMp = true;                                 }		         }         if(obj.sq\_GetSkillLevel(SKILL\_EXPRESSION) > 0)         {                 local skillLevel = obj.sq\_GetSkillLevel(SKILL\_EXPRESSION);                 local skillMpRate = obj.getSkillMpRate(skillIndex);                 local mpComsumeRate = sq\_GetLevelData(obj, SKILL\_EXPRESSION, 0, skillLevel);                 local newMpRate = skillMpRate.tofloat() \* (100 - mpComsumeRate.tofloat()) / 100;                 //print(" expression consumeMp oldMpRate:" + skillMpRate.tofloat() + " skillIndex:" + skillIndex);                 //print(" expression consumeMp newMpRate:" + newMpRate.tofloat());                 //print(" expression consumeMp mpComsumeRate:" + mpComsumeRate.tofloat());                 obj.setSkillMpRate(skillIndex, newMpRate.tofloat());         }         print(" now consumpMp:" + obj.getSkillMpRate(skillIndex));         return true; }

1. 使用技能后

function useSkill\_after\_ATMage(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate) {         if(!obj)                 return false;         obj.setSkillMpRate(skillIndex, oldSkillMpRate.tofloat());         print(" after set consumpMp:" + oldSkillMpRate);         return true; }

1. 普攻强制施放技能

function setEnableCancelSkill\_ATMage(obj, isEnable) {         if(!obj)                 return false;         if(!obj.isMyControlObject())                 return false;         if(!isEnable)                 return true;                         obj.setSkillCommandEnable(SKILL\_ICE\_SWORD, isEnable);          return true; }

1. 是否是可以使用的道具 #可以获得物品栏为的物品ID

function isUsableItem\_ATMage(obj, itemIndex) {         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap\_ATMage\_DieHardSlowHeal.nut")) //         { // 碳餌煎 蝸煎辦 醞檜塭賊 犒啗翮 嬴檜蠱擊 噩 熱 橈蝗棲棻.                 local isRecover = sq\_IsItemRecover(itemIndex);                 if(isRecover == true)                 {                         return false;                 }                 if(itemIndex == 8)                 { // 溯嘐曖 槳望                         return false;                 }         }         //print( " is use itemIndex:" + itemIndex + " return true");         return true; }

1. 发送设置HP包

function sendSetHpPacket\_ATMage(obj, hp, sendInstant) {         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/DieHard/ap\_ATMage\_DieHardSlowHeal.nut")) //         {                 if(obj.getHp() < hp)                 {                         //print(" not send hp");                         return false;                 }         }         //print( " go send hp");         return true; }

1. 发送设置MP包

function sendSetMpPacket\_ATMage(obj, mp, sendInstant)         {	         return true; }

1. 当前技能效果 #接收技能效果包

function onChangeSkillEffect\_ATMage(obj, skillIndex, reciveData) {         if(!obj)                 return;         if(skillIndex == SKILL\_ICEROAD)         {                 local skill = sq\_GetSkill(obj, SKILL\_ICEROAD);                 skill.resetCurrentCoolTime();                         skill.setSealActiveFunction(true);	                 local skill\_level = sq\_GetSkillLevel(obj, SKILL\_ICEROAD);                 obj.startSkillCoolTime(SKILL\_ICEROAD, skill\_level, -1);                 local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap\_ATMage\_IceRoad.nut");                 appendage.setValid(false);         }         else if(skillIndex == SKILL\_DIEHARD)         {                 if(reciveData.getSize() > 0)                 {                         local hp = reciveData.readDword(); // 翕晦 hp                         if(hp > 0)                         {                                 print(" onchange:" + hp);                                 obj.setHp(hp, null, true);                         }                 }         }         else if (skillIndex == SKILL\_ELEMENTAL\_CHANGE)         {                 if (reciveData.getSize() > 0)                 {                         local element = reciveData.readByte();                         obj.setThrowElement(element);                         // 爾虞撩 籀葬                         local appendage = CNSquirrelAppendage.sq\_GetAppendage(obj,"Character/ATMage/MagicShield/ap\_MagicShield.nut");                         if(appendage)                                                                          setMagicShieldType(appendage, obj, obj.getThrowElement());	                 }         }         else if(skillIndex == SKILL\_TUNDRASOUL)         {                 if (reciveData.getSize() > 0)                 {                         local mode = reciveData.readDword();                         local auraAppendage = 0;                         local appendage = CNSquirrelAppendage.sq\_GetAppendage(obj, "Character/ATMage/TundraSoul/ap\_ATMage\_TundraSoul.nut");                         if(appendage)                         {                                 auraAppendage = appendage.sq\_getSquirrelAuraMaster("AuraTundraSoul");                                                                                                                                                   if(mode == 1)			                                 { // 氈朝匙擊 疏撿棲棻. (嬴辦塭)                                         appendage.sq\_DeleteAppendages();                                 }                                 else if(mode == 0)                                 { // 橈朝匙擊 麵撿棲棻. (嬴辦塭)                                         local range = obj.sq\_GetIntData(SKILL\_TUNDRASOUL , 0);// 0. 綵唸 鼻鷓檜鼻縑 勘葬朝 婁彰嬪                                         appendage.sq\_AddSquirrelAuraMaster("AuraTundraSoul",obj, obj, range, 18, 5, 0);                                 }                         }                 //CNSquirrelAppendage.sq\_RemoveAppendage(obj, "Character/ATMage/TundraSoul/ap\_ATMage\_TundraSoul.nut");                 }         } }

1. 得到13状态下的子状态

function changeTrhowState\_ATMage(obj, throwState) {         if (!obj) return false;         printc("changeTrhowState\_ATMage");         if (throwState == 3 &&                 obj.getThrowIndex() == SKILL\_ELEMENTAL\_CHANGE)         {                 // 陴徹餌 : 樓撩 嫦翕                 obj.sq\_IntVectClear();                 obj.sq\_IntVectPush(throwState);                 obj.sq\_IntVectPush(-1);                 obj.sq\_IntVectPush(obj.getThrowElement());                 obj.sq\_AddSetStatePacket(STATE\_THROW, STATE\_PRIORITY\_USER, true);                 return true;         }         return false; }

1. 设置异常状态时

function setActiveStatus\_ATMage(obj, activeStatus, power) {         if (!obj) return 0;         local state = sq\_GetState(obj);         if (state == STATE\_ELEMENTAL\_BUSTER)         {                 // 陝撩橾隆 評煎 鼻鷓檜鼻檜 勘葬雖 彊擠 (縣溯詮驍 幗蝶攪)                 //printc("state : STATE\_ELEMENTAL\_BUSTER");                 return 0;         }         return 1; }

1. 播放移动声音

function playMoveSound\_ATMage(obj) {         //obj.sq\_PlaySound("R\_ICE\_WALK");         if(!obj)                 return;         local result = CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/IceRoad/ap\_ATMage\_IceRoad.nut");         if (result == true) // 嬴檜蝶煎萄蒂 麵堡擊 隆 嫦濠措模葬陛 夥荸棲棻.         {                 obj.sq\_PlaySound("R\_ICE\_WALK\_LOOP", SOUND\_ID\_MOVE);         }         else          {                 obj.sq\_PlayMoveSound();         } }

1. 播放前冲攻击声音

function playDashAttackSound\_Avenger(obj) // 대쉬사운드를 세팅하는 오버라이딩된 함수입니다.. {         if(!obj) return 0;         if(!isGrowTypeAvenger(obj)) return 0; // 어벤져가 아니라면 또한 그려줄 필욘 없을겁니다..         if(isAvengerAwakenning(obj)) return 1; // 각성일땐 따로 대쉬사운드 세팅합니다..         return 0; }

1. 重置刷新时 #死亡复活 #进入下一个房间

function reset\_ATMage(obj) {         if(!obj)                                                                           return;		 }

1. 副本中重置状态时 #城镇中也会运行 #就相当于进入副本回到城镇都会运行

function resetDungeonStart\_ATMage(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount) {                          if(!obj) return -1;	         local isReset = true; // 晦獄瞳戲煩 瞪睡 葬撢殮棲棻.         if (sq\_GetCurrentModuleType() == MODULE\_TYPE\_WARROOM || sq\_GetCurrentModuleType() == MODULE\_TYPE\_DEAD\_TOWER)         {                 // 葬撢曖 檜嶸陛 避朝檜嶸陛 嬴棲塭賊..                 if (resetReason != REASON\_DEATH)                 {                         isReset = false; // 葬撢衛酈雖 彊蝗棲棻.                 }         }         if(isReset)         { // 葬撢擊 撿棻賊..                 local appendage = obj.GetSquirrelAppendage("Character/ATMage/IceRoad/ap\_ATMage\_IceRoad.nut");                 if(appendage)                 {                         local skill = sq\_GetSkill(obj, SKILL\_ICEROAD);                         local isvalid = appendage.isValid();                         if(skill)                         {                                 print(" isSeal:" + skill.isSealActiveFunction());                                 if(!skill.isSealActiveFunction())                                 {                                         skill.setSealActiveFunction(true);                                 }                         }                         if(isvalid)                         {                                 appendage.setValid(false);                         }                 }                         obj.sq\_RemoveSkillLoad(SKILL\_HOLONG\_LIGHT);	// 煬碳 UI 薯剪         }         return 1; }

1. 画城镇，副本ui #城镇中和副本中都可以画 #图层较低

function drawMainCustomUI\_CreatorMage(obj) {         if (!obj)                 return;         local sq\_var = obj.getVar();                          // 蝶鑒蝸煜         local hud\_creator\_b\_gauge = sq\_var.GetAnimationMap("hud\_creator\_b\_gauge", "Character/Mage/CreatorAnimation/ui/hud\_creator\_b\_gauge.ani");         local hud\_creator\_b\_select = sq\_var.GetAnimationMap("hud\_creator\_b\_select", "Character/Mage/CreatorAnimation/ui/hud\_creator\_b\_select.ani");         local skill\_ui\_index = 0;         local x = 626;         local y = 588;         local offset = 36;         // 斜葬晦                 local hudCreatorAni = sq\_var.GetAnimationMap("hud\_creator\_back", "Character/Mage/CreatorAnimation/ui/hud\_creator\_back.ani");	         sq\_DrawSpecificFrame(hudCreatorAni, x, y, false, 0, false, 1.0);         //         // 諄辦濠陛 氈擊 熱 氈戲嘎煎 檜夠縑憮 寡檣雖 嬴棋雖蒂 羹觼罹          // 寡檜 嬴棋 唳辦 醴憮諦 ui蒂 橫鄹棲棻.         if (!IsInBattleCreator(obj))         {                 local isEnable = isEnableCreatorBattleInUI();                 if (!isEnable)                 {                         unLockMouse(obj);                 }                 //return;         }         // 摹鷗 纔舒葬 斜葬晦         if (getCreatorSkillStateSkillIndex(obj) != -1)                 {	                 local type = getCreatorSkillStateSkillIndex(obj);                 local skillmgr = obj.getSkillManager();                 local slot = -1;                 if (skillmgr)                 {                         local index = getTypeSkillIndex(obj, type);                         slot = skillmgr.getSlotindex(index);                 }                 if (slot != -1)                         {	                         // 摹鷗雖 斜葬晦                         sq\_AnimationProc(hud\_creator\_b\_select);                         sq\_drawCurrentFrame(hud\_creator\_b\_select, x + (slot \* offset), y, false);                 }         }         // 啪檜雖 斜葬晦         local hud\_creator\_b\_gauge = sq\_var.GetAnimationMap("hud\_creator\_b\_gauge", "Character/Mage/CreatorAnimation/ui/hud\_creator\_b\_gauge.ani");                 // 樓撩蝶鑒 啪檜雖 斜葬晦 睡碟殮棲棻.	         local skillmgr = obj.getSkillManager();         if (!skillmgr)                 return;         for (local i = CREATOR\_TYPE\_FLAME; i < CREATOR\_TYPE\_MAX; i++)                 {	                 local slot = -1;                 if (skillmgr)                 {                         local index = getTypeSkillIndex(obj, i);                         slot = skillmgr.getSlotindex(index);                 }                 if (slot != -1)                 {                         local appendage = getCreatorMageAppendageByType(obj, i);                         if (appendage)                         {                                 local gaugeValue = 0;                                 local max\_gaugeValue = 0;                                 max\_gaugeValue = appendage.sq\_var.get\_vector(I\_MAX\_COUNT);                                 gaugeValue = appendage.sq\_var.get\_vector(I\_REMAIN\_COUNT);                                                                                                                                                   local rate = gaugeValue.tofloat() / max\_gaugeValue.tofloat();			                                 local rgb = getCreatorTypeColor(obj, i);                                 local alpha = sq\_ALPHA(255);                                         hud\_creator\_b\_gauge.setImageRate(rate, 1.0);	                                 local gaugePosX = x - 87;                                 sq\_DrawSpecificFrameEffect\_SIMPLE(hud\_creator\_b\_gauge, gaugePosX + (slot \* offset), y, 0, rgb, alpha, true);                         }                 }         } }

1. 画副本中的ui #只能在副本中进行画ui

function drawCustomUI\_CreatorMage(obj) {         // 葆辦蝶斜椰 籀葬         if (!obj)                 return;         if (!IsInBattleCreator(obj))         {                 return;         }                 // 醴憮斜葬晦	         // 醴憮 斜葬晦 睡碟殮棲棻.         local isLock = sq\_IsClipCursor();         if (!isLock)         {                 if (!sq\_IsVisibleCursor())                 {                         sq\_SetVisibleCursor(true);                 }                 return;         }         if (sq\_IsVisibleCursor())         {                 sq\_SetVisibleCursor(false);         }         local ani = obj.getVar().GetAnimationMap("NORMAL",          "Character/Mage/Effect/Animation/CreatorMagicSphere/normal.ani"); // 橾奩醴憮         local usingSkillIndex = getCreatorSkillStateSkillIndex(obj);         if (usingSkillIndex == CREATOR\_TYPE\_DISTURB)         {                 local stage = sq\_GetObjectManagerStage(obj);                 if (!stage)                         return;                                 local control = stage.getMainControl();		                 if (control.IsRBDown())                 { // 萄煎辦橾隆 醴憮蒂 夥習棲棻.i                         ani = obj.getVar().GetAnimationMap("THROW",                          "Character/Mage/Effect/Animation/CreatorMagicSphere/draw\_cursor.ani"); //                 }                 else                 {                         ani = obj.getVar().GetAnimationMap("BLOCK",                          "Character/Mage/Effect/Animation/CreatorMagicSphere/block.ani"); //                 }         }         else if (usingSkillIndex == CREATOR\_TYPE\_GUARDIAN)         {                 ani = obj.getVar().GetAnimationMap("GUARD",                  "Character/Mage/Effect/Animation/CreatorMagicSphere/guard.ani"); //         }         else if (usingSkillIndex == CREATOR\_TYPE\_ICE)         {                 ani = obj.getVar().GetAnimationMap("ICE",                  "Character/Mage/Effect/Animation/CreatorMagicSphere/icesphere.ani"); //         }         else if (usingSkillIndex == CREATOR\_TYPE\_FLAME)         {                 ani = obj.getVar().GetAnimationMap("FIRE",                                                                                                    "Character/Mage/Effect/Animation/CreatorMagicSphere/firesphere.ani"); //		         }                 else if (usingSkillIndex == CREATOR\_TYPE\_WIND)	         {                 ani = obj.getVar().GetAnimationMap("WIND",                  "Character/Mage/Effect/Animation/CreatorMagicSphere/wind.ani"); //                         }		         local state = obj.getState();         if (state == STATE\_ICESHIELD)                 {	                 ani = obj.getVar().GetAnimationMap("SHIELD",                  "Character/Mage/Effect/Animation/CreatorMagicSphere/shield\_cursor\_dodge.ani"); //         }         else if (state == STATE\_FIREHURRICANE)         {                 ani = obj.getVar().GetAnimationMap("HURRICANE",                  "Character/Mage/Effect/Animation/CreatorMagicSphere/hurricane\_cursor.ani"); //         }         if (ani)         {                 local posX = IMouse.GetXPos();                 local posY = IMouse.GetYPos();                 sq\_AnimationProc(ani);                 sq\_drawCurrentFrame(ani, posX, posY, false);         }  }

1. 画人物当前图层的ui #初始坐标为人物的偏移

function drawAppend\_CreatorMage(obj, isOver, x, y) {         if (!obj.isMyControlObject())                 return 0;         return 0; }

1. 准备画

function prepareDraw\_Avenger(obj) {         if (!obj) return;         if (isAvengerAwakenning(obj) == true)         { // isPriestFlow 葬欐高檜 true塭賊.. 陝撩檜 嬴棲堅 罹楝陛雖 褻勒檜 葬蝶 flow煎 緒螳撿 棻..                 return S\_FLOW\_NORMAL;         }         return S\_FLOW\_PRIEST; }

1. 得到设置当前ani的ani

function setCurrentAnimation\_Avenger(obj, animation) {         if (!obj) return;         if (!animation) return;         if (isAvengerAwakenning(obj))         { // 陝撩 菸蝶陛蛤樹 滲褐 塭賊 setcurrentanimation 腎朝 賅萇 animation擎 癱貲紫 褻瞰婦溼 楚斜蒂 螃衛霾棲棻..                 if (animation)                 {                         animation.setNeverApplyAnotherPlayersEffectAlphaRate(false);                         animation.setIsApplyAnotherPlayersEffectAlphaRate(false);                 }         } }

1. 得到设置可攻击次数范围

function getAttackCancelStartFrameSize\_Priest(obj) {         local maxAttackNumber = obj.sq\_GetAttackCancelStartFrameSize();         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true)                 maxAttackNumber = 2;         return maxAttackNumber; }

1. 得到设置攻击时 在哪一帧按下键时可以进入下一个子状态

function getAttackCancelStartFrame\_Priest(obj, index) {         if(!obj) return null;         local frm = 0;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true)     {         switch (index)         {             case 0:                 frm = 7;                 break;             case 1:                 frm = 5;                 break;         }     }else         frm = obj.sq\_GetAttackCancelStartFrame(index);         return frm; }

1. 得到设置攻击ani

function getAttackAni\_Priest(obj, index) {         if (!obj) return null;         local animation = obj.sq\_GetAttackAni(index);         if (CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true)         animation = obj.sq\_GetCustomAni(CUSTOM\_ANI\_PRIEST\_JUPITERNORMALATKA\_BODY + index);         return animation; }

1. 得到设置默认攻击信息

function getDefaultAttackInfo\_Priest(obj, index) {         if (!obj) return null;         local attackInfo = obj.sq\_GetDefaultAttackInfo(index);         if (CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true)                 attackInfo = sq\_GetCustomAttackInfo(obj, CUSTOM\_ATTACK\_PRIEST\_JUPITERATTACK1 + index);         return attackInfo; }

1. 得到设置跳跃ani

function getJumpAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_JUMP);         }         else {                 ani = obj.sq\_GetJumpAni();         }         return ani; }

1. 得到设置跳跃升空帧

function getJumpUpStartFrame\_Avenger(obj) {         if (!obj) return null;         local index = 0;         if (isAvengerAwakenning(obj) == true)         {         index = 2;         }     else         index = obj.sq\_getJumpUpStartFrame();         return index; }

1. 得到设置跳跃下落帧

function getJumpDownStartFrame\_Avenger(obj) {         if (!obj) return null;         local index = 0;         if (isAvengerAwakenning(obj) == true)         {         index = 5;         }     else         index = obj.sq\_getJumpDownStartFrame();         return index; }

1. 得到设置跳跃落地帧

function getJumpLandStartFrame\_Avenger(obj) {         if (!obj) return null;         local index = 0;         if (isAvengerAwakenning(obj) == true)         {         index = 7;         }     else         index = obj.sq\_getJumpLandStartFrame();         return index; }

1. 得到设置跳跃攻击ani

function getJumpAttackAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITERHAMMERJUMPATK\_BODY);         }         else {                 ani = obj.sq\_GetJumpAttackAni();         }         return ani; }

1. 得到设置跳跃攻击信息

function getJumpAttackAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITERHAMMERJUMPATK\_BODY);         }         else {                 ani = obj.sq\_GetJumpAttackAni();         }         return ani; }

1. 得到设置前冲攻击ani

function getDashAttackAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITERHAMMERDASHATK\_BODY);         }         else {                 ani = obj.sq\_GetDashAttackAni();         }         return ani; }

1. 得到设置前冲攻击信息

function getDashAttackInfo\_Avenger(obj) {         if (!obj) return null;         local atk = null;         if (isAvengerAwakenning(obj) == true)         {                 atk = sq\_GetCustomAttackInfo(obj, CUSTOM\_ATTACKINFO\_AW\_DASHATTACK);                 local state = obj.sq\_GetSTATE();                 local power = obj.sq\_getBonusRateWithPassive(SKILL\_AVENGER\_AWAKENING, state, SL\_DASH\_MAGIC\_ATK, 1.0);                 obj.sq\_setCurrentAttackBonusRate(power);         }         else if (CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/metamorphosis/ap\_metamorphosis.nut"))//是半魔化狀態         {                 atk = sq\_GetCustomAttackInfo(obj, CUSTOM\_ATTACK\_PRIEST\_METAMORPHOSISDASHATTACK);         }         return atk; }

1. 得到设置前冲攻击停下帧

function getDashAttackSlideStopFrame\_Avenger(obj) {         if (!obj) return null;         local index = -1;         if (isAvengerAwakenning(obj) == true)         { // 橫漸螳 陝撩賅萄塭賊                 index = 15;         }         else         {                 index = obj.sq\_getDashAttackSlideStopFrame();         }         return index; }

1. 得到设置站立ani

function getStayAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_STAY);         }         else {                 ani = obj.sq\_GetStayAni();         }         return ani; }

1. 得到设置行走ani

function getMoveAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_MOVE);         }         else {                 ani = obj.sq\_GetMoveAni();         }         return ani; }

1. 得到设置死亡ani

function getSitAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_SIT);         }         else {                 ani = obj.sq\_GetSitAni();                 }	         return ani; }

1. 得到被攻击伤害ani

function getDamageAni\_Priest(obj, index) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 if(index == 0)                         ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DAMAGE1);                 else if(index == 1)                         ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DAMAGE2);         }         else {                 ani = obj.sq\_GetDamageAni(index);         }         return ani; }

1. 得到设置从站立到倒地时的ani

function getDownAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DOWN);         }         else {                 ani = obj.sq\_GetDownAni();         }         return ani; }

1. 得到设置循环倒地ani

function getOverturnAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_OVERTURN);         }         else {                 ani = obj.sq\_GetOverturnAni();         }         return ani; }

1. 得到设置城镇站立站街动作ani

function getRestAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_REST);         }         else {                 ani = obj.sq\_GetRestAni();         }         return ani; }

1. 得到设置13状态下的 第一蓄力第二施放ani

function getThrowChargeAni\_Priest(obj, index) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {         switch (index)         {             case 0: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_THROW1); break;             case 1: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_PRAY1); break;             case 2: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DELIVER1); break;             case 3: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_BLAST1); break;         }         }         else {                 ani = obj.sq\_GetThrowChargeAni(index);         }         return ani; }  function getThrowShootAni\_Priest(obj, index) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {         switch (index)         {             case 0: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_THROW2); break;             case 1: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_PRAY2); break;             case 2: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DELIVER2); break;             case 3: ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_BLAST2); break;         }         }         else {                 ani = obj.sq\_GetThrowShootAni(index);         }         return ani; }

1. 得到设置前冲ani

function getDashAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_DASH);         }         else {                 ani = obj.sq\_GetDashAni();         }         return ani; }

1. 得到设置捡到物品时的ani

function getGetItemAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_GETITEM);         }         else {                 ani = obj.sq\_GetGetItemAni();         }         return ani; }

1. 得到设置创建buff时的ani 17状态下

function getBuffAni\_Priest(obj) {         if(!obj) return null;         local ani = null;         if(CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "character/new\_priest/jupiter/ap\_jupiter.nut") == true) {                 ani = sq\_GetCustomAni(obj, CUSTOM\_ANI\_PRIEST\_JUPITER\_QQ506807329\_BUFF);         }         else {                 ani = obj.sq\_GetBuffAni();         }         return ani; }

1. 角色状态的事件函数名 #俗称角色状态事件函数
   1. 设置状态时

function onSetState\_WaterCannon(obj, state, datas, isResetTimer) {         if (!obj) return;  }

1. 设置状态后

function onAfterSetState\_fastmove(obj, state, datas, isResetTimer) {         if(!obj) return; }

1. ani的key flag标签事件

function onKeyFrameFlag\_WaterCannon(obj, flagIndex) {         if (!obj) return false;         return true; }

1. ani当前帧函数 #缔造者

function onEnterFrame\_FireHurricane(obj, frameIndex) {         if (!obj)                 return;         local t = obj.getVar("state").get\_ct\_vector(0);         local time = 0;         if(t)                 time = t.Get();         local ani = sq\_GetCurrentAnimation(obj);         if(!ani)                 return; }

1. 当前ani播放结束时

function onEndCurrentAni\_FirePillar(obj) {         if(!obj) return; }

1. 按下技能键时

function checkExecutableSkill\_FirePillar(obj) {         if(!obj) return false;         local b\_useskill = obj.sq\_IsUseSkill(SKILL\_FIREPILLAR);         if(b\_useskill)         {                 obj.sq\_IntVectClear();                 obj.sq\_IntVectPush(SUB\_STATE\_FIREPILLAR\_0); // substate세팅                 obj.sq\_AddSetStatePacket(STATE\_FIREPILLAR, STATE\_PRIORITY\_IGNORE\_FORCE, true);                 return true;                 }	         return false; }

1. 被攻击前

//复仇者函数 function onBeforeDamage\_fastmove(obj, attacker, boundingBox) {         if(!obj) return; } //其他职业函数 function onBeforeDamage\_FireHurricane(obj,attacker,boundingBox,isStuck) {         if(!obj) return; }

1. 被攻击时

//复仇者函数 function onDamage\_fastmove(obj, attacker, boundingBox) { 	if(!obj) return;  } //其他职业函数 function onDamage\_FireHurricane(obj,attacker,boundingBox) {         if(!obj) return; }

1. 被攻击后

//复仇者函数 function onAfterDamage\_fastmove(obj, attacker, boundingBox) {         if(!obj) return; } //其他职业函数 function onAfterDamage\_FireHurricane(obj,attacker,boundingBox) {         if(!obj) return; }

1. 攻击到前

//复仇者函数 function onBeforeAttack\_fastmove(obj, damager, boundingBox) {         if(!obj) return; } //其他职业函数 function onBeforeAttack\_FireHurricane(obj,damager,boundingBox,isStuck) {         if(!obj) return; }

1. 攻击到时

//复仇者函数 function onAttack\_fastmove(obj, damager, boundingBox) {         if(!obj) return;                 local subState = obj.getSkillSubState();	 } //其他职业函数 function onAttack\_BrokenArrow(obj, damager, boundingBox, isStuck) {         if(!obj) return;         local subState = obj.getSkillSubState(); }

1. 攻击到后

//复仇者函数 function onAfterAttack\_fastmove(obj, damager, boundingBox) {         if(!obj) return 0;         return 1; } //其他职业函数 function onAfterAttack\_FireHurricane(obj,damager,boundingBox,isStuck) {         if(!obj) return 0;         return 1; }

1. 结束当前状态时

function onEndState\_fastmove(obj, new\_state) {         if(!obj) return;         if(new\_state != STATE\_FASTMOVE)         {         } }

1. 定时时钟时间

function onTimeEvent\_CrystalAttack(obj, timeEventIndex, timeEventCount) {	         if(!obj) return true;  }

1. 技能效果包

function onChangeSkillEffect\_FireHurricane(obj, skillIndex, reciveData) {         if (!obj) return;          local subState = obj.getSkillSubState();         if (substate == SUB\_STATE\_FIREHURRICANE\_0)         {          } }  //传递 sq\_BinaryStartWrite(); sq\_BinaryWriteBool(); sq\_BinaryWriteFloat(); sq\_BinaryWriteWord(); sq\_BinaryWriteByte(); sq\_BinaryWriteDword();  //人物传递 obj.sq\_StartWrite(); obj.sq\_WriteBool(); obj.sq\_WriteFloat(); obj.sq\_WriteWord(); obj.sq\_WriteByte(); obj.sq\_WriteDword();  sq\_SendChangeSkillEffectPacket(obj, SKILL\_ATFIGHTER\_GLANCETHEHOST);//发送  //接收 reciveData.readBool(); reciveData.readByte(); reciveData.readWord(); reciveData.readDword(); reciveData.readFloat();

1. 被动 #组队双方运行

function onProc\_WaterCannon(obj) {         if (!obj) return;  }

1. 被动 #组队我自己运行

function onProcCon\_FireHurricane(obj) {         if(!obj) return; }

1. 得到我创建的对象

function onCreateObject\_PowerOfDarkness(obj, createObject)         {	         local sq\_var = obj.getVar();           local cuid = sq\_GetUniqueId(createObject);         local circleIndex = sq\_var.getInt(POD\_VAR\_CIRCLE\_INDEX);                 if(cuid == circleIndex) {	                 local group = sq\_GetGroup(createObject);                 local uid  = sq\_GetUniqueId(createObject);                 sq\_var.setObject(POD\_VAR\_CIRCLE\_OBJECT, createObject);                 sq\_var.setInt(POD\_VAR\_CIRCLE\_OBJECT\_GROUP, group);                 sq\_var.setInt(POD\_VAR\_CIRCLE\_OBJECT\_UID, uid);         } } local circleIndex = sq\_SendCreatePassiveObjectPacket(obj,24107, 0, 172, 2, 97,obj.getDirection());

1. 得到设置视角坐标

function getScrollBasisPos\_ElementalBuster(obj) {         if (!obj) return;         local subState = obj.getSkillSubState();         if (obj.isMyControlObject())         {                 local destX = sq\_GetDistancePos(obj.getXPos(), obj.getDirection(), 300);                 local xPos = obj.getXPos();                 local var = obj.getVar();                 local isLast  = var.getBool(VAR\_ELEMENTAL\_BUSTER\_IS\_LAST);                 if (subState == SUB\_STATE\_ELEMENTAL\_BUSTER\_START)                 {                         local stateTimer = obj.sq\_GetStateTimer();                         xPos = sq\_GetUniformVelocity(xPos, destX, stateTimer, 300);                 }                 else if (isLast)                 {                         local stateTimer = obj.sq\_GetStateTimer();                         xPos = sq\_GetUniformVelocity(destX, xPos, stateTimer, 300);                 }                 else                 {                         xPos = destX;                 }                 obj.sq\_SetCameraScrollPosition(xPos, obj.getYPos(), 0);                 return true;         }         return false; }

1. 结束当前map时

function onEndMap\_ElementalRain(obj) {         if (obj.sq\_IsMyControlObject())         {                                                                                                                    local ballCount = obj.getMyPassiveObjectCount(24233);			                 printc("ballCount" + ballCount);                 for (local i = 0; i < ballCount ; ++i)                  {                          local magicBall = obj.getMyPassiveObject(24233,i)                         if (!magicBall)                                 continue;                         if (obj.sq\_IsMyControlObject())                         {                                 print("onEndMap\_ElementalRain");                                 sq\_SendDestroyPacketPassiveObject(magicBall);                         }                 }         } }

1. po事件函数名 #特效nut的事件函数
   1. 被创建时设置自定义数据 #可以得到传递过来的数据

function setCustomData\_po\_ATMagicBallLight(obj, receiveData) {         if(!obj) return; } //传递 sq\_BinaryStartWrite(); sq\_BinaryWriteBool(); sq\_BinaryWriteFloat(); sq\_BinaryWriteWord(); sq\_BinaryWriteByte(); sq\_BinaryWriteDword();  //人物传递 obj.sq\_StartWrite(); obj.sq\_WriteBool(); obj.sq\_WriteFloat(); obj.sq\_WriteWord(); obj.sq\_WriteByte(); obj.sq\_WriteDword();  //接收 reciveData.readBool(); reciveData.readByte(); reciveData.readWord(); reciveData.readDword(); reciveData.readFloat();

1. 设置状态时

function setState\_po\_ATPieceOfIceCore(obj, state, datas) {         if(!obj) return;         if(state == PIECE\_OF\_ICE\_CORE\_STATE\_DAMAGE)         {                 local ani = obj.getCurrentAnimation();                                                          local var = obj.getVar();		                                         if(ani) {			                         local currentIndex = sq\_GetVectorData(datas, 0) + 3;                         ani.setCurrentFrameWithChildLayer(currentIndex);                                 }		                 local timer = var.get\_ct\_vector(0);                 var.setInt(PIECE\_OF\_ICE\_CORE\_VAR\_SHAKE\_END\_TIME, timer.Get() + 50);                  sq\_SetMyShake(obj,2,80);                 }	         else if(state == PIECE\_OF\_ICE\_CORE\_STATE\_END)                                                                           {			                                         local ani = obj.getCurrentAnimation();			                         if(ani)	                         ani.setCurrentFrameWithChildLayer(10); // 마지막 프레임         } }  //得到传递过来的数据 sq\_GetVectorData(datas, 0); ​

1. 结束当前ani时

function onEndCurrentAni\_po\_ATConcentrateExpSmall(obj) {         if (!obj) return;         if (obj.isMyControlObject()) {                 sq\_SendDestroyPacketPassiveObject(obj);         } }

1. 攻击到时

function onAttack\_po\_ATIceManMagicCircle(obj, damager, boundingBox, isStuck) {         if(!obj)                 return 0;         local pChr = obj.getTopCharacter();         if(!pChr)                 return 0;         local active\_damager = sq\_GetCNRDObjectToActiveObject(damager);         if(!active\_damager)                 return 0;         local passiveState = obj.getVar("state").get\_vector(0);         if(passiveState == PASSIVEOBJ\_SUB\_STATE\_1)         {                 local rand = sq\_getRandom(0, 100);                  local rate = obj.getVar("freezeRate").get\_vector(0);                 print(" rate:" + rate + " rand" + rand);                 // 이속확율이 넘어가야 이속감소 어펜디지를 걸어줍니다..                 if(rand <= obj.getVar("freezeRate").get\_vector(0))                         {	                         CNSquirrelAppendage.sq\_AppendAppendage(damager, pChr, SKILL\_ICEMAN,                          true, "Character/ATMage/IceMan/ap\_ATIceManMagicCircle.nut", true);                 }         }         return 0; }

1. 攻击后时

function onAfterAttack\_po\_ATWaterCannon(obj, damager, boundingBox, isStuck) {         if (!obj)                 return 0;         if(obj.isMyControlObject())         {                                          sq\_SendDestroyPacketPassiveObject(obj);	         }         return 0; }

1. 被动

function procAppend\_po\_ATPieceOfIceCore(obj) {         if(!obj) return;                 local var = obj.getVar();	                                                          local timer = var.get\_ct\_vector(0);			         local shakeEndTime = var.getInt(PIECE\_OF\_ICE\_CORE\_VAR\_SHAKE\_END\_TIME);         local shakeValue = 0;         if(timer.Get() < shakeEndTime && obj.getState() != PIECE\_OF\_ICE\_CORE\_STATE\_END)                 shakeValue = (sq\_GetShuttleValue(0, 6,sq\_GetObjectTime(obj),100)-3);         local x = var.getInt(PIECE\_OF\_ICE\_CORE\_VAR\_START\_X) + shakeValue;         local y = obj.getYPos();         local z = sq\_GetShuttleValue(55, 65,sq\_GetObjectTime(obj),1200);         sq\_SetCurrentPos(obj, x, y, z); }

1. ani的key flag标签

function onKeyFrameFlag\_po\_ATPieceOfIceCore(obj, flagIndex) {         if(!obj)                 return false;         if(flagIndex == 1)         {                 sq\_SetMyShake(obj,3,100);         }         if(flagIndex == 2)         {                                                                           obj.sendStateOnlyPacket(PIECE\_OF\_ICE\_CORE\_STATE\_END);		         }                 return true;	 }  //返回值应用：返回true 运行成功， 返回false 运行不成功 会多运行几次

1. 时钟事件

function onTimeEvent\_po\_ATHolongLight(obj, timeEventIndex, timeEventCount)         {	         if(!obj)                 return false;         if(obj.isMyControlObject() && timeEventIndex == 0)                 {	                 if(obj.getState() == HOLONG\_LIGHT\_STATE\_BUFF) {                         obj.sendStateOnlyPacket(HOLONG\_LIGHT\_STATE\_DESTROY);                                 local mage = sq\_ObjectToSQRCharacter(obj.getTopCharacter());	                         if (mage)                                                                          mage.sq\_RemoveSkillLoad(SKILL\_HOLONG\_LIGHT);	                 }                 return true; // true면 콜백 중단         }         else if( timeEventIndex == 1 )         {                 obj.sendStateOnlyPacket(HOLONG\_LIGHT\_STATE\_EXPLOSION);         }                 return false;	 }   //返回值的应用 ：返回false 代表此时钟没有运行成功  true代表此时钟运行成功 //运行不成功可能会造成此函数一直运行

1. 当前技能效果

function onChangeSkillEffect\_po\_ATIceChakramSmallIceRing(obj, skillIndex, reciveData) {         if(!obj) return;                 if(skillIndex != SKILL\_ICECHAKRAM) return;	                 local pChr = obj.getTopCharacter();	                 if(!pChr) return;	         local changeAngle = reciveData.readFloat();         //print( " changeAngle:" + changeAngle);         local t = obj.getVar("sr").get\_ct\_vector(0);         if(!t)                 return;         t.Reset();         t.Start(10000,0);         //print( " changeAngle:" + changeAngle);                 //local bombingStartAngle\_ = obj.getVar("sr").get\_vector(1)                 //local bombingChangeAngle\_ = obj.getVar("sr").get\_vector(0);         obj.getVar("sr").set\_vector(0, changeAngle.tointeger());         local currentAng = obj.getVar("angle").get\_vector(0);         obj.getVar("sr").set\_vector(1, currentAng); } //传递 sq\_BinaryStartWrite(); sq\_BinaryWriteBool(); sq\_BinaryWriteFloat(); sq\_BinaryWriteWord(); sq\_BinaryWriteByte(); sq\_BinaryWriteDword();  //人物传递 obj.sq\_StartWrite(); obj.sq\_WriteBool(); obj.sq\_WriteFloat(); obj.sq\_WriteWord(); obj.sq\_WriteByte(); obj.sq\_WriteDword();  sq\_SendChangeSkillEffectPacket(obj, SKILL\_ATFIGHTER\_GLANCETHEHOST);//发送  //接收 reciveData.readBool(); reciveData.readByte(); reciveData.readWord(); reciveData.readDword(); reciveData.readFloat();  ​

1. 我自己被破坏时

function onDestroyObject\_po\_ATHolongLight(obj, destroyObj) {         local parentObj = obj.getParent();         parentObj = sq\_ObjectToSQRCharacter(parentObj);                 if(!parentObj || isSameObject(parentObj,destroyObj)) { //부모 객체가 파괴되면 사라짐 	                 obj.sendStateOnlyPacket(HOLONG\_LIGHT\_STATE\_DESTROY);                 }	 }

1. 攻击到时可设置攻击效果ani #不支持带als的ani

function getCustomHitEffectFileName\_po\_ATBrokenArrow(obj, isAttachOnDamager) {         return "PassiveObject/Character/Mage/Animation/ATBrokenArrow/02\_arrowboom\_dodge.ani"; }

1. 得到被攻击方向

function getHitDirection\_po\_ATConcentrateExpSmall(obj, damager) {         if (!obj) return 0;         return sq\_GetOppositeDirection(obj.getDirection()); }

1. 被破坏 #没测试

function destroy\_po\_ATIceChakramLarge(obj) {                          sq\_RemoveParticle("PassiveObject/Character/Mage/Particle/ATIceChakramDust.ptl", obj);	         obj.stopSound(2711); }

1. 重置时 #没测试

function reset\_po\_ATDarknessMantle(obj) { }

1. ap事件函数名 #附加appendage的事件函数名
   1. ap增加效果ani

function sq\_AddEffect(appendage) {         appendage.sq\_AddEffectBack("Character/Common/Animation/BusterMode/buster\_loop\_back\_normal.ani");//背后         appendage.sq\_AddEffectFront("Character/Common/Animation/BusterMode/buster\_loop\_front\_normal.ani");//身前 }  appendage.sq\_DeleteEffectFront();//删除身前ani appendage.sq\_DeleteEffectBack();//删除身后ani local ani = appendage.sq\_GetFrontAnimation(0);//得到身前的ani local ani = appendage.sq\_GetBackAnimation(0);//得到身后的ani //是否是结束 local isEnd = sq\_IsEnd(ani); if(isEnd) {         appendage.setValid(false);//销毁ap }

1. 一开始时的设置

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onStart", "onStart\_appendage\_IceCrash") }   function onStart\_appendage\_IceCrash(appendage) {         if(!appendage) {                 return;         }         local parentObj = appendage.getParent();         local sourceObj = appendage.getSource();                                                   if(!sourceObj || !parentObj) {                 appendage.setValid(false);                 return;                 }	 }  ​

1. 进入下一个map时

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onStartMap", "onStartMap\_appendage\_common\_burster") }  function onStartMap\_appendage\_common\_burster(appendage) {         if(!appendage)                 return;         local obj = appendage.getParent();         if(!obj)         {                 appendage.setValid(false);                 return;         }         local validT = appendage.getAppendageInfo().getValidTime();         local useTime = appendage.getTimer().Get();         local remainT = validT - useTime;         print(" remain validT:" + remainT);         if (obj.isMyControlObject())         {                 if (remainT > 0)                 {                         sq\_flashScreen(obj, 0, remainT, 300, 150, sq\_RGB(0,0,0), GRAPHICEFFECT\_NONE, ENUM\_DRAWLAYER\_BOTTOM);                 }         } }

1. ap销毁结束时

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onEnd", "onEnd\_appendage\_atmage\_bodyeffect") } function onEnd\_appendage\_PushOut(appendage) {         if(!appendage) {                 return;                 }	         local parentObj = appendage.getParent();                                                   if(!parentObj) {                 appendage.setValid(false);                 return;                                                          }			         if (parentObj.getState() == STATE\_HOLD) {                 appendage.setValid(false);                 parentObj.sendStateOnlyPacket(STATE\_STAND);         }         // TODO : x축 우선 체크 할것. 지금은 y축으로 내려와 버려서 연속기가 안됨         //local ao = sq\_GetCNRDObjectToActiveObject(parentObj);         //if(ao && sq\_IsMyControlObject(ao) && !ao.isMovablePos(ao.getXPos(),ao.getYPos())) {                 //sq\_SimpleMoveToNearMovablePos(ao,100); // 이동불가 지역에 있다면 이동가능지역으로 이동         //} }

1. ap销毁结束时判断是否可结束

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("isEnd", "isEnd\_appendage\_atmage\_bodyeffect") }  function isEnd\_appendage\_avenger\_awakening(appendage) {         local T = appendage.getTimer().Get();         if(appendage.sq\_var.size\_vector() != (I\_AVENGER\_AWAKENING\_VALID + 1)) {                 return true;         }         local maxT = appendage.sq\_var.get\_vector(I\_AVENGER\_AWAKENING\_TIME);         local doomshp = appendage.sq\_var.get\_vector(I\_DOOMS\_HP); // 변신한 어벤져의 hp값         if(T >= maxT || doomshp <= 0) { // 시간이 다 됐거나 둠스가디언 hp가 다 닳았다면.. 끝이다..         //if(T >= maxT) {                 return true;         }         return false; }  //在ap中进行判断才会运行 isEnd 函数 appendage.isEnd();

1. 有效时间结束时

function sq\_AddFunctionName(appendage) {	 	appendage.sq\_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd\_appendage\_atmage\_elemental\_change") } function onVaildTimeEnd\_appendage\_atmage\_elemental\_change(appendage) {         if(!appendage)                                                                           return;		         local parentObj = appendage.getParent();         local sourceObj = appendage.getSource();                                                   if(!sourceObj || !parentObj) {                 appendage.setValid(false);                 return;                 }	         local mage = sq\_ObjectToSQRCharacter(parentObj);         if(mage)                                                                           mage.setThrowElement(ENUM\_ELEMENT\_NONE);		         // 보호막형성 처리         local appendage = CNSquirrelAppendage.sq\_GetAppendage(mage,"Character/ATMage/MagicShield/ap\_MagicShield.nut");         if(appendage)                 setMagicShieldType(appendage, mage, mage.getThrowElement()); }

1. 被动

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("proc", "proc\_appendage\_atmage\_diehard") }  function proc\_appendage\_atmage\_diehard(appendage) {         if(!appendage) {                 return;         }         local parentObj = appendage.getParent();         if(!parentObj)         {                 appendage.setValid(false);                 return;         }  }

1. 附加对象被攻击时

function sq\_AddFunctionName(appendage) { 	appendage.sq\_AddFunctionName("onDamageParent", "onDamageParent\_appendage\_MagicShield")	 }  function onDamageParent\_appendage\_MagicShield(appendage ,attacker, boundingBox, isStuck)                           {		         if (!appendage) {                                                                           return;		         }                 local parentObj = appendage.getParent();	         parentObj = sq\_GetCNRDObjectToSQRCharacter(parentObj);         if (!parentObj) {                 appendage.setValid(false);                 return;         } } ​

1. 附加对象攻击时

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onAttackParent", "onAttackParent\_appendage\_common\_burster") } function onAttackParent\_appendage\_common\_burster(appendage, realAttacker, damager, boundingBox, isStuck) {         if(!appendage) {                 return;         }         // 버스터모드로 쳤다면..         if (appendage.isValid())         {                 local centerX = sq\_GetCenterXPos(boundingBox);                 local centerZ = sq\_GetCenterZPos(boundingBox);                 local posY = damager.getYPos();                 local hitEffAni = sq\_CreateAnimation("","Character/Common/Animation/BusterMode/buster\_hit\_back\_normal1.ani");                 local hitBackEffObj = sq\_CreatePooledObject(hitEffAni, true);                 hitBackEffObj.setCurrentPos(centerX, posY - 1, centerZ);                 sq\_AddObject(realAttacker, hitBackEffObj, OBJECTTYPE\_DRAWONLY, false);                 local hitFrontEffAni = sq\_CreateAnimation("","Character/Common/Animation/BusterMode/buster\_hit\_front\_dodge.ani");                 local hitFrontEffObj = sq\_CreatePooledObject(hitFrontEffAni, true);                 hitFrontEffObj.setCurrentPos(centerX, posY + 1, centerZ);                 sq\_AddObject(realAttacker, hitFrontEffObj, OBJECTTYPE\_DRAWONLY, false);         } }

1. 附加对象设置hp时

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onSetHp", "onSetHp\_appendage\_avenger\_awakening") } function onSetHp\_appendage\_avenger\_awakening(appendage, hp, attacker) {         local obj = appendage.getParent();         if(appendage.sq\_var.size\_vector() != (I\_AVENGER\_AWAKENING\_VALID + 1)) {                 return -1;         }         if(attacker && obj && obj.isEnemy(attacker))                 {	// 적에 의한                 local org\_hp = hp;                 if (org\_hp <= 0) {                         org\_hp = 1;                         appendage.sq\_var.set\_vector(I\_DOOMS\_HP, 0);                 }                 return org\_hp;         }         return -1; }


1. 设置被攻击的伤害率

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate\_appendage\_MagicShield") }  function getImmuneTypeDamageRate\_appendage\_MagicShield(appendage, damageRate, attacker)                          {		         if (!appendage)                 return damageRate;                 local parentObj = appendage.getParent();	         parentObj = sq\_GetCNRDObjectToSQRCharacter(parentObj);         if (!parentObj) {                 appendage.setValid(false);                 return damageRate;         }         local var = appendage.getVar();         if (!var)                                          return damageRate;	         local type = parentObj.getThrowElement();         // 수속성 : 데미지 일정 횟수 완전 방어         if (type == ENUM\_ELEMENT\_WATER)                                                                                                                    return 0;			                         local type = parentObj.getThrowElement();		         // 레벨인포로 데미지율이 조정됨.         local skill\_level = parentObj.sq\_GetSkillLevel(SKILL\_MAGIC\_SHIELD);                                                                           local decreaseRate = parentObj.sq\_GetLevelData(SKILL\_MAGIC\_SHIELD, 1, skill\_level); // 1. 데미지 감소율(%)			         damageRate = damageRate - decreaseRate;         return damageRate; }

1. 源对象的ani key flag标签

function sq\_AddFunctionName(appendage) { 	appendage.sq\_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag\_appendage\_mage\_electricrabbit");	 }  function onSourceKeyFrameFlag\_appendage\_mage\_electricrabbit(appendage,flagIndex) {         if(!appendage) return;          local obj = appendage.getParent();         if(obj)         {         obj = sq\_GetCNRDObjectToSQRCharacter(obj);         obj.getVar("debugnew2").push\_vector(flagIndex);         obj.getVar("debugnew2").push\_vector(attacker.getXPos());         } }

1. 附加对象被破坏时

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onDestroyObject", "onDestroyObject\_appendage\_grab\_icemagic") }  function onDestroyObject\_appendage\_grab\_icemagic(appendage, destroyObj) {         if(!appendage)                 return true;         if (destroyObj == appendage.sq\_GetSourceChrTarget())         {                 appendage.setValid(false);         }         return true; }

1. 画附加对象的ui图层

function sq\_AddFunctionName(appendage) {                 appendage.sq\_AddFunctionName("drawAppend", "drawAppend\_appendage\_MagicShield")	 } //参数x y为我自己的位置 function drawAppend\_appendage\_MagicShield(appendage, isOver, x, y, isFlip) {         if (!appendage) {                 return;         }         local obj = appendage.getParent();         if (!obj) {                 appendage.setValid(false);                 return;         }         local var = appendage.getVar();         local backAni = var.getAnimation(VAR\_MAGIC\_SHIELD\_BACK\_ANI);         local frontAni = var.getAnimation(VAR\_MAGIC\_SHIELD\_FRONT\_ANI);                                          if (frontAni && isOver) {		                 sq\_AnimationProc(frontAni);                                                          sq\_drawCurrentFrame(frontAni, x, y, isFlip);		                 }	         else if (backAni && !isOver) {                 sq\_AnimationProc(backAni);                 sq\_drawCurrentFrame(backAni, x, y, isFlip);         } //自定义ani     local Ani = var.GetAnimationMap("flashcutbg\_01", "character/swordman/effect/animation/flashcut/flashcutbg\_01.ani");                          sq\_AnimationProc(Ani);                 sq\_drawCurrentFrame(Ani, 400, y, isFlip); }

1. 画附加对象的ui图层是否继续画

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("isDrawAppend", "isDrawAppend\_appendage\_atmage\_tundra\_cs") } function isDrawAppend\_appendage\_atmage\_tundra\_cs(appendage) {         local obj = appendage.getParent();         if(!obj) {                 appendage.setValid(false);                 return false;         }         local mode = appendage.getVar("mode").get\_vector(0);         if(sq\_IsValidActiveStatus(obj, ACTIVESTATUS\_FREEZE) || mode == MODE\_FREEZE)         {                 return false;         }         return true; }

1. 改变ap的当前状态 #相当于给ap发送并设置状态

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onChangeState", "onChangeState\_execution"); } function onChangeState\_execution(appendage, oldState, newState, datas)         {	         if(!appendage) return;         appendage.sq\_var.setBool(EXC\_VAR\_MOVE\_ACTIVE,true);         appendage.sq\_var.setInt(EXC\_VAR\_CURRENT\_STATE,newState);  //현재 스테이트 : 부모의 키프레임값         // 잡기 불가적은 뒤로 던지기 전에 풀어준다.         if(newState >= 7 && !isGrabableParent(appendage))         {                 appendage.setValid(false);                 return;         }         setNewState\_execution(appendage, oldState ,newState, false); }  //ap 发送状态 appendage.setState(flagIndex,sq\_GetGlobalIntVector()); ​

1. 得到附加对象被攻击时的伤害数值 #就是获取被攻击时打了多少伤害但是组队会不运行

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("onApplyHpDamage", "onApplyHpDamage\_appendage\_atmage\_tundra\_cs") } function onApplyHpDamage\_appendage\_atmage\_tundra\_cs(appendage, newHpDamage, attacker) {         local obj = appendage.getParent();         if(!obj)                 return newHpDamage;         local damage = newHpDamage;         if(sq\_IsValidActiveStatus(obj, ACTIVESTATUS\_FREEZE))         {                                                                           local frozenAddDamageRate = appendage.getVar("skl").get\_vector(4);		// 4.얼어있는 적 추가 데미지                 local addDamage = newHpDamage.tofloat() \* frozenAddDamageRate.tofloat() / 100.0;                 print(" addDamage:" + addDamage);                 damage = damage + addDamage.tointeger();         }         return damage; }

1. 未知 #hearthings

function sq\_AddFunctionName(appendage) {         //appendage.sq\_AddFunctionName("hearthings", "proc\_appendage\_priest\_scythe\_mastery") }

1. 准备画？

function sq\_AddFunctionName(appendage) {         appendage.sq\_AddFunctionName("prepareDraw", "prepareDraw\_appendage\_atmage\_darknessmantle\_effect") }  function prepareDraw\_appendage\_atmage\_darknessmantle\_effect(appendage) {         if(!appendage) {                 return;         }                 local obj = appendage.getParent();	 }

1. 函数方法
   1. 对象管理器的应用 #获取所有控制类对象 #通过map坐标的到ui坐标
      1. 得到控制对象

//对象类 local objectManager = obj.getObjectManager();//得到对象管理器 local objectNumber = objectManager.getCollisionObjectNumber();//总数 for (local i = 0; i < objectNumber; i++) {  local object = objectManager.getCollisionObject(i);//得到控制类对象 }  //遍历对象，判断 是敌人 没死亡 可攻击到 在距离内             local xPos = obj.getXPos();//x             local yPos = obj.getYPos();//y             local zPos = obj.getZPos();//z             local distance = obj.getVar().get\_vector(2);//距離             local objectManager = obj.getObjectManager();//得到對象管理器             for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)             {                 local object = objectManager.getCollisionObject(i);//得到控制類對象                 if (object                     && object.isObjectType(OBJECTTYPE\_ACTIVE)                     && obj.isEnemy(object)                     && object.isInDamagableState(obj)                     && sq\_GetDistance(xPos, yPos, object.getXPos(), object.getYPos(), true) <= distance                     && sq\_Abs(object.getZPos() - zPos) <= 300)                 {                     local activeObj = sq\_GetCNRDObjectToActiveObject(object);//活動類                     //沒死亡                     if (!activeObj.isDead())                     {                         sq\_sendSetActiveStatusPacket(activeObj, obj, ACTIVESTATUS\_STUN, stunProb.tofloat(), stunLevel, false, stunTime);//發送眩暈                     }                 }             }  //遍历对象 abs绝对值判断长方形距离         local direction = obj.getDirection();//得到方向         local xPos = sq\_GetDistancePos(obj.getXPos(), direction, 300);//得到方向的pos         local yPos = obj.getYPos();//y         local zPos = obj.getZPos();//z             local distanceX = 300;//X距離             local distanceY = 90;//Y距離             local distanceZ = 50;//Z距離             local objectManager = obj.getObjectManager();//得到對象管理器             for(local i = 0; i < objectManager.getCollisionObjectNumber(); i++)             {                 local object = objectManager.getCollisionObject(i);//得到控制類對象                 if(object                    && object.isObjectType(OBJECTTYPE\_ACTIVE)                    && obj.isEnemy(object)                    && object.isInDamagableState(obj)                    && sq\_Abs(object.getXPos() - xPos) <= distanceX                    && sq\_Abs(object.getYPos() - yPos) <= distanceY                    && sq\_Abs(object.getZPos() - zPos) <= distanceZ)                 {                     local activeObj = sq\_GetCNRDObjectToActiveObject(object);//活動類                     //沒死亡                     if(!activeObj.isDead())                     {                         sq\_sendSetActiveStatusPacket(activeObj, obj, ACTIVESTATUS\_STUN, stunProb.tofloat(), stunLevel, false, stunTime);//發送眩暈                     }                 }             }   OBJECTTYPE\_OBJECT <- 0   //  顶层对象 OBJECTTYPE\_COLLISION <- 1   //  冲突对象；（OBJECTTYPE\_OBJECT的下层） OBJECTTYPE\_ACTIVE <- 17   //  能动的对象 (OBJECTTYPE\_COLLISION 的下层) OBJECTTYPE\_CHARACTER <- 273   //  角色对象 (OBJECTTYPE\_ACTIVE 的下层) OBJECTTYPE\_MONSTER <- 529   //  怪物对象 (OBJECTTYPE\_ACTIVE 的下层) OBJECTTYPE\_RIDABLEOBJECT <- 4625   //  可以骑对象 (OBJECTTYPE\_MONSTER 的下层) OBJECTTYPE\_PASSIVE <- 33   //  特效对象 (OBJECTTYPE\_COLLISION 的下层) OBJECTTYPE\_ITEM <- 289   //  道具对象 (OBJECTTYPE\_PASSIVE 的下层) OBJECTTYPE\_TRAP <- 545   //  트랩 오브젝트 (OBJECTTYPE\_PASSIVE 하위) OBJECTTYPE\_BREAKABLE <- 1057   //  파괴 가능한 오브젝트(보물상자 겸함) (OBJECTTYPE\_PASSIVE 하위) OBJECTTYPE\_PET <- 65   //  신수 (OBJCTTYPE\_COLLISION 하위) OBJECTTYPE\_CREATURE <- 129   //  크리쳐 (OBJCTTYPE\_COLLISION 하위) OBJECTTYPE\_DRAWONLY <- 2   //  그리기 전용 오브젝트 (OBJECTTYPE\_OBJECT 하위) OBJECTTYPE\_VIRTUALCHARACTER <- 18   //  대기실에서 쓰는 가상 캐릭터 (OBJECTTYPE\_DRAWONLY 하위) OBJECTTYPE\_NPC <- 34   //  대기실의 NPC (OBJECTTYPE\_DRAWONLY 하위) OBJECTTYPE\_DONKEY <- 66   //  대기실의 개인상점 (OBJECTTYPE\_DRAWONLY 하위) OBJECTTYPE\_VIRTUALCREATURE <- 130   //  대기실에서 쓰는 가상 크리쳐(OBJECTTYPE\_DRAWONLY 하위) OBJECTTYPE\_DISJOINTSHOP <- 258   //  대기실의 해체가 해체 상점(OBJECTTYPE\_DRAWONLY 하위) OBJECTTYPE\_VIRTUALMONSTER <- 514   //  대기실에서 쓰는 가상 몬스터 (OBJECTTYPE\_DRAWONLEY 하위) OBJECTTYPE\_NONE\_DELETE <- 1026   //  오브젝트 삭제 시 삭제되지 않는 오브젝트 (OBJECTTYPE\_DRAWONLEY 하위)  OBJECTTYPE\_DEFINE\_END <- 61440

1. 通过ui坐标得到map坐标  通过map坐标得到ui坐标

local objectManager = obj.getObjectManager();//得到对象管理器  //得到map坐标 local xPos = objectManager.getFieldXPos(IMouse.GetXPos(), ENUM\_DRAWLAYER\_NORMAL); local yPos = objectManager.getFieldYPos(IMouse.GetYPos(), 0, ENUM\_DRAWLAYER\_NORMAL); local zPos = objectManager.getFieldZPos(IMouse.GetYPos(),目标y坐标, ENUM\_DRAWLAYER\_NORMAL);  //得到ui坐标 local uiXPos = mapXPos - (objectManager.getFieldXPos(mapXPos, ENUM\_DRAWLAYER\_NORMAL) - mapXPos); local uiYPos = mapYPos - (objectManager.getFieldYPos(mapYPos, 0, ENUM\_DRAWLAYER\_NORMAL) - mapYPos); ​

1. 得到地上掉落的物品对象

local objectManager = obj.getObjectManager();//得到对象管理器 local itemObj = objMgr.getMeetItemObject(IMouse.GetXPos(), IMouse.GetYPos()); ​

1. 我的特效对象 特效总数的应用 #得到我的特效总数 #得到我的特效

obj.getMyPassiveObjectCount(24233);//得到特效总数 对象类 local magicBall = obj.getMyPassiveObject(24233,i);//得到我的特效对象 sq\_GetPassiveObjectByState(obj, 24250, BrokenArrow\_state\_1);//通过状态得到特效  local passiveobj\_cl = obj.sq\_GetPassiveObject(24241); local pole\_passive\_obj = sq\_GetPassiveObject(obj, 24248);  sq\_SendDestroyPacketPassiveObject(magicBall);//破坏特效  

1. 得到 对象ID、组 ，得到对象

local id = sq\_GetObjectId(pTargetChr);//得到ID local object = sq\_GetObjectByObjectId(obj, id);//得到对象  local group = sq\_GetGroup(targetObj);//组 local uniqueId = sq\_GetUniqueId(targetObj);//唯一ID local targetObj = sq\_GetObject(obj, group, uniqueId);//得到对象 

1. 得到对象的重量 高度 宽度

local Weight = sq\_GetObjectWeight(obj);//重量 local height = sq\_GetObjectHeight(pActiveTarget);//宽度 local width = sq\_GetWidthObject(object);//当前宽度 local height = sq\_GetHeightObject(object);//当前高度 

1. 得到父 源对象 #特效 #ap

local parentObj = appendage.getParent();//得到父对象 local sourceObj = appendage.getSource();//得到源对象 local attacker = appendage.sq\_GetSourceChrTarget();//得到源对象的角色目标 local chr = obj.getTopCharacter();//特效类对象 得到父角色对象   

1. 转换对象类 #转换为别的类

local activeObj = sq\_GetCNRDObjectToActiveObject(object);//转为活动类 local sqrChr = sq\_GetCNRDObjectToSQRCharacter(parentObj);//转为角色类 local onlyAiChr = sq\_GetCNRDObjectToAICharacter(grabChr);//转为apc类 local colObj = sq\_GetCNRDObjectToCollisionObject(damager);//转为控制类 local pflashScreen = sq\_GetCNRDObjectToFlashScreen(flashScreenObj);//转为闪屏类 local Monster = sq\_GetCNRDObjectToMonster(object);//转为怪物类 

1. 对象“身上”的数组信息

//int值 obj.getVar().setInt(0,false);//设置 obj.getVar().getInt(0);//得到 //bool值 obj.getVar().setBool(0,false);//设置 obj.getVar().getBool(0);//得到 //浮点数 obj.getVar().setFloat(0,0.001);//设置 obj.getVar().getFloat(0);//得到 //ap obj.getVar().setAppendage(0,appendage); local appendage = obj.getVar().getAppendage(0); //对象 obj.getVar().setObject(0,object); local object = obj.getVar().getObject(0);   //普通值 obj.getVar().clear\_vector();//清除 obj.getVar().size\_vector();//得到总数 obj.getVar().push\_vector(activeObj);//加入 obj.getVar().get\_vector(0);//得到第几个 obj.getVar().set\_vector(0, cnt);//改变第几个  //时钟 obj.getVar().clear\_timer\_vector(); obj.getVar().push\_timer\_vector(); local t = obj.getVar().get\_timer\_vector(0); t.setParameter(20, -1);//参数1：检查间隔 参数2：限制次数 t.resetInstant(0);//重置 参数未知 t.setEventOnStart(true);//为true 一开始就可以触发 t.isEnd();//判断次数是否用完 t.isOnEvent(currentT) == true//判断时间是否到达 t.getEventTerm();//得到设置时的间隔 t.getEventMaxCount();//得到设置时的最大次数 t.setEventTerm(200);//设置间隔 t.setEventMaxCount(5);//设置最大次数  //计时器 obj.getVar().clear\_ct\_vector();//清除 obj.getVar().push\_ct\_vector();//加入 local timer = obj.getVar().get\_ct\_vector(0);//得到 timer.Reset();//初始化 timer.Start(10000,0);//计时开始 local currentT = timer.Get();//得到时间  //以下是放入任意对象 obj.getVar().clear\_obj\_vector();//清除 obj.getVar().get\_obj\_vector\_size();//得到总数 obj.getVar().push\_obj\_vector(activeObj);//加入 obj.getVar().get\_obj\_vector(0);//得到第几个 obj.getVar().set\_obj\_vector(0, cnt);//改变第几个 obj.getVar().remove\_obj\_vector(ringObj);//删除 obj.getVar().is\_obj\_vector(damager);//是否在其中 obj.getVar().get\_obj\_vector\_index(damager);//得到对象当中的ID  //以下是放入ani对象 obj.getVar().clear\_ani\_vector();//清除 obj.getVar().push\_ani\_vector(activeObj);//加入 obj.getVar().get\_ani\_vector(0);//得到第几个 obj.getVar().set\_ani\_vector(0, cnt);//改变第几个 

1. 给对象发送状态包  并且  接收传递过来的内容

//发送状态包 //转换对象类 local activeObj = sq\_GetCNRDObjectToActiveObject(object);//转为活动类 local sqrChr = sq\_GetCNRDObjectToSQRCharacter(parentObj);//转为角色类 local colObj = sq\_GetCNRDObjectToCollisionObject(damager);//转为控制类  //这里是发送状态时  给状态定义的类型 STATE\_PRIORITY\_AUTO <- 0 //根据时间和条件自动完成的一切(攻击结束，发射->战场等等) 特效一般用这个 STATE\_PRIORITY\_USER <- 1 //根据用户的commund发布的内容(技能，攻击等)  一般是使用技能的时候 STATE\_PRIORITY\_HALF\_FORCE < 2 / 3 /想要离开，但都比强制要低。(翻过来等) STATE\_PRIORITY\_FORCE < 3 //被迫去做的事情。(坠落，伤害，死亡，拦截等)  一般给敌人发送控制状态时 STATE\_PRIORITY\_IGNORE\_FORCE < 4 //强制变更无视的东西。(用手术刀抓住对方等)   一般是抓取敌人的时候  //下面是发送状态时 还传递数值过去 obj.sq\_IntVectClear(); obj.sq\_IntVectPush(SUB\_STATE\_BLUEDRAGONWILL\_0); obj.sq\_AddSetStatePacket(STATE\_BLUEDRAGONWILL, STATE\_PRIORITY\_USER, true);//角色类对象 发送状态 //不传值的话就这样写  更改一下最后的参数为false就行了 obj.sq\_AddSetStatePacket(STATE\_BLUEDRAGONWILL, STATE\_PRIORITY\_USER, false);//角色类对象 发送状态  //如果是复仇者 那么就要这么写  就区分一下大小写的a obj.sq\_addSetStatePacket(STATE\_BLUEDRAGONWILL, STATE\_PRIORITY\_USER, false);//角色类对象 发送状态  //如果是特效nut中写的话就用这个 local pIntVec = sq\_GetGlobalIntVector();//得到包 sq\_IntVectorClear(pIntVec);//清除 sq\_IntVectorPush(pIntVec, x);//加入 obj.addSetStatePacket(PASSIVEOBJ\_SUB\_STATE\_0, pIntVec, STATE\_PRIORITY\_AUTO, false, "");//控制类对象  发送状态  obj.addSetStatePacket(PASSIVEOBJ\_SUB\_STATE\_0, sq\_GetGlobalIntVector(), STATE\_PRIORITY\_AUTO, false, "");//控制类对象  发送状态   //当然也可以 用下面的方法 obj.sendStateOnlyPacket(PASSIVEOBJ\_SUB\_STATE\_0);//控制类对象 发送状态 obj.sendStatePacket(PASSIVEOBJ\_SUB\_STATE\_0, 1);//控制类对象 发送状态并且传递过去了一个值  //最后可以刷新一下发送的状态包 obj.flushSetStatePacket();//刷新发送的状态包   //下面的是不常用的 区分活动类对象  或者  控制类对象     sq\_IntVectorClear(sq\_GetGlobalIntVector());     sq\_IntVectorPush(sq\_GetGlobalIntVector(),1);     sq\_AddSetStatePacketActiveObject(sourceObj,8, sq\_GetGlobalIntVector(), STATE\_PRIORITY\_USER);//活动类对象发送状态      sq\_IntVectorClear(sq\_GetGlobalIntVector());     sq\_IntVectorPush(sq\_GetGlobalIntVector(),2);     sq\_AddSetStatePacketCollisionObject(sourceObj, 8, sq\_GetGlobalIntVector(), STATE\_PRIORITY\_USER, true);//控制类对象发送状态  //这里就开始接收 传递过来的数值  //这个是特效或者技能效果包会用到这个 local x = sq\_GetVectorData(datas, 0);  //这个是角色发送的状态 接收的数据 local SubState = obj.sq\_GetVectorData(datas, 0);//得到傳過來的第0個值   //发送第13状态的传值介绍 # STATE\_THROW [0]   Throw State (0:모으기, 1:던지기, 2:개인시전) \* Throw State 0 \* [1]   던지는 타입 (ENUM\_THROW\_TYPE) [2]   던지는 대상의 인덱스 (스킬 인덱스 or 아이템 인덱스) [3]   모으는 시간 [4]   발사 시간 [5]   던지기 애니메이션 타입 (0 or 1) [6]   모으기 속도 타입 [7]   발사 속도 타입 [8]   모으기 속도 (안넣으면 SPEED\_VALUE\_DEFAULT) [9]   발사 속도 (안넣으면 SPEED\_VALUE\_DEFAULT) [10]	개인시전 범위 (안넣거나 -1이면 개인시전 안함) \* Throw State 1 \* // Throw State 2에서 넘어왔을 경우에만 [1]	개인 시전시 대상 Object Id \* Throw State 2 \* obj.sq\_IntVectClear();				 obj.sq\_IntVectPush(0);		// throwState obj.sq\_IntVectPush(0);		// throwType obj.sq\_IntVectPush(SKILL\_ELEMENTAL\_CHANGE);	// throwIndex obj.sq\_IntVectPush(500);	// throwChargeTime obj.sq\_IntVectPush(500);	// throwShootTime obj.sq\_IntVectPush(0);		// throwAnimationIndex obj.sq\_IntVectPush(4);		// chargeSpeedType obj.sq\_IntVectPush(4);		// throwShootSpeedType obj.sq\_IntVectPush(1000);	// chargeSpeedValue obj.sq\_IntVectPush(1000);	// throwShootSpeedValue obj.sq\_IntVectPush(-1);		// personalCastRange obj.sq\_AddSetStatePacket(STATE\_THROW, STATE\_PRIORITY\_USER, true);	     

1. 得到当前状态   得到  设置 技能使用状态

local SubState = obj.getSkillSubState();//得到技能使用状态 obj.setSkillSubState(SUB\_STATE\_BLOODRIVEN\_1);//设置技能使用状态   local state = obj.sq\_GetState();//角色类 得到状态 local state = obj.getSendState();//得到发送的状态  local state = obj.getState();//对象类 得到状态                          STATE\_STAND <- 0 		  //  站立，移动                 STATE\_SIT <- 1 		  //  倒地前                 STATE\_SIT\_FOREVER <- 2 		  //  倒地                 STATE\_DAMAGE <- 3 		  //  被攻击                 STATE\_DOWN <- 4 		  //  浮空                  STATE\_DIE <- 5 		  //  死亡                 STATE\_JUMP <- 6 		  //  跳跃                 STATE\_JUMP\_ATTACK <- 7 		  //  跳跃攻击                 STATE\_ATTACK <- 8 		  //  攻击                 STATE\_HOLD <- 9 		  //  被控制                 STATE\_SUMMONSTART <- 10 		  //  召唤开始                 STATE\_SUMMONEND <- 11 		  //  召唤结束                 STATE\_UNSUMMON <- 12 		  //  已经被召唤过消失                 STATE\_THROW <- 13 		  //  投掷                 STATE\_DASH <- 14 		  //  前冲                 STATE\_DASH\_ATTACK <- 15 		  //  前冲攻击                 STATE\_GET\_ITEM <- 16 		  //  得到道具                 STATE\_BUFF <- 17 		  //  buff                                                                                                                                                                                                                                                                                                                                                       STATE\_QUICK\_STANDING <- 18 		  //  快速起身							                 STATE\_CROUCH <- 19 		  //  蹲下                 STATE\_CROUCH\_ATTACK <- 20 		  //  蹲下攻击                 STATE\_LOW\_KICK <- 21 		  //  로킥, 본 크러셔, 사로킥                 STATE\_TRY\_GRAB <- 22 		  //  잡기 시도                 STATE\_SUPLEX <- 23 		  //  수플렉스                 STATE\_JUMP\_SUPLEX <- 24 		  //  스파이어                 STATE\_JUMP\_SUPLEX\_LARIAT <- 25 		  //  스파이어 회전 추가타                 STATE\_MOUNT\_TRY <- 26 		  //  마운트 시도                 STATE\_MOUNT <- 27 		  //  마운트                 STATE\_STOMP <- 28 		  //  밟기                 STATE\_CLOSE\_PUNCH <- 29 		  //  원인치 펀치                 STATE\_LIFT\_UPPER <- 30 		  //  무즈 어퍼                 STATE\_GRAB\_EXPLOSION <- 31 		  //  일발화약성                 STATE\_VIRTUAL\_ATTACK <- 32 		  //  일반 공격 -> 해머킥 등을 위한 가상 STATE                 STATE\_SHOULDER\_TACKLE <- 33 		  //  숄더 태클                 STATE\_WHIRL\_WIND\_KICK <- 34 		  //  선풍각                 STATE\_BLOCK\_BUSTER <- 35 		  //  블록 버스터                 STATE\_TRY\_LEG\_SUPLEX <- 36 		  //  에어슈타이너 시도                 STATE\_LEG\_SUPLEX <- 37 		  //  에어슈타이너 실행                 STATE\_LIGHTNING\_DANCE <- 38 		  //  라이트닝 댄스                 STATE\_THROW\_WEB <- 39 		  //  천라지망                 STATE\_HIDDEN\_STING <- 40 		  //  바늘 장전(히든스팅)                 STATE\_VENOM\_MINE <- 41 		  //  베놈마인                 STATE\_JUNK\_SPIN <- 42 		  //  정크스핀                 STATE\_SHOULDER\_CHARGE <- 43 		  //  철산고                 STATE\_SINGLE\_KICK <- 44 		  //  해머킥                 STATE\_NEN\_FLOWER <- 45 		  //  넨화                 STATE\_THROW\_ENEMY <- 46 		  //  로플링                 STATE\_DASH\_PUNCH <- 47 		  //  정권 찌르기                 STATE\_PUNCH\_AFTER\_RETURN <- 48 		  //  타격후 뒤로돌리기                 STATE\_RANDOM\_KICK <- 49 		  //  백열각 난타                 STATE\_RISING\_UPPER <- 50 		  //  승룡권                 STATE\_DASH\_AFTER\_DASH <- 51 		  //  호신연격                 STATE\_EARTH\_BREAK <- 52 		  //  금강쇄                 STATE\_HOLD\_UP <- 53 		  //  홀드업                 STATE\_WILD\_CANNON\_SPIKE <- 54 		  //  와일드 캐논 스파이크                 STATE\_SUPLEX\_CYCLONE <- 55 		  //  수플렉스 사이클론                 STATE\_LIGHTNING\_DRAGON <- 56 		  //  광충노도                 STATE\_STRONGEST\_LOW\_KICK <- 57 		  //  사상 최강의 로킥                 STATE\_GROUND\_KICK <- 58 		  //  그라운드킥                 STATE\_FAST\_DASH <- 59 		  //  순보                 STATE\_DESTROY\_EARTH\_SKY\_DROP <- 60 		  //  스트리트 파이터 각성기 - 천붕지괴                 STATE\_TYPHOON <- 61 		  //  그래플러 각성기                 STATE\_FLAME\_LEGS <- 62 		  //  스트라이커 각성기 - 화염의각                 STATE\_THROW\_SAND <- 63 		  //  헬터스?터                 STATE\_ENCHANT\_POISON <- 64 		  //  독장전                 STATE\_SPIRAL\_NEN\_SHOOT <- 65 		  //  나선의 넨 : 출                 STATE\_NEN\_SPEAR\_EX <- 66 		  //  넨 스피어(특성) proc에서 플래그1에 몸 오버레이,화면 플래쉬    플래그2 에 꽂히는 어펜디지 소환                  STATE\_HURRICANE\_SPEAR <- 67 		  //  허리케인 스피어 (특성)                 STATE\_CRASH\_ROPE <- 68 		  //  광폭혈사 (특성)                 STATE\_CHARGE\_SPEAR\_EX <- 69 		  //  차지 스피어(특성)                 STATE\_SPIRAL\_COLUMN\_EX <- 70 		  //  나선환(특성)                 STATE\_GLUEY\_FRUIT\_EX <- 71 		  //  끈적끈적 열매(특성)                 STATE\_CHAIN\_KICK\_EX <- 72 		  //  연환퇴 (특성)                 STATE\_108\_STAIRS\_EX <- 73 		  //  108계단 (특성) STATE\_INHERIT\_START <- 74  STATE\_MAX <- 75  

1. 判断是否是我控制的对象

local isMyControl = obj.isMyControlObject();//是否是我控制的角色 sq\_IsMyControlObject(obj);//任意对象 obj.sq\_IsMyControlObject();//角色类   ​

1. 时钟事件 函数 #利用onTimeEvent事件来指向延时触发的代码
   1. 设置时钟事件

//参数1：时钟id //参数2：延时时间 //参数3：最大次数 //参数4：false一开始不运行 true一开始就运行 obj.setTimeEvent(0,50,maxCreateCount,false); ​

1. 删除时钟事件

obj.stopTimeEvent(0); obj.removeAllTimeEvent();//停止所有时钟事件

1. 判断时钟是否存在

obj.isExistTimeEvent(0);

1. appendage 相关设置 #例如附加ap #增加属性等等
   1. 得到附加对象 源对象 源角色对象

//在ap中获得的附加对象是属于 活动类 //源对象是属于控制类  local parentObj = appendage.getParent();//得到附加对象 local sourceObj = appendage.getSource();//得到源对象 local attacker = appendage.sq\_GetSourceChrTarget();//得到源对象的角色目标  if(!sourceObj || !parentObj) { appendage.setValid(false); return; }	  //也可以 local parentObj = appendage.getAppendageInfo().parent\_;//得到附加对象 local sourceObj = appendage.getAppendageInfo().source\_;//得到源对象 

1. 判断ap是否有效

appendage.isValid(); 

1. 设置 得到有效时间

local appendage = CNSquirrelAppendage.sq\_GetAppendage(obj, "Character/ATMage/MagicShield/ap\_MagicShield.nut"); if (!appendage) return; appendage.sq\_SetValidTime(time);//设置有效时间 appendage.getAppendageInfo().setValidTime(time);//设置有效时间   local validT = appendage.getAppendageInfo().getValidTime();//得到设置的有效时间  

1. 得到ap存在时间

local useTime = appendage.getTimer().Get();  //这里其实是得到的计时器 也可以有这样的操作 timer.Reset();//初始化 timer.Start(10000,0);//计时开始 local currentT = timer.Get();//得到时间 ​

1. 关于ap的效果ani的得到跟删除

appendage.sq\_DeleteEffectFront();//删除身前ani appendage.sq\_DeleteEffectBack();//删除身后ani local ani = appendage.sq\_GetFrontAnimation(0);//得到身前的ani local ani = appendage.sq\_GetBackAnimation(0);//得到身后的ani //是否是结束 local isEnd = sq\_IsEnd(ani); if(isEnd) {         appendage.setValid(false);//销毁ap } 

1. 得到ap的技能ID 设置技能ID

local skillId = appendage.sq\_GetSkillIndex();//得到技能ID appendage.sq\_SetSkillIndex(100);​//设置技能ID 

1. 删除ap

CNSquirrelAppendage.sq\_RemoveAppendage(obj, "Character/ATMage/MagicShield/ap\_MagicShield.nut"); 

1. 判断对象身上是否存在ap

CNSquirrelAppendage.sq\_IsAppendAppendage(obj, "Character/ATMage/MagicShield/ap\_MagicShield.nut"); 

1. 得到对象身上的ap

local dieHardAppendage = CNSquirrelAppendage.sq\_GetAppendage(sqrObj, "Character/ATMage/DieHard/ap\_ATMage\_DieHard.nut"); 

1. 给对象附加ap

local AddAppendage = CNSquirrelAppendage.sq\_AppendAppendage(damager, obj, SKILL\_BLOODBOOM, true, "character/swordman/bloodboom/ap\_bloodboom.nut", true); //参数1：附加对象 //参数2：源对象 //参数3：技能ID //参数4：叠加？ 一般都为false //参数5：路径 //参数6：暂时不知道  

1. 增加属性状态
   1. 属性类型常量

CHANGE\_STATUS\_TYPE\_PHYSICAL\_ATTACK <- 0   //  力量 CHANGE\_STATUS\_TYPE\_MAGICAL\_ATTACK <- 1   //  智力 CHANGE\_STATUS\_TYPE\_MAGICAL\_DEFENSE <- 2   //  精神 CHANGE\_STATUS\_TYPE\_PHYSICAL\_DEFENSE <- 3   //  体力 CHANGE\_STATUS\_TYPE\_EQUIPMENT\_PHYSICAL\_ATTACK <- 4   //  装备物理攻击 CHANGE\_STATUS\_TYPE\_EQUIPMENT\_PHYSICAL\_DEFENSE <- 5   //  装备物理防御 CHANGE\_STATUS\_TYPE\_PHYSICAL\_ATTACK\_BONUS <- 6   //  力量增加率 CHANGE\_STATUS\_TYPE\_MAGICAL\_ATTACK\_BONUS <- 7   //  智力增加率 CHANGE\_STATUS\_TYPE\_JUMP\_POWER <- 8   //  跳跃高度 CHANGE\_STATUS\_TYPE\_JUMP\_SPEED\_RATE <- 9   //  跳跃速度率 CHANGE\_STATUS\_TYPE\_ATTACK\_SPEED <- 10   //  攻击速度 CHANGE\_STATUS\_TYPE\_MOVE\_SPEED <- 11   //  移动速度 CHANGE\_STATUS\_TYPE\_CAST\_SPEED <- 12   //  释放速度 CHANGE\_STATUS\_TYPE\_HP\_MAX <- 13   //  HP 最大值 CHANGE\_STATUS\_TYPE\_HP\_REGEN\_RATE <- 14   //  HP 恢复率 CHANGE\_STATUS\_TYPE\_PHYSICAL\_CRITICAL\_HIT\_RATE <- 15   //  物理暴击率 CHANGE\_STATUS\_TYPE\_MAGICAL\_CRITICAL\_HIT\_RATE <- 16   //  魔法暴击率 CHANGE\_STATUS\_TYPE\_PHYSICAL\_BACK\_ATTACK\_CRITICAL <- 17   //  物理抗暴击 CHANGE\_STATUS\_TYPE\_MAGICAL\_BACK\_ATTACK\_CRITICAL <- 18   //  魔法抗暴击 CHANGE\_STATUS\_TYPE\_CRITICAL\_TOLERANCE\_RATE <- 19   //  暴击抗性率 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_FIRE <- 20   //  火属性抗性 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_WATER <- 21   //  冰属性抗性 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_DARK <- 22   //  暗属性抗性 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_LIGHT <- 23   //  光属性抗性 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_ALL <- 24   //  所有属性抗性 CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_ZERO <- 25   //  无属性抗性 CHANGE\_STATUS\_TYPE\_ACTIVESTATUS\_TOLERANCE\_ALL <- 26   //  所有异常抗性 CHANGE\_STATUS\_TYPE\_ACTIVEPROPERTY\_STUCK <- 27   //  CHANGE\_STATUS\_TYPE\_BACK\_ATTACK\_STUCK\_TOLERANCE <- 28   //   CHANGE\_STATUS\_TYPE\_MP\_REGEN\_RATE <- 29   //  MP 恢复率 CHANGE\_STATUS\_TYPE\_EXTRA\_SPEED\_RATE <- 30   //  额外速度率 CHANGE\_STATUS\_TYPE\_EQUIPMENT\_MAGICAL\_ATTACK <- 31   //  装备魔法攻击 CHANGE\_STATUS\_TYPE\_EQUIPMENT\_MAGICAL\_DEFENSE <- 32   //  装备魔法防御 CHANGE\_STATUS\_TYPE\_STUCK <- 33   //  命中率 CHANGE\_STATUS\_TYPE\_HIT\_RECOVERY <- 34   //  硬直率 CHANGE\_STATUS\_TYPE\_MELEE\_HIT\_DELAY <- 35   //  近战被击延时 CAHNGE\_STATUS\_TYPE\_EQUIPMENT\_ALL\_STAT <- 36   //  武器所有能力值 CHANGE\_STATUS\_TYPE\_CUSTOM <- 37  CHANGE\_STATUS\_TYPE\_EXP\_DOUBLE <- 38   //  双倍经验 CHANGE\_STATUS\_TYPE\_EVIL\_UP <- 39   //  异界抗魔 攻击力，hp，mp提升比率 实际效果是看的数值 CHANGE\_STATUS\_TYPE\_EVIL\_DOWN <- 40   //  异界抗魔 攻击力，hp，mp下降比率 实际效果看的是数值 CHANGE\_STATUS\_TYPE\_RIGIDITY <- 41   //  僵直度 增加后 增加被敌人攻击时的僵直时间 CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_FIRE <- 42   //  火属性强化 CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_WATER <- 43   //  冰属性强化 CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_DARK <- 44   //  暗属性强化 CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_LIGHT <- 45   //  光属性强化 CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_ALL <- 46   //  所有属性强化 CHANGE\_STATUS\_TYPE\_DISEASE <- 47   //  韓煽 CHANGE\_STATUS\_TYPE\_MP\_MAX <- 48   //  MP最大值 CHANGE\_STATUS\_TYPE\_COOLTIME\_DECLINE <- 49   //  冷却时间减少 CHANGE\_STATUS\_TYPE\_PHYSICAL\_CRITICAL\_DAMAGE\_RATE <- 50   // 物理暴击伤害率 CHANGE\_STATUS\_TYPE\_MAGICAL\_CRITICAL\_DAMAGE\_RATE <- 51   //  魔法暴击伤害率 CHANGE\_STATUS\_TYPE\_BLOODWAR\_GROW\_ABILITY <- 52   //  綰楝萄 湍瞪(癱曖鱉) 撩濰  CHANGE\_STATUS\_TYPE\_ADDITIONAL\_PHYSICAL\_GENUINE\_ATTACK <- 53   //  附加物理绝对伤害 独立伤害 CHANGE\_STATUS\_TYPE\_ADDITIONAL\_MAGICAL\_GENUINE\_ATTACK <- 54   //  附加魔法绝对伤害 独立伤害 CHANGE\_STATUS\_TYPE\_SUMMON\_SKILL\_POWER\_BONUS\_RATE <- 55   //  召唤技能力量加成率 CHANGE\_STATUS\_TYPE\_ANTIEVIL <- 56   //  褒薯 葆溘 熱纂 褻薑 CHANGE\_STATUS\_TYPE\_PHYSICAL\_ABSOLUTE\_DAMAGE <- 57   //  物理绝对伤害 CHANGE\_STATUS\_GHOST\_TRAIN\_NO\_BREATH\_TIME <- 58   //  嶸滄翮離 韓衝 衛除 滲唳 CHANGE\_STATUS\_CHARACTER\_LINK <- 59   //  議葛攪 葭觼 CHANGE\_STATUS\_GOLD\_INCREASE <- 60 //获得的金币增加 CHANGE\_STATUS\_TYPE\_MAX <- 61   piercing power

1. 创建一个属性状态

//参数1：属性类型 //参数2：false为增加数值 true为增加百分比数值 //参数3：增加的数值 //参数4：时间 local ap = sq\_CreateChangeStatus(CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_FIRE, false, 1000.0 , 0); if (ap) {     ap.getAppendageInfo().setValidTime(10000);//设置有效时间     ap.sq\_Append(obj, obj);//设置属性的父对象 }

1. 附加ap 并且创建可以看到图标的属性

//增加可以看到图标的属性 local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, SKILL\_SUPPRESSINGFIRE, false, "character/gunner/suppressingfire/ap\_suppressingfire.nut", false);//附加一个ap local change\_appendage = appendage.sq\_getChangeStatus("changeStatus");//ap的当前状态 if(!change\_appendage) change\_appendage = appendage.sq\_AddChangeStatus("changeStatus",obj, obj, 500000, CHANGE\_STATUS\_TYPE\_PHYSICAL\_CRITICAL\_HIT\_RATE, false, 1000);//增加一个当前状态 //参数1：名 //参数2：对象 //参数3：对象 //参数4：有效时间 //参数5：增加的属性类型 //参数6：false为增加数值 true为增加百分比数值 //参数7：数值

1. 附加ap 创建看不到图标的属性

//增加看不到图标的属性 一般是被动技能会有一个技能图标，再用这个加上就不会有额外的icon出现 也会加属性 local change\_appendage = appendage.sq\_getChangeStatus("ele\_atk\_water");//得到当前状态 if(!change\_appendage) change\_appendage = appendage.sq\_AddChangeStatusAppendageID(obj, obj, 0, CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_WATER, false, registValue, APID\_COMMON);//增加一个属性 if(change\_appendage) { change\_appendage.clearParameter(); change\_appendage.addParameter(CHANGE\_STATUS\_TYPE\_ELEMENT\_ATTACK\_WATER, false, registValue.tofloat());//在这里加上真实的属性 } //参数1：增加的属性类型 //参数2：false为增加数值 true为增加百分比数值 //参数3：数值

1. 附加的属性设置ID  按照id 删除属性 #也可以删除所有属性

sq\_RemoveChangeStatus(obj, APID\_AT\_MAGE\_ELEMENT\_SHIELD);//删除属性  local elementalType = obj.getThrowElement(); local upValue = sq\_GetIntData(obj, SKILL\_ELEMENTAL\_SHIELD, 0); local ap = sq\_CreateChangeStatus(CHANGE\_STATUS\_TYPE\_ELEMENT\_TOLERANCE\_FIRE + elementalType, false, upValue.tofloat() , 0); if (ap) { ap.getAppendageInfo().setValidTime(validTime); ap.sq\_Append(obj, obj, APID\_AT\_MAGE\_ELEMENT\_SHIELD, 0, null); }

1. 附加ap的append的作用 #参数的介绍

//参数1：被附加ap者 参数2：附加的源对象 ap.sq\_Append(obj, obj);//設置屬性的父對象i  //参数1：被附加ap者 参数2：附加的源对象 参数3：设置ap的ID 不可重复附加 ap.sq\_Append(obj, obj, APID\_SKILL\_LIGHT\_ENCHANT\_WEAPON);  //参数1：被附加ap者 参数2：附加的源对象 参数3：设置ap的ID 不可重复附加 参数4：可叠加次数 参数5：不明 ap.sq\_Append(object, obj, APID\_AT\_MAGE\_ELEMENT\_SHIELD, 1, null);  //参数1：设置的ap  参数2：被附加ap者 参数3：附加的源对象 参数4：是否是buff CNSquirrelAppendage.sq\_Append(ap, obj, obj, true);  //参数1：设置的ap 参数2：被附加ap者 参数3：附加的源对象  参数4：设置apID 不可重复附加 参数5：是否是buff CNSquirrelAppendage.sq\_AppendAppendageID(ap, obj, obj, APID\_SKILL\_LIGHT\_ENCHANT\_WEAPON, false);




1. 增加 删除残影效果

local spectrumAppendage = appendage.sq\_GetOcularSpectrum("ocularSpectrum");//得到残影 if(!spectrumAppendage) {         spectrumAppendage = appendage.sq\_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);//增加残影 } sq\_SetParameterOcularSpectrum(spectrumAppendage, 800, 100, true, sq\_RGBA(20, 80, 200, 255), sq\_RGBA(20, 80, 200, 0), 2, 2, 2);//设置残影效果 spectrumAppendage.endCreateSpectrum();//删除残影 

1. 附加ap时提升目标的hp或者mp上限值

local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, SKILL\_ATFIGHTER\_FIREWORKS, false, "character/atfighter/fireworks/ap\_fireworks.nut", true);//附加ap  local hpmaxup\_appendage = appendage.sq\_getHpMaxUp("HpMaxUp");//得到 if (!hpmaxup\_appendage)//不存在 hpmaxup\_appendage = appendage.sq\_AddHpMaxUp("HpMaxUp", obj, obj, 0, 99999, 99999);//增加  //参数1：name名称 //参数2：被附加对象 //参数3：附加对象 //参数4：持续时间 写0则无限时间 //参数5：增加的hp值 //参数6：增加的mp值  数值需要通过运算后得到正确数值 local convert\_rate = sq\_GetAbilityConvertRate(obj, CONVERT\_TABLE\_TYPE\_HP);//先得到转换率 local dooms\_con\_hp = dooms\_hp.tofloat() \* convert\_rate.tofloat();//得到正确的数值  //转换常量 CONVERT\_TABLE\_TYPE\_DAMAGE <- 0   //  等嘐雖 CONVERT\_TABLE\_TYPE\_DEFENSE <- 1   //  寞橫溘 CONVERT\_TABLE\_TYPE\_HP <- 2   //  HP MAX CONVERT\_TABLE\_TYPE\_PHYSICAL\_ATTACK <- 3   //   CONVERT\_TABLE\_TYPE\_PHYSICAL\_DEFENSE <- 4   //  羹溘 CONVERT\_TABLE\_TYPE\_MAGICAL\_ATTACK <- 5   //  雖棟 CONVERT\_TABLE\_TYPE\_MAGICAL\_DEFENSE <- 6   //  薑褐溘 CONVERT\_TABLE\_TYPE\_PHYSICAL\_ABSOLUTE\_DAMAGE <- 7   //  僭葬 瞰渠 等嘐雖 CONVERT\_TABLE\_TYPE\_PHYSICAL\_DAMAGE\_REDUCE <- 8   //  僭葬 等嘐雖 爾薑 CONVERT\_TABLE\_TYPE\_MAGICAL\_ABSOLUTE\_DAMAGE <- 9   //  葆徹 瞰渠 等嘐雖 CONVERT\_TABLE\_TYPE\_MAGICAL\_DAMAGE\_REDUCE <- 10   //  葆徹 等嘐雖 爾薑 CONVERT\_TABLE\_TYPE\_ACTIVESTATUS\_DAMAGE\_REDUCE <- 11   //  鼻鷓檜鼻 等嘐雖 爾薑. CONVERT\_TABLE\_TYPE\_MP <- 12   //  MP MAX CONVERT\_TABLE\_TYPE\_SKILL\_POWER <- 13   //  蝶鑒 絮董等嘐雖 CONVERT\_TABLE\_TYPE\_MAX <- 14   ​ ​

1. 附加ap时恢复hp血量

local appendage = CNSquirrelAppendage.sq\_AppendAppendage(obj, obj, SKILL\_ATFIGHTER\_FIREWORKS, false, "character/atfighter/fireworks/ap\_fireworks.nut", true);//附加ap local change\_appendage = appendage.sq\_GetCNChangeHp("changehp");//得到hp if (!change\_appendage)         change\_appendage = appendage.sq\_AddCNChangeHp("changehp", obj, obj, 0, 50000.0, 5000);//恢复设置  //参数1：name名称  //参数2：被附加对象  //参数3：附加对象  //参数4：0 //参数5：增加的hp值  浮点数 //参数6：恢复总时间   

1. 吸附ap #测试效果不好 #使用原版的代码附加ap后会一直改变y坐标 #搞不明白到底有啥用

local appendage = CNSquirrelAppendage.sq\_AppendAppendage(parentObj, obj, SKILL\_FROZENLAND, false, "Appendage/Character/ap\_common\_suck.nut", false); local suckVel = 200; local radiusSize = obj.getVar("radius").get\_vector(1); local range = radiusSize \* 2; if(appendage) { appendage.sq\_SetValidTime(2000); CNSquirrelAppendage.sq\_Append(appendage, parentObj, obj); local auraAppendage = appendage.sq\_getAuraMaster("frozenAura"); if(!auraAppendage) auraAppendage = appendage.sq\_AddAuraMaster("frozenAura",parentObj, obj, 1200, 18, 5, 0); auraAppendage.setAttractionInfo(suckVel, suckVel, range, 100); }  ​

1. 额外附加 延时死亡并控制

//参数1：附加对象 //参数2：源对象  //参数3：是否控制  //参数4：是否延时死亡  //参数5：销毁ap时是否击飞  //参数6：击飞距离  //参数7：击飞高度 //参数8：方向 //参数9：父ap （父ap销毁则控制ap也销毁） sq\_HoldAndDelayDie(damager, obj, true, true, true, 200, 200, ENUM\_DIRECTION\_NEUTRAL , masterAppendage); 

1. 额外附加 均匀移动

//参数1：附加对象 //参数2：源对象 //参数3：以此对象坐标为基准 //参数4：偏移的x坐标 //参数5：偏移的y坐标 //参数6：偏移的z坐标 //参数7：到达目标时间 //参数8：没测试一般为true //参数9：父ap （父ap销毁则控制ap也销毁） sq\_MoveToAppendageForce(ChrJob, obj, obj, 160, 0, ChrJob.getZPos(), 3000, true, masterAppendage);//强制移动  //也可以改为下面的 则有坐标到达不了就不会再移动 sq\_MoveToAppendage(ChrJob, obj, obj, 160, 0, ChrJob.getZPos(), 3000, true, masterAppendage);//强制移动 ​

1. 额外附加 由快到慢 由慢到快移动

//参数1：附加对象 //参数2：源对象 //参数3：以此对象坐标为基准 //参数4：偏移的x坐标 //参数5：偏移的y坐标 //参数6：偏移的z坐标 //参数7：到达目标时间 //参数8：没测试一般为true //参数9：父ap （父ap销毁则控制ap也销毁） //参数10：true代表由快到慢 false代表由慢到快 sq\_AccelMoveToAppendageForce(aoDamager, obj, obj, x, 0, z - aoDamager.getObjectHeight()/2, liftTime, true, masterAppendage,true);//强制移动  //也可以改为下面的 则有坐标到达不了就不会再移动 sq\_AccelMoveToAppendage(aoDamager, obj, obj, x, 0, z - aoDamager.getObjectHeight()/2, liftTime, true, masterAppendage,true);  

1. ani以及绘画对象的设置
   1. 图层 以及 对象常量

`                         `ENUM\_DRAWLAYER\_CONTACT <- 0 		  //  前景 创建后所有的都看不到了                 ENUM\_DRAWLAYER\_NORMAL <- 1 		  //  正常图层                 ENUM\_DRAWLAYER\_BOTTOM <- 2 		  //  底层图层                 ENUM\_DRAWLAYER\_CLOSEBACK <- 3 		  //  map 地板图层                 ENUM\_DRAWLAYER\_MIDDLEBACK <- 4 		  //  map 远景图层 房屋之类的                 ENUM\_DRAWLAYER\_DISTANTBACK <- 5 		  //  map 远景图层 背景                 ENUM\_DRAWLAYER\_COVER <- 6 		  //  顶层图层 ENUM\_DRAWLAYER\_MAX <- 7                           OBJECTTYPE\_OBJECT <- 0 		  //  顶层对象                 OBJECTTYPE\_COLLISION <- 1 		  //  冲突对象；（OBJECTTYPE\_OBJECT的下层）                 OBJECTTYPE\_ACTIVE <- 17 		  //  能动的对象 (OBJECTTYPE\_COLLISION 的下层)         OBJECTTYPE\_CHARACTER <- 273 	  //  角色对象 (OBJECTTYPE\_ACTIVE 的下层)         OBJECTTYPE\_MONSTER <- 529 	  //  怪物对象 (OBJECTTYPE\_ACTIVE 的下层)         OBJECTTYPE\_RIDABLEOBJECT <- 4625 	  //  可以骑对象 (OBJECTTYPE\_MONSTER 的下层)                 OBJECTTYPE\_PASSIVE <- 33 		  //  特效对象 (OBJECTTYPE\_COLLISION 的下层)                 OBJECTTYPE\_ITEM <- 289 		  //  道具对象 (OBJECTTYPE\_PASSIVE 的下层)                 OBJECTTYPE\_TRAP <- 545 		  //  트랩 오브젝트 (OBJECTTYPE\_PASSIVE 하위)         OBJECTTYPE\_BREAKABLE <- 1057 	  //  파괴 가능한 오브젝트(보물상자 겸함) (OBJECTTYPE\_PASSIVE 하위)                 OBJECTTYPE\_PET <- 65 		  //  신수 (OBJCTTYPE\_COLLISION 하위)         OBJECTTYPE\_CREATURE <- 129 	  //  크리쳐 (OBJCTTYPE\_COLLISION 하위)                 OBJECTTYPE\_DRAWONLY <- 2 		  //  그리기 전용 오브젝트 (OBJECTTYPE\_OBJECT 하위)         OBJECTTYPE\_VIRTUALCHARACTER <- 18 	  //  대기실에서 쓰는 가상 캐릭터 (OBJECTTYPE\_DRAWONLY 하위)                 OBJECTTYPE\_NPC <- 34 		  //  대기실의 NPC (OBJECTTYPE\_DRAWONLY 하위)                 OBJECTTYPE\_DONKEY <- 66 		  //  대기실의 개인상점 (OBJECTTYPE\_DRAWONLY 하위)         OBJECTTYPE\_VIRTUALCREATURE <- 130 	  //  대기실에서 쓰는 가상 크리쳐(OBJECTTYPE\_DRAWONLY 하위)         OBJECTTYPE\_DISJOINTSHOP <- 258 	  //  대기실의 해체가 해체 상점(OBJECTTYPE\_DRAWONLY 하위)         OBJECTTYPE\_VIRTUALMONSTER <- 514 	  //  대기실에서 쓰는 가상 몬스터 (OBJECTTYPE\_DRAWONLEY 하위)         OBJECTTYPE\_NONE\_DELETE <- 1026 	  //  오브젝트 삭제 시 삭제되지 않는 오브젝트 (OBJECTTYPE\_DRAWONLEY 하위)  OBJECTTYPE\_DEFINE\_END <- 61440  

1. 得到rgb  ALPHA

local rgba = sq\_ALPHA(255,255,255,0);//rgba  local rgb = sq\_RGB(255,255,255);//rgb  local a = sq\_ALPHA(255);//透明度 

1. 得到 设置 ani

//得到自定义ani obj.sq\_getCustomAni(CUSTOM\_ANI\_AVENGER\_ATTACK\_4\_ROSARY);//复仇者 sq\_GetCustomAni(obj, 57);//按道理是都可以用 local ani = obj.getCustomAnimation(0);//对象类 //得到当前ani local ani = sq\_GetCurrentAnimation(obj);//角色；特效；绘画对象 local ani = obj.getCurrentAnimation();//角色；特效；绘画对象 local ani = obj.sq\_GetCurrentAni();//角色； //得到默认ani obj.getDefaultAnimation();//对象类 得到默认ani //判断是否是默认ani obj.isCurrentAnimationDefault();//对象类 判断是否是默认ani //设置当前ani obj.sq\_SetCurrentAnimation(CUSTOM\_ANI\_CONCENTRATE\_EX);//角色 setCurrentAnimationFromCutomIndex(obj, 0);//特效 obj.setCurrentAnimation(ani);//对象类 

1. 设置ani的播放速度   人物的当前所有ani的速度

pAni.setSpeedRate(200.0);//速度率 obj.sq\_SetAnimationSpeedRate(obj.sq\_GetCurrentAni(),attackSpeedRate.tofloat());//设置ani的速度率  //设置静态速度的信息 参数说明： 1.速度类型 2.速度类型 3.速度值 4.速度值 5.速度加成率 6.速度加成率 一般为改最后面的两个参数可以调整速度 obj.sq\_SetStaticSpeedInfo(SPEED\_TYPE\_ATTACK\_SPEED, SPEED\_TYPE\_ATTACK\_SPEED, SPEED\_VALUE\_DEFAULT, SPEED\_VALUE\_DEFAULT, 1.0, 1.0);  //按比例增加 不吃任何速度，固定增加速度 更改1.5的那个数值 就是增加50%的速度 obj.sq\_SetStaticSpeedInfo(0, 0, 0, (1000\*1.5).tointeger(), 0.0, 0.0);//设置固定速度  SPEED\_TYPE\_CONST						<- 0	 SPEED\_TYPE\_MOVE\_SPEED					<- 1	//移动速度 SPEED\_TYPE\_ATTACK\_SPEED					<- 2	//攻击速度 SPEED\_TYPE\_EXCEPT\_WEAPON\_ATTACK\_SPEED	<- 3	//除了攻击速度 SPEED\_TYPE\_CAST\_SPEED					<- 4	//施放速度 ​ 

1. 改变图片大小 攻击框大小

local sizeRate = sizeRate.tofloat() / 100.0;//转换浮点数运算 currentAni.setImageRateFromOriginal(sizeRate, sizeRate);//增加ani 宽度跟高度率 currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);//增加ani als附加 ani大小比例 sq\_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);//攻击框，x y z比率 //下面不常用 currentAni.applyBoundingBoxRate(explosionSizeRate,0,0);//攻击框 currentAni.setAttackBoundingBoxSizeRate(sizeRate,true);//攻击框 currentAni.setImageRate(1.0, 1.0);//比率 ani.resize(sizeRate);//比率 ani.resizeWithChild(size);//比率 

1. 判断当前自定义etc的ani ID

obj.isCurrentCutomAniIndex(CUSTOM\_ANI\_PUSH\_OUT\_GRAB); //活动类对象

1. 创建ani

local ani = sq\_CreateAnimation("","");//创建ani 参数1： 参数2：都是路径  //根据角色类型，来取决于路径 obj.sq\_CreateCNRDAnimation("Effect/Animation/ATElementalRain/Cast/1\_under\_dodge.ani")  local ani = obj.getVar().GetAnimationMap("Disaster1", "Character/Priest/Animation/disasterEx/Disaster1.ani"); ​

1. 销毁绘画对象

aniobj.setValid(false);//销毁 

1. 以父图层创建绘画对象 #参数中可以更改x y z坐标

local pooledObj = sq\_AddDrawOnlyAniFromParent(obj,"character/swordman/effect/animation/swordofmind/charging.ani", 0, 0, 0); 

1. 创建绘画对象 #设置图层 #可以更改ani结束时是否销毁

local pooledObj = sq\_CreateDrawOnlyObject(obj, "PassiveObject/Character/Mage/Animation/ATDarknessMantle/exp/3\_exp\_shock\_normal\_1.ani", ENUM\_DRAWLAYER\_NORMAL, true); 

1. 更高端的创建绘画对象 #手动创建ani #以及设置坐标图层等

local ani = sq\_CreateAnimation("","");//创建ani local pooledObj = sq\_CreatePooledObject(ani,true);//创建绘画对象 参数2：应该是ani结束时true 就销毁反之false不销毁 sq\_SetCurrentDirection(pooledObj, obj.getDirection());//设置方向 pooledObj.setCurrentPos(x,y,z);//设置pos pooledObj = sq\_SetEnumDrawLayer(pooledObj, ENUM\_DRAWLAYER\_BOTTOM);//设置图层 sq\_AddObject(obj, pooledObj, OBJECTTYPE\_DRAWONLY, false);//增加对象 

1. 得到当前ani的时间 得到ani的区间或总延时

local ani = obj.getCurrentAnimation();//角色；特效；绘画对象 //得到ani当前时间 local currentT = sq\_GetCurrentTime(pAni);//ani得到当前时间 //得到ani延时 local delay = ani.getDelaySum(false);//ani延时总和 local delay = ani.getDelaySum(0, 2);//第几帧到第几帧总和 local delay = ani.getDelayBySpeedRate(1);//按照速度率 obj.sq\_GetDelaySum();//得到当前的ani总延时 角色类对象 local startTime = sq\_GetDelaySum(animation);//得到ani总延时  

1. 得到当前帧ID

sq\_GetCurrentFrameIndex(obj);//角色；特效 sq\_GetAnimationFrameIndex(pAni);//ani obj.sq\_GetCurrentFrameIndex(pAni);//角色 

1. 设置当前帧ID

sq\_SetAnimationFrameIndex( backAni, currentAniFrameIndex); ani.setCurrentFrameWithChildLayer(11); 

1. 设置ani帧的延时时间

sq\_SetFrameDelayTime(animation, 0, castTime); ani.setFrameDelay(4,maxTime,true);  ani.proc();

1. 得到ani的帧总数

local poleAniFrameNumber = sq\_GetAniFrameNumber(poleAni, 0);//ani总数 

1. 判断ani是否结束

local isEnd = sq\_IsEnd(ani);//是否结束 

1. 倒回ani #重新播放

sq\_Rewind(ani);//倒回 重播 obj.sq\_Rewind(animation);//倒回 重播  

1. 设置ani的rgba值 #颜色及透明度

ani1.setRGBA(0, 78, 255, 255);  

1. 设置ani的效果层 #在原图片图层上再增加一个图型样式

local effectType = GRAPHICEFFECT\_DODGE;//图形效果类型   local rgb = sq\_RGB(0, 90, 255);//rgb颜色值  local effectT = 600; local startT = 200; local endT = 50; local targetV = endT; local al = sq\_GetUniformVelocity(startT, targetV, appendage.getTimer().Get(), effectT); local alpha = sq\_ALPHA(al);//获得透明度 //设置效果层  最后一个参数是 所有层ani是否也更改 pAni.setEffectLayer(true, effectType, true, rgb, alpha, true, false);                             GRAPHICEFFECT\_NONE <- 0 		  //  橈擠                 GRAPHICEFFECT\_DODGE <- 1 		  //  游雖                 GRAPHICEFFECT\_LINEARDODGE <- 2 		  //  葬棲橫 游雖                 GRAPHICEFFECT\_DARK <- 3 		  //  棻觼                 GRAPHICEFFECT\_XOR <- 4 		  //  XOR                 GRAPHICEFFECT\_MONOCHROME <- 5 		  //  欽儀                 GRAPHICEFFECT\_SPACE\_DISTORT <- 6 		  //  奢除諼堊 GRAPHICEFFECT\_MAX <- 7   

1. 创建特效 #ani #atk #伤害 #攻击范围 #坐标都可设置 #唯一缺点穿刺无法设置 #攻击到人立马销毁

//创建只攻击对象 ani跟atk  参数1：ani路径 参数2：atk路径 参数3：false 固伤；true 百分比 参数4：这里提供的数值 被参数3控制，固伤或百分比 参数5：攻击框比率 参数6：偏移x 参数7：偏移y 参数8：偏移z sq\_createAttackObjectWithPath(obj, "Character/Swordman/Effect/Animation/Bloodboom/finish\_bloodboom\_finish3.ani","passiveobject/script\_sqr\_nut\_qq506807329/swordman/attackinfo/bloodboomfinish.atk",true,0,100,200,0,0); 

1. 改变图层

sq\_ChangeDrawLayer(obj, ENUM\_DRAWLAYER\_BOTTOM);//改变图层 

1. 增加状态层ani #切换状态时会自动删除

obj.sq\_AddStateLayerAnimation(1,obj.sq\_CreateCNRDAnimation("Effect/Animation/ATElementalRain/Cast/1\_under\_dodge.ani"), 0, 0); 

1. 增加 删除 得到层ani #ani的子ani

currentAni.addLayerAnimation(6,sq\_CreateAnimation("","PassiveObject/Character/Mage/Animation/ATLightningWall/7\_el-p1\_dodge\_1.ani"),true);//增加层ani  pAni.removeLayerAnimation(backlight\_dodge);//删除层ani  local size = sq\_AniLayerListSize(pAni);//得到ani层的范围  local pAniL = sq\_getAniLayerListObject(pAni, i);//得到层ani  

1. 附加ap 设置效果层

//设置效果层;参数4：到达指定颜色需要的时间 参数5：消失的多少时间 参数6：附加多长时间 sq\_EffectLayerAppendage(damager,sq\_RGB(0,144,255),150,0,0,240); sq\_EffectLayerAppendageOnlyBody(obj, sq\_RGB(255,255,255), 255, 0, 0, 320);  sq\_SetBodyEffect(obj, obj, true, sq\_RGB(255, 255, 255), 0, 80, 0, sq\_ALPHA(255));  

1. 得到als中的ani

//得到ani的als 附属ani local alsSpinNormal = obj.sq\_getAutoLayerWorkAnimation(pAni, "2\_sn"); local aniL = obj.sq\_GetAutoLayerWorkAnimation(pAni,"Dodge");//得到als层ani 

1. 创建固定在屏幕中央的ani

sq\_setFullScreenEffect(obj, "pet/falcon/animation/rest.ani");//固定在屏幕中央的效果ani  

1. 删除ani

sq\_DeleteAni(backAni);//删除ani ​

1. 清除攻击框 增加攻击框

//ani关闭攻击框 sq\_ClearAttackBox(pAni); //增加攻击框 sq\_AddAttackBox(pAni,                           attackPosX.tointeger() - (attackL / 2),                  attackPosY.tointeger(),                  -zAttackL,                  attackL, attackL, (zAttackL \* 2) ); 

1. 得到ani当前帧 得到帧的图形效果类型 #例如判断线性减淡等等

local frame = ani.GetCurrentFrame();//得到当前帧  local effect = aniL.GetCurrentFrame().GetGraphicEffect();//得到图形效果                            GRAPHICEFFECT\_NONE <- 0 		  //  橈擠                 GRAPHICEFFECT\_DODGE <- 1 		  //  游雖                 GRAPHICEFFECT\_LINEARDODGE <- 2 		  //  葬棲橫 游雖                 GRAPHICEFFECT\_DARK <- 3 		  //  棻觼                 GRAPHICEFFECT\_XOR <- 4 		  //  XOR                 GRAPHICEFFECT\_MONOCHROME <- 5 		  //  欽儀                 GRAPHICEFFECT\_SPACE\_DISTORT <- 6 		  //  奢除諼堊 GRAPHICEFFECT\_MAX <- 7   ​

1. 判断ani的key flag标签  或  清除

obj.sq\_IsKeyFrameFlag(ani, 1);//是否是 obj.sq\_ClearKeyFrameFlag(ani);//清除key 

1. 判断是否是相同的ani

sq\_IsSameAni(explosionAni,currentAni);//判断是否相同 

1. 得到我的ani的阴影类型

sq\_GetShadowTypeByAnimation() 

1. 得到ani img的范围大小

local ani = obj.getCurrentAnimation(); local radiusSize = sq\_GetAniRealImageSize(ani, 0);  local boundBox = sq\_GetAttackBoundRect(ani); local bosXSize = sq\_GetBoundingBoxXSize(boundBox); local range = bosXSize; 

1. atk以及攻击的设置
   1. 得到 设置 atk

//得到自定义攻击信息 local attackInfo = sq\_GetCustomAttackInfo(obj, 0);//角色；特效 //得到当前攻击信息 local attackInfo = sq\_GetCurrentAttackInfo(obj);//角色；特效 //得到默认攻击信息 local attackInfo = sq\_GetDefaultAttackInfo(obj); //设置当前攻击信息 obj.sq\_SetCurrentAttackInfo(CUSTOM\_ATTACK\_BLOODRIVENMULTIHIT);//角色 sq\_SetCurrentAttackInfoFromCustomIndex(obj, 0);//特效 sq\_SetCurrentAttackInfo(obj, attackInfo);//角色；特效 

1. 得到技能

local skill = sq\_GetSkill(obj, SKILL\_WATER\_CANNON); 

1. 得到技能等级

local skill\_level = sq\_GetSkillLevel(obj, SKILL\_ICEROAD);//技能等级 

1. 得到静态 动态数据

//得到动态数据 local validTime = obj.sq\_GetLevelData(SKILL\_ELEMENTAL\_CHAIN, 1, skill\_level);//参数1：技能编号 参数2：动态第几个 参数3：技能等级 sq\_GetLevelData(obj,SKILL\_METEORSWORD, 0, skill\_level);//参数1：对象 参数2：技能编号 参数3：动态第几个 参数4：技能等级  //得到静态数据 obj.sq\_GetIntData(SKILL\_WIND\_STRIKE, 0);//参数1：技能编号 参数2：静态第几个 sq\_GetIntData(obj, SKILL\_DIEHARD, 0);//参数1：对象 参数2：技能编号 参数3：静态第几个 

1. 得到  设置  根据人物状态加成的 固伤，百分比数值

sq\_GetCurrentAttackBonusRate(obj);//得到对象身上的百分比率  //得到百分比 //参数1：技能编号 参数2：状态编号 参数3：动态数据第几个 参数4：以多少比率获取 local attackBonusRate = obj.sq\_GetBonusRateWithPassive(SKILL\_WIND\_STRIKE, STATE\_WIND\_STRIKE, 0, 1.0);  //得到固伤 //参数1：技能编号 参数2：状态编号 参数3：固伤动态数据第几个 参数4：百分比率动态数据第几个 参数5：以多少比率获取 //这里参数3 跟参数4  是技能又有固伤也有百分比才这样写，好像是官方设定的一种获取伤害的计算方式 //如果只有固伤的话 参数4写 -1就行了 local power = obj.sq\_GetPowerWithPassive(SKILL\_WIND\_STRIKE, STATE\_WIND\_STRIKE, 1, 0, 1.0);   //设置百分比 obj.sq\_SetCurrentAttackBonusRate(power);//角色类 sq\_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);//给攻击信息设置百分比值  //设置固伤 obj.sq\_SetCurrentAttackPower(power);//角色类  sq\_SetCurrentAttackPower(attackInfo, attackPower);//给攻击信息设置固伤值 

1. 给攻击信息设置一些属性 #例如属性类型 #是否吃物理魔法攻击之类的

attackInfo.setElement(ENUM\_ELEMENT\_NONE);//设置攻击属性                 ENUM\_ELEMENT\_FIRE	<- 0	/// 火属性                 ENUM\_ELEMENT\_WATER	<- 1	/// 冰属性                 ENUM\_ELEMENT\_DARK	<- 2	/// 暗属性                 ENUM\_ELEMENT\_LIGHT	<- 3	/// 光属性                 ENUM\_ELEMENT\_NONE	<- 4	/// 无属性                 ENUM\_ELEMENT\_MAX	<- 4	/// == ENUM\_ELEMENT\_NONE  attackInfo.isValidElement(ENUM\_ELEMENT\_FIRE);//判断是否是该属性  sq\_SetCurrentAttackeHitStunTime(sq\_GetCurrentAttackInfo(obj), 0);//设置攻击击晕时间  sq\_SetAttackInfoForceHitStunTime(atk, stunTime);//强制击晕时间  local rateDamager = sq\_GetAttackInfoHitDelayRateDamager(attackerInfo);//得到击中僵直率 sq\_SetAttackInfoHitDelayRateDamager(attackerInfo, 0.0); //设置击中僵直率  //设置攻击反应 sq\_SetCurrentAttackeDamageAct(attackInfo, 1);         //DAMAGEACT\_NONE = 0,	无         //DAMAGEACT\_DAMAGE = 1,	伤害         //DAMAGEACT\_DOWN = 2,	倒地  //得到攻击类型  设置攻击类型 sq\_ChangeAttackTypeToOpposite(attack\_info);//设置相反的攻击类型 local eType = sq\_GetAttackType(attack\_info);//得到攻击类型 attackInfo.setAttackType(ATTACKTYPE\_MAGICAL); //设置攻击类型 sq\_setAttackInfoType(obj,ATTACKTYPE\_MAGICAL);//设置攻击类型                 ATTACKTYPE\_PHYSICAL <- 0 		  //物理                 ATTACKTYPE\_MAGICAL <- 1 		  //魔法                 ATTACKTYPE\_ABSOLUTE <- 2 		  //无视防御   sq\_SetAddWeaponDamage(attackInfo, true);//吃物理魔法攻击力 百分比伤害必加  参数2改为false代表不吃  sq\_SetCurrentAttacknBackForce(pAttack, 800);//推开距离 sq\_SetCurrentAttacknUpForce(pAttack, 300);//打击高度  sq\_SetCurrentAttackDirection(pAttack, ATTACK\_DIRECTION\_UP);//攻击方向 ATTACK\_DIRECTION\_UP <- 0 		 ATTACK\_DIRECTION\_HORIZON <- 1 	 ATTACK\_DIRECTION\_DOWN <- 2 		 ATTACK\_DIRECTION\_MAX <- 3   //得到atk类的属性 为bool值  忽略延时死亡无敌状态 例如男魔法的复活被动 attackInfo.isIgnoreDieHard\_    

1. atk攻击信息 设置异常状态攻击

//設置攻擊異常狀態；攻击信息，，异常类型，概率，等级，时间，伤害 sq\_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS\_BLEEDING,bleedingrate,bleedinglevel,bleedingtime,bleedingdamage);                            ACTIVESTATUS\_SLOW <- 0 		  //  减速                 ACTIVESTATUS\_FREEZE <- 1 		  //  冰冻                 ACTIVESTATUS\_POISON <- 2 		  //  中毒                 ACTIVESTATUS\_STUN <- 3 		  //  眩晕                 ACTIVESTATUS\_CURSE <- 4 		  //  诅咒                 ACTIVESTATUS\_BLIND <- 5 		  //  失明                 ACTIVESTATUS\_LIGHTNING <- 6 		  //  感电                 ACTIVESTATUS\_STONE <- 7 		  //  石化                 ACTIVESTATUS\_SLEEP <- 8 		  //  睡眠                 ACTIVESTATUS\_BURN <- 9 		  //  燃烧                 ACTIVESTATUS\_WEAPON\_BREAK <- 10 		  //  武器破甲                 ACTIVESTATUS\_BLEEDING <- 11 		  //  出血                 ACTIVESTATUS\_HASTE <- 12 		  //  加速                 ACTIVESTATUS\_BLESS <- 13 		  //  祝福                 ACTIVESTATUS\_ELEMENT <- 14 		  //  엘레먼트                 ACTIVESTATUS\_CONFUSE <- 15 		  //  混乱                 ACTIVESTATUS\_HOLD <- 16 		  //  束缚                 ACTIVESTATUS\_ARMOR\_BREAK <- 17 		  //  护甲破甲 ACTIVESTATUS\_MAX <- 18   

1. 直接发送异常状态

//直接发送异常状态包；被附加对象，我自己，异常类型，概率(浮点数)，等级，强制false，时间 sq\_sendSetActiveStatusPacket(obj, parentObj, ACTIVESTATUS\_BLIND, dark\_prob.tofloat(), dark\_power.tointeger(), false, dark\_time.tointeger());                            ACTIVESTATUS\_SLOW <- 0 		  //  减速                 ACTIVESTATUS\_FREEZE <- 1 		  //  冰冻                 ACTIVESTATUS\_POISON <- 2 		  //  中毒                 ACTIVESTATUS\_STUN <- 3 		  //  眩晕                 ACTIVESTATUS\_CURSE <- 4 		  //  诅咒                 ACTIVESTATUS\_BLIND <- 5 		  //  失明                 ACTIVESTATUS\_LIGHTNING <- 6 		  //  感电                 ACTIVESTATUS\_STONE <- 7 		  //  石化                 ACTIVESTATUS\_SLEEP <- 8 		  //  睡眠                 ACTIVESTATUS\_BURN <- 9 		  //  燃烧                 ACTIVESTATUS\_WEAPON\_BREAK <- 10 		  //  武器破甲                 ACTIVESTATUS\_BLEEDING <- 11 		  //  出血                 ACTIVESTATUS\_HASTE <- 12 		  //  加速                 ACTIVESTATUS\_BLESS <- 13 		  //  祝福                 ACTIVESTATUS\_ELEMENT <- 14 		  //  엘레먼트                 ACTIVESTATUS\_CONFUSE <- 15 		  //  混乱                 ACTIVESTATUS\_HOLD <- 16 		  //  束缚                 ACTIVESTATUS\_ARMOR\_BREAK <- 17 		  //  护甲破甲 ACTIVESTATUS\_MAX <- 18   

1. 直接发送攻击包

sq\_SendHitObjectPacket(obj,object,0,0,sq\_GetObjectHeight(obj) / 2);//发送攻击包  sq\_SendHitObjectPacketWithNoStuck(obj,damager,0,0,0);//发送不会未命中的攻击包  //按照自己的自定义攻击信息发送攻击 （这个没测试出来该怎么用  可能没有效果。。） sq\_SendHitObjectPacketByCustomAttackIndex(obj,damager,0,0,0,0);  new一个新的攻击信息包，其实是召唤特效，如果攻击次数过多不建议创建这个 //新建一个攻击包 local ap = sq\_getNewAttackInfoPacket(); ap.hitStunTimeAttackerDamager = stunTime;//僵直时间 ap.sizeRate = sizeRate;//攻击大小 ap.changeStatusType = changeStatusType; //异常状态类型 ap.changeStatusProb = changeStatusProb.tofloat();  //异常状态概率 ap.changeStatusLevel = changeStatusLevel.tofloat(); //异常状态等级	 ap.changeStatusDuration = changeStatusDuration;//异常状态持续时间 ap.changeStatusdamage = changeStatusdamage;//异常状态伤害 ap.power = fireDamage;//固伤 ap.powerRate = attackPower;//百分比 ap.element = ENUM\_ELEMENT\_FIRE;//属性 ap.useWeapon = false;//是否吃武器伤害 ap.eType = ATTACKTYPE\_MAGICAL;//攻击类型 魔法还是物理 ap.stuckRate = 100.0;//命中率 ap.backForce = 100;//推开距离 ap.upForce = 100;//打击高度 ap.knockBackType = 100;//没测试过 sq\_SendHitObjectPacketByAttackInfo(parentObj, attacker, ap);//以新的攻击包发送攻击 sq\_createCommonElementalAttack(obj, elementalType, 0, 0, 0, explosionInfo);//待测试   

1. 应用基本攻击 #没测试过

mage.applyBasicAttackUp(sq\_GetCurrentAttackInfo(obj),mage.getState());	 sq\_SetCurrentAttackInfo(obj,sq\_GetCurrentAttackInfo(obj));  

1. 坐标 方向 距离 移动常用相关
   1. 方向常量

ENUM\_DIRECTION\_LEFT <- 0 //左方向 ENUM\_DIRECTION\_RIGHT <- 1 //右方向 ENUM\_DIRECTION\_UP <- 2 //上方向 ENUM\_DIRECTION\_DOWN <- 3 //下方向 ENUM\_DIRECTION\_NEUTRAL <- 4 //中心 ENUM\_DIRECTION\_MAX <- 5  

1. abs函数 #运算得到的结果无论如何都会得到正数结果

sq\_Abs(600 - 900); 

1. Atan2三角函数 #根据两点xy坐标得到三角顶点角度值

local atan = sq\_Atan2(x.tofloat(), z.tofloat()); 

1. Degree函数 #转为角度

local angle = sq\_ToDegree(atan);

1. Radian函数 #角度转为弧度

sq\_ToRadian(angle);

1. Cos函数 #给角度值计算出长度距离 #一般用于圆形的长度运算

sq\_Cos(angle); sq\_CosTable(angle);

1. Sin函数 #给角度值计算出高度比率 #一般用于弧形的高度

sq\_Sin(angle); sq\_SinTable(angle);

1. 寻找范围内的单一目标

//角色用这个 local targetObj = sq\_FindTarget(obj, 80, x\_range, y\_range, z\_range);//对象 初始x 结束x  上下y范围 z范围 也是默认找第一个找到的  //特效用这个 local targetObj = obj.sq\_FindFirstTarget(start\_x, start\_end\_x, y\_range, z\_range);//寻找距离近的第一个目标 local targetObj = obj.sq\_FindNextTarget(pActiveTarget, next\_x\_range, z\_range);//寻找下一个目标  //寻找射击目标 local activeObject = sq\_FindShootingTarget(obj, sq\_GetDistancePos(sq\_GetXPos(obj),obj.getDirection(),x), sq\_GetYPos(obj), sq\_GetZPos(obj) + z, 0, 0, 4, 14, -1, 300, 100, 50, 100); //按角度找目标 男魔法的函数 local targetObj = findAngleTarget(obj, distance, angle, 100);

1. 根据时间计算的坐标模板 常用

//按照时间 来进行移动；移动较为准确  local pAni = obj.getCurrentAnimation();//得到ani local currentT = sq\_GetCurrentTime(pAni);//当前时间 local fireT = pAni.getDelaySum(0, 0);//总时间  local srcX = obj.getVar().get\_vector(0);//初始x坐标 local srcY = obj.getVar().get\_vector(1);//初始y坐标 local srcZ = obj.getVar().get\_vector(2);//初始z坐标  local MoveX = obj.getVar().get\_vector(3);//移动多少x距离 local MoveY = obj.getVar().get\_vector(4);//移动多少y距离 local MoveZ = obj.getVar().get\_vector(5);//移动多少z距离  local v = sq\_GetUniformVelocity(0, MoveX, currentT, fireT); local dstX = sq\_GetDistancePos(srcX, obj.getDirection(), v);//根据方向运算当前数值  sq\_setCurrentAxisPos(obj, 0, dstX);//设置当前x坐标 sq\_setCurrentAxisPos(obj, 1, dstY);//设置当前y坐标 sq\_setCurrentAxisPos(obj, 2, dstZ);//设置当前z坐标

1. 寻找地平线 垂直角度

//得到地平线的角度 local horizonAnglez = sq\_GetShootingHorizonAngle(activeObject, y, 0, searchAngleH, maxDistance); //得到垂直角度 local verticalAnglez = sq\_GetShootingVerticalAngle(activeObject, z, 0, searchAngleV, maxDistance,300); //寻找到角度后一般都给ptl使用

1. 得到  设置坐标pos

//对象类 obj.getXPos();//x坐标 obj.getYPos();//y坐标 obj.getZPos();//z坐标  //任意对象 sq\_GetXPos();//x坐标 sq\_GetYPos();//y坐标 sq\_GetZPos();//z坐标 local screenX = sq\_GetScreenXPos(object);//位于屏幕x坐标 local screenY = sq\_GetScreenYPos(object);//位于屏幕y坐标 //玩家 local mouseX = sq\_GetMouseXPos();//鼠标x坐标 local mouseY = sq\_GetMouseYPos();//鼠标y坐标   //对象类 pooledObj.setCurrentPos(x,y,z);  //任意对象 sq\_SetCurrentPos(obj,x,y,z);  //设置单个x或y或z坐标 sq\_setCurrentAxisPos(obj, 0, dstX);//设置当前x坐标 sq\_setCurrentAxisPos(obj, 1, dstY);//设置当前y坐标 sq\_setCurrentAxisPos(obj, 2, mz);//设置当前z坐标 ​

1. 得到 设置方向

local direction = obj.getDirection();//得到方向 对象类 local direction = sq\_GetDirection(obj);//得到方向  local direction = obj.sq\_GetInputDirection(0);//得到输入的方向?  sq\_SetCurrentDirection(pooledObj, obj.getDirection());//设置方向 obj.setDirection(ENUM\_DIRECTION\_RIGHT);//设置方向 对象类  sq\_GetOppositeDirection(direction);//得到相反的方向  //设置相反方向 sq\_SetCurrentDirection(obj, sq\_GetOppositeDirection(sq\_GetDirection(obj)));//设置相反方向

1. 根据方向得到坐标

local dstX = sq\_GetDistancePos(srcX, obj.getDirection(), v);//根据方向得到坐标

1. 根据比率得到结果值 #根据当前时间跟总时间以及当前位置跟到达位置按照比率得到现在的数值

local v = sq\_GetUniformVelocity(0, MoveX, currentT, fireT);//此函数为均匀平均的移动 local v = sq\_GetAccel(0, dis\_x\_len, currentT, dash\_t, true);//此函数为先快后慢或先慢后快移动 最后一个参数 改为true快到慢 false慢到快 参数1；为初始位置   参数2：为结束位置 参数3：当前的时间 参数4：限制的总时间 可以分两种来进行移动；不过都是在被动proc函数中进行 第一种： 可以设置移动多少距离来计算；计算完成后再加上初始坐标，就可以得出当前需要移动到哪里 第二种： 可以设置初始跟结束位置，会自动计算出结果坐标；再直接进行移动即可  //下面是找花花要的一个弧线运行的函数 function getQuadraticFunction(obj,x,b,c) {   local a = (-b.tofloat() \* 4) /( c.tofloat() \* c.tofloat());   return a.tofloat()\*(x.tofloat() - c.tofloat() / 2)\*(x.tofloat() - c.tofloat() / 2) + b.tofloat(); } //结果要转为整数型 //参数1：对象 //参数2：0+ 0初始百分比   36到达百分比   height高度或者距离  100总百分比 local vz = getQuadraticFunction(obj,0 + sq\_GetAccel(0, 36, currentT, delayT, true) ,height,100).tointeger();  //再或者这样写 弧度运行 local h = sq\_GetUniformVelocity(0, 180, currentT, fireT);//得到角度 local vZ = 高度 \* sq\_SinTable(h) ;//得到弧形高度

1. 根据两个x y点得到对角线距离

local distance = sq\_GetDistance( X, Y - Z, posX, posY - posZ, true);//得到对角线距离  sq\_GetDistanceObject(obj, object, true);//得到距离对象  //开平方根得到距离 sqrt( (x1-x2)\*(x1-x2)+ (y1-y2)\*(y1-y2) );  ​

1. 单个得到x或y距离

obj.getXDistance(pChr);//对象类 得到x距离 obj.getYDistance(pChr);//对象类 得到y距离  local posX = CNRDObject.getAngleDistanceXPos(obj.getVar("pos").get\_vector(0), angle, radius, ENUM\_DIRECTION\_RIGHT); local posY = CNRDObject.getAngleDistanceYPos(obj.getVar("pos").get\_vector(1), angle, radius, false);

1. 坐标是否可到达

obj.isMovablePos(dstX, dstY);//活动类 对象

1. 人物单纯的设置移动速度

//单纯的速度移动 //参数1:0为x轴 1为y轴 2为z轴 //参数2，3：为速度区间 //参数4，true 则按键才可移动  false则不能按键移动 //参数5：为加速；如果要移动固定距离 则速度\*6为加速数值 可以移动到固定地点 //参数6：true 快到慢 false慢到快 obj.sq\_SetStaticMoveInfo(0, xVelocity, xVelocity, false, xAccel, true); obj.sq\_SetStaticMoveInfo(1, 0, 0, false); obj.sq\_SetMoveDirection(obj.getDirection(), ENUM\_DIRECTION\_NEUTRAL);//开始移动

1. 设置z的移动速度

//已z坐标移动 正数为上  负数为下 sq\_SetZVelocity(obj,100,100);

1. 设置速度 #xyz速度

sq\_SetVelocity(obj, 0, 1500.0); //参数1：对象 //参数2：类型 0x轴 1y轴 2z轴 不吃方向 //参数3：速度值

1. 停止移动或停止z移动

obj.sq\_ZStop();//停止z移动 obj.sq\_StopMove();//停止移动

1. 常用抓取 #判断目标是否可抓取或者可控制 #并且附加控制或者移动ap

sq\_IsHoldable(obj,damager);//是否可控制 sq\_IsFixture(damager);//是否是固定的 sq\_IsGrabable(obj,damager);//是否可以抓取  //控制 并且 延时死亡；参数3：是否控制 参数4：是否延时死亡 参数5：销毁ap时是否击飞 参数6：击飞距离 参数7：击飞高度 sq\_HoldAndDelayDie(damager, obj, true, true, true, 200, 200, ENUM\_DIRECTION\_NEUTRAL , masterAppendage); //使敌人目标按照时间 自动达到指定位置 sq\_MoveToAppendageForce(ChrJob, obj, obj, 160, 0, ChrJob.getZPos(), 3000, false, null); //速度快到慢 sq\_AccelMoveToAppendageForce(aoDamager, obj, obj, x, 0, z - aoDamager.getObjectHeight()/2, liftTime, true, masterAppendage,true); //设置坐标移动。。 sq\_MoveToNearMovablePos(obj,chrx ,chry , 350, objx, objy, 350, 100, -1, 5); //吸怪 被拉近目标的距离，引力点的距离，引向目标的距离和拉近的速度 local appendage = sq\_AttractToMe(obj, 200, 100, attractPower); obj.getVar().setAppendage(0,appendage); local appendage = obj.getVar().getAppendage(0);

1. 跟随移动 #且可以获得跟随移动目标的状态以及技能使用状态

sq\_moveWithParent(obj, pooledObj);//跟随移动 参数1：被跟随的对象 参数2：要跟随的对象 local moveParent = sq\_GetMoveParent(obj);//得到跟随的对象 local parentState = obj.sq\_GetParentState();//特效类 得到跟随者的状态 local subState = obj.sq\_GetParentSkillSubState();//特效类 得到跟随者的技能使用状态

1. 角色设置寻找到的新的可以移动的位置 #防止卡

sq\_SimpleMoveToNearMovablePos(obj,200);//直接防止卡墙  //参数1：起始寻找的x坐标 //参数2：起始寻找的y坐标 //参数3：寻找的x坐标范围 //参数4：寻找的y坐标范围 //参数5：寻找的偏移？ obj.sq\_SetfindNearMovablePos(obj.getXPos(),obj.getYPos(),50,1,5);

1. 寻找一个可以移动的x或y坐标

//对象类 //参数1：起始寻找的x坐标 //参数2：起始寻找的y坐标 //参数3：结束寻找的x坐标 //参数4：结束寻找的y坐标 //参数5：偏移 damager.sq\_findNearLinearMovableXPos(x, y, obj.getXPos(), y, 10); damager.sq\_findNearLinearMovableYPos(x, y, obj.getXPos(), y, 10); ​

1. 男魔法的圆形移动函数算法 #圆形移动解刨

local currentT  = sq\_GetObjectTime(ani);//当前时间 local currentSpeedRate = 1.0;//额外计算的 速度率 local defaultRoundTime = 3000;//每隔多少秒转一圈 local radius = 100;//旋转半径 总长度 半径\*2 local base100Angle = 18000;//初始角度 这里应该是角度\*100 最大角度是360  local baseX = obj.getXPos()+300;//初始x坐标 local baseZ = obj.getZPos()+200; // 初始z坐标  local current100Angle = (base100Angle + (36000 \* currentSpeedRate \* currentT / defaultRoundTime)) % 36000;//根据当前时间跟总时间 跟初始角度计算出当前角度 local angle = (current100Angle.tofloat() / 100.0);//除以100 得到正常角度 local disMovLen = radius \* sq\_CosTable(angle.tointeger());//根据角度计算圆形的长度 local mov\_x = sq\_GetDistancePos(baseX, sq\_GetOppositeDirection(obj.getDirection()), disMovLen.tointeger());//按照对象方向跟初始坐标得到 目标x坐标 local axisMagnifyRate = 100;//半径//圆形高度的比率 local upMovLen = radius \* sq\_SinTable(angle.tointeger()) \* axisMagnifyRate / 100;//得到圆形的高度 local mov\_y = baseZ + upMovLen.tointeger();//得到要移动的y坐标 //下面的判断是 //移动的x坐标 不等于 初始x坐标减去100的话就移动x坐标 不过好像每什么用 if(mov\_x!=baseX-100) sq\_setCurrentAxisPos(ani, 0, mov\_x); sq\_setCurrentAxisPos(ani, 2, mov\_y);

1. 按键相关  连续输入 #连续按键判断之类
   1. 按下并弹起判断

obj.setSkillCommandEnable(SKILL\_MULTI\_SHOT,true);//激活技能使图标变亮 local b\_useskill = obj.sq\_IsEnterSkill(SKILL\_MULTI\_SHOT);//判断是否按下技能键 返回值不等于-1代表按下  E\_ATTACK\_COMMAND <- 0 E\_JUMP\_COMMAND <- 1 E\_DASH\_COMMANDS\_1 <- 2 E\_DASH\_COMMANDS\_2 <- 3 E\_CREATURE\_COMMAND <- 4 E\_BUFF\_COMMAND <- 5 E\_SKILL\_COMMAND <- 6 E\_COMMAND\_COUNT <- 7 sq\_SetKeyxEnable(obj, E\_ATTACK\_COMMAND, true);//设置其他按键 sq\_IsEnterCommand(obj, E\_ATTACK\_COMMAND);//为真确认按下

1. 按下按键判断

local isVertical = sq\_IsKeyDown(OPTION\_HOTKEY\_MOVE\_DOWN, ENUM\_SUBKEY\_TYPE\_ALL);  //按下我的前方 if(sq\_IsKeyDown(OPTION\_HOTKEY\_MOVE\_LEFT, ENUM\_SUBKEY\_TYPE\_ALL) && obj.getDirection()== ENUM\_DIRECTION\_LEFT             ||sq\_IsKeyDown(OPTION\_HOTKEY\_MOVE\_RIGHT, ENUM\_SUBKEY\_TYPE\_ALL) && obj.getDirection()== ENUM\_DIRECTION\_RIGHT)  //按下我的后方 if(sq\_IsKeyDown(OPTION\_HOTKEY\_MOVE\_LEFT, ENUM\_SUBKEY\_TYPE\_ALL) && obj.getDirection()== ENUM\_DIRECTION\_RIGHT             ||sq\_IsKeyDown(OPTION\_HOTKEY\_MOVE\_RIGHT, ENUM\_SUBKEY\_TYPE\_ALL) && obj.getDirection()== ENUM\_DIRECTION\_LEFT)   OPTION\_HOTKEY\_\_UNDEFINED <- -1     //  정의되지 않음 OPTION\_HOTKEY\_MOVE\_UP <- 0     //  (Up arrow) OPTION\_HOTKEY\_MOVE\_LEFT <- 1     //  (Left arrow) OPTION\_HOTKEY\_MOVE\_DOWN <- 2     //  (Down arrow) OPTION\_HOTKEY\_MOVE\_RIGHT <- 3     //  (Right arrow) OPTION\_HOTKEY\_ATTACK <- 4     //  (X) OPTION\_HOTKEY\_JUMP <- 5     //  (C) OPTION\_HOTKEY\_SKILL <- 6     //  (Z) OPTION\_HOTKEY\_SKILL2 <- 7     //  buff용 키(space) OPTION\_HOTKEY\_CREATURE\_SKILL <- 8     //  (V) OPTION\_HOTKEY\_STATUS\_WINDOW <- 9     //  (M) OPTION\_HOTKEY\_SKILL\_WINDOW <- 10     //  (K) OPTION\_HOTKEY\_ITEM\_INVENTORY <- 11     //  (I) OPTION\_HOTKEY\_OPTION\_WINDOW <- 12     //  (O) OPTION\_HOTKEY\_NORMAL\_QUEST\_WINDOW <- 13     //  (Q) OPTION\_HOTKEY\_AVATAR\_INVENTORY <- 14     //  (U) OPTION\_HOTKEY\_CERASHOP <- 15     //  (T) OPTION\_HOTKEY\_MINIMAP <- 16     // 던전 미니맵(N) OPTION\_HOTKEY\_CREATURE\_WINDOW <- 17     //  (Y) OPTION\_HOTKEY\_TOOLTIP\_ <- 18     // 상세보기 전환키(R) OPTION\_HOTKEY\_EPIC\_QUEST\_WINDOW <- 19     //  (W) OPTION\_HOTKEY\_QUICK\_SKILL1 <- 20     //  스킬 슬롯(A, S, D, F, G, H) OPTION\_HOTKEY\_QUICK\_SKILL2 <- 21  OPTION\_HOTKEY\_QUICK\_SKILL3 <- 22  OPTION\_HOTKEY\_QUICK\_SKILL4 <- 23  OPTION\_HOTKEY\_QUICK\_SKILL5 <- 24  OPTION\_HOTKEY\_QUICK\_SKILL6 <- 25  OPTION\_HOTKEY\_EXSKILL1 <- 26     //  확장스킬 슬롯(F1 - F6) OPTION\_HOTKEY\_EXSKILL2 <- 27  OPTION\_HOTKEY\_EXSKILL3 <- 28  OPTION\_HOTKEY\_EXSKILL4 <- 29  OPTION\_HOTKEY\_EXSKILL5 <- 30  OPTION\_HOTKEY\_EXSKILL6 <- 31  OPTION\_HOTKEY\_ITEM\_QUICKSLOT1 <- 32     //  아이템 퀵 슬롯(1 - 6) OPTION\_HOTKEY\_ITEM\_QUICKSLOT2 <- 33  OPTION\_HOTKEY\_ITEM\_QUICKSLOT3 <- 34  OPTION\_HOTKEY\_ITEM\_QUICKSLOT4 <- 35  OPTION\_HOTKEY\_ITEM\_QUICKSLOT5 <- 36  OPTION\_HOTKEY\_ITEM\_QUICKSLOT6 <- 37  OPTION\_HOTKEY\_TOGGLE\_ITEM\_NAME\_IN\_DUNGEON <- 38     //  던전에서 아이템 이름보기(ctrl) OPTION\_HOTKEY\_HIDE\_MAIN\_HUD <- 39     //  인터페이스 숨기기(Tab) OPTION\_HOTKEY\_TOGGLE\_TITLE\_ANIMATION <- 40     //  닉네임 정보 모드 변환(E) OPTION\_HOTKEY\_TOGGLE\_SKILL\_INFORMATION <- 41     //  스킬 툴팁 설명 모드 전환(F7) OPTION\_HOTKEY\_PAUSE\_IN\_TOWER <- 42     //  사망의 탑 일시정지 OPTION\_HOTKEY\_CAPTURE\_MOVING\_PICTURE <- 43     //  동영상 캡쳐(Pause) OPTION\_HOTKEY\_MENU\_MY\_INFO <- 44     //  내보관함 메뉴(7) OPTION\_HOTKEY\_MENU\_COMMUNITY <- 45     //  커뮤니티 메뉴(8) OPTION\_HOTKEY\_MENU\_CONTENTS <- 46     //  컨텐츠 메뉴(9) OPTION\_HOTKEY\_MENU\_SERVICE <- 47     //  서비스 메뉴(0) OPTION\_HOTKEY\_MENU\_SYSTEM\_\_CLOSE\_ALL\_WINDOW <- 48     // 모든창닫기(Esc) OPTION\_HOTKEY\_PVP <- 49     //  결투장(P) OPTION\_HOTKEY\_RECOMMEND\_USER <- 50     //  추천동료([) OPTION\_HOTKEY\_PARTY\_MATCHING <- 51     //  파티매칭(]) OPTION\_HOTKEY\_FRIEND <- 52     //  친구(L) OPTION\_HOTKEY\_GUILD <- 53     //  길드(;) OPTION\_HOTKEY\_MEMBER <- 54     //  멤버(') OPTION\_HOTKEY\_BLACKLIST <- 55     //  차단 OPTION\_HOTKEY\_PVP\_BUDDY <- 56     //  결투친구 OPTION\_HOTKEY\_WAR\_AREA\_LIST <- 57     //  전쟁지역목록창(,) OPTION\_HOTKEY\_AUCTION\_WINDOW <- 58     //  경매장(B) OPTION\_HOTKEY\_GOBLIN\_PAD <- 59     //  고블린패드 OPTION\_HOTKEY\_HOTKEY\_SETTING\_WINDOW <- 60     //  단축키 설정창 OPTION\_HOTKEY\_WAR\_AREA\_INFORMATION <- 61     //  전쟁지역 정보창(End) OPTION\_HOTKEY\_HELLMODE\_INFORMATION <- 62     //  더 이상 사용되지 않음 OPTION\_HOTKEY\_FAVOR\_CHECK\_WINDOW <- 63     //  더 이상 사용되지 않음 OPTION\_HOTKEY\_EXPERT\_JOB <- 64     //  전문직업 기능 OPTION\_HOTKEY\_EMOTION\_EXPRESSION <- 65     //  감정표현 기능 OPTION\_HOTKEY\_EVENT <- 66     //  이벤트키(shift) OPTION\_HOTKEY\_PVP\_MSSION <- 67     //  미션윈도우 OPTION\_HOTKEY\_PVP\_RECORD <- 68     //  전적보기창 OPTION\_HOTKEY\_QUICK\_CHAT\_0 <- 69  OPTION\_HOTKEY\_QUICK\_CHAT\_1 <- 70  OPTION\_HOTKEY\_QUICK\_CHAT\_2 <- 71  OPTION\_HOTKEY\_QUICK\_CHAT\_3 <- 72  OPTION\_HOTKEY\_QUICK\_CHAT\_4 <- 73  OPTION\_HOTKEY\_QUICK\_CHAT\_5 <- 74  OPTION\_HOTKEY\_QUICK\_CHAT\_6 <- 75  OPTION\_HOTKEY\_QUICK\_CHAT\_7 <- 76  OPTION\_HOTKEY\_QUICK\_CHAT\_8 <- 77  OPTION\_HOTKEY\_QUICK\_CHAT\_9 <- 78  OPTION\_HOTKEY\_TOGGLE\_ITEMINFO\_COMPARE <- 79     //  아이템 비교창 전환키 (Default: F8) OPTION\_HOTKEY\_TITLEBOOK <- 80     //  칭호북 OPTION\_HOTKEY\_THIS\_DUNGEON <- 81     //  재도전 OPTION\_HOTKEY\_ANOTHER\_DUNGEON <- 82     //  다른 던전 도전 OPTION\_HOTKEY\_RETURN\_TO\_TOWN <- 83     //  마을로 돌아가기 OPTION\_HOTKEY\_MERCENARY\_SYSTEM <- 84     //  용병 시스템 OPTION\_HOTKEY\_ITEM\_DICTIONARY <- 85  OPTION\_HOTKEY\_QUICK\_PARTY\_REGISTER <- 86     //  빠른 파티 등록 요청

1. 蓄力

obj.sq\_IsEnterSkillLastKeyUnits(SKILL\_FIREPILLAR);//可以蓄力 obj.isDownSkillLastKey();//判断是否按下技能键键

1. 开始快速输入？ #没怎么测试

//输入频率？ obj.startRapidInput(); obj.getRapidInputFrequency(); 用法一： //每次记录按下键时 就增加一次连续输入 obj.addRapidInput();//增加连续输入记录 //用此函数可以得到按下了多少次 obj.getRapidInputFrequency();//得到连续的按键信息

1. 技能负载 画ui

//增加技能负载 obj.sq\_AddSkillLoad(SKILL\_ATGUNNER\_HS12, 50, 1, 500);//技能编号，img序号，可以使用几次，冷却时间 //删除技能负载 obj.sq\_RemoveSkillLoad(SKILL\_ATGUNNER\_HS12);//技能编号  //得到技能负载 local loadSlot = obj.sq\_GetSkillLoad(SKILL\_ATGUNNER\_HS12); //判断是否在冷却中 loadSlot.isCooling(); //使用几次 loadSlot.use(1); //得到剩余装载数 loadSlot.getRemainLoadNumber(); //开始冷却 loadSlot.setStartCool(); //得到总冷却时间 loadSlot.getEndCoolTime(); //得到现在的冷却时间、 loadSlot.getCurrentCoolTime(); //得到icon ID loadSlot.getInconIndex();  //icon图标路径 //台服最多不能超过50 sprite/character/common/customui/icon.img    ​ ​

1. ptl设置 创建 更改相关
   1. 增加一个以map为坐标的ptl

local particleCreater = obj.sq\_var.GetparticleCreaterMap("ATWaterCannon","PassiveObject/Character/Mage/Particle/ATWaterCannonTail.ptl", obj);//得到ptl particleCreater.Restart(0);//重置 particleCreater.SetPos(x, y, z);//设置xyz sq\_AddParticleObject(obj, particleCreater);//增加ptl对象

1. 创建ptl 删除ptl

//参数1：路径 //参数2：对象 //参数3：x偏移（方向为右） //参数4：y偏移 //参数5：z偏移 //参数6：是否跟随 参数2对象移动 bool值 //参数7：创建间隔 //参数8：最长存在时间 //参数9：最大创建次数 sq\_CreateParticle("Character/Priest/Effect/Particle/ExcutionStonsLarge.ptl", obj, 180, 5, 250, true, 30, 0, 2);//创建ptl  sq\_RemoveParticle("PassiveObject/Character/Mage/Particle/ATIceOrbDust.ptl",obj);//删除ptl

1. 未知 没测试

sq\_CreateParticleByGlobal(obj.getDustParticleType(LANDPARTICLE\_MOVE), obj, x, 0, 0, true, 80, 120, 5);	           sq\_CreateParticleByGlobal(PARTICLE\_CREATER\_WATER\_HIT\_LIGHT,	// ENUM\_PARTICLE\_CREATER                                          obj,		// CNRDObject\* master,                                 0,			//int x,                                 -1,			//int y,                                 0,			//int z,                         true,		//bool posistionFromMaster,                                 30,			//int timeGap,                         150,		//int maxTime,                                                                          5);		//int maxCount

1. 特效增加 删除 设置移动ptl

obj.sq\_SetMoveParticle("Particle/ATWaterCannonMove.ptl", 0.0, 0.0);//设置移动的ptl 路径是特效的路径为父路径  obj.sq\_RemoveMoveParticle();//删除特效身上的移动ptl  //参数1：特效对象 //参数2：移动类型 0：x坐标  1：y坐标 2：z坐标 //参数3：速度值 sq\_SetSpeedToMoveParticle(obj,0,speed);//设置移动速度  obj.sq\_AddObjectParticleCreater("Particle/ATWaterCannonTail.ptl");//增加额外的ptl obj.sq\_SetObjectParticlePos(0, 1, 0);//设置创建ptl的x y z轴坐标  ​

1. 得到鼠标，控制鼠标
   1. 得到鼠标位置 设置鼠标位置

`        `local Mouse = IMouse();//得到鼠标类         Mouse.GetXPos();//得到鼠标x坐标         Mouse.GetYPos();//得到鼠标x坐标         Mouse.SetXPos(400);//设置鼠标x坐标         Mouse.SetYPos(300);//设置鼠标y坐标         Mouse.SetPos(400,300);//设置鼠标x,y坐标 游戏程序一直运行 他就会一直设置鼠标坐标         Mouse.SetPosBasedOnGameWindow(400,200);//设置鼠标x,y坐标 游戏窗口获取焦点后才会改变鼠标坐标

1. 是否处于异常状态下  删除异常状态

sq\_ReleaseActiveStatus(sqrObj, ACTIVESTATUS\_POISON);//删除异常状态  //判断前先转为活动类对象 if (sq\_IsValidActiveStatus(obj, ACTIVESTATUS\_STUN)) {         //  STUN 걸려있으면 해제시킴. STATE\_STAND로 돌아가지 않게 disable시킴         obj.setEnableChangeState(false);         sq\_IsSetActiveStatus(obj, ACTIVESTATUS\_STUN, 0.0);         obj.setEnableChangeState(true); } ACTIVESTATUS\_SLOW <- 0 // 减速 ACTIVESTATUS\_FREEZE <- 1 // 冰冻 ACTIVESTATUS\_POISON <- 2 // 中毒 ACTIVESTATUS\_STUN <- 3 // 眩晕 ACTIVESTATUS\_CURSE <- 4 // 诅咒 ACTIVESTATUS\_BLIND <- 5 // 失明 ACTIVESTATUS\_LIGHTNING <- 6 // 感电 ACTIVESTATUS\_STONE <- 7 // 石化 ACTIVESTATUS\_SLEEP <- 8 // 睡眠 ACTIVESTATUS\_BURN <- 9 // 燃烧 ACTIVESTATUS\_WEAPON\_BREAK <- 10 // 武器破甲 ACTIVESTATUS\_BLEEDING <- 11 // 出血 ACTIVESTATUS\_HASTE <- 12 // 加速 ACTIVESTATUS\_BLESS <- 13 // 祝福 ACTIVESTATUS\_ELEMENT <- 14 // 엘레먼트                 ACTIVESTATUS\_CONFUSE <- 15 // 混乱 ACTIVESTATUS\_HOLD <- 16 // 束缚 ACTIVESTATUS\_ARMOR\_BREAK <- 17 // 护甲破甲 ACTIVESTATUS\_MAX <- 18

1. 得到对象，ani，状态时间

local time = sq\_GetObjectTime(obj);//得到对象时间 local stateTime = obj.sq\_GetStateTimer();//角色类 得到状态时间 local currentT = sq\_GetCurrentTime(pAni);//ani得到当前时间  ​

1. 重置攻击

obj.resetHitObjectList();//重置攻击 控制类对象

1. 是否处于可攻击到状态 #判断怪物是否可以被攻击到

object.isInDamagableState(obj);//控制类对象

1. 增加攻击对象 #把对象加入到我的攻击列表中 #代表我已攻击到

sq\_AddHitObject(obj, damager);//增加攻击对象  //如果没有效果 可以转为活动类 或者 控制类对象后加入

1. 震动 闪屏

sq\_SetMyShake(obj,8,300);//震动 只有我自己震动 sq\_SetShake(obj,6,400);//震动 所有人都可以看到的震动  //闪屏 参数说明： 1.对象 2.出现的时间 3.持续的时间 4.消失的时间 5.透明度：255不透明  0透明看不见 6.rgb颜色值 7.颜色效果 8.闪屏图层；可设置最顶层或底层 sq\_flashScreen(obj,80,100,240,150, sq\_RGB(0,0,0), GRAPHICEFFECT\_NONE, ENUM\_DRAWLAYER\_BOTTOM);//闪屏 //加入到对象后；可以清除 local flashScreenObj = sq\_flashScreen(obj,80,99990,240,150, sq\_RGB(0,0,0), GRAPHICEFFECT\_NONE, ENUM\_DRAWLAYER\_BOTTOM); obj.getVar("flashobj").clear\_obj\_vector();//清除 obj.getVar("flashobj").push\_obj\_vector(flashScreenObj);//加入 local flashScreenObj = obj.getVar("flashobj").get\_obj\_vector(0);//得到 local pflashScreen = sq\_GetCNRDObjectToFlashScreen(flashScreenObj);//转为闪屏类 if(pflashScreen) pflashScreen.fadeOut();//为真 销毁  local fScreen = sq\_flashScreen(obj,0,80,0,80, sq\_RGB(255,255,255), GRAPHICEFFECT\_NONE, ENUM\_DRAWLAYER\_BOTTOM); sq\_addFlashScreen(fScreen, 0, 240, 240, 150, sq\_RGB(0,0,0), GRAPHICEFFECT\_NONE, ENUM\_DRAWLAYER\_BOTTOM);    //常量                           GRAPHICEFFECT\_NONE <- 0 		  //  橈擠                 GRAPHICEFFECT\_DODGE <- 1 		  //  游雖                 GRAPHICEFFECT\_LINEARDODGE <- 2 		  //  葬棲橫 游雖                 GRAPHICEFFECT\_DARK <- 3 		  //  棻觼                 GRAPHICEFFECT\_XOR <- 4 		  //  XOR                 GRAPHICEFFECT\_MONOCHROME <- 5 		  //  欽儀                 GRAPHICEFFECT\_SPACE\_DISTORT <- 6 		  //  奢除諼堊 GRAPHICEFFECT\_MAX <- 7                           ENUM\_DRAWLAYER\_CONTACT <- 0 		  //  蕾唳 溯檜橫                 ENUM\_DRAWLAYER\_NORMAL <- 1 		  //  橾奩 溯檜橫                 ENUM\_DRAWLAYER\_BOTTOM <- 2 		  //  夥款 溯檜橫                 ENUM\_DRAWLAYER\_CLOSEBACK <- 3 		  //  斬唳 溯檜橫                 ENUM\_DRAWLAYER\_MIDDLEBACK <- 4 		  //  醞唳 溯檜橫                 ENUM\_DRAWLAYER\_DISTANTBACK <- 5 		  //  錳唳 溯檜橫                 ENUM\_DRAWLAYER\_COVER <- 6 		  //  賊擊 竣朝 溯檜橫 ex : Blind ENUM\_DRAWLAYER\_MAX <- 7  ​  ​

1. 播放声音

//播放声音；参数为客户端xml文件内的声音ID obj.sq\_PlaySound("SM\_BLOODBOOM\_02");//播放声音 //播放声音，并且赋予ID值 obj.sq\_PlaySound("ICEORB\_THORN\_LOOP",3711);//播放循环的声音 //停止播放 obj.stopSound(3711);//停止播放

1. 创建特效

//角色创建特效  方向跟坐标都是以角色偏移   参数分别是：特效编号，等级，x偏移，y偏移，z偏移 obj.sq\_SendCreatePassiveObjectPacket(24201, 0, 120, 1, 0);  //创建特效 参数分别是：对象，特效编号，等级，x偏移，y偏移，z偏移，方向 sq\_SendCreatePassiveObjectPacket(obj, 24243, 0, 0, 0, 0, obj.getDirection());  //以map的坐标创建特效  参数分别是：对象，特效编号，等级，x坐标，y坐标，z坐标 sq\_SendCreatePassiveObjectPacketPos(parentObj, 24256, 0, x, y, z);  //以父对象的坐标创建特效 参数分别是：对象，特效编号，等级，x偏移，y偏移，z偏移 sq\_SendCreatePassiveObjectPacketFromPassivePos( obj, 24370, 0, 0, 0);  //还有一个没测试 是缔造者的 sq\_CreatePassiveObjectAfterWarning(obj, 23505, skill\_level, null);  //传递 sq\_BinaryStartWrite(); sq\_BinaryWriteBool(); sq\_BinaryWriteFloat(); sq\_BinaryWriteWord(); sq\_BinaryWriteByte(); sq\_BinaryWriteDword(); //人物传递 obj.sq\_StartWrite(); obj.sq\_WriteBool(); obj.sq\_WriteFloat(); obj.sq\_WriteWord(); obj.sq\_WriteByte(); obj.sq\_WriteDword(); //接收 receiveData.getSize(); reciveData.readBool(); reciveData.readByte(); reciveData.readWord(); reciveData.readDword(); reciveData.readFloat();

1. 得到角色类型  得到角色转职类型

ENUM\_CHARACTERJOB\_SWORDMAN	<-	0		       ///	鬼剑 ENUM\_CHARACTERJOB\_FIGHTER	<-	1			       ///	女格斗 ENUM\_CHARACTERJOB\_GUNNER	<-	2			       ///	男枪 ENUM\_CHARACTERJOB\_MAGE	<-	3			       ///	女魔法 ENUM\_CHARACTERJOB\_PRIEST	<-	4			       ///	圣职者 ENUM\_CHARACTERJOB\_AT\_GUNNER	<-	5		       ///	女枪 ENUM\_CHARACTERJOB\_THIEF	<-	6			      ///	暗夜使者 ENUM\_CHARACTERJOB\_AT\_FIGHTER	<-	7		      ///	男格斗 ENUM\_CHARACTERJOB\_AT\_MAGE	<-	8			      ///	男魔法 ENUM\_CHARACTERJOB\_DEMONIC\_SWORDMAN	<-	9	///	黑暗武士 ENUM\_CHARACTERJOB\_CREATOR\_MAGE	<-	10		///	缔造者 ENUM\_CHARACTERJOB\_MAX	<-	11				///	  sq\_getJob(obj);//得到角色类型  sq\_getGrowType(obj);//得到转职类型

1. 得到我的角色

local chr = sq\_getMyCharacter();//得到我的角色 local chr = sq\_GetMyMasterCharacter();//得到我的主人角色

1. 施放技能时 创建读条 以及 删除读条

local skill\_level = sq\_GetSkillLevel(obj, SKILL\_ICEROAD);//技能等级 local castTime = sq\_GetCastTime(obj, SKILL\_FIRE\_ROAD, skill\_level);//得到技能里面的施放时间 sq\_SetFrameDelayTime(animation, 0, castTime);//设置ani帧时间  sq\_StartDrawCastGauge(obj, castTime, true);//开始读条 sq\_EndDrawCastGauge(obj);//结束读条

1. 霸体 隐身 无敌

`                `POD\_VAR\_ARROW\_COUNT		<- 1; // 已使用的箭数                 POD\_VAR\_CIRCLE\_INDEX		<- 2; // 生成的具体索引         POD\_VAR\_CIRCLE\_OBJECT\_GROUP	<- 3; // 创建的具体组                 POD\_VAR\_CIRCLE\_OBJECT\_UID		<- 4; // 创建的具体UID                 POD\_VAR\_CIRCLE\_OBJECT		<- 5; // 已创建的球体                 POD\_VAR\_SUPERARMOR		<- 6; // 超级智能侦探                 POD\_VAR\_FLASHSCREEN		<- 7; // 已创建的球体 //此霸体必须在状态结束时 删除霸体，不然会一直存在  如果是复仇者的话sq\_后面一个字母改为小写即可 obj.sq\_SetSuperArmor(POD\_VAR\_SUPERARMOR); obj.sq\_RemoveSuperArmor(POD\_VAR\_SUPERARMOR); obj.sq\_SetSuperArmorUntilTime(obj, 1000);//霸体多长时间自动销毁  //参数3 2无敌 DAMAGETYPE\_SUPERARMOR = 1 DAMAGETYPE\_NORMAL = 0 sq\_SetCustomDamageType(obj, true, 1); //设置损伤类型  ​

1. 设置旋转角度

obj.setCustomRotate(true, angle);//对象类 sq\_SetCustomRotate(obj, 0.0);//任意对象 旋转 sq\_SetfRotateAngle(pAni, angle);//给ani设置旋转 sq\_AddfRotateAngle(pAni, angle);//给ani设置旋转    变量.tofloat();//转为浮点数 变量.tointeger();//转为整数型  //atan2 参数1：高度 参数2：长度 //sq\_ToDegree 得到的是角度 //sq\_ToRadian 转为弧度 local Yangle = sq\_ToDegree(sq\_Atan2(x.tofloat(), z.tofloat()));//转为角度 sq\_ToRadian(angle);//将角度转化为弧度

1. 发送冷却未完毕的公告消息

obj.startCantUseSkillWarning(); if (obj.isMessage()) sq\_AddMessage(414);//冷却未完毕

1. 设置 或 判断 冷却时间 或者与技能相关
   1. 批量设置冷却

local bursterSkill = sq\_GetSkill(chr, SKILL\_BURSTER);//得到技能 local pIntVec = sq\_GetGlobalIntVector();//包 sq\_IntVectorClear(pIntVec);//清除 sq\_IntVectorPush(pIntVec, SKILL\_BURSTER);//加入技能ID local size = sq\_GetCustomIntDataSize(bursterSkill, chr);//得到技能的静态数据范围 for (local i = 0; i < size; i++) {         local disableSkillIndex = sq\_GetIntData(chr, SKILL\_BURSTER, i);//得到静态数据         sq\_IntVectorPush(pIntVec, disableSkillIndex);//加入技能ID } //参数1：角色 //参数2：冷却时间 //参数3：包 sq\_SetStartCoolTime(chr, 0, pIntVec);//设置冷却                           sq\_SendMessage(parentObj, OBJECT\_MESSAGE\_GHOST, 1, 0);                 sq\_PostDelayedMessage(parentObj, OBJECT\_MESSAGE\_GHOST, 0, 0, 8000);

1. 判断技能是否处于冷却状态下

sq\_GetSkill(obj, 69).isInCoolTime();//是否处于冷却

1. 重置冷却

local skill = sq\_GetSkill(obj, SKILL\_ICEROAD);//得到技能 skill.resetCurrentCoolTime();//重置冷却

1. 使技能进入冷却

local skill\_level = sq\_GetSkillLevel(obj, SKILL\_ICEROAD);//得到技能等级 obj.startSkillCoolTime(SKILL\_ICEROAD, skill\_level, -1);//开始技能冷却

1. 判断技能是否开启  或者 设置技能是否可使用 #就是可以更改开关的技能

local skill = sq\_GetSkill(obj, SKILL\_ICEROAD); skill.isSealActiveFunction();//判断是否开启 skill.setSealActiveFunction(true);//true开启 false关闭

1. 判断对象类型 判断是否是相同对象 是否是敌人  是否死亡

object.isObjectType(OBJECTTYPE\_ACTIVE);//控制对象类 判断对象类型 obj.isEnemy(object);//控制类对象 是否是敌人  local activeObj = sq\_GetCNRDObjectToActiveObject(object); activeObj.isDead();//活动类对象 是否死亡  isSameObject(obj, object);//判断是否是相同对象                             OBJECTTYPE\_OBJECT <- 0 		  //  譆鼻嬪 螃粽薛                 OBJECTTYPE\_COLLISION <- 1 		  //  醱給 螃粽薛 (OBJECTTYPE\_OBJECT 嬪)                 OBJECTTYPE\_ACTIVE <- 17 		  //  棟翕 螃粽薛 (OBJECTTYPE\_COLLISION 嬪)                 OBJECTTYPE\_CHARACTER <- 273 		  //  議葛攪 螃粽薛 (OBJECTTYPE\_ACTIVE 嬪)                 OBJECTTYPE\_MONSTER <- 529 		  //  跨蝶攪 螃粽薛 (OBJECTTYPE\_ACTIVE 嬪)                 OBJECTTYPE\_RIDABLEOBJECT <- 4625 		  //  驍匙 婦溼 螃粽薛 (OBJECTTYPE\_MONSTER 嬪)                 OBJECTTYPE\_PASSIVE <- 33 		  //  熱翕 螃粽薛 (OBJECTTYPE\_COLLISION 嬪)                 OBJECTTYPE\_ITEM <- 289 		  //  嬴檜蠱 螃粽薛 (OBJECTTYPE\_PASSIVE 嬪)                 OBJECTTYPE\_TRAP <- 545 		  //  椰 螃粽薛 (OBJECTTYPE\_PASSIVE 嬪)                 OBJECTTYPE\_BREAKABLE <- 1057 		  //  惚 陛棟 螃粽薛(爾僭鼻濠 售) (OBJECTTYPE\_PASSIVE 嬪)                 OBJECTTYPE\_PET <- 65 		  //  褐熱 (OBJCTTYPE\_COLLISION 嬪)                 OBJECTTYPE\_CREATURE <- 129 		  //  觼葬藥 (OBJCTTYPE\_COLLISION 嬪)                 OBJECTTYPE\_DRAWONLY <- 2 		  //  斜葬晦 瞪辨 螃粽薛 (OBJECTTYPE\_OBJECT 嬪)                 OBJECTTYPE\_VIRTUALCHARACTER <- 18 		  //  渠晦褒縑憮 噙朝 陛鼻 議葛攪 (OBJECTTYPE\_DRAWONLY 嬪)                 OBJECTTYPE\_NPC <- 34 		  //  渠晦褒曖 NPC (OBJECTTYPE\_DRAWONLY 嬪)                 OBJECTTYPE\_DONKEY <- 66 		  //  渠晦褒曖 偃檣鼻薄 (OBJECTTYPE\_DRAWONLY 嬪)                 OBJECTTYPE\_VIRTUALCREATURE <- 130 		  //  渠晦褒縑憮 噙朝 陛鼻 觼葬藥(OBJECTTYPE\_DRAWONLY 嬪)                 OBJECTTYPE\_DISJOINTSHOP <- 258 		  //  渠晦褒曖 羹陛 羹 鼻薄(OBJECTTYPE\_DRAWONLY 嬪)                 OBJECTTYPE\_VIRTUALMONSTER <- 514 		  //  渠晦褒縑憮 噙朝 陛鼻 跨蝶攪 (OBJECTTYPE\_DRAWONLEY 嬪)                 OBJECTTYPE\_NONE\_DELETE <- 1026 		  //  螃粽薛 餉薯 衛 餉薯腎雖 彊朝 螃粽薛 (OBJECTTYPE\_DRAWONLEY 嬪)  OBJECTTYPE\_DEFINE\_END <- 61440

1. hp mp相关 #设置hp或者mp或者得到
   1. 根据转换率得到转换后的实际hp值

数值需要通过运算后得到正确数值 local convert\_rate = sq\_GetAbilityConvertRate(obj, CONVERT\_TABLE\_TYPE\_HP);//先得到转换率 local dooms\_con\_hp = dooms\_hp.tofloat() \* convert\_rate.tofloat();//得到正确的数值  //转换常量 CONVERT\_TABLE\_TYPE\_DAMAGE <- 0   //  等嘐雖 CONVERT\_TABLE\_TYPE\_DEFENSE <- 1   //  寞橫溘 CONVERT\_TABLE\_TYPE\_HP <- 2   //  HP MAX CONVERT\_TABLE\_TYPE\_PHYSICAL\_ATTACK <- 3   //   CONVERT\_TABLE\_TYPE\_PHYSICAL\_DEFENSE <- 4   //  羹溘 CONVERT\_TABLE\_TYPE\_MAGICAL\_ATTACK <- 5   //  雖棟 CONVERT\_TABLE\_TYPE\_MAGICAL\_DEFENSE <- 6   //  薑褐溘 CONVERT\_TABLE\_TYPE\_PHYSICAL\_ABSOLUTE\_DAMAGE <- 7   //  僭葬 瞰渠 等嘐雖 CONVERT\_TABLE\_TYPE\_PHYSICAL\_DAMAGE\_REDUCE <- 8   //  僭葬 等嘐雖 爾薑 CONVERT\_TABLE\_TYPE\_MAGICAL\_ABSOLUTE\_DAMAGE <- 9   //  葆徹 瞰渠 等嘐雖 CONVERT\_TABLE\_TYPE\_MAGICAL\_DAMAGE\_REDUCE <- 10   //  葆徹 等嘐雖 爾薑 CONVERT\_TABLE\_TYPE\_ACTIVESTATUS\_DAMAGE\_REDUCE <- 11   //  鼻鷓檜鼻 等嘐雖 爾薑. CONVERT\_TABLE\_TYPE\_MP <- 12   //  MP MAX CONVERT\_TABLE\_TYPE\_SKILL\_POWER <- 13   //  蝶鑒 絮董等嘐雖 CONVERT\_TABLE\_TYPE\_MAX <- 14

1. 得到  设置 hp mp

obj.getHpMax();//活动类 得到hp上限 obj.getHp();//活动类 得到当前hp obj.setHp(0, null, true);//活动类 设置hp  obj.getMpMax();//活动类 得到mp上限 obj.getMp();// 活动类 得到当前mp obj.sendSetMpPacket(obj.getMpMax());//活动类 设置mp   sqrObj.sq\_SendSetHpPacket(sqrObj.getHp() + hp, true, parentObj);//角色类 设置hp sqrObj.sq\_SendSetMpPacket(sqrObj.getHp() + hp, true, parentObj);//角色类 设置mp  ​

1. 移动视角

//自带比较简单的移动；会受到人物的方向所影响 obj.sq\_SetXScrollStart(500, 0);//开始移动视角；1.移动距离 2.达到距离时间 obj.sq\_SetXScrollStop(500);//回归视角 1.视角回归总时间 obj.sq\_SetXScroll(1000, 500, 0, 500);//移动视角 1.移动距离 2.达到时间 3.等待时间 4.回归时间  ​

1. 发送破坏对象包

if(!parentObj)         {                 if(obj.isMyControlObject())                 {                         //发送摧毁包被动对象；销毁obj特效                         sq\_SendDestroyPacketPassiveObject(obj);                         return;                 }         }  obj.sendDestroyPacket(true);//对象类 发送破坏包

1. 得到随机数

local index = sq\_getRandomUnique(true, 0, ::ElementalRainCreatePos.len()); sq\_getRandom(10,20); sq\_getRandomFloat(0.1,0.9); ​

1. 得到控制对象的lst列表的ID

obj.getCollisionObjectIndex();//控制类对象 得到lstId

1. 得到人物当前的技能ID

local skillIndex = obj.getCurrentSkillIndex();//活动类对象 得到技能ID

1. 得到当前副本 或 map的ID

local stage = sq\_GetGlobaludpModuleStage();//得到模块 local dungeon = sq\_GetDungeonByStage(stage);//得到副本模块 local dungeonIndex = sq\_GetDuegonIndex(dungeon);//得到副本ID local mapIndex = sq\_GetMapIndex(stage);//得到mapID

1. 得到当前场景模块类型

//得到当前的场景模块类型 sq\_GetCurrentModuleType(); //1是城镇 3是副本中  MODULE\_TYPE\_NONE <- -1 MODULE\_TYPE\_ENTRANCE <- 0         MODULE\_TYPE\_ROOM\_LIST <- 1	// 마을                                                                           MODULE\_TYPE\_SELECT\_DUNGEON <- 2				// 던전 선택화면                                         MODULE\_TYPE\_MAIN\_GAME <- 3					// 일반던전(이계 포함)                                                 MODULE\_TYPE\_PVP <- 4						// 결장                                         MODULE\_TYPE\_FAIR\_PVP <- 5					// 공결                                 //MODULE\_TYPE\_LABYRINTH <- 7				// 사라짐 MODULE\_TYPE\_SELECT\_CHANNEL <- 6                                                                                                                                          MODULE\_TYPE\_WARROOM <- 7					// 전쟁지역                                         //MODULE\_TYPE\_CHAOS <- 8					 MODULE\_TYPE\_LOGIN <- 8                                                                                                                             MODULE\_TYPE\_ASSAULT <- 9					// 싸우자                                         MODULE\_TYPE\_DEAD\_TOWER <- 10					// 사탑                                 MODULE\_TYPE\_BLOOD\_SYSTEM <- 11				// 무한의 제단                         MODULE\_TYPE\_DESPAIR\_TOWER <- 12			//절망의탑 // 글로벌실 컨텐츠                                                   MODULE\_TYPE\_BOSS\_TOWER <- 13			//심연의 투기장                         MODULE\_TYPE\_ADVANCE\_ALTAR <- 14			//진격의 제단 MODULE\_TYPE\_LOAD <- 15 MODULE\_TYPE\_TOURNAMENT <- 16 MODULE\_TYPE\_MAX <- 17                                                   MODULE\_TYPE\_PVP\_TYPE <- 18			// 결투장, 싸우자, 전쟁지역을 합쳐 지칭                 MODULE\_TYPE\_DUNGEON\_TYPE <- 19		// 던전, 사탑, 무제를 합쳐 지칭                         MODULE\_TYPE\_ALL <- 20			 //MODULE\_TYPE\_LOAD <- 13 //MODULE\_TYPE\_TOURNAMENT <- 14 //MODULE\_TYPE\_MAX <- 15                                                   //MODULE\_TYPE\_PVP\_TYPE <- 16			// 결투장, 싸우자, 전쟁지역을 합쳐 지칭                 //MODULE\_TYPE\_DUNGEON\_TYPE <- 17		// 던전, 사탑, 무제를 합쳐 지칭                                                          //MODULE\_TYPE\_ALL <- 18				// 모든 모듈을 지칭

1. 判断是否是我提供的技能等级以上

obj.isOverSkillLevel(SKILL\_AVENGER\_AWAKENING, 4);//角色类

1. 判断对象是否处于map某个范围内

sq\_IsinMapArea(obj, object, firstTargetXStartRange, firstTargetXEndRange, firstTargetYRange);

1. 是否是存在对象

sq\_IsExistObject(parentObj, source);

1. 是否在pvp模块

sq\_isPVPMode();

1. 判断副本类型 #是否是塔  #是否是古老副本

local stage = sq\_GetGlobaludpModuleStage();//得到模块 local dungeon = sq\_GetDungeonByStage(stage);//得到副本  local isDimensionDungeon = sq\_IsDimensionDungeon(dungeon);//维度地牢 local isDespairTower = sq\_IsDespairTower(dungeon);//绝望塔 local isAncientDungeon = sq\_IsAncientDungeon(dungeon);//古老地牢 local isTower = sq\_IsTowerDungeon();//塔

1. 设置边框轮廓 #描边效果

sq\_SetObjectBounding(obj, jumpVelocity); //最后一个参数是 描边像素宽度 obj.setCustomOutline(false, 0, true, 2); obj.setCustomOutline(true, rgb, false, 1); obj.setCustomOutline(true, sq\_RGBA(255, 0, 0, 10), false, 4);

1. 在画ui函数中用到的函数方法 #函数drawCustomUI

//普通画动图ui sq\_AnimationProc(ani); sq\_drawCurrentFrame(ani, x, y, false);  //可以增加rgb 或者透明度 sq\_AnimationProc(gauge\_normal\_flash); sq\_drawCurrentFrameEffect\_SIMPLE(gauge\_normal\_flash, x, y, rgb, alpha);   //画的固定帧 坐标是取的绝对屏幕坐标 sq\_DrawSpecificFrame(hudCreatorAni, x, y, false, 0, false, 1.0);  //rgba sq\_DrawSpecificFrameEffect\_SIMPLE(hud\_creator\_b\_gauge, gaugePosX + (slot \* offset), y, 0, rgb, alpha, true);  //没用过这个 原版是在特效中的被动 但是被注释掉了 sq\_drawCurrentFrameEffectColor(ani, GRAPHICEFFECT\_MONOCHROME, true, sq\_RGB(255,255,255), sq\_ALPHA(255));  //画出预设弹窗文字 sq\_drawToolTip(x - 35, y - 13, sq\_RGB(255,255,255), 0, 1, 29003, 0, 260, true);  ​

1. 数值类型转换

//转为浮点数 变量.tofloat() //转为整数型 变量.tointeger() //转为整数型 变量.tostring() //字符串取长度 local len = Value.len(); //分割 local son = Value.slice(i,i+1);

1. 设置跟随过图

//设置跟随对象 控制类 obj.setMapFollowParent(obj.getParent());//设置跟随对象 //设置跟随的类型 obj.setMapFollowType(1);//设置跟随类型 1//跟着过图 会出现在门周围 2;//跟着过图 会出现在门周围 3;//跟着过图 坐标会有点乱。。 4;//跟着过图 坐标在门的前方 5，6;//跟着过图 过图后坐标为0 0 0

1. 得到团队类型

parentObj.sq\_GetTeam();//角色类 得到团队类型 attacker.getTeam();//控制类对象 得到团队类型

1. 得到当前武器sub使用类型

obj.getWeaponSubType();

1. 得到怪物种类 #例如精灵什么的

sq\_IsInCategory(parentObj,CATEGORY\_ETC\_FIXTURE);

1. 检测怪物类型 #例如深渊或者boss之类等等

local activeObj = sq\_GetCNRDObjectToActiveObject(object);//转为活动类对象  sq\_IsAiCharacter(activeObj);//是否是apc人偶 sq\_IsNamed(activeObj);//是否是精英怪物 sq\_IsHellMonster(activeObj);//是否是深渊怪物 sq\_IsBoss(activeObj);//是否是BOSS怪物  activeObj.isChampion();//是否是异常状态怪物 活动类 activeObj.isCommonChampion();//是否是常见异常怪物 活动类 activeObj.isSuperChampion();//是否是超级异常怪物 活动类  obj.isEnemy(object);//是否是敌人 控制类

1. 通过攻击框得出中心点坐标

local x = sq\_GetCenterXPos(boundingBox);//得到边界框的x轴中心点 local y = sq\_GetCenterYPos(boundingBox);//得到边界框的y轴中心点 local z = sq\_GetCenterZPos(boundingBox);//得到边界框的z轴中心点

1. 强制掉线 #运行后游戏直接奔溃

setBreak(obj);  setBreak();

1. 暂停 #暂停 #让其停止

sq\_SetPause(obj, PAUSETYPE\_OBJECT, pauseTime);  PAUSETYPE\_NONE		<- 0	/// 일시정지 안함 PAUSETYPE\_OBJECT	<- 1	/// 只有对象是暂时中止(Appendage，状态变化，效果是继续旋转，重力未应用) PAUSETYPE\_WORLD		<- 2	/// 全世界都暂停了。  local currentAni = obj.getCurrentAnimation();//当前ani currentAni.SetPause(true);//true暂停播放 false正常播放

1. 特效设置最大攻击上限 #攻击一定命中一定不会再攻击

obj.sq\_SetMaxHitCounterPerObject(maxHit);//设置最大攻击次数

1. 提供物品ID 检查该物品是否是恢复类道具

local isRecover = sq\_IsItemRecover(itemIndex);

1. 得到buff图标数量

sq\_getMyBuffInfoCount();

1. 得到Throw属性 设置Throw属性 #没测试

//得到元素类型 local type = parentObj.getThrowElement(); obj.setThrowElement(element); ENUM\_ELEMENT\_FIRE <- 0 /// 火属性 ENUM\_ELEMENT\_WATER <- 1 /// 冰属性 ENUM\_ELEMENT\_DARK <- 2 /// 暗属性 ENUM\_ELEMENT\_LIGHT <- 3 /// 光属性 ENUM\_ELEMENT\_NONE <- 4 /// 无属性 ENUM\_ELEMENT\_MAX <- 4 /// == ENUM\_ELEMENT\_NONE

1. 是否处于战场

//得到父对象 local parentObject = appendage.getParent(); //得到角色对象 local parentObj = sq\_ObjectToSQRCharacter(parentObject); //检查是否处于战斗 parentObj.isInBattle();//角色类 sq\_IsInBattle()

1. 判断是否处于技能不可使用的map房间中

obj.isInActiveSkillBlockedMap();//角色类

1. 判断是否处于暂停类型世界中

sq\_IsPauseTypeWorld(obj)

1. 设置普攻时的移动信息

obj.setAttackXVelocity(250); obj.setAttackXAccel(-1000); obj.setAttackXVelocityFast(400); obj.setAttackXAccelFast(-1000);

1. 得到攻击ID

local attackIndex = obj.getAttackIndex();//活动类

1. 杂乱
   1. 无测试1

po特效 //得到角色 local chr = obj.getTopCharacter(); //如果角色不为null if (chr) {          local map = sq\_GetMap(chr);//得到map          if (map)          {                 map.recalcAStarAttributesByMovableObject(obj, false);？          } }

1. 无测试2

增加攻击对象，好像是设定 我攻击到它了 local damager = sq\_GetObject(parentObj, group, id); local colObj = sq\_GetCNRDObjectToCollisionObject(damager); if(colObj && parentObj)          sq\_AddHitObject(obj, colObj);                 local flashScreenObj = sq\_var.getObject(POD\_VAR\_FLASHSCREEN);                 if(flashScreenObj) { // 플래쉬 스크린 작동중이면 끔                         local pflashScreen = sq\_GetCNRDObjectToFlashScreen(flashScreenObj);                         if(pflashScreen)                                 pflashScreen.fadeOut();                 }                 local grabChr = sq\_GetCNRDObjectToSQRCharacter(vObj);                 if(grabChr)                 {                         local cmdChecker = grabChr.getCommandChecker();                         grabChr.initCommandChecker(cmdChecker, true); // 자신이 콘트롤하기 위해 커맨드체커 ai플래그 부분을 true로 바꿉니다.                         grabChr.setCommandChecker(cmdChecker);                         // 커맨트 체크에서 ai모드가 on인지 off인지 체크하는 플래그를 세팅하는 함수 입니다.                         cmdChecker.setAIMode(true);                           // 다음방으로 이용하기 위해 쓰인 플래그 입니다. 내가 ai가 콘트롤하는 오브젝트인지 체크하는 플래그 입니다 (irdsqrcharacter)                         grabChr.setAIModeByControlObject(true);                           local onlyAiChr = sq\_GetCNRDObjectToAICharacter(grabChr);                         sq\_SetTargetObjectAICharacter(onlyAiChr, null, false);                         local skillMgr = grabChr.getSkillManager();                         if(skillMgr)                         {                                 skillMgr.setParent(grabChr);                                         skillMgr.setCommandChecker(cmdChecker);	// 스킬매니저와 커맨드체커를 연결                                 local skillTree = grabChr.getCurrentSkillTree();                                 skillMgr.addAllKeyCommand(skillTree);                                 grabChr.flushCommandEnable();                         }                 }

1. 被动增加伤害

`                         `sqrObj.sq\_RemovePassiveSkillAttackBonusRate(SKILL\_MANABURST);                 sqrObj.sq\_AddPassiveSkillAttackBonusRate(SKILL\_MANABURST, SKL\_LVL\_COLUMN\_IDX\_1);

1. 技能密封

local skill = sq\_GetSkill(parentChr, SKILL\_TUNDRASOUL); if(skill.isSealFunction()) local skill = sq\_GetSkill(parentChr, SKILL\_TUNDRASOUL); if(skill.isSealFunction())

