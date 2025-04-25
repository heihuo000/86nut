
function checkExecutableSkill_Rustynail(CQRBIupcmn97vq)
{
	if (!CQRBIupcmn97vq) return false;
	local CQAcmTZ8ZTNeEPsM2 = CQRBIupcmn97vq.sq_IsUseSkill(CHANGQING_BLADE_SKILL13);

	if(CQAcmTZ8ZTNeEPsM2)
	{
		ChangqingQQ751675335Skil26(CQRBIupcmn97vq)
		return true;
	}
	return false;
}

function checkCommandEnable_Rustynail(CQdf1eaXUaWvyk)
{
	if (!CQdf1eaXUaWvyk) return false;
	return ChangqingQQ751675335Skil30(CQdf1eaXUaWvyk);
}

function onSetState_Rustynail(CQy1UAUISK6hwDa3, CQNJ1NMzljE5uzENUy, CQbsihA5pohVe1E, CQFrRQeKNHDFUrp1t)
{
	if(!CQy1UAUISK6hwDa3) return;
	ChangqingQQ751675335Skill42(CQy1UAUISK6hwDa3, CQNJ1NMzljE5uzENUy, CQbsihA5pohVe1E, CQFrRQeKNHDFUrp1t)
}

function onEndCurrentAni_Rustynail(CQgtSIkQegcEr3)
{
	if(!CQgtSIkQegcEr3) return;
	local CQobYV1jHuZImAo4 = CQgtSIkQegcEr3.getSkillSubState();
	switch(CQobYV1jHuZImAo4)
	{
	case 0:
		CQgtSIkQegcEr3.sq_IntVectClear();
		CQgtSIkQegcEr3.sq_IntVectPush(2);
		CQgtSIkQegcEr3.sq_IntVectPush(-1);
		CQgtSIkQegcEr3.sq_AddSetStatePacket(CHANGQING_BLADE_SKILL13, STATE_PRIORITY_IGNORE_FORCE, true);
		
		

		break;
	case 2:
		CQgtSIkQegcEr3.sq_IntVectClear();
		CQgtSIkQegcEr3.sq_IntVectPush(1);
		CQgtSIkQegcEr3.sq_AddSetStatePacket(CHANGQING_BLADE_STATE13, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		if(CQgtSIkQegcEr3.getZPos() > 5)
		{
			CQgtSIkQegcEr3.sq_IntVectClear();
			CQgtSIkQegcEr3.sq_IntVectPush(1);
			CQgtSIkQegcEr3.sq_IntVectPush(0);
			CQgtSIkQegcEr3.sq_IntVectPush(0);
			CQgtSIkQegcEr3.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		else
			CQgtSIkQegcEr3.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		break;
	}
}

function startSkillCoolTime_Rustynail(CQ2hVRS2fNQtYTiMVA, CQm4WUcpIf2nqFu, CQJZVa6n3tuTveu35, CQkPrXK1yC98l2)
{
	local CQay79oFXxONgtP6 = SwordLicense_ATSwoedman(CQ2hVRS2fNQtYTiMVA, CQm4WUcpIf2nqFu, CQJZVa6n3tuTveu35, CQkPrXK1yC98l2);

	return CQay79oFXxONgtP6;
}

function onAttack_Rustynail(CQ5nIbvukrTJxjPgqS, CQwjlo8fDZHIjSO, CQZ5KKIB8TbtdlOkD, CQ8Xq7qAQaVnkMIR)
{
	if(!CQ5nIbvukrTJxjPgqS || CQ8Xq7qAQaVnkMIR)	return false;
	local CQWA3cgcMKrTfrszXt = CQ5nIbvukrTJxjPgqS.getSkillSubState();

	switch(CQWA3cgcMKrTfrszXt)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_Rustynail(CQVuquB8cj5863s, CQYU3HOXaopNRyafh)
{
	if(!CQVuquB8cj5863s || !CQVuquB8cj5863s.isMyControlObject()) return;
	local CQSTo4weR1RJ7T = CQVuquB8cj5863s.getSkillSubState();
	switch(CQSTo4weR1RJ7T)
	{
	case 3:
		if(CQYU3HOXaopNRyafh == 2)
			sq_SetMyShake(CQVuquB8cj5863s,5,50);
		else if(CQYU3HOXaopNRyafh == 6)
		{
			sq_BinaryStartWrite();
			sq_SendChangeSkillEffectPacket(CQVuquB8cj5863s, CHANGQING_BLADE_SKILL13);
		}
		else if(CQYU3HOXaopNRyafh == 7)
			sq_SetMyShake(CQVuquB8cj5863s,6,150);
		break;
	case 2:
		if(CQYU3HOXaopNRyafh == 1)
		{
			local CQf7gz4lWgSI2FEh = "character/swordman/effect/animation/atrustynail/wire/cast.ani";
			CreatePooledObjectAni(CQVuquB8cj5863s,CQf7gz4lWgSI2FEh,1,CQVuquB8cj5863s.getXPos(), CQVuquB8cj5863s.getYPos(), CQVuquB8cj5863s.getZPos()+54,CQVuquB8cj5863s.getDirection(),false,true,false,false);
			CQVuquB8cj5863s.sq_StartWrite();
			CQVuquB8cj5863s.sq_WriteDword(243);
			CQVuquB8cj5863s.sq_WriteDword(0);
			CQVuquB8cj5863s.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 74);
		}
		break;
	}
}

function onEndState_Rustynail(CQyVFWG54uxt8zpcm, CQNBbDyanBLi31)
{
	if(!CQyVFWG54uxt8zpcm) return;
	if(CQNBbDyanBLi31 != CHANGQING_BLADE_STATE13)
		CQyVFWG54uxt8zpcm.setShowEquipmentLayer(10,true);
}

function onChangeSkillEffect_Rustynail(CQbFN2xqAfmqBWFv, CQFpvk54TtMz44DzGS, CQgQBeHJoCyfNSS)
{
	if(!CQbFN2xqAfmqBWFv || CQFpvk54TtMz44DzGS != CHANGQING_BLADE_SKILL13) return;

	CQbFN2xqAfmqBWFv.sq_SetCurrentAttackInfo(208);
	local CQoztAnoBz82ZlSY9 = CQbFN2xqAfmqBWFv.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL13, -1, 0, -1, getATSwordmanBonus(CQbFN2xqAfmqBWFv,1.0,CHANGQING_BLADE_SKILL13));
	CQbFN2xqAfmqBWFv.sq_SetCurrentAttackPower(CQoztAnoBz82ZlSY9);
}

function onProc_Rustynail(CQ299ddhwrsLGG)
{
	if(!CQ299ddhwrsLGG) return;
	local CQmNOnX1HZjAXrPn = CQ299ddhwrsLGG.getSkillSubState();
	switch(CQmNOnX1HZjAXrPn)
	{
	case 0:
		local CQJGzEsDdTGiH2PrcB = sq_GetCurrentAnimation(CQ299ddhwrsLGG);
		local CQkEZLmbsEvqAtO = sq_GetDelaySum(CQJGzEsDdTGiH2PrcB);
		local CQaww8Rf2KCxJkOba = CQ299ddhwrsLGG.sq_GetStateTimer();
		local CQ5xZYSVtjwfSD = sq_GetUniformVelocity(CQ299ddhwrsLGG.getZPos(), 120, CQaww8Rf2KCxJkOba, CQkEZLmbsEvqAtO);
		if(CQ299ddhwrsLGG.isMovablePos(CQ299ddhwrsLGG.getXPos(), CQ299ddhwrsLGG.getYPos()))
			sq_setCurrentAxisPos(CQ299ddhwrsLGG, 2, CQ5xZYSVtjwfSD);
		break;
	case 1:
		local CQwfQirtZo32szsm = CQ299ddhwrsLGG.getVar("Rustynail").getObject(0);
		if(!CQwfQirtZo32szsm)
		{
			CQ299ddhwrsLGG.sq_IntVectClear();
			CQ299ddhwrsLGG.sq_IntVectPush(3);
			CQ299ddhwrsLGG.sq_AddSetStatePacket(CHANGQING_BLADE_STATE13, STATE_PRIORITY_IGNORE_FORCE, true);
			break;
		}
		CQwfQirtZo32szsm = sq_GetCNRDObjectToActiveObject(CQwfQirtZo32szsm);
		local CQkEZLmbsEvqAtO = 300;
		local CQ8JE528SgfAIWJw7 = CQwfQirtZo32szsm.getXPos();
		CQ8JE528SgfAIWJw7 = sq_GetDistancePos(CQ8JE528SgfAIWJw7, sq_GetOppositeDirection(CQ299ddhwrsLGG.getDirection()), 100);
		local CQWsjxDO7uPio4 = CQwfQirtZo32szsm.getYPos() + 2;
		local CQVrHyWeqBlEOuHW = CQwfQirtZo32szsm.getZPos();
		local CQaww8Rf2KCxJkOba = CQ299ddhwrsLGG.sq_GetStateTimer();
		local CQSRM3LLxtUYyFF = sq_GetAccel(CQ299ddhwrsLGG.getXPos(), CQ8JE528SgfAIWJw7, CQaww8Rf2KCxJkOba, CQkEZLmbsEvqAtO, false);
		local CQfgnTpaJCNgwxFIp = sq_GetAccel(CQ299ddhwrsLGG.getYPos(), CQWsjxDO7uPio4, CQaww8Rf2KCxJkOba, CQkEZLmbsEvqAtO, false);
		local CQ5xZYSVtjwfSD = sq_GetAccel(CQ299ddhwrsLGG.getZPos(), CQVrHyWeqBlEOuHW, CQaww8Rf2KCxJkOba, CQkEZLmbsEvqAtO, false);
		if(CQ299ddhwrsLGG.isMovablePos(CQSRM3LLxtUYyFF, CQfgnTpaJCNgwxFIp))	
		{
			sq_setCurrentAxisPos(CQ299ddhwrsLGG, 0, CQSRM3LLxtUYyFF);
			sq_setCurrentAxisPos(CQ299ddhwrsLGG, 1, CQfgnTpaJCNgwxFIp);
			sq_setCurrentAxisPos(CQ299ddhwrsLGG, 2, CQ5xZYSVtjwfSD);
		}

		if(CQaww8Rf2KCxJkOba >= CQkEZLmbsEvqAtO - 50)
		{
			CQ299ddhwrsLGG.sq_IntVectClear();
			CQ299ddhwrsLGG.sq_IntVectPush(3);
			CQ299ddhwrsLGG.sq_AddSetStatePacket(CHANGQING_BLADE_STATE13, STATE_PRIORITY_IGNORE_FORCE, true);
		}
		break;
	}
}

function onKeyFrameFlag_Rustynail(CQMLuS93rI7CetSP, CQnOdMZH3ZaDU5Sa2S)
{
	if (!CQMLuS93rI7CetSP) return false;
	switch(CQnOdMZH3ZaDU5Sa2S)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_Rustynail(CQGtAjQmbThErDA)
{
	if(!CQGtAjQmbThErDA) return;
	
}