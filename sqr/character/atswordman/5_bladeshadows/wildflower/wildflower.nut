
function checkExecutableSkill_WildFlower(CQeP2iWsJ4NWIEo)
{
	if (!CQeP2iWsJ4NWIEo) return false;
	local CQ3ecfa5J2cM2wum = CQeP2iWsJ4NWIEo.sq_IsUseSkill(CHANGQING_BLADE_SKILL20);
	
	if (CQ3ecfa5J2cM2wum)
	{
		CQeP2iWsJ4NWIEo.sq_IntVectClear();
		CQeP2iWsJ4NWIEo.sq_IntVectPush(0);
		CQeP2iWsJ4NWIEo.sq_AddSetStatePacket(CHANGQING_BLADE_STATE20, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_WildFlower(CQiLZJCLwPfbzS)
{
	if (!CQiLZJCLwPfbzS) return false;
	
	return true;
	
}

function onSetState_WildFlower(CQ1Ow6sQH7PjhlOK, CQUt5ckkYwl79GONTY, CQHbEy13ILKB5eI, CQjhjGDp35UGf2s2n)
{
	if(!CQ1Ow6sQH7PjhlOK) return;
	ChangqingQQ751675335Skill55(CQ1Ow6sQH7PjhlOK, CQUt5ckkYwl79GONTY, CQHbEy13ILKB5eI, CQjhjGDp35UGf2s2n)
	
}

function onEndCurrentAni_WildFlower(CQE4H3WUyqNa6t)
{
	if(!CQE4H3WUyqNa6t) return;
	local CQ4ZUllgZHWW15J4 = CQE4H3WUyqNa6t.getSkillSubState();
	switch(CQ4ZUllgZHWW15J4)
	{
	case 0:
		CQE4H3WUyqNa6t.sq_IntVectClear();
		CQE4H3WUyqNa6t.sq_IntVectPush(2);
		CQE4H3WUyqNa6t.sq_AddSetStatePacket(CHANGQING_BLADE_STATE20, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQE4H3WUyqNa6t.sq_IntVectClear();
		CQE4H3WUyqNa6t.sq_IntVectPush(3);
		CQE4H3WUyqNa6t.sq_AddSetStatePacket(CHANGQING_BLADE_STATE20, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQE4H3WUyqNa6t.getVar("LicensePower").set_vector(0,0);
		CQE4H3WUyqNa6t.sq_IntVectClear();
		CQE4H3WUyqNa6t.sq_IntVectPush(3);
		CQE4H3WUyqNa6t.sq_AddSetStatePacket(CHANGQING_BLADE_STATE20, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQE4H3WUyqNa6t.getVar("LicensePower").set_vector(1,0);
		CQE4H3WUyqNa6t.sq_IntVectClear();
		CQE4H3WUyqNa6t.sq_IntVectPush(4);
		CQE4H3WUyqNa6t.sq_AddSetStatePacket(CHANGQING_BLADE_STATE20, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 4:
		CQE4H3WUyqNa6t.sq_IntVectClear();
		CQE4H3WUyqNa6t.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_WildFlower(CQQP1W3Fjh7b7DHMDW, CQLynSouSUaj2zH, CQlnM1vR7Fh7VHG3C, CQIjuk8BpfDB3W)
{
	local CQ75fwLANycGB3F6 = SwordLicense_ATSwoedman(CQQP1W3Fjh7b7DHMDW, CQLynSouSUaj2zH, CQlnM1vR7Fh7VHG3C, CQIjuk8BpfDB3W);
	
	return CQ75fwLANycGB3F6;
}

function onAttack_WildFlower(CQrXAPpYxSXsLyDgzt, CQCScNb9J9QWNTS, CQciCgNXRr2yZFSkp, CQAmcqPrWXumGx)
{
	if(!CQrXAPpYxSXsLyDgzt || CQAmcqPrWXumGx)	return false;
	CQrXAPpYxSXsLyDgzt.getVar("DeepduskLicense").setBool(0,true);
	local CQdqCKwz47dlX2A8 = CQrXAPpYxSXsLyDgzt.getSkillSubState();
	
	switch(CQdqCKwz47dlX2A8)
	{
	case 2:
		CQrXAPpYxSXsLyDgzt.getVar("LicensePower").set_vector(0,0);
		break;
	case 3:
		CQrXAPpYxSXsLyDgzt.getVar("LicensePower").set_vector(1,0);
		break;
	}

}

function onCreateObject_WildFlower(CQyle7j5nwO9HtPjHt, CQF86YMsXKT1A5Zf5)
{
	if(CQF86YMsXKT1A5Zf5.isObjectType(OBJECTTYPE_PASSIVE))
		CQyle7j5nwO9HtPjHt.getVar("LicensePower").set_vector(2,0);
}

function onEnterFrame_WildFlower(CQgBsuAQk5HKaD, CQoFTHxjiqbOSlLh)
{
	if(!CQgBsuAQk5HKaD) return;
	local CQ2pK55J8HBusGKclc = CQgBsuAQk5HKaD.getSkillSubState();
	switch(CQ2pK55J8HBusGKclc)
	{
	case 1:
		if(CQoFTHxjiqbOSlLh == 6 && CQgBsuAQk5HKaD.isMyControlObject())
		{
			CQgBsuAQk5HKaD.sq_StartWrite();
			CQgBsuAQk5HKaD.sq_WriteDword(249);
			CQgBsuAQk5HKaD.sq_WriteDword(0);
			CQgBsuAQk5HKaD.sq_WriteDword(CQgBsuAQk5HKaD.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 0, -1,getATSwordmanBonus(CQgBsuAQk5HKaD,1.0,CHANGQING_BLADE_SKILL20)));
			CQgBsuAQk5HKaD.sq_WriteDword(CQgBsuAQk5HKaD.sq_GetIntData(CHANGQING_BLADE_SKILL20, 1));
			CQgBsuAQk5HKaD.sq_SendCreatePassiveObjectPacket(24387, 0, 200, 0, 89);
		}
		break;
	case 2:
		if(CQoFTHxjiqbOSlLh == 6 && CQgBsuAQk5HKaD.isMyControlObject())
		{
			CQgBsuAQk5HKaD.sq_StartWrite();
			CQgBsuAQk5HKaD.sq_WriteDword(249);
			CQgBsuAQk5HKaD.sq_WriteDword(0);
			CQgBsuAQk5HKaD.sq_WriteDword(CQgBsuAQk5HKaD.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL20, -1, 0, -1,getATSwordmanBonus(CQgBsuAQk5HKaD,1.0,CHANGQING_BLADE_SKILL20)));
			CQgBsuAQk5HKaD.sq_WriteDword(CQgBsuAQk5HKaD.sq_GetIntData(CHANGQING_BLADE_SKILL20, 1));
			CQgBsuAQk5HKaD.sq_SendCreatePassiveObjectPacket(24387, 0, 200, 0, 89);
		}
		break;
	case 3:
		if(CQoFTHxjiqbOSlLh == 3 && CQgBsuAQk5HKaD.isMyControlObject())
		{
			sq_SetMyShake(CQgBsuAQk5HKaD,8,200);
			sq_flashScreen(CQgBsuAQk5HKaD,0,100,50,127,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);
		}
		break;
	}
}

function onEndState_WildFlower(CQmQmzHpQgrmicK, CQJzJtujGU5lI3Jbi)
{
	if(!CQmQmzHpQgrmicK) return;
	if(CQJzJtujGU5lI3Jbi != CHANGQING_BLADE_STATE20 && CQJzJtujGU5lI3Jbi != CHANGQING_BLADE_STATE6 && CQJzJtujGU5lI3Jbi != CHANGQING_BLADE_STATE10 && CQJzJtujGU5lI3Jbi != CHANGQING_BLADE_STATE18)
		CQmQmzHpQgrmicK.getVar("LicensePower").clear_vector();
}
	
	
	
function onChangeSkillEffect_WildFlower(CQk9mFY1cFpdoy, CQaN227Fsfg1W6HU, CQ5GoTsn2tSKpFGYMY)
{
	if(!CQk9mFY1cFpdoy || CQaN227Fsfg1W6HU != CHANGQING_BLADE_SKILL20) return;
	
}


function onProc_WildFlower(CQwaRemftSxPtxF)
{
	if(!CQwaRemftSxPtxF) return;
	OnProc_License(CQwaRemftSxPtxF);
}

function onKeyFrameFlag_WildFlower(CQLeDARBZ9LuwHFn8, CQlcvMVynrqouWDcRP)
{
	if (!CQLeDARBZ9LuwHFn8) return false;
	switch(CQlcvMVynrqouWDcRP)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_WildFlower(CQIfBhIcAZ1we4S)
{
	if(!CQIfBhIcAZ1we4S) return;
	onProc_DeepduskLicense(CQIfBhIcAZ1we4S);
	local CQ71YQq867ycUuVbe = CQIfBhIcAZ1we4S.getSkillSubState();
	switch(CQ71YQq867ycUuVbe)
	{
	case 0:

		break;
	}
}