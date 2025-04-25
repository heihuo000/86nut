
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C


 
 

 
 


 
IRDSQRCharacter.pushPassiveObj("js60_qq506807329/share_obj/share_po_new_thief_24378.nut", 24378);
sq_RunScript("js60_qq506807329/share_obj/new_thief/setcustomdata.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/setstate.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/procappend.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/onendcurrentani.nut");
sq_RunScript("js60_qq506807329/share_obj/new_thief/else.nut");

 
 
IRDSQRCharacter.pushScriptFiles("character/new_thief/new_thief_header.nut");  
IRDSQRCharacter.pushScriptFiles("character/new_thief/new_thief_common.nut");  
IRDSQRCharacter.pushScriptFiles("character/new_thief/passive_skill_thief.nut");  

 
 
 
 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/exoticrampant/exoticrampant.nut", "thief_exoticrampant", 220, 220);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/distribution/distribution.nut", "thief_distribution", 221, 221);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/novaremnant/novaremnant.nut", "thief_novaremnant", 222, 222);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/executionerslash/executionerslash.nut", "thief_executionerslash", 223, 223);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/nicolasblackarachnia/nicolasblackarachnia.nut", "thief_nicolasblackarachnia", 224, 224);

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_THIEF, "character/new_thief/ballacreadvent/ballacreadvent.nut", "thief_ballacreadvent", 225, 225);

IRDSQRCharacter.pushState(6, "Character/new_thief/WuQi/WuQi.nut", "WuQi", STATE_WUQI, SKILL_WUQI);