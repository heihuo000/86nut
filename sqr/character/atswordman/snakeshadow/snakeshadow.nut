
function checkExecutableSkill_Snakeshadow(CQCsWVDeBKs3mGCm)
{
	if (!CQCsWVDeBKs3mGCm) return false;
	local CQcI8RtlzkkXYcXtZA = CQCsWVDeBKs3mGCm.sq_IsUseSkill(91);

	if (CQcI8RtlzkkXYcXtZA)
	{
		CQCsWVDeBKs3mGCm.getVar("Snakeshadow").clear_vector();
		if(sq_IsKeyDown(0, ENUM_SUBKEY_TYPE_ALL))
			CQCsWVDeBKs3mGCm.getVar("Snakeshadow").push_vector(1);
		else if(sq_IsKeyDown(2, ENUM_SUBKEY_TYPE_ALL))
			CQCsWVDeBKs3mGCm.getVar("Snakeshadow").push_vector(3);
		else
			CQCsWVDeBKs3mGCm.getVar("Snakeshadow").push_vector(2);

		CheckUseAddloadDrawsword(CQCsWVDeBKs3mGCm,143, {[0] = true,[108] = true,[14] = true},0);
		CQCsWVDeBKs3mGCm.sq_IntVectClear();
		CQCsWVDeBKs3mGCm.sq_IntVectPush(0);
		CQCsWVDeBKs3mGCm.sq_AddSetStatePacket(91, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Snakeshadow(CQAWOUzZHqGST3Z)
{
	if (!CQAWOUzZHqGST3Z) return false;
	if(CQAWOUzZHqGST3Z.getZPos() > 10)
		return false;
	return CheckForceDrawsword(CQAWOUzZHqGST3Z,143, {[0] = true,[108] = true,[14] = true});

}


function onSetState_Snakeshadow(CQdvla4sfHvovyZi2, CQbgLXGqIgCwl5, CQF3Q9b43iecgiKEcY, CQgLLb9JbF4RzzK)
{
	if(!CQdvla4sfHvovyZi2) return;
	local CQoOQpZmXfo4hHJIw = CQdvla4sfHvovyZi2.sq_GetVectorData(CQF3Q9b43iecgiKEcY, 0);
	CQdvla4sfHvovyZi2.setSkillSubState(CQoOQpZmXfo4hHJIw);

	switch(CQoOQpZmXfo4hHJIw)
	{
	case 0:
		CQdvla4sfHvovyZi2.sq_StopMove();
		BodyMagicSword(CQdvla4sfHvovyZi2, "SnakeShadow_Ready");
		if(MagicSword_IsAppebd(CQdvla4sfHvovyZi2))
			CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(224);
		else
		{
			if(sq_GetSkillLevel(CQdvla4sfHvovyZi2, 148) > 0)
			{
				BodyCalldaimus(CQdvla4sfHvovyZi2, "SnakeShadow_Ready");
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(398);
			}
			else if(sq_GetSkillLevel(CQdvla4sfHvovyZi2, 127) > 0)	
			{
				CQdvla4sfHvovyZi2.sq_PlaySound("R_SW_SNAKESHADOW");
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(707);
			}
			else
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(20);
		}


		break;
	case 1:
		BodyMagicSword(CQdvla4sfHvovyZi2, "SnakeShadow_Up_Body");
		if(MagicSword_IsAppebd(CQdvla4sfHvovyZi2))
			CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(226);
		else
		{
			if(sq_GetSkillLevel(CQdvla4sfHvovyZi2, 148) > 0)
			{
				BodyCalldaimus(CQdvla4sfHvovyZi2, "SnakeShadow_Up_Body");
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(400);
			}
			else
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(17);
		}

		CQdvla4sfHvovyZi2.sq_SetCurrentAttackInfo(0);
		local CQ2y3KEhjtfX9Y = CQdvla4sfHvovyZi2.sq_GetBonusRateWithPassive(91, -1, 0, getATSwordmanBonus(CQdvla4sfHvovyZi2,1.0,91));
		CQdvla4sfHvovyZi2.sq_SetCurrentAttackBonusRate(CQ2y3KEhjtfX9Y);
		break;
	case 2:
		BodyMagicSword(CQdvla4sfHvovyZi2, "SnakeShadow_Side_Body");
		if(MagicSword_IsAppebd(CQdvla4sfHvovyZi2))
			CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(225);
		else
		{
			if(sq_GetSkillLevel(CQdvla4sfHvovyZi2, 148) > 0)
			{
				BodyCalldaimus(CQdvla4sfHvovyZi2, "SnakeShadow_Side_Body");
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(399);
			}
			else
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(18);
		}

		CQdvla4sfHvovyZi2.sq_SetCurrentAttackInfo(0);
		local CQ2y3KEhjtfX9Y = CQdvla4sfHvovyZi2.sq_GetBonusRateWithPassive(91, -1, 0, getATSwordmanBonus(CQdvla4sfHvovyZi2,1.0,91));
		CQdvla4sfHvovyZi2.sq_SetCurrentAttackBonusRate(CQ2y3KEhjtfX9Y);
		break;
	case 3:
		BodyMagicSword(CQdvla4sfHvovyZi2, "SnakeShadow_Down_Body");
		if(MagicSword_IsAppebd(CQdvla4sfHvovyZi2))
			CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(223);
		else
		{
			if(sq_GetSkillLevel(CQdvla4sfHvovyZi2, 148) > 0)
			{
				BodyCalldaimus(CQdvla4sfHvovyZi2, "SnakeShadow_Down_Body");
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(397);
			}
			else
				CQdvla4sfHvovyZi2.sq_SetCurrentAnimation(19);
		}

		CQdvla4sfHvovyZi2.sq_SetCurrentAttackInfo(14);
		local CQ2y3KEhjtfX9Y = CQdvla4sfHvovyZi2.sq_GetBonusRateWithPassive(91, -1, 0, getATSwordmanBonus(CQdvla4sfHvovyZi2,1.0,91));
		CQdvla4sfHvovyZi2.sq_SetCurrentAttackBonusRate(CQ2y3KEhjtfX9Y);
		break;
	}
	CQdvla4sfHvovyZi2.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onEndCurrentAni_Snakeshadow(CQKvn3KJpUoCcS)
{
	if(!CQKvn3KJpUoCcS) return;
	local CQ6l8oofa8UCgTkK7I = CQKvn3KJpUoCcS.getSkillSubState();
	switch(CQ6l8oofa8UCgTkK7I)
	{
	case 0:
		if(sq_GetSkillLevel(CQKvn3KJpUoCcS, 127) > 0)
			CQKvn3KJpUoCcS.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		else
		{
			CQKvn3KJpUoCcS.sq_IntVectClear();
			CQKvn3KJpUoCcS.sq_IntVectPush(CQKvn3KJpUoCcS.getVar("Snakeshadow").get_vector(0));
			CQKvn3KJpUoCcS.sq_AddSetStatePacket(91, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	case 1:
		CQKvn3KJpUoCcS.sq_IntVectClear();
		CQKvn3KJpUoCcS.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQKvn3KJpUoCcS.sq_IntVectClear();
		CQKvn3KJpUoCcS.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQKvn3KJpUoCcS.sq_IntVectClear();
		CQKvn3KJpUoCcS.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function onEnterFrame_Snakeshadow(CQvhsH8y7Y3rshXek, CQp8WAryDNMDvU79a)
{
	if(!CQvhsH8y7Y3rshXek) return;
	if(sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 127) > 0 && CQvhsH8y7Y3rshXek.isMyControlObject())
	{
		switch(CQp8WAryDNMDvU79a)
		{
		case 3:
			CQvhsH8y7Y3rshXek.sq_StartWrite();
			CQvhsH8y7Y3rshXek.sq_WriteDword(91);
			CQvhsH8y7Y3rshXek.sq_WriteDword(0);
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 4, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 5, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 6, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 7, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
			break;
		case 4:
			CQvhsH8y7Y3rshXek.sq_StartWrite();
			CQvhsH8y7Y3rshXek.sq_WriteDword(91);
			CQvhsH8y7Y3rshXek.sq_WriteDword(1);
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 4, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 5, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 6, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 7, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
			break;
		case 5:
			CQvhsH8y7Y3rshXek.sq_StartWrite();
			CQvhsH8y7Y3rshXek.sq_WriteDword(91);
			CQvhsH8y7Y3rshXek.sq_WriteDword(2);
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 4, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(CQvhsH8y7Y3rshXek.sq_GetPowerWithPassive(91, -1, 5, -1,getATSwordmanBonus(CQvhsH8y7Y3rshXek,1.0,91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 6, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_WriteDword(sq_GetLevelData(CQvhsH8y7Y3rshXek,91, 7, sq_GetSkillLevel(CQvhsH8y7Y3rshXek, 91)));
			CQvhsH8y7Y3rshXek.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
			break;
		}

	}
}

function onAttack_Snakeshadow(CQReTUFYUaHfQIqHT, CQicKat9S4b2yh, CQ1fqXzXlmVLwCUI, CQU1J94rppeAnqUGE9)
{
	if(!CQReTUFYUaHfQIqHT)	return;

	local CQH2mbGzN25ieNn = CQReTUFYUaHfQIqHT.getSkillSubState();
	if(CQH2mbGzN25ieNn == 1)
		return;

	MagicswordupOccur(CQReTUFYUaHfQIqHT, CQicKat9S4b2yh, CQ1fqXzXlmVLwCUI, CQU1J94rppeAnqUGE9);

	local CQjK2py6enpqUebJB = "character/atswordman/snakeshadow/ap_snakeshadow.nut";
	local CQEIoKdsJiRxYg = CNSquirrelAppendage.sq_AppendAppendage(CQicKat9S4b2yh, CQReTUFYUaHfQIqHT, -1, false, CQjK2py6enpqUebJB, true);
	if(sq_IsHoldable(CQReTUFYUaHfQIqHT,CQicKat9S4b2yh) && sq_IsGrabable(CQReTUFYUaHfQIqHT,CQicKat9S4b2yh) && !sq_IsFixture(CQicKat9S4b2yh))
		if(CQEIoKdsJiRxYg)
		{
			sq_MoveToAppendageForce(CQicKat9S4b2yh, CQReTUFYUaHfQIqHT, CQReTUFYUaHfQIqHT, 80, 0, CQicKat9S4b2yh.getZPos(), 200, true, CQEIoKdsJiRxYg,true);
			local CQ4Wg7XQRNAfqOvZ = CQEIoKdsJiRxYg.getAppendageInfo();
			CQ4Wg7XQRNAfqOvZ.setValidTime(310);
		}
}

function onProc_Snakeshadow(CQQbDca5Ovx2vjWHfc)
{
	if(!CQQbDca5Ovx2vjWHfc) return;
	local CQIhvuUJ4ALLlVW = CQQbDca5Ovx2vjWHfc.getSkillSubState();
}
