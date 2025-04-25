

//******************************************************************************************
// ������ ����
//******************************************************************************************
IRDSQRCharacter.pushScriptFiles("Character/ATMage/atmage_header.nut");	// ������ ��ũ��Ʈ ������ ���� �־��?���?enum�� ����)
IRDSQRCharacter.pushScriptFiles("Character/ATMage/atmage_common.nut"); //  �̰��� state�� �������°��� �ƴ� ������ ���� �Լ� �Դϴ�
//IRDSQRCharacter.pushScriptFiles("Character/ATMage/atmage_throw.nut"); //  state_throw���� ó��������ϴ�?�Լ��Դϴ�.
IRDSQRCharacter.pushScriptFiles("Character/ATMage/passive_skill_ATMage.nut"); // �⺻���� �нú� ��ų�� ó���ϴ� �κ��Դϴ�.


//******************************************************************************************
// ��ų���� NUT���� �ε�
//******************************************************************************************
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/WindStrike/wind_strike.nut", "WindStrike", STATE_WIND_STRIKE, SKILL_WIND_STRIKE);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/Attack/attack.nut", "Attack", STATE_ATTACK, -1);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ATMageDashAttack/ATMageDashAttack.nut", "ATMageDashAttack", STATE_DASH_ATTACK, -1);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/JumpAttack/jump_attack.nut", "JumpAttack", STATE_JUMP_ATTACK, -1);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/CrystalAttack/CrystalAttack.nut", "CrystalAttack", STATE_CRYSTALATTACK, SKILL_CRYSTALATTACK);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ElementalChange/elemental_change.nut", "ElementalChange", STATE_ELEMENTAL_CHANGE, SKILL_ELEMENTAL_CHANGE);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/FireRoad/fire_road.nut", "FireRoad", STATE_FIRE_ROAD, SKILL_FIRE_ROAD);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceSword/ice_sword.nut", "IceSword", STATE_ICE_SWORD, SKILL_ICE_SWORD);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/DarkChange/dark_change.nut", "DarkChange", STATE_DARK_CHANGE, SKILL_DARK_CHANGE);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/PieceOfIce/piece_of_ice.nut", "PieceOfIce", STATE_PIECE_OF_ICE, SKILL_PIECE_OF_ICE);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/Holonglight/holong_light.nut", "HolongLight", STATE_HOLONG_LIGHT, SKILL_HOLONG_LIGHT);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceArea/IceArea.nut", "IceArea", STATE_ICE_AREA, SKILL_ICE_AREA);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceCrash/IceCrash.nut", "IceCrash", STATE_ICE_CRASH, SKILL_ICE_CRASH);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/PushOut/PushOut.nut", "PushOut", STATE_PUSH_OUT, SKILL_PUSH_OUT);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/MagicCannon/MagicCannon.nut", "MagicCannon", STATE_MAGIC_CANNON, SKILL_MAGIC_CANNON);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/MagicShield/MagicShield.nut", "MagicShield", STATE_MAGIC_SHIELD, SKILL_MAGIC_SHIELD);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/WaterCannon/WaterCannon.nut", "WaterCannon", STATE_WATER_CANNON, SKILL_WATER_CANNON);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/Resonance/Resonance.nut", "Resonance", STATE_RESONANCE, SKILL_RESONANCE);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ElementalRain/ElementalRain.nut", "ElementalRain", STATE_ELEMENTAL_RAIN, SKILL_ELEMENTAL_RAIN);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/LightningWall/LightningWall.nut", "LightningWall", STATE_LIGHTNING_WALL, SKILL_LIGHTNING_WALL);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/atmage_throw.nut", "Throw", STATE_THROW, -1);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/atmage_buff.nut", "Buff", STATE_BUFF, -1);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/MultiShot/MultiShot.nut", "MultiShot", STATE_MULTI_SHOT, SKILL_MULTI_SHOT);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceOrbEx/IceOrbEx.nut", "IceOrbEx", STATE_ICE_ORB_EX, SKILL_ICE_ORB_EX);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceFieldEx/IceFieldEx.nut", "IceFieldEx", STATE_ICE_FIELD_EX, SKILL_ICE_FIELD_EX);


// ������Ż ������ [������]
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ElementalBuster/ElementalBuster.nut",
							"ElementalBuster",
							STATE_ELEMENTAL_BUSTER,
							SKILL_ELEMENTAL_BUSTER);

// ������Ż ������ [�нú� ������Ʈ]
local path = "Character/ATMage/ElementalBuster/po_ATElementalBusterExpBody.nut";
IRDSQRCharacter.pushPassiveObj(path, 24290);
IRDSQRCharacter.pushPassiveObj(path, 24291);
IRDSQRCharacter.pushPassiveObj(path, 24292);
IRDSQRCharacter.pushPassiveObj(path, 24293);
IRDSQRCharacter.pushPassiveObj(path, 24294);
IRDSQRCharacter.pushPassiveObj(path, 24295);
IRDSQRCharacter.pushPassiveObj(path, 24296);
IRDSQRCharacter.pushPassiveObj(path, 24297);
IRDSQRCharacter.pushPassiveObj(path, 24298);
IRDSQRCharacter.pushPassiveObj(path, 24299);
IRDSQRCharacter.pushPassiveObj(path, 24300);
IRDSQRCharacter.pushPassiveObj(path, 24301);



// ����Ʈ����Ʈ
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/Concentrate/Concentrate.nut",
							"Concentrate",
							STATE_CONCENTRATE_EX,
							SKILL_CONCENTRATE_EX);
path = "Character/ATMage/Concentrate/po_ATConcentrateExp.nut";
IRDSQRCharacter.pushPassiveObj(path, 24284);	// ����Ʈ����Ʈ(Ư��) ���� ���� ������Ʈ
IRDSQRCharacter.pushPassiveObj(path, 24285);	// ����Ʈ����Ʈ(Ư��) ū ���� ������Ʈ
IRDSQRCharacter.pushPassiveObj(path, 24286);	// ����Ʈ����Ʈ(Ư��) �Ӽ��� ������Ʈ





//******************************************************************************************
// ��ų���� �нú� ������Ʈ NUT���� �ε�
//******************************************************************************************
IRDSQRCharacter.pushPassiveObj("Character/ATMage/CrystalAttack/po_CrystalCore.nut", 24221); 	// 24221	`Character/Mage/CrystalCore.obj`	// ������ - ũ����Ż����

// ����
IRDSQRCharacter.pushPassiveObj("Character/ATMage/WindStrike/po_wind_strike.nut", 24201);

// ���� ��ü (��Ÿ)
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24202);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24203);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24204);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24205);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24206);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24207);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24208);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24209);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24210);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24211);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24228);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24229);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24230);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24231);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24232);


// ���� ������ ���� �нú� ������Ʈ
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24266);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24267);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24268);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24269);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/Attack/po_magic_ball.nut", 24270);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24271);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24272);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24273);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24274);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/JumpAttack/po_magic_ball.nut", 24275);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24276);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24277);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24278);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24279);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MultiShot/po_magic_ball.nut", 24280);

// ���̾�ε�?
IRDSQRCharacter.pushPassiveObj("Character/ATMage/FireRoad/po_fire_road.nut", 24212);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/FireRoad/po_fire_road.nut", 24213);

// ��������
IRDSQRCharacter.pushPassiveObj("Character/ATMage/PieceOfIce/po_ATPieceOfIce.nut", 24223);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/PieceOfIce/po_ATPieceOfIceCore.nut", 24224);

// ȣ�պ�
IRDSQRCharacter.pushPassiveObj("Character/ATMage/HolongLight/po_ATHolongLight.nut", 24222);

// ���̽� �����
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceArea/po_IceArea.nut", 24225);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceArea/po_IceAreaIceRain.nut", 24226);

// ���� ĳ��
IRDSQRCharacter.pushPassiveObj("Character/ATMage/MagicCannon/po_MagicCannon.nut", 24227);

// ����ȯ
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceChakram/po_ATIceChakramLarge.nut", 24234);


// Ư�� : ���̽� ����
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceOrbEx/po_ATIceOrbEx.nut", 24235); // ������ : Ư�� ���̽� ���� (��ü)
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceOrbEx/po_ATIceOrbExPrickle.nut", 24236); // ������ : Ư�� ���̽� ���� (����)

// Ư�� : ���̽� �ʵ�
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceFieldEx/po_ATIceFieldEx.nut", 24237); // ������ : Ư�� ���̽� �ʵ�

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ChainLightning/ChainLightning.nut", "ChainLightning", STATE_CHAINLIGHTNING, SKILL_ATCHAINLIGHTNING);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/ChainLightning/po_ATChainLightning.nut", 24241);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ChainLightning/po_ATChainLightningTarget.nut", 24242);



IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceRoad/IceRoad.nut", "IceRoad", STATE_ICEROAD, SKILL_ICEROAD);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceRoad/po_ATIceRoad.nut", 24243);


IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/FlameCircle/FlameCircle.nut", "FlameCircle", STATE_FLAMECIRCLE, SKILL_FLAMECIRCLE);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/FlameCircle/po_ATFlameCircle.nut", 24244);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/BlueDragonWill/BlueDragonWill.nut", "BlueDragonWill", STATE_BLUEDRAGONWILL, SKILL_BLUEDRAGONWILL);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/BlueDragonWill/po_ATBlueDragonWillExp.nut", 24245);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/BlueDragonWill/po_ATBlueDragonWillSub.nut", 24246);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/FrozenLand/FrozenLand.nut", "FrozenLand", STATE_FROZENLAND, SKILL_FROZENLAND);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/FrozenLand/po_ATFrozenLandMagicCircle.nut", 24247);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/FrozenLand/po_ATFrozenLandPole.nut", 24248);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/FrozenLand/po_ATFrozenLandExp.nut", 24249);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/BrokenArrow/BrokenArrow.nut", "BrokenArrow", STATE_BROKENARROW, SKILL_BROKENARROW);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/BrokenArrow/po_ATBrokenArrow.nut", 24250);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/Teleport/Teleport.nut", "Teleport", STATE_TELEPORT, SKILL_TELEPORT);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/FallenBlossoms/FallenBlossoms.nut", "FallenBlossoms", STATE_FALLENBLOSSOMS, SKILL_FALLENBLOSSOMS);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/TurnWindmill/TurnWindmill.nut", "TurnWindmill", STATE_TURNWINDMILL, SKILL_TURNWINDMILL);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/TurnWindmill/po_ATTurnWidmill.nut", 24251);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/DarknessMantle/DarknessMantle.nut", "DarknessMantle", STATE_DARKNESSMANTLE, SKILL_DARKNESSMANTLE);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/DarknessMantle/po_ATDarknessMantle.nut", 24252);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/DarknessMantle/po_ATDarknessMantleExp.nut", 24253);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/WaterCannon/po_ATWaterCannon.nut", 24217);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ManaBurst/ManaBurst.nut", "ManaBurst", STATE_MANABURST, SKILL_MANABURST);


IRDSQRCharacter.pushPassiveObj("Character/ATMage/LightningWall/po_LightningWall.nut", 24218);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/FirePillar/FirePillar.nut", "FirePillar", STATE_FIREPILLAR, SKILL_FIREPILLAR);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/FirePillar/po_ATFirePillar.nut", 24254);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceMan/IceMan.nut", "IceMan", STATE_ICEMAN, SKILL_ICEMAN);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceMan/po_ATIceManMagicCircle.nut", 24255);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/FirePillar/po_ATFirePillar.nut", 24254);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalRain/po_ElementalRainBigBall.nut", 24219);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalRain/po_ElementalRainBigBallExp.nut", 24220);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalRain/po_ElementalRainCreator.nut", 24233);



IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/DieHard/DieHard.nut", "DieHard", STATE_DIEHARD, SKILL_DIEHARD);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/WaterCannon/po_ATWaterCannonExp.nut", 24256);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/IceChakram/IceChakram.nut", "IceChakram", STATE_ICECHAKRAM, SKILL_ICECHAKRAM);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceChakram/po_ATIceChakramSmallMgr.nut", 24257);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/IceChakram/po_ATIceChakramSmallIceRing.nut", 24258);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/TundraSoul/po_ATTundraSoulFrozen.nut", 24259);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_MAGE, "Character/ATMage/ElementalStrikeEx/ElementalStrikeEx.nut", "ElementalStrikeEx", STATE_ELEMENTAL_STRIKE_EX, SKILL_ELEMENTAL_STRIKE_EX);

IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalStrikeEx/po_ATElementalStrikeEx.nut", 24310);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalStrikeEx/po_ATElementalStrikeEx.nut", 24311);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalStrikeEx/po_ATElementalStrikeEx.nut", 24312);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalStrikeEx/po_ATElementalStrikeEx.nut", 24313);
IRDSQRCharacter.pushPassiveObj("Character/ATMage/ElementalStrikeEx/po_ATElementalStrikeEx.nut", 24314);

