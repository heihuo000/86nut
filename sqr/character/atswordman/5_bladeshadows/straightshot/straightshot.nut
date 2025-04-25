
function checkExecutableSkill_StraightShot(CQnPZn1ocESxGxKUw)
{
	if (!CQnPZn1ocESxGxKUw) return false;
	local CQGywpSnKKxRXJ = CQnPZn1ocESxGxKUw.sq_IsUseSkill(CHANGQING_BLADE_SKILL18);
	
	if (CQGywpSnKKxRXJ)
	{
		CQnPZn1ocESxGxKUw.sq_IntVectClear();
		CQnPZn1ocESxGxKUw.sq_IntVectPush(0);
		CQnPZn1ocESxGxKUw.sq_AddSetStatePacket(CHANGQING_BLADE_STATE18, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_StraightShot(CQhnLLr1gjL3HYJQ)
{
	if (!CQhnLLr1gjL3HYJQ) return false;
	
	return true;
	
}

function onSetState_StraightShot(CQpjQ8TDWomZA41usV, CQK54YJy4G1VJu1, CQTXEiifngyFS7, CQsAjJYVCu8EsGNy)
{
	if(!CQpjQ8TDWomZA41usV) return;
	ChangqingQQ751675335Skill26(CQpjQ8TDWomZA41usV, CQK54YJy4G1VJu1, CQTXEiifngyFS7, CQsAjJYVCu8EsGNy)
}

function onEndCurrentAni_StraightShot(CQ6uGk7PTBsricNs9t)
{
	if(!CQ6uGk7PTBsricNs9t) return;
	local CQeUneKcofkvIKB = CQ6uGk7PTBsricNs9t.getSkillSubState();
	switch(CQeUneKcofkvIKB)
	{
	case 0:
		CQ6uGk7PTBsricNs9t.sq_IntVectClear();
		CQ6uGk7PTBsricNs9t.sq_IntVectPush(1);
		CQ6uGk7PTBsricNs9t.sq_AddSetStatePacket(CHANGQING_BLADE_STATE18, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQ6uGk7PTBsricNs9t.sq_IntVectClear();
		CQ6uGk7PTBsricNs9t.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_StraightShot(CQXkMAo89tGhoyVOq, CQx6nNgZwCv6t6, CQPCMhBeHzCVEiCu, CQ9ByqOlYreFy8XIJA)
{
	local CQtFdIQ4IZ4EwHX = SwordLicense_ATSwoedman(CQXkMAo89tGhoyVOq, CQx6nNgZwCv6t6, CQPCMhBeHzCVEiCu, CQ9ByqOlYreFy8XIJA);
	
	return CQtFdIQ4IZ4EwHX;
}

function onAttack_StraightShot(CQBpAVha3ToruYZAN, CQvQcfNqtEfveL, CQDzXUt3ZKPhUu4F, CQR9eazHUjz6r73PvA)
{
	if(!CQBpAVha3ToruYZAN || CQR9eazHUjz6r73PvA)	return false;
	CQBpAVha3ToruYZAN.getVar("DeepduskLicense").setBool(0,true);
	local CQiNXZ4oSoKVmp3 = CQBpAVha3ToruYZAN.getSkillSubState();
	
	switch(CQiNXZ4oSoKVmp3)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_StraightShot(CQ1Ge9Gg7MUFYx2De, CQUE6buMpgNJTJ)
{
	if(!CQ1Ge9Gg7MUFYx2De) return;
	local CQHwaocDNutIvv1H = CQ1Ge9Gg7MUFYx2De.getSkillSubState();
	switch(CQHwaocDNutIvv1H)
	{
	case 1:
		if(CQUE6buMpgNJTJ == 1 && CQ1Ge9Gg7MUFYx2De.isMyControlObject())
		{
			sq_SetMyShake(CQ1Ge9Gg7MUFYx2De,20,200);
		}
		else if(CQUE6buMpgNJTJ == 2 && CQ1Ge9Gg7MUFYx2De.isMyControlObject())
		{
			sq_flashScreen(CQ1Ge9Gg7MUFYx2De,40,0,80,76,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);
			CQ1Ge9Gg7MUFYx2De.sq_PlaySound("STRAIGHTSHOT_SLASH");
		}
		else if(CQUE6buMpgNJTJ == 3 && CQ1Ge9Gg7MUFYx2De.isMyControlObject())
		{
			sq_BinaryStartWrite();
			sq_SendChangeSkillEffectPacket(CQ1Ge9Gg7MUFYx2De, CHANGQING_BLADE_SKILL18);
		}
		break;
	}
}

function onEndState_StraightShot(CQJo2z21asJGtAYuq, CQ4WuZBYWywHUkk2)
{
	if(!CQJo2z21asJGtAYuq) return;
	if(CQ4WuZBYWywHUkk2 != CHANGQING_BLADE_STATE18)
	{
		sq_SendMessage(CQJo2z21asJGtAYuq, 0, 0, 0);
		CQJo2z21asJGtAYuq.setShowEquipmentLayer(10,true);
	}
}

function onChangeSkillEffect_StraightShot(CQdQ87zyBolnZ17H, CQmvM2IPHU4annzwF, CQMAOIBrl854seqNn)
{
	if(!CQdQ87zyBolnZ17H || CQmvM2IPHU4annzwF != CHANGQING_BLADE_SKILL18) return;
	
	local CQnizVO8GepXDg = [
		"character/swordman/effect/animation/atstraightshot/attack/straightshotattackfront_06.ani",
		"character/swordman/effect/animation/atstraightshot/attack/straightshotattackbottom_00.ani"
	];
	foreach(path in CQnizVO8GepXDg)
		CreatePooledObjectAni(CQdQ87zyBolnZ17H,path,1,CQdQ87zyBolnZ17H.getXPos(), CQdQ87zyBolnZ17H.getYPos(), CQdQ87zyBolnZ17H.getZPos(),CQdQ87zyBolnZ17H.getDirection(),false,true,false,false);

}

function onProc_StraightShot(CQFmZfQXdIRDIOo)
{
	if(!CQFmZfQXdIRDIOo) return;
	local CQgTwUhIe5ApojiBi = CQFmZfQXdIRDIOo.getSkillSubState();
	switch(CQgTwUhIe5ApojiBi)
	{
	case 1:
		local CQolZaMl2QzwWS = CQFmZfQXdIRDIOo.sq_GetCurrentFrameIndex(sq_GetCurrentAnimation(CQFmZfQXdIRDIOo));
		local CQ28QZA5vJLYpQu1 = CQFmZfQXdIRDIOo.sq_GetInputDirection(0);
		if(CQFmZfQXdIRDIOo.getDirection() == CQ28QZA5vJLYpQu1 && CQolZaMl2QzwWS < 2)
		{
			local CQmB49xsO3mgtMyVMY = sq_GetIntData(CQFmZfQXdIRDIOo, CHANGQING_BLADE_SKILL18, 11);
			local CQJFEv5qhUM4Qry = sq_GetIntData(CQFmZfQXdIRDIOo, CHANGQING_BLADE_SKILL18, 2);
			CQFmZfQXdIRDIOo.sq_SetStaticMoveInfo(0, CQmB49xsO3mgtMyVMY, CQmB49xsO3mgtMyVMY, true, CQJFEv5qhUM4Qry, true);
			CQFmZfQXdIRDIOo.sq_SetMoveDirection(CQFmZfQXdIRDIOo.getDirection(), ENUM_DIRECTION_NEUTRAL);
		}
		else if(CQolZaMl2QzwWS > 2)
			CQFmZfQXdIRDIOo.sq_SetStaticMoveInfo(0, 0, 0, true, 0, true);
		break;
	}
}

function onKeyFrameFlag_StraightShot(CQkpjoHjyGtCyhtMz, CQaQHKuJXR8DwA)
{
	if (!CQkpjoHjyGtCyhtMz) return false;
	switch(CQaQHKuJXR8DwA)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_StraightShot(CQ5zn6combsGnTW2)
{
	if(!CQ5zn6combsGnTW2) return;
	onProc_DeepduskLicense(CQ5zn6combsGnTW2);
	local CQw9Mc6nDSjsrBr9eY = CQ5zn6combsGnTW2.getSkillSubState();
	switch(CQw9Mc6nDSjsrBr9eY)
	{
	case 0:

		break;
	}
}