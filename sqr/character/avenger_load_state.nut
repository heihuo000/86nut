

CNAvenger.pushScriptFiles("Character/Priest/avenger_header.nut");  
CNAvenger.pushScriptFiles("Character/Priest/avenger_common.nut");  

CNAvenger.pushScriptFiles("Character/Priest/passive_skill_priest.nut");


CNAvenger.pushState("Character/Priest/Spincutter.nut", "spincutter", 61, 113);
CNAvenger.pushState("Character/Priest/hedgehog.nut", "Hedgehog", 63, 116);
CNAvenger.pushState("Character/Priest/Ripper.nut", "Ripper", 65, 117);
CNAvenger.pushState("Character/Priest/fastmove.nut", "Fastmove", 64, 115);  
CNAvenger.pushState("Character/Priest/EarthQuake.nut", "EarthQuake", 66, 118 );

CNAvenger.pushState("Character/Priest/Awakening.nut", "Awakening", 67, 119);  
CNAvenger.pushState("Character/Priest/DashAttack.nut", "DashAttack", STATE_DASH_ATTACK, -1);
CNAvenger.pushState("Character/Priest/AwakenningTurnOff.nut", "AwakenningTurnOff", 69, -1);

CNAvenger.pushState("Character/Priest/AvengerAttack.nut", "AvengerAttack", STATE_ATTACK, -1);  
CNAvenger.pushState("Character/Priest/AvengerJump.nut", "AvengerJump", STATE_JUMP, -1);  
CNAvenger.pushState("Character/Priest/PowerOfDarkness.nut", "PowerOfDarkness", 71, 125);  
CNAvenger.pushState("Character/Priest/FallingSoul.nut", "FallingSoul", 72, 131);  

CNAvenger.pushState("Character/Priest/DisasterEx.nut", "DisasterEx", 74, 134);  
CNAvenger.pushState("Character/Priest/PandemoniumEx.nut", "PandemoniumEx", 73, 133);  



CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_ripperexplosion.nut", 24102);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_earthquakerock.nut", 24103);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_spincutter.nut", 24100);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_spincutterthrow.nut", 24101);  

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack1.nut", 24104);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack2.nut", 24105);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_devilstrike_attack3.nut", 24106);  

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PowerOfDarknessCircle.nut", 24107);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PowerOfDarknessArrow.nut", 24108);  

CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_disasterExp.nut", 24109);  
CNAvenger.pushPassiveObj("PassiveObject/Character/Priest/po_PendemoniumExDevil.nut", 24110);  


CNAvenger.pushState("Character/Priest/Execution.nut", "Execution", 68, 120);  

CNAvenger.pushState("Character/Priest/HighSpeedSlash.nut", "HighSpeedSlash", 70, 124);  




