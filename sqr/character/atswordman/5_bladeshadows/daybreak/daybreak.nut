
function checkExecutableSkill_DayBreak(CQkpmO2pVzWg8keDa)
{
	if (!CQkpmO2pVzWg8keDa) return false;
	local CQaQ2BFnTs643B = CQkpmO2pVzWg8keDa.sq_IsUseSkill(CHANGQING_BLADE_SKILL6);

	if(CQaQ2BFnTs643B)
	{
		ChangqingQQ751675335Skill8(CQkpmO2pVzWg8keDa);
		return true;
	}
	return false;
}

function checkCommandEnable_DayBreak(CQ5zogtRo5EXNQwH)
{
	if (!CQ5zogtRo5EXNQwH) return false;
	local CQwdRm8F9TgD5MQVKS = sq_GetIntData(CQ5zogtRo5EXNQwH, CHANGQING_BLADE_SKILL6, 0);
	local CQZMDsLywEDGMIQ = getFormaidableTarget(CQ5zogtRo5EXNQwH, CQwdRm8F9TgD5MQVKS);
	local CQzHvXpYH2caXhqMR = -1;
	if(CQZMDsLywEDGMIQ)
		CQzHvXpYH2caXhqMR = sq_GetObjectId(CQZMDsLywEDGMIQ);

	if(CQzHvXpYH2caXhqMR == -1)
		return false;
	return true;
}

function onSetState_DayBreak(CQOaBdbBYUZr1A, CQ8etn9AIoqbCTo3, CQWcVpZr3M2jJNiNyD, CQVfWLQ8yvu6Seu)
{
	if(!CQOaBdbBYUZr1A) return;
	ChangqingQQ751675335Skill15(CQOaBdbBYUZr1A, CQ8etn9AIoqbCTo3, CQWcVpZr3M2jJNiNyD, CQVfWLQ8yvu6Seu);
}

function onEndCurrentAni_DayBreak(CQY188hXXS9BK2u1I)
{
	if(!CQY188hXXS9BK2u1I) return;
	local CQSJOYMsmBIGDO = CQY188hXXS9BK2u1I.getSkillSubState();
	switch(CQSJOYMsmBIGDO)
	{
	case 0:
		CQY188hXXS9BK2u1I.sq_IntVectClear();
		CQY188hXXS9BK2u1I.sq_IntVectPush(1);
		CQY188hXXS9BK2u1I.sq_AddSetStatePacket(CHANGQING_BLADE_STATE6, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQY188hXXS9BK2u1I.sq_IntVectClear();
		CQY188hXXS9BK2u1I.sq_IntVectPush(2);
		CQY188hXXS9BK2u1I.sq_AddSetStatePacket(CHANGQING_BLADE_STATE6, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQY188hXXS9BK2u1I.sq_IntVectClear();
		CQY188hXXS9BK2u1I.sq_IntVectPush(3);
		CQY188hXXS9BK2u1I.sq_AddSetStatePacket(CHANGQING_BLADE_STATE6, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQY188hXXS9BK2u1I.sq_IntVectClear();
		CQY188hXXS9BK2u1I.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_DayBreak(CQfsziAlSckaIjt4, CQurLHe57PHWFStM6N, CQMYQ5kJpCbbOQW, CQnR4xHqNzVjpMr3h)
{
	local CQG2Qtujxse7Pr = SwordLicense_ATSwoedman(CQfsziAlSckaIjt4, CQurLHe57PHWFStM6N, CQMYQ5kJpCbbOQW, CQnR4xHqNzVjpMr3h);

	return CQG2Qtujxse7Pr;
}

function onAttack_DayBreak(CQh33FcHJ55BEhe6, CQqZp36oRTpGyAe, CQJPhTJnOERsaka9, CQkyGri142AOuBEkCD)
{
	if(!CQh33FcHJ55BEhe6 || CQkyGri142AOuBEkCD)	return false;
	local CQannSRDnUzyewE = CQh33FcHJ55BEhe6.getSkillSubState();

	switch(CQannSRDnUzyewE)
	{
	case 2:
		local CQ5jNMVyCoLmi1pz4 = "character/atswordman/5_bladeshadows/daybreak/ap_daybreak.nut";
		if(sq_IsHoldable(CQh33FcHJ55BEhe6,CQqZp36oRTpGyAe) && sq_IsGrabable(CQh33FcHJ55BEhe6,CQqZp36oRTpGyAe) && !sq_IsFixture(CQqZp36oRTpGyAe))
		{
			local CQw5yjIfTMmlrW = CNSquirrelAppendage.sq_AppendAppendage(CQqZp36oRTpGyAe, CQh33FcHJ55BEhe6, -1, false, CQ5jNMVyCoLmi1pz4, true);
			if(CQw5yjIfTMmlrW)
			{
				sq_HoldAndDelayDie(CQqZp36oRTpGyAe, CQh33FcHJ55BEhe6, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQw5yjIfTMmlrW);
				local CQZXNQqVivM9mjoY = CQw5yjIfTMmlrW.getAppendageInfo();
				CQZXNQqVivM9mjoY.setValidTime(2800);
				if(!CQh33FcHJ55BEhe6.getVar("DayBreakHold").is_obj_vector(CQqZp36oRTpGyAe))
					CQh33FcHJ55BEhe6.getVar("DayBreakHold").push_obj_vector(CQqZp36oRTpGyAe);
			}
		}
		break;
	case 3:
		local CQzAyOgP8St1YSilqN = CQqZp36oRTpGyAe.getZPos() + CQqZp36oRTpGyAe.getObjectHeight()/2;
		local CQ5jNMVyCoLmi1pz4 = "character/swordman/effect/animation/atdaybreak/hiteffecta_00.ani";
		CreatePooledObjectAni(CQqZp36oRTpGyAe,CQ5jNMVyCoLmi1pz4,1,CQqZp36oRTpGyAe.getXPos(), CQqZp36oRTpGyAe.getYPos(), CQzAyOgP8St1YSilqN,CQqZp36oRTpGyAe.getDirection(),false,true,false,false);
		break;
	}

}

function onEnterFrame_DayBreak(CQ8UPRW7GcsOvMuxu, CQWkxmlZcOjuze)
{
	if(!CQ8UPRW7GcsOvMuxu || !CQ8UPRW7GcsOvMuxu.isMyControlObject()) return;
	local CQV6Xs3es7Fmn2tv = CQ8UPRW7GcsOvMuxu.getSkillSubState();
	switch(CQV6Xs3es7Fmn2tv)
	{
	case 0:
		if(CQWkxmlZcOjuze == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_SendChangeSkillEffectPacket(CQ8UPRW7GcsOvMuxu, CHANGQING_BLADE_SKILL6);
		}
		break;
	case 2:
		if(CQWkxmlZcOjuze == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(1);
			sq_SendChangeSkillEffectPacket(CQ8UPRW7GcsOvMuxu, CHANGQING_BLADE_SKILL6);
		}
		else if(CQWkxmlZcOjuze == 10)
			sq_SetMyShake(CQ8UPRW7GcsOvMuxu,10,120);
		else if(CQWkxmlZcOjuze == 21)
			sq_SetMyShake(CQ8UPRW7GcsOvMuxu,25,200);
		break;
	case 3:
		if(CQWkxmlZcOjuze == 1)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(2);
			sq_SendChangeSkillEffectPacket(CQ8UPRW7GcsOvMuxu, CHANGQING_BLADE_SKILL6);
		}
		else if(CQWkxmlZcOjuze == 16)
		{
			sq_SetMyShake(CQ8UPRW7GcsOvMuxu,10,500);
			local CQYCeXFlgzvlxPtzNN = sq_GetIntData(CQ8UPRW7GcsOvMuxu, CHANGQING_BLADE_SKILL6, 3)-1;
			local CQSS6dyLtsC9jkW = 360/CQYCeXFlgzvlxPtzNN;
			CQ8UPRW7GcsOvMuxu.setTimeEvent(0,CQSS6dyLtsC9jkW,CQYCeXFlgzvlxPtzNN,true);
		}
		break;
	}
}

function onEndState_DayBreak(CQfowbxaZ4w1cDIYl, CQuq5pZqUT3Kkw)
{
	if(!CQfowbxaZ4w1cDIYl) return;
	local CQMQaLE3SEDOf1sn = CQfowbxaZ4w1cDIYl.getSkillSubState();
	switch(CQMQaLE3SEDOf1sn)
	{
	case 2:

		break;
	}
	
	if(CQuq5pZqUT3Kkw != CHANGQING_BLADE_STATE6)
	{
		sq_SendMessage(CQfowbxaZ4w1cDIYl, 0, 0, 0);
		CQfowbxaZ4w1cDIYl.setShowEquipmentLayer(10,true);
		local CQnzk7nH72YSTWsref = "character/atswordman/5_bladeshadows/daybreak/ap_daybreak.nut";
		local CQG9HYdoonXoR3a = CQfowbxaZ4w1cDIYl.getVar("DayBreakHold").get_obj_vector_size();
		for(local CQ3NUiXgBoQQ7AEyG = 0; CQ3NUiXgBoQQ7AEyG < CQG9HYdoonXoR3a; ++CQ3NUiXgBoQQ7AEyG)
		{
			local CQqG1HaMwM2c2TEe = CQfowbxaZ4w1cDIYl.getVar("DayBreakHold").get_obj_vector(CQ3NUiXgBoQQ7AEyG);
			if(CQqG1HaMwM2c2TEe)
			{
				CQqG1HaMwM2c2TEe = sq_GetCNRDObjectToActiveObject(CQqG1HaMwM2c2TEe);
				if(CNSquirrelAppendage.sq_IsAppendAppendage(CQqG1HaMwM2c2TEe, CQnzk7nH72YSTWsref))
					CNSquirrelAppendage.sq_RemoveAppendage(CQqG1HaMwM2c2TEe, CQnzk7nH72YSTWsref);
			}
		}
	}
}

function onChangeSkillEffect_DayBreak(CQKEi5jDHviR8FpmVD, CQTw1xMvfAd33eo, CQsxutSdIBOXB2owT)
{
	if(!CQKEi5jDHviR8FpmVD || CQTw1xMvfAd33eo != CHANGQING_BLADE_SKILL6) return;
	local CQ6dfFrV3cTS4t = CQsxutSdIBOXB2owT.readDword();
	switch(CQ6dfFrV3cTS4t)
	{
	case 0:
		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakstartfront_02.ani"
		             CreatePooledObjectAni(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW,1,CQKEi5jDHviR8FpmVD.getXPos(), CQKEi5jDHviR8FpmVD.getYPos(), CQKEi5jDHviR8FpmVD.getZPos(),CQKEi5jDHviR8FpmVD.getDirection(),false,true,false,false);

		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakstartbottom_00.ani"
		             CreatePooledObjectAni(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW,2,CQKEi5jDHviR8FpmVD.getXPos(), CQKEi5jDHviR8FpmVD.getYPos(), CQKEi5jDHviR8FpmVD.getZPos(),CQKEi5jDHviR8FpmVD.getDirection(),false,true,false,60.0);
		break;
	case 1:
		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakattackcover_01.ani";
		sq_setFullScreenEffect(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW);

		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakattackbottom_00.ani";
		CreatePooledObjectAni(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW,2,CQKEi5jDHviR8FpmVD.getXPos(), CQKEi5jDHviR8FpmVD.getYPos(), CQKEi5jDHviR8FpmVD.getZPos(),CQKEi5jDHviR8FpmVD.getDirection(),false,true,false,false);
		break;
	case 2:
		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakendcover_07.ani"
		             CreatePooledObjectAni(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW,1,CQKEi5jDHviR8FpmVD.getXPos(), CQKEi5jDHviR8FpmVD.getYPos(), CQKEi5jDHviR8FpmVD.getZPos(),CQKEi5jDHviR8FpmVD.getDirection(),false,true,false,false);

		local CQeMS2TtbOHoNkuW = "character/swordman/effect/animation/atdaybreak/daybreakendbottom_00.ani"
		             CreatePooledObjectAni(CQKEi5jDHviR8FpmVD,CQeMS2TtbOHoNkuW,2,CQKEi5jDHviR8FpmVD.getXPos(), CQKEi5jDHviR8FpmVD.getYPos(), CQKEi5jDHviR8FpmVD.getZPos(),CQKEi5jDHviR8FpmVD.getDirection(),false,true,false,60.0);
		break;
	}
}

function onTimeEvent_DayBreak(CQB27EoLNEgSJAIafN, CQvKIZvEx2SpSTI, CQDIT9BkanxaKFsOz)
{
	if(!CQB27EoLNEgSJAIafN) return false;
	switch(CQvKIZvEx2SpSTI)
	{
	case 0:
		CQB27EoLNEgSJAIafN.resetHitObjectList();
		break;
	}
}

function onProc_DayBreak(CQROKvO3RFZrDx)
{
	if(!CQROKvO3RFZrDx) return;
	local CQitqoQHWMqbO1aS = CQROKvO3RFZrDx.getSkillSubState();
	switch(CQitqoQHWMqbO1aS)
	{
	case 1:

		break;
	}
}

function onKeyFrameFlag_DayBreak(CQospzd4hTSe4g1WT, CQJUYO6b6NbeSOCB)
{
	if (!CQospzd4hTSe4g1WT) return false;
	switch(CQJUYO6b6NbeSOCB)
	{
	case 0:

		break;
	}
	return true;
}

function onProcCon_DayBreak(CQ7YX7oirgg6ja)
{
	if(!CQ7YX7oirgg6ja) return;
	local CQgmS11DbHBcCKB = CQ7YX7oirgg6ja.getSkillSubState();
	switch(CQgmS11DbHBcCKB)
	{
	case 0:

		break;
	}
}