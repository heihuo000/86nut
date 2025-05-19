


// 逐行解释：
// 该文件用于加载剑士（swordman）角色的相关状态、被动对象和脚本文件。
// 下面的每一行代码都负责注册或加载剑士职业的某个技能、被动对象或功能脚本。
// 例如：
// IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_swordman_24370.nut", 24370);
// 这行代码将ID为24370的被动对象脚本注册到角色系统中。
// sq_RunScript("js60_qq506807329/share_obj/swordman/setcustomdata.nut");
// 这行代码加载剑士的自定义数据设置脚本。
// sq_RunScript("js60_qq506807329/share_obj/swordman/setstate.nut");
// 这行代码加载剑士的状态设置脚本。
// sq_RunScript("js60_qq506807329/share_obj/swordman/procappend.nut");
// 这行代码加载剑士的附加处理脚本。
// sq_RunScript("js60_qq506807329/share_obj/swordman/onendcurrentani.nut");
// 这行代码加载剑士动画结束时的处理脚本。
// sq_RunScript("js60_qq506807329/share_obj/swordman/else.nut");
// 这行代码加载剑士的其他相关脚本。
// IRDSQRCharacter.pushScriptFiles("character/swordman/swordman_header.nut");
// 这行代码注册剑士的头文件脚本。
// IRDSQRCharacter.pushScriptFiles("character/swordman/swordman_common.nut");
// 这行代码注册剑士的通用功能脚本。
// IRDSQRCharacter.pushScriptFiles("character/swordman/passive_skill_swordman.nut");
// 这行代码注册剑士的被动技能脚本。
// IRDSQRCharacter.pushState(0, "character/Swordman/wave/wave.nut", "WaveSword", 24 ,-1 );
// 这行代码注册ID为24的“波动剑”技能状态。
// IRDSQRCharacter.pushPassiveObj("character/Swordman/wave/po_bloodcut.nut", 24357);
// 这行代码注册ID为24357的“血之斩击”被动对象。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodboom/bloodboom.nut", "swordman_bloodboom", 229, 229);
// 这行代码注册剑士职业ID下的“血爆”技能状态，技能ID为229。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodmarble/bloodmarble.nut", "swordman_bloodmarble", 230, 230);
// 这行代码注册剑士职业ID下的“血珠”技能状态，技能ID为230。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodriven/bloodriven.nut", "swordman_bloodriven", 231, 231);
// 这行代码注册剑士职业ID下的“血驱”技能状态，技能ID为231。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/rage/rage.nut", "swordman_rage", 232, 232);
// 这行代码注册剑士职业ID下的“狂怒”技能状态，技能ID为232。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodsnatch/bloodsnatch.nut", "swordman_bloodsnatch", 233, 233);
// 这行代码注册剑士职业ID下的“血之掠夺”技能状态，技能ID为233。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/fatalblood/fatalblood.nut", "swordman_fatalblood", 245, 245);
// 这行代码注册剑士职业ID下的“致命之血”技能状态，技能ID为245。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/swordofmind/swordofmind.nut", "swordman_swordofmind", 234, 234);
// 这行代码注册剑士职业ID下的“心之剑”技能状态，技能ID为234。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/meteorsword/meteorsword.nut", "swordman_meteorsword", 235, 235);
// 这行代码注册剑士职业ID下的“流星剑”技能状态，技能ID为235。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/flashcut/flashcut.nut", "swordman_flashcut", 236, 236);
// 这行代码注册剑士职业ID下的“闪光斩”技能状态，技能ID为236。
// IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/handlingsword/handlingsword.nut", "swordman_handlingsword", 246, 246);
// 这行代码注册剑士职业ID下的“操控之剑”技能状态，技能ID为246。
IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_swordman_24370.nut", 24370);
sq_RunScript("js60_qq506807329/share_obj/swordman/setcustomdata.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/setstate.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/procappend.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/onendcurrentani.nut");
sq_RunScript("js60_qq506807329/share_obj/swordman/else.nut");

 
 
 
IRDSQRCharacter.pushScriptFiles("character/swordman/swordman_header.nut");  
IRDSQRCharacter.pushScriptFiles("character/swordman/swordman_common.nut");  
IRDSQRCharacter.pushScriptFiles("character/swordman/passive_skill_swordman.nut");  

IRDSQRCharacter.pushState(0, "character/Swordman/wave/wave.nut", "WaveSword", 24 ,-1 );//��?���
IRDSQRCharacter.pushPassiveObj("character/Swordman/wave/po_bloodcut.nut", 24357);//��?���
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodboom/bloodboom.nut", "swordman_bloodboom", 229, 229);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodmarble/bloodmarble.nut", "swordman_bloodmarble", 230, 230);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodriven/bloodriven.nut", "swordman_bloodriven", 231, 231);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/rage/rage.nut", "swordman_rage", 232, 232);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodsnatch/bloodsnatch.nut", "swordman_bloodsnatch", 233, 233);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/fatalblood/fatalblood.nut", "swordman_fatalblood", 245, 245);



 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/swordofmind/swordofmind.nut", "swordman_swordofmind", 234, 234);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/meteorsword/meteorsword.nut", "swordman_meteorsword", 235, 235);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/flashcut/flashcut.nut", "swordman_flashcut", 236, 236);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/handlingsword/handlingsword.nut", "swordman_handlingsword", 246, 246);


 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/slashofboom/slashofboom.nut", "swordman_slashofboom", 237, 237);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/slashofhell/slashofhell.nut", "swordman_slashofhell", 238, 238);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bladephantom/bladephantom.nut", "swordman_bladephantom", 239, 239);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bladephantomex/bladephantomex.nut", "swordman_bladephantomex", 240, 240);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/zigadvent/zigadvent.nut", "swordman_zigadvent", 241, 241);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/tombstoneswamp/tombstoneswamp.nut", "swordman_tombstoneswamp", 247, 247);


 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/indaramang/indaramang.nut", "swordman_indaramang", 242, 242);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/vajra/vajra.nut", "swordman_vajra", 243, 243);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/lightninggod/lightninggod.nut", "swordman_lightninggod", 244, 244);



 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/Kalla/Kalla.nut", "swordman_kalla", 44, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/BloodSword/BloodSword.nut", "swordman_bloodsword", 60, -1);

 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/ChargeCrash/ChargeCrash.nut", "swordman_chargecrash", 37, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/RapidMoveSlash/RapidMoveSlash.nut", "swordman_rapidmoveslash", 39, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/IllusionSlash/IllusionSlash.nut", "swordman_illusionSlash", 40, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/MomentarySlash/MomentarySlash.nut", "swordman_momentaryslash", 23, -1);

 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/HundredSword/HundredSword.nut", "swordman_hundredsword", 47, 86);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/HundredSword/HundredSwordHit.nut", "swordman_hundredswordhit", 48, 86);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/hellbenter/hellbenter.nut", "swordman_hellbenter", 46, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodyrave/bloodyrave.nut", "swordman_bloodyrave", 43, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/Standalonewave/Standalonewave.nut", "StandAloneWave", 34, 57);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/shockwavearea/shockwavearea.nut", "swordman_shockwavearea", 31, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/BackStep/BackStep.nut", "swordman_backstep", 7, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "Character/swordman/swordman_throw.nut", "swordman_throw", 13, -1);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/attack/attack.nut", "swordman_attack", 8, -1);

IRDSQRCharacter.pushState(0, "character/swordman/guiqi/mingyanjian/mingyanjian.nut", "MINGYANJIAN", STATE_MINGYANJIAN, SKILL_MINGYANJIAN);
IRDSQRCharacter.pushState(0, "character/swordman/hero/hero.nut", "HERO", STATE_HERO, SKILL_HERO);
IRDSQRCharacter.pushScriptFiles("character/swordman/ghostrelease/po_khazan.nut");
IRDSQRCharacter.pushScriptFiles("character/swordman/ghostrelease/po_bremen.nut");
IRDSQRCharacter.pushScriptFiles("character/swordman/ghostrelease/po_epidemicrasa.nut");

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/grabhand/grabhand.nut", "GRABHAND", 26, 31);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/outbreak/outbreak.nut", "OutBreak", 45 , 81 );

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/RapidMoveSlash/RapidMoveSlash.nut", "swordman_rapidmoveslash", 39, 72);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/IllusionSlash/IllusionSlash.nut", "swordman_illusionSlash", 40, 73);

IRDSQRCharacter.pushState(0, "character/swordman/badao/badao.nut", "MomentarySlash", 23, 9);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/flowmind/flowmindonefallstate.nut", "FlowMindOneFallState", STATE_FLOW_MIND_ONE_FALL_STATE, 105);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/jump/swordman_jump.nut", "SwordmanJump", 6, -1);


IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/weaponmaster/flowmind/flowmind.nut", "FlowMind", 61, 105);//׵������

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/weaponmaster/flowmind/flowmindone.nut", "FlowMindOne", 62, 107);//׵��������

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/weaponmaster/flowmind/flowmindtwo.nut", "FlowMindTwo", 63, 108);//׵�������

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/attack/grandwave.nut", "GrandWave", 27, 50);

