
function checkExecutableSkill_ShakerBlast(CQphCONMkKcYYG)
{
	if (!CQphCONMkKcYYG) return false;
	local CQ34eBPiijXhqrZS = CQphCONMkKcYYG.sq_IsUseSkill(CHANGQING_BLADE_SKILL14);
	
	if (CQ34eBPiijXhqrZS)
	{
		CQphCONMkKcYYG.sq_IntVectClear();
		CQphCONMkKcYYG.sq_IntVectPush(0);
		CQphCONMkKcYYG.sq_AddSetStatePacket(CHANGQING_BLADE_STATE14, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ShakerBlast(CQ4gsEmHlrhrpO5W7)
{
	if (!CQ4gsEmHlrhrpO5W7) return false;
	
	return true;
	
}

function onSetState_ShakerBlast(CQl7UjYfdh2rehdB, CQt4BqLyuqHCFMG, CQHBHYTtq5iRwv1, CQbcb3tcXSouSQY)
{
	if(!CQl7UjYfdh2rehdB) return;
	ChangqingQQ751675335Skill32(CQl7UjYfdh2rehdB, CQt4BqLyuqHCFMG, CQHBHYTtq5iRwv1, CQbcb3tcXSouSQY)

}

function onEndCurrentAni_ShakerBlast(CQFfBTz8mdfmsfcJ8)
{
	if(!CQFfBTz8mdfmsfcJ8) return;
	local CQ21trLXDWPQDI = CQFfBTz8mdfmsfcJ8.getSkillSubState();
	switch(CQ21trLXDWPQDI)
	{
	case 0:
		CQFfBTz8mdfmsfcJ8.sq_IntVectClear();
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(1);
		CQFfBTz8mdfmsfcJ8.sq_AddSetStatePacket(CHANGQING_BLADE_STATE14, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQFfBTz8mdfmsfcJ8.sq_IntVectClear();
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(2);
		CQFfBTz8mdfmsfcJ8.sq_AddSetStatePacket(CHANGQING_BLADE_STATE14, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQFfBTz8mdfmsfcJ8.sq_IntVectClear();
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(3);
		CQFfBTz8mdfmsfcJ8.sq_AddSetStatePacket(CHANGQING_BLADE_STATE14, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQFfBTz8mdfmsfcJ8.sq_IntVectClear();
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(1);
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(0);
		CQFfBTz8mdfmsfcJ8.sq_IntVectPush(0);
		CQFfBTz8mdfmsfcJ8.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_ShakerBlast(CQmJ9Spr8PlcIgxZk9, CQJsPMblE8KRoXz, CQkrzj9ZMeU3OmlVy, CQaWZwZscINXpB)
{
	local CQ5vwOaqJ5WStaTM = SwordLicense_ATSwoedman(CQmJ9Spr8PlcIgxZk9, CQJsPMblE8KRoXz, CQkrzj9ZMeU3OmlVy, CQaWZwZscINXpB);
	
	return CQ5vwOaqJ5WStaTM;
}

function onTimeEvent_ShakerBlast(CQwgZBj4RQ6oERqCDd, CQZ3wRMJOJawyOm, CQzZ4mAo43hcwUUN6)
{
	if(!CQwgZBj4RQ6oERqCDd) return false;
	switch(CQZ3wRMJOJawyOm)
	{
	case 0:
		CQwgZBj4RQ6oERqCDd.resetHitObjectList();
		break;
	}
}

function onAttack_ShakerBlast(CQOPEsehnUDRnV, CQ7yjXk1CGc4rqn, CQrnHd1FTRXXmNbBw, CQCjUnubobQSYs)
{
	if(!CQOPEsehnUDRnV || CQCjUnubobQSYs)	return false;
	local CQc5Mpcf9S2oqgv1 = CQOPEsehnUDRnV.getSkillSubState();
	
	switch(CQc5Mpcf9S2oqgv1)
	{
	case 1:
		local CQAXnL6BwduwvPY8st = sq_GetCurrentAnimation(CQOPEsehnUDRnV);
		local CQdAM8Kt1WdrlmY = CQOPEsehnUDRnV.sq_GetCurrentFrameIndex(CQAXnL6BwduwvPY8st);
		if(CQdAM8Kt1WdrlmY != 2)
			return false;
		local CQyuuYocYPOvbBcdM = "character/atswordman/5_bladeshadows/shakerblast/ap_shakerblast.nut";
		if(sq_IsHoldable(CQOPEsehnUDRnV,CQ7yjXk1CGc4rqn) && sq_IsGrabable(CQOPEsehnUDRnV,CQ7yjXk1CGc4rqn) && !sq_IsFixture(CQ7yjXk1CGc4rqn) && sq_IsHoldable(CQ7yjXk1CGc4rqn,CQOPEsehnUDRnV))
		{
			local CQNUfivVs7Tjzw = CNSquirrelAppendage.sq_AppendAppendage(CQ7yjXk1CGc4rqn, CQOPEsehnUDRnV, -1, false, CQyuuYocYPOvbBcdM, true);
			if(CQNUfivVs7Tjzw)
			{
				sq_MoveToAppendageForce(CQ7yjXk1CGc4rqn, CQOPEsehnUDRnV, CQOPEsehnUDRnV, 0, 0, CQ7yjXk1CGc4rqn.getZPos()-CQOPEsehnUDRnV.getZPos(), 400, true, CQNUfivVs7Tjzw,true);
				local CQbkAHVOgeH6hfxg = CQNUfivVs7Tjzw.getAppendageInfo();
				CQbkAHVOgeH6hfxg.setValidTime(300);
			}
		}
		break;
	}

}

function onEnterFrame_ShakerBlast(CQF6c5IetLbVxIw9by, CQ2CCxq7Z5BGjhQkq)
{
	if(!CQF6c5IetLbVxIw9by) return;
	local CQmSrtgLUqradC = CQF6c5IetLbVxIw9by.getSkillSubState();
	switch(CQmSrtgLUqradC)
	{
	case 3:
		if(CQ2CCxq7Z5BGjhQkq == 1 && CQF6c5IetLbVxIw9by.isMyControlObject())
		{
			sq_SetMyShake(CQF6c5IetLbVxIw9by,3,150);
			sq_flashScreen(CQF6c5IetLbVxIw9by,0,100,150,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);
			CQF6c5IetLbVxIw9by.sq_StartWrite();
			CQF6c5IetLbVxIw9by.sq_WriteDword(244);
			CQF6c5IetLbVxIw9by.sq_WriteDword(0);
			CQF6c5IetLbVxIw9by.sq_WriteDword(CQF6c5IetLbVxIw9by.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL14, -1, 0, -1,getATSwordmanBonus(CQF6c5IetLbVxIw9by,1.0,CHANGQING_BLADE_SKILL14)));
			CQF6c5IetLbVxIw9by.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 1, 0);
		}
		break;
	case 4:

		break;
	}
}

function onEndState_ShakerBlast(CQJDXFBaSJ5rkqqz, CQkpe3OT7hpbfNqjJY)
{
	if(!CQJDXFBaSJ5rkqqz) return;
	if(CQkpe3OT7hpbfNqjJY != CHANGQING_BLADE_STATE14)
	{
		local CQaQ6Tl4pUgj6sm = CQJDXFBaSJ5rkqqz.sq_GetIntData(CHANGQING_BLADE_SKILL14, 5);
		sq_SendMessage(CQJDXFBaSJ5rkqqz, 2, 1, 0);
		sq_PostDelayedMessage(CQJDXFBaSJ5rkqqz, 2, 0, 0,CQaQ6Tl4pUgj6sm);
	}
}

function onChangeSkillEffect_ShakerBlast(CQ5zsr4HNFS61gUlN, CQw9TAGmeRxB7P, CQZNJMyhJbLG2jnc)
{
	if(!CQ5zsr4HNFS61gUlN || CQw9TAGmeRxB7P != CHANGQING_BLADE_SKILL14) return;
	
}

function onProc_ShakerBlast(CQzGmjxMfSmaVVbTYY)
{
	if(!CQzGmjxMfSmaVVbTYY) return;
	local CQOE2Q5iI91W3Qb = CQzGmjxMfSmaVVbTYY.getSkillSubState();
	switch(CQOE2Q5iI91W3Qb)
	{
	case 1:
		local CQ8wmOEb3WybBMvxe = CQzGmjxMfSmaVVbTYY.sq_GetInputDirection(0);
		if(CQzGmjxMfSmaVVbTYY.getDirection() == CQ8wmOEb3WybBMvxe)
		{
			local CQWx2BnNbP8ULI = sq_GetIntData(CQzGmjxMfSmaVVbTYY, CHANGQING_BLADE_SKILL14, 2);
			CQzGmjxMfSmaVVbTYY.sq_SetStaticMoveInfo(0, CQWx2BnNbP8ULI, CQWx2BnNbP8ULI, true, CQWx2BnNbP8ULI, true);
		}
		break;
	}
}

function onKeyFrameFlag_ShakerBlast(CQVdiRdSX7slNhWv, CQYMRmXtkek9ZArQLt)
{
	if (!CQVdiRdSX7slNhWv) return false;
	switch(CQYMRmXtkek9ZArQLt)
	{
	case 0:

		break;
	}
	return true;
}

function onProcCon_ShakerBlast(CQSHDsadDLGMGqe)
{
	if(!CQSHDsadDLGMGqe) return;
	local CQfavXmC85vKCNerg = CQSHDsadDLGMGqe.getSkillSubState();
	switch(CQfavXmC85vKCNerg)
	{
	case 0:

		break;
	}
}