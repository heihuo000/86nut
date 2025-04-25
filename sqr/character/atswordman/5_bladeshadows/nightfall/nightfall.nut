
function checkExecutableSkill_NightFall(CQmmBqmwGqOJDXcwv)
{
	if (!CQmmBqmwGqOJDXcwv) return false;
	local CQJTtIRkdJlIIm = CQmmBqmwGqOJDXcwv.sq_IsUseSkill(CHANGQING_BLADE_SKILL11);
	
	if (CQJTtIRkdJlIIm)
	{
		CQmmBqmwGqOJDXcwv.sq_IntVectClear();
		if(CQmmBqmwGqOJDXcwv.getState() == 6)
			CQmmBqmwGqOJDXcwv.sq_IntVectPush(2);
		else
			CQmmBqmwGqOJDXcwv.sq_IntVectPush(0);
		CQmmBqmwGqOJDXcwv.sq_AddSetStatePacket(CHANGQING_BLADE_STATE11, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_NightFall(CQklVCVKshJtFBxW)
{
	if (!CQklVCVKshJtFBxW) return false;
	
	return true;
	
}

function onSetState_NightFall(CQa8WfIE2UnUOazQuy, CQZB8UTjvFBTpRluH, CQzFOE22ZRr8PI, CQOplZDGjy6MEnTp)
{
	if(!CQa8WfIE2UnUOazQuy) return;
	ChangqingQQ751675335Skill21(CQa8WfIE2UnUOazQuy, CQZB8UTjvFBTpRluH, CQzFOE22ZRr8PI, CQOplZDGjy6MEnTp)
}

function onEndCurrentAni_NightFall(CQ8wL9WUuSEJyCky2Y)
{
	if(!CQ8wL9WUuSEJyCky2Y) return;
	local CQWxQvzR79gIwqk = CQ8wL9WUuSEJyCky2Y.getSkillSubState();
	switch(CQWxQvzR79gIwqk)
	{
	case 0:
		CQ8wL9WUuSEJyCky2Y.sq_IntVectClear();
		CQ8wL9WUuSEJyCky2Y.sq_IntVectPush(1);
		CQ8wL9WUuSEJyCky2Y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE11, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQ8wL9WUuSEJyCky2Y.sq_IntVectClear();
		CQ8wL9WUuSEJyCky2Y.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQ8wL9WUuSEJyCky2Y.sq_IntVectClear();
		CQ8wL9WUuSEJyCky2Y.sq_IntVectPush(3);
		CQ8wL9WUuSEJyCky2Y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE11, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQ8wL9WUuSEJyCky2Y.sq_IntVectClear();
		CQ8wL9WUuSEJyCky2Y.sq_IntVectPush(1);
		CQ8wL9WUuSEJyCky2Y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE11, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_NightFall(CQVd4o4NqWSyudUoY, CQYMQJpuFXcUes, CQSH36bYx7ZTUgna, CQfapc99Ewq9rPbiPv)
{
	local CQuehyZAfL1Mmmb = SwordLicense_ATSwoedman(CQVd4o4NqWSyudUoY, CQYMQJpuFXcUes, CQSH36bYx7ZTUgna, CQfapc99Ewq9rPbiPv);
	
	return CQuehyZAfL1Mmmb;
}

function onAttack_NightFall(CQMcGGErrky2YVvEL, CQnfn4nzKq9ZqQ, CQG1NlNXbHIAvfYI, CQhJbWPIPhkilIcGkt)
{
	if(!CQMcGGErrky2YVvEL || CQhJbWPIPhkilIcGkt)	return false;
	CQMcGGErrky2YVvEL.getVar("DeepduskLicense").setBool(0,true);
	local CQpsNDeQ5iGQbhx = CQMcGGErrky2YVvEL.getSkillSubState();
	
	switch(CQpsNDeQ5iGQbhx)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_NightFall(CQ3ry1k5iFbxzCxJb, CQqWdk1KVfVfhq)
{
	if(!CQ3ry1k5iFbxzCxJb) return;
	local CQKbPaSqQye3xNlO = CQ3ry1k5iFbxzCxJb.getSkillSubState();
	switch(CQKbPaSqQye3xNlO)
	{
	case 0:
		if(CQqWdk1KVfVfhq == 2)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_SendChangeSkillEffectPacket(CQ3ry1k5iFbxzCxJb, CHANGQING_BLADE_SKILL11);
		} else if(CQqWdk1KVfVfhq == 8)
		{
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(1);
			sq_SendChangeSkillEffectPacket(CQ3ry1k5iFbxzCxJb, CHANGQING_BLADE_SKILL11);
		}
		break;
	case 4:

		break;
	}
}

function onEndState_NightFall(CQkhxXrjGS4ZkaQHDy, CQw4Xd6299pAfR)
{
	if(!CQkhxXrjGS4ZkaQHDy) return;
	if(CQw4Xd6299pAfR != CHANGQING_BLADE_STATE11)
		CQkhxXrjGS4ZkaQHDy.setShowEquipmentLayer(10,true);
	local CQZZebJoarRo6OmL6v = CQkhxXrjGS4ZkaQHDy.getSkillSubState();
	switch(CQZZebJoarRo6OmL6v)
	{
	case 3:

		break;
	case 4:

		break;
	}
}
	
	
	
function onChangeSkillEffect_NightFall(CQ2kgsPijHsciYzNM6, CQy2rmJMjFKDCv5v, CQ8n577DLwKf2Q)
{
	if(!CQ2kgsPijHsciYzNM6 || CQy2rmJMjFKDCv5v != CHANGQING_BLADE_SKILL11) return;
	local CQWjaYLyhLm38MnN = CQ8n577DLwKf2Q.readDword();
	switch(CQWjaYLyhLm38MnN)
	{
	case 0:
		CQ2kgsPijHsciYzNM6.sq_SetStaticMoveInfo(0, -500, -500, true, -300, true);
		CQ2kgsPijHsciYzNM6.sq_SetMoveDirection(CQ2kgsPijHsciYzNM6.getDirection(), ENUM_DIRECTION_NEUTRAL);
		break;
	case 1:
		CQ2kgsPijHsciYzNM6.sq_SetStaticMoveInfo(0, 0, 0, true, 0, true);
		break;
	}
}


function onProc_NightFall(CQV5kuqYykMZ3IbXot)
{
	if(!CQV5kuqYykMZ3IbXot) return;
	local CQYXHHgB6qtCBhb = CQV5kuqYykMZ3IbXot.getSkillSubState();
	switch(CQYXHHgB6qtCBhb)
	{
	case 0:

		break;
	}
}

function onKeyFrameFlag_NightFall(CQSAU5BPmH7F4PvBA, CQfu1zOrBhsENm)
{
	if (!CQSAU5BPmH7F4PvBA) return false;
	switch(CQfu1zOrBhsENm)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_NightFall(CQuUUtQ8zijeZBY1)
{
	if(!CQuUUtQ8zijeZBY1) return;
	onProc_DeepduskLicense(CQuUUtQ8zijeZBY1);
	local CQMk1FhZEFFvMwr89y = CQuUUtQ8zijeZBY1.getSkillSubState();
	switch(CQMk1FhZEFFvMwr89y)
	{
	case 0:

		break;
	}
}