
function checkExecutableSkill_Catharsis(CQVPBXyNsaTWkmdQH)
{
	if (!CQVPBXyNsaTWkmdQH) return false;
	local CQYyt9xS2KHbf9 = CQVPBXyNsaTWkmdQH.sq_IsUseSkill(CHANGQING_BLADE_SKILL4);
	
	if (CQYyt9xS2KHbf9)
	{
		CQVPBXyNsaTWkmdQH.sq_IntVectClear();
		CQVPBXyNsaTWkmdQH.sq_IntVectPush(0);
		CQVPBXyNsaTWkmdQH.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_Catharsis(CQSn9b5YtjnkTa9c)
{
	if (!CQSn9b5YtjnkTa9c) return false;
	
	return true;
}

function onSetState_Catharsis(CQLS2KSc7tZNilf, CQmtdmZP7r5mCz, CQMCZ7drAg5H2nlwr, CQhSwYXz6iEs8CTU)
{
	if(!CQLS2KSc7tZNilf) return;
	ChangqingQQ751675335Skill5(CQLS2KSc7tZNilf, CQmtdmZP7r5mCz, CQMCZ7drAg5H2nlwr, CQhSwYXz6iEs8CTU)
}

function onEndCurrentAni_Catharsis(CQpi5ua6mNgW3pkWab)
{
	if(!CQpi5ua6mNgW3pkWab) return;
	local CQ3mwHUsBYSnBdk = CQpi5ua6mNgW3pkWab.getSkillSubState();
	switch(CQ3mwHUsBYSnBdk)
	{
	case 0:
		CQpi5ua6mNgW3pkWab.getVar("LicensePower").set_vector(0,0);
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		break;
	case 1:
		CQpi5ua6mNgW3pkWab.sq_IntVectClear();
		CQpi5ua6mNgW3pkWab.sq_IntVectPush(2);
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQpi5ua6mNgW3pkWab.sq_IntVectClear();
		CQpi5ua6mNgW3pkWab.sq_IntVectPush(3);
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQpi5ua6mNgW3pkWab.sq_IntVectClear();
		CQpi5ua6mNgW3pkWab.sq_IntVectPush(5);
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 4:
		CQpi5ua6mNgW3pkWab.sq_IntVectClear();
		CQpi5ua6mNgW3pkWab.sq_IntVectPush(5);
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 5:
		CQpi5ua6mNgW3pkWab.getVar("LicensePower").set_vector(1,0);
		CQpi5ua6mNgW3pkWab.sq_IntVectClear();
		CQpi5ua6mNgW3pkWab.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_Catharsis(CQqT45RQztxk4sjuN, CQK7EzS5HVZ7Nb, CQTVjtrKfxqdXZhp, CQsDHDTprr111UgyRy)
{
	local CQ6on22j3ZyKC8g = SwordLicense_ATSwoedman(CQqT45RQztxk4sjuN, CQK7EzS5HVZ7Nb, CQTVjtrKfxqdXZhp, CQsDHDTprr111UgyRy);
	
	return CQ6on22j3ZyKC8g;
}

function onCreateObject_Catharsis(CQepMTD2bl8OJERoe, CQXQueWFPaIuVf)
{
	if(CQXQueWFPaIuVf.isObjectType(OBJECTTYPE_PASSIVE) && CQXQueWFPaIuVf.getState() == 10)
		CQepMTD2bl8OJERoe.getVar("LicensePower").set_vector(2,0);
}

function onAttack_Catharsis(CQxzMA7nkKkmKIfa, CQP9uMKRujGlDndiLu, CQ9MdhpB7pvdLCx, CQtHAQbyq1V1FqxE2)
{
	if(!CQxzMA7nkKkmKIfa || CQtHAQbyq1V1FqxE2)	return false;
	local CQVacI9YFgeKO9zS6B = CQxzMA7nkKkmKIfa.getSkillSubState();
	
	switch(CQVacI9YFgeKO9zS6B)
	{
	case 0:
		CQxzMA7nkKkmKIfa.getVar("LicensePower").set_vector(0,0);
		if(CQxzMA7nkKkmKIfa.isMyControlObject())
			sq_SetMyShake(CQxzMA7nkKkmKIfa,5,100);
		CQxzMA7nkKkmKIfa.getVar("Catharsis").push_obj_vector(CQP9uMKRujGlDndiLu);
		local CQYeCVZ8xu4Ppal = "character/atswordman/5_bladeshadows/catharsis/ap_catharsis.nut";
		if(sq_IsHoldable(CQxzMA7nkKkmKIfa,CQP9uMKRujGlDndiLu) && sq_IsGrabable(CQxzMA7nkKkmKIfa,CQP9uMKRujGlDndiLu) && !sq_IsFixture(CQP9uMKRujGlDndiLu))
		{
			local CQScrRQPaNouPRlFn = CNSquirrelAppendage.sq_AppendAppendage(CQP9uMKRujGlDndiLu, CQxzMA7nkKkmKIfa, -1, false, CQYeCVZ8xu4Ppal, true);
			if(CQScrRQPaNouPRlFn)
			{
				sq_HoldAndDelayDie(CQP9uMKRujGlDndiLu, CQxzMA7nkKkmKIfa, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQScrRQPaNouPRlFn);
				sq_MoveToAppendageForce(CQP9uMKRujGlDndiLu, CQxzMA7nkKkmKIfa, CQxzMA7nkKkmKIfa, 0, 0, CQP9uMKRujGlDndiLu.getZPos(), 50, true, CQScrRQPaNouPRlFn,true);
				local CQff6Uhr1YfmEZ = CQScrRQPaNouPRlFn.getAppendageInfo();
				CQff6Uhr1YfmEZ.setValidTime(2500);
			}
		}
		CQxzMA7nkKkmKIfa.sq_IntVectClear();
		CQxzMA7nkKkmKIfa.sq_IntVectPush(1);
		CQxzMA7nkKkmKIfa.sq_AddSetStatePacket(CHANGQING_BLADE_STATE4, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 5:
		CQxzMA7nkKkmKIfa.getVar("LicensePower").set_vector(1,0);
		break;
	}

}

function onEnterFrame_Catharsis(CQu1eaNzWtAzyUkJ, CQGJ6XPZLCzdaVkDFN)
{
	if(!CQu1eaNzWtAzyUkJ || !CQu1eaNzWtAzyUkJ.isMyControlObject()) return;
	local CQhss9wshxK1uEjZK = CQu1eaNzWtAzyUkJ.getSkillSubState();
	switch(CQhss9wshxK1uEjZK)
	{
	case 1:
		if(CQGJ6XPZLCzdaVkDFN == 2)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(sq_GetDistancePos(CQu1eaNzWtAzyUkJ.getXPos(), CQu1eaNzWtAzyUkJ.getDirection(), 50));
			sq_SendChangeSkillEffectPacket(CQu1eaNzWtAzyUkJ, CHANGQING_BLADE_SKILL4);			
		}
		break;
	case 5:
		if(CQGJ6XPZLCzdaVkDFN == 1)
		{
			CQu1eaNzWtAzyUkJ.sq_StartWrite();
			CQu1eaNzWtAzyUkJ.sq_WriteDword(232);
			CQu1eaNzWtAzyUkJ.sq_WriteDword(0);
			CQu1eaNzWtAzyUkJ.sq_WriteDword(CQu1eaNzWtAzyUkJ.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL4, -1, 3, -1,getATSwordmanBonus(CQu1eaNzWtAzyUkJ,1.0,CHANGQING_BLADE_SKILL4)));
			CQu1eaNzWtAzyUkJ.sq_WriteDword(sq_GetIntData(CQu1eaNzWtAzyUkJ, CHANGQING_BLADE_SKILL4, 22));
			CQu1eaNzWtAzyUkJ.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 0, 0);
		}
		break;
	}
}

function onEndState_Catharsis(CQprkbjlAIU4ef, CQ3YJpH45ZMXishS)
{
	if(!CQprkbjlAIU4ef) return;
	if(CQ3YJpH45ZMXishS != CHANGQING_BLADE_STATE4 && CQ3YJpH45ZMXishS != CHANGQING_BLADE_STATE6 && CQ3YJpH45ZMXishS != CHANGQING_BLADE_STATE10 && CQ3YJpH45ZMXishS != CHANGQING_BLADE_STATE18)
	{
		CQprkbjlAIU4ef.setShowEquipmentLayer(10,true);
		CQprkbjlAIU4ef.getVar("LicensePower").clear_vector();
	}
	
}

function onChangeSkillEffect_Catharsis(CQqRmKuJiTtSrggLju, CQK227cqVa7pmXb, CQT3oc6hlKawWmvCb)
{
	if(!CQqRmKuJiTtSrggLju || CQK227cqVa7pmXb != CHANGQING_BLADE_SKILL4) return;
	local CQsZ1uJ1GjhcqB = CQT3oc6hlKawWmvCb.readDword();
	switch(CQsZ1uJ1GjhcqB)
	{
	case 0:
		local CQ6PiHiodoFgvaYN = CQT3oc6hlKawWmvCb.readDword();
		sq_SetCurrentPos(CQqRmKuJiTtSrggLju, CQ6PiHiodoFgvaYN, CQqRmKuJiTtSrggLju.getYPos(), CQqRmKuJiTtSrggLju.getZPos() + 80);
		break;
	}
}

function onProc_Catharsis(CQeyR4fne1Y4lRcXSD)
{
	if(!CQeyR4fne1Y4lRcXSD) return;
	local CQXnDzCf2gXXbOx = CQeyR4fne1Y4lRcXSD.getSkillSubState();
	switch(CQXnDzCf2gXXbOx)
	{
	case 0:
		local CQxjvtsDvuQDzUxBX = CQeyR4fne1Y4lRcXSD.getVar("Catharsis").get_vector(0);
		local CQP5VBmyZN3pjC = sq_GetCurrentAnimation(CQeyR4fne1Y4lRcXSD);
		local CQ9XWggcjYiwcql1 = sq_GetDelaySum(CQP5VBmyZN3pjC);
		local CQtAVmBVutdckdl8lD = CQeyR4fne1Y4lRcXSD.sq_GetStateTimer();
		local CQBuWsWP6COgfsT = sq_GetAccel(CQeyR4fne1Y4lRcXSD.getXPos(), CQxjvtsDvuQDzUxBX, CQtAVmBVutdckdl8lD, CQ9XWggcjYiwcql1, false);
		if(CQeyR4fne1Y4lRcXSD.isMovablePos(CQBuWsWP6COgfsT, CQeyR4fne1Y4lRcXSD.getYPos()))
			sq_setCurrentAxisPos(CQeyR4fne1Y4lRcXSD, 0, CQBuWsWP6COgfsT);
		break;
	case 2:
		local CQxjvtsDvuQDzUxBX = CQeyR4fne1Y4lRcXSD.getVar("Catharsis").get_vector(0);
		local CQP5VBmyZN3pjC = sq_GetCurrentAnimation(CQeyR4fne1Y4lRcXSD);
		local CQ9XWggcjYiwcql1 = sq_GetDelaySum(CQP5VBmyZN3pjC);
		local CQtAVmBVutdckdl8lD = CQeyR4fne1Y4lRcXSD.sq_GetStateTimer();
		local CQBuWsWP6COgfsT = sq_GetAccel(CQeyR4fne1Y4lRcXSD.getXPos(), CQxjvtsDvuQDzUxBX, CQtAVmBVutdckdl8lD, CQ9XWggcjYiwcql1, false);
		local CQji38L4r36W3f = sq_GetAccel(CQeyR4fne1Y4lRcXSD.getZPos(), 220, CQtAVmBVutdckdl8lD, CQ9XWggcjYiwcql1, false);
		if(CQeyR4fne1Y4lRcXSD.isMovablePos(CQBuWsWP6COgfsT, CQeyR4fne1Y4lRcXSD.getYPos()))
		{
			sq_setCurrentAxisPos(CQeyR4fne1Y4lRcXSD, 0, CQBuWsWP6COgfsT);
			sq_setCurrentAxisPos(CQeyR4fne1Y4lRcXSD, 2, CQji38L4r36W3f);
		}
		break;
	case 3:
		local CQxjvtsDvuQDzUxBX = CQeyR4fne1Y4lRcXSD.getVar("Catharsis").get_vector(1);
		local CQP5VBmyZN3pjC = sq_GetCurrentAnimation(CQeyR4fne1Y4lRcXSD);
		local CQ9XWggcjYiwcql1 = sq_GetDelaySum(CQP5VBmyZN3pjC);
		local CQtAVmBVutdckdl8lD = CQeyR4fne1Y4lRcXSD.sq_GetStateTimer();
		local CQBuWsWP6COgfsT = sq_GetAccel(CQeyR4fne1Y4lRcXSD.getXPos(), CQxjvtsDvuQDzUxBX, CQtAVmBVutdckdl8lD, CQ9XWggcjYiwcql1,true);
		local CQji38L4r36W3f = sq_GetAccel(CQeyR4fne1Y4lRcXSD.getZPos(), 0, CQtAVmBVutdckdl8lD, CQ9XWggcjYiwcql1,true);
		if(CQeyR4fne1Y4lRcXSD.isMovablePos(CQBuWsWP6COgfsT, CQeyR4fne1Y4lRcXSD.getYPos()))
		{
			sq_setCurrentAxisPos(CQeyR4fne1Y4lRcXSD, 0, CQBuWsWP6COgfsT);
			sq_setCurrentAxisPos(CQeyR4fne1Y4lRcXSD, 2, CQji38L4r36W3f);
			
		}
		break;
	case 5:
		OnProc_License(CQeyR4fne1Y4lRcXSD);
		break;
	}
}

function onKeyFrameFlag_Catharsis(CQ7ENFMMTY1WHgxTDS, CQrwy3ASFtybCOz)
{
	if (!CQ7ENFMMTY1WHgxTDS) return false;
	switch(CQrwy3ASFtybCOz)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_Catharsis(CQCxNlet9C9kJUQx7)
{
	if(!CQCxNlet9C9kJUQx7) return;
	local CQcdtrkdazI7SV = CQCxNlet9C9kJUQx7.getSkillSubState();
	switch(CQcdtrkdazI7SV)
	{
	case 0:

		break;
	}
}