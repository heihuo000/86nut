
function checkExecutableSkill_HangOver(CQ7EWglBACCkjkU1k)
{
	if (!CQ7EWglBACCkjkU1k) return false;
	local CQre7m3y6xe7cB = CQ7EWglBACCkjkU1k.sq_IsUseSkill(CHANGQING_BLADE_SKILL9);

	if(CQre7m3y6xe7cB)
	{
		CQ7EWglBACCkjkU1k.sq_IntVectClear();
		CQ7EWglBACCkjkU1k.sq_IntVectPush(0);
		if(CQ7EWglBACCkjkU1k.getState() == 4 || (CQ7EWglBACCkjkU1k.getState() == 3 && CQ7EWglBACCkjkU1k.getZPos() > 5))
			CQ7EWglBACCkjkU1k.sq_IntVectPush(0);
		else
			CQ7EWglBACCkjkU1k.sq_IntVectPush(2);
		CQ7EWglBACCkjkU1k.sq_AddSetStatePacket(CHANGQING_BLADE_STATE9, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_HangOver(CQCcIsocor4Bkwu4)
{
	if (!CQCcIsocor4Bkwu4) return false;

	return true;

}

function onSetState_HangOver(CQcflCv8BZoHf1yfpD, CQA1Ld8PQTfsTOt, CQNJqnLeGaPWRj, CQbs3EpldKzn7SWd)
{
	if(!CQcflCv8BZoHf1yfpD) return;
	ChangqingQQ751675335Skill13(CQcflCv8BZoHf1yfpD, CQA1Ld8PQTfsTOt, CQNJqnLeGaPWRj, CQbs3EpldKzn7SWd);
	
}

function onEndCurrentAni_HangOver(CQFrq4bZsjKk2QWT6y)
{
	if(!CQFrq4bZsjKk2QWT6y) return;
	local CQgY3zBa2oU78Nr = CQFrq4bZsjKk2QWT6y.getSkillSubState();
	switch(CQgY3zBa2oU78Nr)
	{
	case 0:
		CQFrq4bZsjKk2QWT6y.sq_IntVectClear();
		CQFrq4bZsjKk2QWT6y.sq_IntVectPush(1);
		CQFrq4bZsjKk2QWT6y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE9, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQFrq4bZsjKk2QWT6y.sq_IntVectClear();
		CQFrq4bZsjKk2QWT6y.sq_IntVectPush(2);
		CQFrq4bZsjKk2QWT6y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE9, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQFrq4bZsjKk2QWT6y.sq_IntVectClear();
		CQFrq4bZsjKk2QWT6y.sq_IntVectPush(3);
		CQFrq4bZsjKk2QWT6y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE9, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQFrq4bZsjKk2QWT6y.sq_IntVectClear();
		CQFrq4bZsjKk2QWT6y.sq_IntVectPush(4);
		CQFrq4bZsjKk2QWT6y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE9, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 4:
		CQFrq4bZsjKk2QWT6y.sq_IntVectClear();
		CQFrq4bZsjKk2QWT6y.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_HangOver(CQoRptPTv1NN3eexn, CQ22gDw4ZgtHBg, CQm3F2jJju7s4PwR, CQJLbkMmuBatNkQzoy)
{
	local CQkONeAh7YhnZBQ = SwordLicense_ATSwoedman(CQoRptPTv1NN3eexn, CQ22gDw4ZgtHBg, CQm3F2jJju7s4PwR, CQJLbkMmuBatNkQzoy);

	return CQkONeAh7YhnZBQ;
}

function onCreateObject_HangOver(CQatyAx1qtDkMwpYC, CQ5nBN5iNCYzX1)
{
	if(CQ5nBN5iNCYzX1.isObjectType(OBJECTTYPE_PASSIVE) && CQ5nBN5iNCYzX1.getState() != 10)
		CQatyAx1qtDkMwpYC.getVar("LicensePower").clear_vector();
}

function onAttack_HangOver(CQQjthHbzzXdHWob, CQL59QufEIQ1Chixz, CQlXPIcSfZ2LJA, CQIAxV7trTiPSTuv)
{
	if(!CQQjthHbzzXdHWob || CQIAxV7trTiPSTuv)	return false;
	local CQ7uZfscKEdusNywrB = CQQjthHbzzXdHWob.getSkillSubState();

	switch(CQ7uZfscKEdusNywrB)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_HangOver(CQrUwUmVb3OqDet, CQCk5aROPjTzI2tWH)
{
	if(!CQrUwUmVb3OqDet) return;
	local CQc6wZVxkoJdoP = CQrUwUmVb3OqDet.getSkillSubState();
	switch(CQc6wZVxkoJdoP)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onEndState_HangOver(CQyC49I7iMn2OkWu, CQNSEbqLVgBLESr)
{
	if(!CQyC49I7iMn2OkWu) return;
	if(CQNSEbqLVgBLESr != CHANGQING_BLADE_STATE9 && CQNSEbqLVgBLESr != CHANGQING_BLADE_STATE6 && CQNSEbqLVgBLESr != CHANGQING_BLADE_STATE10 && CQNSEbqLVgBLESr != CHANGQING_BLADE_STATE18)
	{
		sq_SendMessage(CQyC49I7iMn2OkWu, 0, 0, 0);
		CQyC49I7iMn2OkWu.getVar("LicensePower").clear_vector();
	}
	
}

function onChangeSkillEffect_HangOver(CQbijo2wQurPyQsql, CQFmHKDTFB5uaM, CQgTU7t39YEqurae)
{
	if(!CQbijo2wQurPyQsql || CQFmHKDTFB5uaM != CHANGQING_BLADE_SKILL9) return;

}

function onProc_HangOver(CQozMczEatgze3EoaS)
{
	if(!CQozMczEatgze3EoaS) return;
	local CQ29nu4m1CSdiAE = CQozMczEatgze3EoaS.getSkillSubState();
	switch(CQ29nu4m1CSdiAE)
	{
	case 0:
		OnProc_License(CQozMczEatgze3EoaS);
		break;
	case 1:
		local CQmNMGGgYzxgrTpaG = sq_GetCurrentAnimation(CQozMczEatgze3EoaS);
		local CQJGu4bGLIZ4mF = sq_GetDelaySum(CQmNMGGgYzxgrTpaG);
		local CQkEfz9ihZqXWeoO = CQozMczEatgze3EoaS.sq_GetStateTimer();
		local CQawAWZbAT1Dq1ipRD = sq_GetUniformVelocity(CQozMczEatgze3EoaS.getZPos(), 180, CQkEfz9ihZqXWeoO, CQJGu4bGLIZ4mF);
		sq_setCurrentAxisPos(CQozMczEatgze3EoaS, 2, CQawAWZbAT1Dq1ipRD);
		
		local CQ5xcDEN6EypvWu = CQozMczEatgze3EoaS.sq_GetInputDirection(0);	
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
		{
			CQozMczEatgze3EoaS.getVar("HangOver").set_vector(0,CQozMczEatgze3EoaS.getXPos());
		}
		else if(CQozMczEatgze3EoaS.getDirection() == CQ5xcDEN6EypvWu)
		{
			local CQwdC2nSm38wljusc = CQozMczEatgze3EoaS.sq_GetIntData(CHANGQING_BLADE_SKILL9, 1);
			CQozMczEatgze3EoaS.getVar("HangOver").set_vector(0, sq_GetDistancePos(CQozMczEatgze3EoaS.getXPos(), CQozMczEatgze3EoaS.getDirection(), CQwdC2nSm38wljusc));
		}
		break;
	case 2:
		local CQmNMGGgYzxgrTpaG = sq_GetCurrentAnimation(CQozMczEatgze3EoaS);
		local CQJGu4bGLIZ4mF = sq_GetDelaySum(CQmNMGGgYzxgrTpaG);
		local CQkEfz9ihZqXWeoO = CQozMczEatgze3EoaS.sq_GetStateTimer();
		local CQ8e6NkWdbvCxrO = CQozMczEatgze3EoaS.getVar("HangOver").get_vector(0);
		
		local CQWcsh1zeuVDj3IO2 = sq_GetUniformVelocity(CQozMczEatgze3EoaS.getXPos(), CQ8e6NkWdbvCxrO, CQkEfz9ihZqXWeoO, CQJGu4bGLIZ4mF);
		local CQawAWZbAT1Dq1ipRD = sq_GetUniformVelocity(CQozMczEatgze3EoaS.getZPos(), 0, CQkEfz9ihZqXWeoO, CQJGu4bGLIZ4mF);
		if(CQozMczEatgze3EoaS.isMovablePos(CQWcsh1zeuVDj3IO2, CQozMczEatgze3EoaS.getYPos()))
		{
			sq_setCurrentAxisPos(CQozMczEatgze3EoaS, 0, CQWcsh1zeuVDj3IO2);
			sq_setCurrentAxisPos(CQozMczEatgze3EoaS, 2, CQawAWZbAT1Dq1ipRD);
		}
		break;
	}
}

function onProcCon_HangOver(CQY2JIrIvc4ekksS)
{
	if(!CQY2JIrIvc4ekksS) return;
	onProc_DeepduskLicense(CQY2JIrIvc4ekksS);
	local CQuKmVTwOPoYfDs = CQY2JIrIvc4ekksS.getSkillSubState();
	switch(CQuKmVTwOPoYfDs)
	{
	case 0:

		break;
	}
}