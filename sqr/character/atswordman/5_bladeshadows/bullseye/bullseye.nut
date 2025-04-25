
function checkExecutableSkill_BullsEye(CQBhWBpVXoR1fdGn5h)
{
	if (!CQBhWBpVXoR1fdGn5h) return false;
	local CQR96vblBc114aOHs = CQBhWBpVXoR1fdGn5h.sq_IsUseSkill(CHANGQING_BLADE_SKILL3);

	if (CQR96vblBc114aOHs)
	{
		CQBhWBpVXoR1fdGn5h.sq_IntVectClear();
		CQBhWBpVXoR1fdGn5h.sq_IntVectPush(0);
		CQBhWBpVXoR1fdGn5h.sq_AddSetStatePacket(CHANGQING_BLADE_STATE3, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BullsEye(CQQ5pSXabyGirotq)
{
	if (!CQQ5pSXabyGirotq) return false;

	return true;

}

function onSetState_BullsEye(CQPNeaza5fuKgGA7, CQlYhYyqOLnkz65i, CQIRGix44kN7no5O6y, CQ72nH5JnpWNx94)
{
	if(!CQPNeaza5fuKgGA7) return;
	ChangqingQQ751675335Skill4(CQPNeaza5fuKgGA7, CQlYhYyqOLnkz65i, CQIRGix44kN7no5O6y, CQ72nH5JnpWNx94)
}

function onEndCurrentAni_BullsEye(CQrKM5JoXH6HjJ4uh)
{
	if(!CQrKM5JoXH6HjJ4uh) return;
	local CQCLuxihkhEsfY = CQrKM5JoXH6HjJ4uh.getSkillSubState();
	switch(CQCLuxihkhEsfY)
	{
	case 0:
		CQrKM5JoXH6HjJ4uh.getVar("LicensePower").set_vector(0,0);
		CQrKM5JoXH6HjJ4uh.sq_IntVectClear();
		CQrKM5JoXH6HjJ4uh.sq_IntVectPush(1);
		CQrKM5JoXH6HjJ4uh.sq_AddSetStatePacket(CHANGQING_BLADE_STATE3, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQrKM5JoXH6HjJ4uh.getVar("LicensePower").set_vector(1,0);
		CQrKM5JoXH6HjJ4uh.sq_IntVectClear();
		CQrKM5JoXH6HjJ4uh.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_BullsEye(CQcPNtf1DigtTL2p, CQAyyFCD8NDnRu2Aiu, CQdnd2sbQfck771, CQyjATmfMy5lgpMFA)
{
	local CQN5crRDcVpd8c = SwordLicense_ATSwoedman(CQcPNtf1DigtTL2p, CQAyyFCD8NDnRu2Aiu, CQdnd2sbQfck771, CQyjATmfMy5lgpMFA);

	return CQN5crRDcVpd8c;
}

function onAttack_BullsEye(CQbXXAVts9g13KNJ, CQoAeMrcgrSK9bB, CQ2u6jTVtXxP4X9LR, CQmUeQ3OZlLuNi)
{
	if(!CQbXXAVts9g13KNJ || CQmUeQ3OZlLuNi)	return false;
	local CQJk6OFenwmm587C = CQbXXAVts9g13KNJ.getSkillSubState();
	CQbXXAVts9g13KNJ.getVar("DeepduskLicense").setBool(0,true);

	switch(CQJk6OFenwmm587C)
	{
	case 0:
		CQbXXAVts9g13KNJ.getVar("BullsEye").setInt(0, CQoAeMrcgrSK9bB.getXPos());
		CQbXXAVts9g13KNJ.getVar("BullsEye").push_vector(1);
		CQbXXAVts9g13KNJ.getVar("LicensePower").set_vector(0,0);
		break;
	case 1:
		CQbXXAVts9g13KNJ.getVar("LicensePower").set_vector(1,0);
		break;
	}

}

function onEnterFrame_BullsEye(CQk6aVt7AL1zME7Kub, CQaCkRzLTkydXY6)
{
	if(!CQk6aVt7AL1zME7Kub) return;
	local CQ5SJm4aop811L5XZ = CQk6aVt7AL1zME7Kub.getSkillSubState();
	switch(CQ5SJm4aop811L5XZ)
	{
	case 0:
		if(CQaCkRzLTkydXY6 == 4 && CQk6aVt7AL1zME7Kub.isMyControlObject())
		{
			sq_SetMyShake(CQk6aVt7AL1zME7Kub,5,100);
		}
		else if(CQaCkRzLTkydXY6 == 9 && CQk6aVt7AL1zME7Kub.isMyControlObject())
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_SendChangeSkillEffectPacket(CQk6aVt7AL1zME7Kub, CHANGQING_BLADE_SKILL3);
		}
		else if(CQaCkRzLTkydXY6 == 10 && CQk6aVt7AL1zME7Kub.isMyControlObject())
		{
			sq_SetMyShake(CQk6aVt7AL1zME7Kub,6,150);
		}
		break;
	case 1:
		if(CQaCkRzLTkydXY6 == 8 && CQk6aVt7AL1zME7Kub.isMyControlObject())
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(1);
			sq_SendChangeSkillEffectPacket(CQk6aVt7AL1zME7Kub, CHANGQING_BLADE_SKILL3);

		}
		else if(CQaCkRzLTkydXY6 == 9 && CQk6aVt7AL1zME7Kub.isMyControlObject())
		{
			sq_SetMyShake(CQk6aVt7AL1zME7Kub,10,150);
			sq_flashScreen(CQk6aVt7AL1zME7Kub,0,100,50,178,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,2);

		}
		break;
	}
}

function getScrollBasisPos_BullsEye(CQwimapTBHsLCn)
{
	if (!CQwimapTBHsLCn) return;
	local CQZm1Xb3whkPJ74B = CQwimapTBHsLCn.getSkillSubState();

	if(CQwimapTBHsLCn.isMyControlObject())
	{
		local CQzlid9HHiGuSp4Z7b = sq_GetDistancePos(CQwimapTBHsLCn.getXPos(), CQwimapTBHsLCn.getDirection(), CQwimapTBHsLCn.sq_GetIntData(CHANGQING_BLADE_SKILL3, 8));
		local CQI81bZmfNvqK9 = CQwimapTBHsLCn.getXPos();
		if(CQZm1Xb3whkPJ74B == 0 && CQwimapTBHsLCn.sq_GetCurrentFrameIndex(sq_GetCurrentAnimation(CQwimapTBHsLCn)) > 5)
		{
			local CQ79ipEhIfCzDJ2V = CQwimapTBHsLCn.sq_GetStateTimer();
			CQI81bZmfNvqK9 = sq_GetUniformVelocity(CQI81bZmfNvqK9, CQzlid9HHiGuSp4Z7b, CQ79ipEhIfCzDJ2V, CQwimapTBHsLCn.sq_GetIntData(CHANGQING_BLADE_SKILL3, 8));
			CQwimapTBHsLCn.sq_SetCameraScrollPosition(CQI81bZmfNvqK9, CQwimapTBHsLCn.getYPos(), 0);
			return true;
		}
	}
	return false;
}

function onEndState_BullsEye(CQrNRLUG3ywdIv24wD, CQCGS7MiyV4gFZR)
{
	if(!CQrNRLUG3ywdIv24wD) return;
	if(CQCGS7MiyV4gFZR != CHANGQING_BLADE_STATE3 && CQCGS7MiyV4gFZR != CHANGQING_BLADE_STATE6 && CQCGS7MiyV4gFZR != CHANGQING_BLADE_STATE10 && CQCGS7MiyV4gFZR != CHANGQING_BLADE_STATE18)
	{
		CQrNRLUG3ywdIv24wD.setShowEquipmentLayer(10,true);
		CQrNRLUG3ywdIv24wD.getVar("LicensePower").clear_vector();
	}
}

function onChangeSkillEffect_BullsEye(CQcEYYAbXxo4Oif7G, CQAwVueNjrfXp8, CQdxWHkSSXPDPEdd)
{
	if(!CQcEYYAbXxo4Oif7G || CQAwVueNjrfXp8 != CHANGQING_BLADE_SKILL3) return;
	local CQyd851t7lzpEf961D = CQdxWHkSSXPDPEdd.readDword();
	switch(CQyd851t7lzpEf961D)
	{
	case 0:
		local CQNMrzS9qaKwyL9 = [
		                     "character/swordman/effect/animation/atbullseye/attack1/attack1front_00.ani"
		                 ];
		foreach(path in CQNMrzS9qaKwyL9)
			CreatePooledObjectAni(CQcEYYAbXxo4Oif7G,path,1,CQcEYYAbXxo4Oif7G.getXPos(), CQcEYYAbXxo4Oif7G.getYPos(), CQcEYYAbXxo4Oif7G.getZPos(),CQcEYYAbXxo4Oif7G.getDirection(),false,true,false,false);

		local CQgH7tcCNKUYsb88x = [
		                     "character/swordman/effect/animation/atbullseye/attack1/attack1back_00.ani",
		                     "character/swordman/effect/animation/atbullseye/attack1/attack1bottom_00.ani"
		                 ];
		foreach(path in CQgH7tcCNKUYsb88x)
			CreatePooledObjectAni(CQcEYYAbXxo4Oif7G,path,2,CQcEYYAbXxo4Oif7G.getXPos(), CQcEYYAbXxo4Oif7G.getYPos(), CQcEYYAbXxo4Oif7G.getZPos(),CQcEYYAbXxo4Oif7G.getDirection(),false,true,false,false);
		break;
	case 1:
		local CQNMrzS9qaKwyL9 = [
		                     "character/swordman/effect/animation/atbullseye/attack2/attack2front_00.ani"
		                 ];
		foreach(path in CQNMrzS9qaKwyL9)
			CreatePooledObjectAni(CQcEYYAbXxo4Oif7G,path,1,CQcEYYAbXxo4Oif7G.getXPos(), CQcEYYAbXxo4Oif7G.getYPos(), CQcEYYAbXxo4Oif7G.getZPos(),CQcEYYAbXxo4Oif7G.getDirection(),false,true,false,false);

		local CQgH7tcCNKUYsb88x = [
		                     "character/swordman/effect/animation/atbullseye/attack2/attack2back_00.ani",
		                     "character/swordman/effect/animation/atbullseye/attack2/attack2bottom_00.ani"
		                 ];
		foreach(path in CQgH7tcCNKUYsb88x)
			CreatePooledObjectAni(CQcEYYAbXxo4Oif7G,path,2,CQcEYYAbXxo4Oif7G.getXPos(), CQcEYYAbXxo4Oif7G.getYPos(), CQcEYYAbXxo4Oif7G.getZPos(),CQcEYYAbXxo4Oif7G.getDirection(),false,true,false,false);
		break;
	}
}


function onProc_BullsEye(CQmcLTo6RH7Xo96)
{
	if(!CQmcLTo6RH7Xo96) return;
	local CQJRqevLWgaDWa5hD = CQmcLTo6RH7Xo96.getSkillSubState();
	switch(CQJRqevLWgaDWa5hD)
	{
	case 0:
		local CQk23A8w4ihpqv = sq_GetCurrentAnimation(CQmcLTo6RH7Xo96);
		local CQaKqMIknNDwvZ4T = CQmcLTo6RH7Xo96.sq_GetCurrentFrameIndex(CQk23A8w4ihpqv);
		if(CQaKqMIknNDwvZ4T < 6)
			OnProc_License(CQmcLTo6RH7Xo96);
		break;
	case 1:
		local CQk23A8w4ihpqv = sq_GetCurrentAnimation(CQmcLTo6RH7Xo96);
		local CQaKqMIknNDwvZ4T = CQmcLTo6RH7Xo96.sq_GetCurrentFrameIndex(CQk23A8w4ihpqv);
		if(CQaKqMIknNDwvZ4T > 12)
			OnProc_License(CQmcLTo6RH7Xo96);
		break;
	}
}

function onKeyFrameFlag_BullsEye(CQZvgOBUiVQjzpgkz, CQzbFVO2Vx27nd)
{
	if (!CQZvgOBUiVQjzpgkz) return false;
	switch(CQzbFVO2Vx27nd)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_BullsEye(CQOhbRQGQriBxKRz)
{
	if(!CQOhbRQGQriBxKRz) return;
	onProc_DeepduskLicense(CQOhbRQGQriBxKRz);
	local CQ84Nm3uGZdGjbfUsS = CQOhbRQGQriBxKRz.getSkillSubState();
	switch(CQ84Nm3uGZdGjbfUsS)
	{
	case 0:

		break;
	}
}