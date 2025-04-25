

IRDSQRCharacter.pushScriptFiles("Character/DemonicSwordman/demonicswordman_header.nut");
IRDSQRCharacter.pushScriptFiles("Character/DemonicSwordman/demonicswordman_common.nut");
IRDSQRCharacter.pushScriptFiles("Character/DemonicSwordman/passive_skill_demonicswordman.nut");


IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_DEMONIC_SWORDMAN, "Character/DemonicSwordman/PhantomSword/PhantomSword.nut", "PhantomSword", STATE_PHANTOMSWORD, SKILL_PHANTOMSWORD);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_DEMONIC_SWORDMAN, "Character/DemonicSwordman/DarkWaveFall/DarkWaveFall.nut", "DarkWaveFall", STATE_DARKWAVEFALL, SKILL_DARKWAVEFALL);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_DEMONIC_SWORDMAN, "Character/DemonicSwordman/ChargeExplosion/ChargeExplosion.nut", "ChargeExplosion", STATE_CHARGEEXPLOSION, SKILL_CHARGEEXPLOSION);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_DEMONIC_SWORDMAN, "Character/DemonicSwordman/DarkBurst/DarkBurst.nut", "DarkBurst", STATE_DARKBURST, SKILL_DARKBURST);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_DEMONIC_SWORDMAN, "Character/DemonicSwordman/TimeBreak/TimeBreak.nut", "TimeBreak", STATE_TIMEBREAK, SKILL_TIMEBREAK);

IRDSQRCharacter.pushPassiveObj("Character/DemonicSwordman/D_SwordmanPo/po_D_Swordman.nut", 24338);
