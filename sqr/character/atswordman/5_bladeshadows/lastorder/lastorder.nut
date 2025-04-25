
function checkExecutableSkill_LastOrder(CQHZchO3qOAEjaC)
{
	if (!CQHZchO3qOAEjaC) return false;
	local CQ6JZmjmIStjIU = CQHZchO3qOAEjaC.sq_IsUseSkill(CHANGQING_BLADE_SKILL10);
	
	if (CQ6JZmjmIStjIU)
	{
		CQHZchO3qOAEjaC.sq_IntVectClear();
		CQHZchO3qOAEjaC.sq_IntVectPush(0);
		CQHZchO3qOAEjaC.sq_AddSetStatePacket(CHANGQING_BLADE_STATE10, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_LastOrder(CQvCAcpmybxebG)
{
	if (!CQvCAcpmybxebG) return false;
	
	return true;
	
}

function onSetState_LastOrder(CQCzw2Xh259ZwX, CQc9Zka1tQOAum7B, CQANweUoZJTor87ZVf, CQdG5PfbUhHQmET)
{
	if(!CQCzw2Xh259ZwX) return;
	ChangqingQQ751675335Skill22(CQCzw2Xh259ZwX, CQc9Zka1tQOAum7B, CQANweUoZJTor87ZVf, CQdG5PfbUhHQmET)
	
}

function onEndCurrentAni_LastOrder(CQyEENCMSUbxWfTVT)
{
	if(!CQyEENCMSUbxWfTVT) return;
	local CQNwjheD7GVfqL = CQyEENCMSUbxWfTVT.getSkillSubState();
	switch(CQNwjheD7GVfqL)
	{
	case 0:
		CQyEENCMSUbxWfTVT.sq_IntVectClear();
		CQyEENCMSUbxWfTVT.sq_IntVectPush(1);
		CQyEENCMSUbxWfTVT.sq_AddSetStatePacket(CHANGQING_BLADE_STATE10, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQyEENCMSUbxWfTVT.sq_IntVectClear();
		CQyEENCMSUbxWfTVT.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_LastOrder(CQbxHqktpRr3vnjM, CQFdUI1dNy5ZQCj7EY, CQgM1VSVzSpAbph, CQoJnfWOHdRozdgdF)
{
	local CQ2sMUlxfWSQhs = SwordLicense_ATSwoedman(CQbxHqktpRr3vnjM, CQFdUI1dNy5ZQCj7EY, CQgM1VSVzSpAbph, CQoJnfWOHdRozdgdF);
	
	return CQ2sMUlxfWSQhs;
}

function onAttack_LastOrder(CQUruEK7rPexxvR, CQHYfZoL374RjZf9f, CQjRS9vwbeo3dU, CQE2cv8TXLf5kVdf)
{
	if(!CQUruEK7rPexxvR || CQE2cv8TXLf5kVdf)	return false;
	CQUruEK7rPexxvR.getVar("DeepduskLicense").setBool(0,true);
	local CQLKCoL4k5AVfEx7yA = CQUruEK7rPexxvR.getSkillSubState();
	
	switch(CQLKCoL4k5AVfEx7yA)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_LastOrder(CQlLrKpEiqzF6fxhp, CQIOC6gm8JKERI)
{
	if(!CQlLrKpEiqzF6fxhp) return;
	local CQ7tecBhQhUr7nlT = CQlLrKpEiqzF6fxhp.getSkillSubState();
	switch(CQ7tecBhQhUr7nlT)
	{
	case 0:

		break;
	case 1:
		if(CQIOC6gm8JKERI == 2 && CQlLrKpEiqzF6fxhp.isMyControlObject())
		{
			sq_SetMyShake(CQlLrKpEiqzF6fxhp,15,240);
			sq_flashScreen(CQlLrKpEiqzF6fxhp,0,150,150,255,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);
			
		}
		break;
	}
}

function onEndState_LastOrder(CQrb6uPGFUMv2Xlg1v, CQChsGwixFth8mT)
{
	if(!CQrb6uPGFUMv2Xlg1v) return;
	if(CQChsGwixFth8mT != CHANGQING_BLADE_STATE10)
	{
		CQrb6uPGFUMv2Xlg1v.setShowEquipmentLayer(10,true);
		sq_SendMessage(CQrb6uPGFUMv2Xlg1v, 0, 0, 0);
	}
	
}

	
	
	
function onChangeSkillEffect_LastOrder(CQc4T4jgaR7639Tkd, CQAZKlMN1yaVBa, CQdAmWySWShFLRjz)
{
	if(!CQc4T4jgaR7639Tkd || CQAZKlMN1yaVBa != CHANGQING_BLADE_SKILL10) return;
	
}


function onProc_LastOrder(CQyu2DxvL9FaNZjUWv)
{
	if(!CQyu2DxvL9FaNZjUWv) return;
	local CQNUm15dnWYrZUh = CQyu2DxvL9FaNZjUWv.getSkillSubState();
	switch(CQNUm15dnWYrZUh)
	{
	case 0:

		break;
	}
}

function onKeyFrameFlag_LastOrder(CQbk2kHCAXXvGVgla, CQF6oeuW67QjXQ)
{
	if (!CQbk2kHCAXXvGVgla) return false;
	switch(CQF6oeuW67QjXQ)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_LastOrder(CQgCRPcxoe36Jdvc)
{
	if(!CQgCRPcxoe36Jdvc) return;
	onProc_DeepduskLicense(CQgCRPcxoe36Jdvc);
	local CQoSDNC6BLi8SsYq4y = CQgCRPcxoe36Jdvc.getSkillSubState();
	switch(CQoSDNC6BLi8SsYq4y)
	{
	case 0:

		break;
	}
}