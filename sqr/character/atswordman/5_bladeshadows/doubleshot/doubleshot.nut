
function checkExecutableSkill_DoubleShot(CQPdzydN4HPHfQmrY)
{
	if (!CQPdzydN4HPHfQmrY) return false;
	local CQ9MZGXSnglI6d = CQPdzydN4HPHfQmrY.sq_IsUseSkill(CHANGQING_BLADE_SKILL8);
	
	if (CQ9MZGXSnglI6d)
	{
		CQPdzydN4HPHfQmrY.sq_IntVectClear();
		CQPdzydN4HPHfQmrY.sq_IntVectPush(0);
		CQPdzydN4HPHfQmrY.sq_AddSetStatePacket(CHANGQING_BLADE_STATE8, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DoubleShot(CQvHw3wWCiKtRsUywv)
{
	if (!CQvHw3wWCiKtRsUywv) return false;
	
	return true;
	
}

function onSetState_DoubleShot(CQDa4lj9TNUn7gn, CQReQWMCofNq2PnoF, CQic4SSI8tWz8m, CQ1fE1rzQV6d3Bbw)
{
	if(!CQDa4lj9TNUn7gn) return;
	ChangqingQQ751675335Skill16(CQDa4lj9TNUn7gn, CQReQWMCofNq2PnoF, CQic4SSI8tWz8m, CQ1fE1rzQV6d3Bbw)
	
}

function onEndCurrentAni_DoubleShot(CQ8OWwgl34iLvuU)
{
	if(!CQ8OWwgl34iLvuU) return;
	local CQsxa3xshgDcIo = CQ8OWwgl34iLvuU.getSkillSubState();
	switch(CQsxa3xshgDcIo)
	{
	case 0:
		CQ8OWwgl34iLvuU.sq_IntVectClear();
		CQ8OWwgl34iLvuU.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQ8OWwgl34iLvuU.sq_IntVectClear();
		CQ8OWwgl34iLvuU.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_DoubleShot(CQjInPiQsZDPNOYEx, CQpWMBYk2lciXhcubS, CQ3tug73taXqHCx, CQqbMqKpZKQzCqepO)
{
	local CQKhysoUUj2dJN = SwordLicense_ATSwoedman(CQjInPiQsZDPNOYEx, CQpWMBYk2lciXhcubS, CQ3tug73taXqHCx, CQqbMqKpZKQzCqepO);
	
	return CQKhysoUUj2dJN;
}

function onAttack_DoubleShot(CQT4dCR2Spu2SsQs, CQsZAfBF71dLKgQDXD, CQ6PcnOupgOPDPq, CQeyCEQRBuTiImmHj)
{
	if(!CQT4dCR2Spu2SsQs || CQeyCEQRBuTiImmHj)	return false;
	CQT4dCR2Spu2SsQs.getVar("DeepduskLicense").setBool(0,true);
	local CQXneLhBzNHqFV = CQT4dCR2Spu2SsQs.getSkillSubState();
	
	switch(CQXneLhBzNHqFV)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_DoubleShot(CQxjX8NAHfbzOQUL, CQP5evtYftBYpMnGmB)
{
	if(!CQxjX8NAHfbzOQUL || !CQxjX8NAHfbzOQUL.isMyControlObject()) return;
	local CQBX6iz8ICrgPIn = CQxjX8NAHfbzOQUL.getSkillSubState();
	switch(CQBX6iz8ICrgPIn)
	{
	case 0:
		if(CQP5evtYftBYpMnGmB == 2)
			CQxjX8NAHfbzOQUL.resetHitObjectList();
		break;
	case 4:

		break;
	}
}

function onEndState_DoubleShot(CQvAaJ4X3x54Eh, CQDik6GrbrpCyAbF)
{
	if(!CQvAaJ4X3x54Eh) return;
	local CQRmJxyzXZgDaqvXZy = CQvAaJ4X3x54Eh.getSkillSubState();
	switch(CQRmJxyzXZgDaqvXZy)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onChangeSkillEffect_DoubleShot(CQiTmyc5kTSpuNW, CQ172FXsiaxeeeWBg, CQUVU3aQ8KLYUR)
{
	if(!CQiTmyc5kTSpuNW) return;
	local CQHD1lU4qjmgrOe1 = CQUVU3aQ8KLYUR.readDword();
	
}

function onProc_DoubleShot(CQjFirfJFo15mjeViS)
{
	if(!CQjFirfJFo15mjeViS) return;
	local CQEpRSCpx1yCYVw = CQjFirfJFo15mjeViS.getSkillSubState();
	switch(CQEpRSCpx1yCYVw)
	{
	case 0:

		break;
	}
}

function onKeyFrameFlag_DoubleShot(CQ4QD1shag8DqQQMP, CQQzYjk1RusEvM)
{
	if (!CQ4QD1shag8DqQQMP) return false;
	switch(CQQzYjk1RusEvM)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_DoubleShot(CQL9Vw1FWNkelIq2)
{
	if(!CQL9Vw1FWNkelIq2) return;
	onProc_DeepduskLicense(CQL9Vw1FWNkelIq2);
	local CQlNWPSnLYGYbhmB7S = CQL9Vw1FWNkelIq2.getSkillSubState();
	switch(CQlNWPSnLYGYbhmB7S)
	{
	case 0:

		break;
	}
}