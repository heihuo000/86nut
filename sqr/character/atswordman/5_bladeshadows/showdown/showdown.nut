
function checkExecutableSkill_ShowDown(CQuBqGWcH7MJDBcum)
{
	if (!CQuBqGWcH7MJDBcum) return false;
	local CQ9cMwF9QF1jLja = CQuBqGWcH7MJDBcum.sq_IsUseSkill(CHANGQING_BLADE_SKILL16);
	
	if (CQ9cMwF9QF1jLja)
	{
		CQuBqGWcH7MJDBcum.sq_IntVectClear();
		CQuBqGWcH7MJDBcum.sq_IntVectPush(0);
		CQuBqGWcH7MJDBcum.sq_AddSetStatePacket(CHANGQING_BLADE_STATE16, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ShowDown(CQtfuPtPGfy6NSE16)
{
	if (!CQtfuPtPGfy6NSE16) return false;
	
	return true;
	
}

function onSetState_ShowDown(CQB1fNzrcy8VZl, CQvJSgLzsSIGGMp4, CQDsYqEZ29kaXrofwy, CQRrCsnsWrGrH3o)
{
	if(!CQB1fNzrcy8VZl) return;
	ChangqingQQ751675335Skill37(CQB1fNzrcy8VZl, CQvJSgLzsSIGGMp4, CQDsYqEZ29kaXrofwy, CQRrCsnsWrGrH3o)

}

function onEndCurrentAni_ShowDown(CQiWrCdQLXvbAAihF)
{
	if(!CQiWrCdQLXvbAAihF) return;
	local CQ1vCfX4h7VjJT = CQiWrCdQLXvbAAihF.getSkillSubState();
	switch(CQ1vCfX4h7VjJT)
	{
	case 0:
		CQiWrCdQLXvbAAihF.sq_IntVectClear();
		CQiWrCdQLXvbAAihF.sq_IntVectPush(1);
		CQiWrCdQLXvbAAihF.sq_AddSetStatePacket(CHANGQING_BLADE_STATE16, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQiWrCdQLXvbAAihF.getVar("LicensePower").set_vector(0,0);
		CQiWrCdQLXvbAAihF.sq_IntVectClear();
		CQiWrCdQLXvbAAihF.sq_IntVectPush(2);
		CQiWrCdQLXvbAAihF.sq_AddSetStatePacket(CHANGQING_BLADE_STATE16, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		sq_SendMessage(CQiWrCdQLXvbAAihF, 0, 0, 0);
		CQiWrCdQLXvbAAihF.getVar("LicensePower").set_vector(1,0);
		CQiWrCdQLXvbAAihF.sq_IntVectClear();
		CQiWrCdQLXvbAAihF.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_ShowDown(CQUgrnaJAweTSDuT, CQE46Ejq6K49swy, CQ4ZsZMjmkoMD1y9k, CQQPT8A1BqfJIW)
{
	local CQLyKveozHAOojOR = SwordLicense_ATSwoedman(CQUgrnaJAweTSDuT, CQE46Ejq6K49swy, CQ4ZsZMjmkoMD1y9k, CQQPT8A1BqfJIW);
	
	return CQLyKveozHAOojOR;
}

function onAttack_ShowDown(CQlnqoknHgzyOSOzqY, CQIj2J2ffiKUplI, CQ75m6iDrFUltMsYD, CQrX2xYy3fM9Qr)
{
	if(!CQlnqoknHgzyOSOzqY || CQrX2xYy3fM9Qr)	return false;
	local CQCAoy7cvttMu2an = CQlnqoknHgzyOSOzqY.getSkillSubState();
	
	switch(CQCAoy7cvttMu2an)
	{
	case 1:
		CQlnqoknHgzyOSOzqY.getVar("LicensePower").set_vector(0,0);
		break;
	case 2:
		CQlnqoknHgzyOSOzqY.getVar("LicensePower").set_vector(1,0);
		break;
	}

}

function onEnterFrame_ShowDown(CQcugGKVOV7KetExdt, CQAUD3oPj9aOUkE)
{
	if(!CQcugGKVOV7KetExdt) return;
	local CQdkvlveurjyrDpvz = CQcugGKVOV7KetExdt.getSkillSubState();
	switch(CQdkvlveurjyrDpvz)
	{
	case 0:
		if(CQAUD3oPj9aOUkE == 5 && CQcugGKVOV7KetExdt.isMyControlObject())
		{
			sq_SetMyShake(CQcugGKVOV7KetExdt,8,200);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_SendChangeSkillEffectPacket(CQcugGKVOV7KetExdt, CHANGQING_BLADE_SKILL16);			
		}
		break;
	case 2:
		if(CQAUD3oPj9aOUkE == 5 && CQcugGKVOV7KetExdt.isMyControlObject())
		{
			sq_SetMyShake(CQcugGKVOV7KetExdt,20,300);
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(1);
			sq_SendChangeSkillEffectPacket(CQcugGKVOV7KetExdt, CHANGQING_BLADE_SKILL16);	
		}
		else if(CQAUD3oPj9aOUkE == 6 && CQcugGKVOV7KetExdt.isMyControlObject())
		{
			sq_flashScreen(CQcugGKVOV7KetExdt,0,30,50,255,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,6);
		}
		break;
	}
}

function onEndState_ShowDown(CQy6BWV7CZFUmz, CQNCvSIZq7YlY1oU)
{
	if(!CQy6BWV7CZFUmz) return;
	if(CQNCvSIZq7YlY1oU != CHANGQING_BLADE_STATE16 && CQNCvSIZq7YlY1oU != CHANGQING_BLADE_STATE6 && CQNCvSIZq7YlY1oU != CHANGQING_BLADE_STATE10 && CQNCvSIZq7YlY1oU != CHANGQING_BLADE_STATE18)
	{
		CQy6BWV7CZFUmz.getVar("LicensePower").clear_vector();
		CQy6BWV7CZFUmz.setShowEquipmentLayer(10,true);
		if(sq_GetSkillLevel(CQy6BWV7CZFUmz, CHANGQING_BLADE_SKILL16) < 6)
			sq_SendMessage(CQy6BWV7CZFUmz, 0, 0, 0);
	}
}

function onChangeSkillEffect_ShowDown(CQbVV1qeFwX9qWDWst, CQFFWkhTxKQfv4S, CQRp8wN4ak33lASnG)
{
	if(!CQbVV1qeFwX9qWDWst || CQFFWkhTxKQfv4S != CHANGQING_BLADE_SKILL16) return;
	local CQiQOPPa1qiZbTAr5S = CQRp8wN4ak33lASnG.readDword();
	switch(CQiQOPPa1qiZbTAr5S)
	{
	case 0:
		local CQ1zzBzmWHdAzFA = [
			"character/swordman/effect/animation/atshowdown/1st/showdown1stback_00.ani",
			"character/swordman/effect/animation/atshowdown/1st/showdown1stfront_00.ani",
			"character/swordman/effect/animation/atshowdown/1st/showdown1stwireback_00.ani",
			"character/swordman/effect/animation/atshowdown/1st/showdown1stwirefront_00.ani"
		];
		foreach(path in CQ1zzBzmWHdAzFA)
			CreatePooledObjectAni(CQbVV1qeFwX9qWDWst,path,1,CQbVV1qeFwX9qWDWst.getXPos(), CQbVV1qeFwX9qWDWst.getYPos(), CQbVV1qeFwX9qWDWst.getZPos(),CQbVV1qeFwX9qWDWst.getDirection(),false,true,false,false);
		
		local CQj9Lg4hKgOohePyg = CQbVV1qeFwX9qWDWst.getObjectManager();
		local CQENQqGHgilQ92Oe = CQj9Lg4hKgOohePyg.getCollisionObjectNumber();
		CQbVV1qeFwX9qWDWst.getVar("ShowDown").clear_obj_vector();
		for(local CQ4GLsyiPFJxjtOort=0; CQ4GLsyiPFJxjtOort<CQENQqGHgilQ92Oe; ++CQ4GLsyiPFJxjtOort)
		{
			local CQQEQCxb5fnRdkI = "character/atswordman/5_bladeshadows/showdown/ap_showdown.nut";
			local CQLw4f5MitB35Dsaa = CQj9Lg4hKgOohePyg.getCollisionObject(CQ4GLsyiPFJxjtOort);
			if(CQLw4f5MitB35Dsaa && CQLw4f5MitB35Dsaa.isObjectType(OBJECTTYPE_ACTIVE) && CQbVV1qeFwX9qWDWst.isEnemy(CQLw4f5MitB35Dsaa) && sq_IsHoldable(CQbVV1qeFwX9qWDWst,CQLw4f5MitB35Dsaa) && sq_IsInScreenCollisionObject(CQLw4f5MitB35Dsaa, true))
			{
				local CQlxpnESVVrZfz = CNSquirrelAppendage.sq_AppendAppendage(CQLw4f5MitB35Dsaa, CQbVV1qeFwX9qWDWst, -1, false, CQQEQCxb5fnRdkI, true);
				sq_HoldAndDelayDie(CQLw4f5MitB35Dsaa, CQbVV1qeFwX9qWDWst, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQlxpnESVVrZfz);
				local CQIdhEUtl96S6GaO = CQlxpnESVVrZfz.getAppendageInfo();
				CQIdhEUtl96S6GaO.setValidTime(1800);
				sq_SendHitObjectPacket(CQbVV1qeFwX9qWDWst,CQLw4f5MitB35Dsaa,0,0,CQLw4f5MitB35Dsaa.getObjectHeight()/2);
				CQbVV1qeFwX9qWDWst.getVar("ShowDown").push_obj_vector(CQLw4f5MitB35Dsaa);
			}
		}
		break;
	case 1:
		local CQ7MGLfdGrEo1rEE3t = [
			"character/swordman/effect/animation/atshowdown/3st/showdown3stback_00.ani"
			"character/swordman/effect/animation/atshowdown/3st/showdown3stunder_00.ani",
			"character/swordman/effect/animation/atshowdown/3st/showdown3stwireback_00.ani"
		];
		foreach(path in CQ7MGLfdGrEo1rEE3t)
			CreatePooledObjectAni(CQbVV1qeFwX9qWDWst,path,2,CQbVV1qeFwX9qWDWst.getXPos(), CQbVV1qeFwX9qWDWst.getYPos()-1, CQbVV1qeFwX9qWDWst.getZPos(),CQbVV1qeFwX9qWDWst.getDirection(),false,true,false,false);
		
		local CQrHn8CVdZgQ73H = [
			"character/swordman/effect/animation/atshowdown/3st/showdown3stcover_00.ani",
			"character/swordman/effect/animation/atshowdown/3st/showdown3stfront_00.ani",
			"character/swordman/effect/animation/atshowdown/3st/showdown3stwirefront_00.ani"
		];
		foreach(path in CQrHn8CVdZgQ73H)
			CreatePooledObjectAni(CQbVV1qeFwX9qWDWst,path,1,CQbVV1qeFwX9qWDWst.getXPos(), CQbVV1qeFwX9qWDWst.getYPos()+1, CQbVV1qeFwX9qWDWst.getZPos(),CQbVV1qeFwX9qWDWst.getDirection(),false,true,false,false);
		
		break;
	}
}

function onProc_ShowDown(CQCaMvsOelSc2yGsf)
{
	if(!CQCaMvsOelSc2yGsf) return;
	local CQcrbimx2wcRVT = CQCaMvsOelSc2yGsf.getSkillSubState();
	switch(CQcrbimx2wcRVT)
	{
	case 1:
		if(sq_GetSkillLevel(CQCaMvsOelSc2yGsf, CHANGQING_BLADE_SKILL16) > 2)
			OnProc_License(CQCaMvsOelSc2yGsf);
		break;
	}
}

function onKeyFrameFlag_ShowDown(CQAYNJ17vKZ33FFP, CQdRy6SIIjq6BxDayA)
{
	if (!CQAYNJ17vKZ33FFP) return false;
	switch(CQdRy6SIIjq6BxDayA)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_ShowDown(CQygdxrwhp1VL2S)
{
	if(!CQygdxrwhp1VL2S) return;
	local CQN3PyTTyHuFMWSOL = CQygdxrwhp1VL2S.getSkillSubState();
	switch(CQN3PyTTyHuFMWSOL)
	{
	case 0:

		break;
	}
}