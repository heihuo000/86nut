
IRDSQRCharacter.pushState(0, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(1, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(2, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(3, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(4, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(5, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(6, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(7, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(8, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(9, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushState(10, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
IRDSQRCharacter.pushPassiveObj("monster/po_move/main.nut", 24377);





IRDSQRCharacter.pushScriptFiles("character/Common/common_header.nut");
IRDSQRCharacter.pushScriptFiles("character/common/common_common.nut");
IRDSQRCharacter.pushScriptFiles("character/common/burster/common_state_onsetstate.nut");
IRDSQRCharacter.pushScriptFiles("character/common/burster/common_state_onproc.nut");
IRDSQRCharacter.pushScriptFiles("character/common/burster/common_state_scrollpos.nut");
IRDSQRCharacter.pushScriptFiles("character/common/burster/common_state_onendstate.nut");
IRDSQRCharacter.pushScriptFiles("character/common/burster/common_state_ontimeevent.nut");


for (local i = 0; i < ENUM_CHARACTERJOB_MAX; i+=1)
{
	IRDSQRCharacter.pushState(i, "Character/Common/Burster/Burster.nut", "Burster", STATE_BURSTER, SKILL_BURSTER);
}


