
function checkExecutableSkill_BlackOut(CQpROQQL9Ip38d79D)
{
	if (!CQpROQQL9Ip38d79D) return false;
	local CQ32lIhawZRX3a = CQpROQQL9Ip38d79D.sq_IsUseSkill(CHANGQING_BLADE_SKILL1);

	if (CQ32lIhawZRX3a)
	{
		ChangqingQQ751675335Skill1(CQpROQQL9Ip38d79D);
		return true;
	}
	return false;
}

function checkCommandEnable_BlackOut(CQqKLVFm1TAS9v5f)
{
	if (!CQqKLVFm1TAS9v5f) return false;
	
	return true;
	
}

function onSetState_BlackOut(CQsIQRt3Yazo4Zk7MM, CQ6W4UzHI3LaNUjhj, CQevQa5ihjmr58, CQXb3ZHgtoMvMEh6)
{
	if(!CQsIQRt3Yazo4Zk7MM) return;
	ChangqingQQ751675335Skill2(CQsIQRt3Yazo4Zk7MM, CQ6W4UzHI3LaNUjhj, CQevQa5ihjmr58, CQXb3ZHgtoMvMEh6)
}

function onEndCurrentAni_BlackOut(CQxhp9uMZ1tjXfggmi)
{
	if(!CQxhp9uMZ1tjXfggmi) return;
	local CQP4hbduUb861LR = CQxhp9uMZ1tjXfggmi.getSkillSubState();
	switch(CQP4hbduUb861LR)
	{
	case 0:
		local CQ9ZGoXvSusVCbRkS = CQxhp9uMZ1tjXfggmi.getVar("BlackOut").get_vector(0);
		if(CQ9ZGoXvSusVCbRkS == -1)
		{
			if(CQxhp9uMZ1tjXfggmi.getZPos() > 5)
			{
				CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
				CQxhp9uMZ1tjXfggmi.sq_IntVectPush(1);
				CQxhp9uMZ1tjXfggmi.sq_IntVectPush(0);
				CQxhp9uMZ1tjXfggmi.sq_IntVectPush(0);
				CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(6, STATE_PRIORITY_IGNORE_FORCE, true);
			}
			else
				CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
		}
		else
		{
			local CQtAbKadlBjGJX = sq_GetObjectByObjectId(CQxhp9uMZ1tjXfggmi, CQ9ZGoXvSusVCbRkS);
			if(CQtAbKadlBjGJX)
			{
				CQtAbKadlBjGJX = sq_GetCNRDObjectToActiveObject(CQtAbKadlBjGJX);
				if(sq_IsHoldable(CQxhp9uMZ1tjXfggmi,CQtAbKadlBjGJX) && sq_IsGrabable(CQxhp9uMZ1tjXfggmi,CQtAbKadlBjGJX) && !sq_IsFixture(CQtAbKadlBjGJX))
				{
					CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
					CQxhp9uMZ1tjXfggmi.sq_IntVectPush(2);
					CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(CHANGQING_BLADE_STATE1, STATE_PRIORITY_IGNORE_FORCE, true);
				}
				else
				{
					CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
					CQxhp9uMZ1tjXfggmi.sq_IntVectPush(4);
					CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(CHANGQING_BLADE_STATE1, STATE_PRIORITY_IGNORE_FORCE, true);
				}
			}
		}
		break;
	case 1:
		CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
		CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
		CQxhp9uMZ1tjXfggmi.sq_IntVectPush(3);
		CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(CHANGQING_BLADE_STATE1, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 3:
		CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
		CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 4:
		CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
		CQxhp9uMZ1tjXfggmi.sq_IntVectPush(5);
		CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(CHANGQING_BLADE_STATE1, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 5:
		CQxhp9uMZ1tjXfggmi.sq_IntVectClear();
		CQxhp9uMZ1tjXfggmi.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_BlackOut(CQBuN7USpYFaVmfz, CQvUycfWNPYrK9dj9D, CQDkNuCxeCCbDa9, CQR6yHeCJzwjIR9lT)
{
	local CQiC94TIRI36FZ = SwordLicense_ATSwoedman(CQBuN7USpYFaVmfz, CQvUycfWNPYrK9dj9D, CQDkNuCxeCCbDa9, CQR6yHeCJzwjIR9lT);
	
	return CQiC94TIRI36FZ;
}

function onAttack_BlackOut(CQ1SPz2wO5iBOUlc, CQUixWD64TfGpVlqaF, CQHmXDWKyEPaApT, CQjTe2lEX3lWadkzF)
{
	if(!CQ1SPz2wO5iBOUlc || CQjTe2lEX3lWadkzF)	return false;
	local CQE75kKkkUJyus = CQ1SPz2wO5iBOUlc.getSkillSubState();
	
	switch(CQE75kKkkUJyus)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_BlackOut(CQ4Vweo2DoUUsbjY, CQQD5Avp8MNTiXhQRN)
{
	if(!CQ4Vweo2DoUUsbjY || !CQ4Vweo2DoUUsbjY.isMyControlObject()) return;
	local CQIFaN8UQbW9rmhnk = CQ4Vweo2DoUUsbjY.getSkillSubState();
	switch(CQIFaN8UQbW9rmhnk)
	{
	case 3:
		local CQ7pjhLgMu6Mo9 = CQ4Vweo2DoUUsbjY.getVar("BlackOut").get_vector(0);
		switch(CQQD5Avp8MNTiXhQRN)
		{
		case 0:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(CQ7pjhLgMu6Mo9);
			sq_BinaryWriteDword(-10);
			sq_BinaryWriteDword(1);
			sq_BinaryWriteDword(112);
			sq_SendChangeSkillEffectPacket(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1);			
			break;
		case 1:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(CQ7pjhLgMu6Mo9);
			sq_BinaryWriteDword(2);
			sq_BinaryWriteDword(1);
			sq_BinaryWriteDword(103);
			sq_SendChangeSkillEffectPacket(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1);			
			break;
		case 2:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(0);
			sq_BinaryWriteDword(CQ7pjhLgMu6Mo9);
			sq_BinaryWriteDword(61);
			sq_BinaryWriteDword(1);
			sq_BinaryWriteDword(69);
			sq_SendChangeSkillEffectPacket(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1);		
			break;
		case 3:
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(1);
			sq_BinaryWriteDword(CQ7pjhLgMu6Mo9);
			sq_BinaryWriteDword(CQ4Vweo2DoUUsbjY.getVar("BlackOut").get_vector(1));
			sq_SendChangeSkillEffectPacket(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1);	
			
			CQ4Vweo2DoUUsbjY.sq_StartWrite();
			CQ4Vweo2DoUUsbjY.sq_WriteDword(229);
			CQ4Vweo2DoUUsbjY.sq_WriteDword(0);
			CQ4Vweo2DoUUsbjY.sq_WriteDword(CQ4Vweo2DoUUsbjY.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL1, -1, 1, -1,getATSwordmanBonus(CQ4Vweo2DoUUsbjY,1.0,CHANGQING_BLADE_SKILL1)));
			CQ4Vweo2DoUUsbjY.sq_WriteDword(CQ4Vweo2DoUUsbjY.getVar("BlackOut").get_vector(0));
			CQ4Vweo2DoUUsbjY.sq_WriteDword(sq_GetIntData(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1, 18));
			CQ4Vweo2DoUUsbjY.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 1, 0);
			break;
		}
		break;
	case 5:
		if(CQQD5Avp8MNTiXhQRN == 2)
		{
			CQ4Vweo2DoUUsbjY.sq_StartWrite();
			CQ4Vweo2DoUUsbjY.sq_WriteDword(229);
			CQ4Vweo2DoUUsbjY.sq_WriteDword(0);
			CQ4Vweo2DoUUsbjY.sq_WriteDword(CQ4Vweo2DoUUsbjY.sq_GetPowerWithPassive(CHANGQING_BLADE_SKILL1, -1, 3, -1,getATSwordmanBonus(CQ4Vweo2DoUUsbjY,1.0,CHANGQING_BLADE_SKILL1)));
			CQ4Vweo2DoUUsbjY.sq_WriteDword(CQ4Vweo2DoUUsbjY.getVar("BlackOut").get_vector(0));
			CQ4Vweo2DoUUsbjY.sq_WriteDword(sq_GetIntData(CQ4Vweo2DoUUsbjY, CHANGQING_BLADE_SKILL1, 18));
			CQ4Vweo2DoUUsbjY.sq_SendCreatePassiveObjectPacket(24387, 0, 0, 1, 0);
		}
		break;
	}
}

function onEndState_BlackOut(CQrwHQEFcBEJWaRq, CQXxUIhusYhOqfRypu)
{
	if(!CQrwHQEFcBEJWaRq) return;
	if(CQXxUIhusYhOqfRypu != CHANGQING_BLADE_STATE1)
		CQrwHQEFcBEJWaRq.setShowEquipmentLayer(10,true);
}

function onChangeSkillEffect_BlackOut(CQxd1VNvgPDyvI, CQPMifPBtCcUQnYo, CQ9HMUwA4zZlbCct2F)
{
	if(!CQxd1VNvgPDyvI || CQPMifPBtCcUQnYo != CHANGQING_BLADE_SKILL1) return;
	local CQtauajWnIQ9zqx = CQ9HMUwA4zZlbCct2F.readDword();
	local CQBefZM8A52Mndxid = CQ9HMUwA4zZlbCct2F.readDword();
	local CQvcS9yXTTuKxs = sq_GetObjectByObjectId(CQxd1VNvgPDyvI, CQBefZM8A52Mndxid);
	
	if(CQtauajWnIQ9zqx == 0 && CQvcS9yXTTuKxs)
	{
		local CQDfYbxIoE9OjglE = sq_GetDistancePos(CQxd1VNvgPDyvI.getXPos(), CQxd1VNvgPDyvI.getDirection(), CQ9HMUwA4zZlbCct2F.readDword());
		local CQXO4JgefBpmA1dP = CQxd1VNvgPDyvI.getYPos() + CQ9HMUwA4zZlbCct2F.readDword();
		local CQqzvUx5vCM55J = CQ9HMUwA4zZlbCct2F.readDword();
		sq_SetCurrentPos(CQvcS9yXTTuKxs, CQDfYbxIoE9OjglE, CQXO4JgefBpmA1dP, CQqzvUx5vCM55J);
	}
	else if(CQtauajWnIQ9zqx == 1 && CQvcS9yXTTuKxs)
	{
		local CQDfYbxIoE9OjglE = CQ9HMUwA4zZlbCct2F.readDword();
		CQvcS9yXTTuKxs = sq_GetCNRDObjectToActiveObject(CQvcS9yXTTuKxs);
			
		local CQUrrcYQYMbxTE = "character/atswordman/5_bladeshadows/blackout/ap_blackout.nut";
		local CQHY7uCjIbVRRfja = CNSquirrelAppendage.sq_AppendAppendage(CQvcS9yXTTuKxs, CQxd1VNvgPDyvI, -1, false, CQUrrcYQYMbxTE, true);
		if(CQHY7uCjIbVRRfja && sq_IsHoldable(CQxd1VNvgPDyvI,CQvcS9yXTTuKxs) && sq_IsGrabable(CQxd1VNvgPDyvI,CQvcS9yXTTuKxs) && !sq_IsFixture(CQvcS9yXTTuKxs))
		{
			sq_HoldAndDelayDie(CQvcS9yXTTuKxs, CQxd1VNvgPDyvI, true, true, true, 0, 120, ENUM_DIRECTION_NEUTRAL, CQHY7uCjIbVRRfja);
			sq_MoveToAppendageForce(CQvcS9yXTTuKxs, CQxd1VNvgPDyvI, CQxd1VNvgPDyvI, CQDfYbxIoE9OjglE, 0, 0, 100, true, CQHY7uCjIbVRRfja,true);
			local CQjgsGsJ3Sr37IhD5M = CQHY7uCjIbVRRfja.getAppendageInfo();
			CQjgsGsJ3Sr37IhD5M.setValidTime(100);
		}
	}
}

function onProc_BlackOut(CQE3T4mpyB5Zghn)
{
	if(!CQE3T4mpyB5Zghn) return;
	local CQ44KzRnZcpS8CbHb = CQE3T4mpyB5Zghn.getSkillSubState();
	local CQlZqWV1jPRo3q = sq_GetCurrentAnimation(CQE3T4mpyB5Zghn);
	local CQIP2DIFS7SQNBvLrD = sq_GetDelaySum(CQlZqWV1jPRo3q);
	local CQ7yo2Ty7zxc5aY = CQE3T4mpyB5Zghn.sq_GetStateTimer();
	
	switch(CQ44KzRnZcpS8CbHb)
	{
	case 0:
		local CQrn2k3fqsLRMRcCH = CQE3T4mpyB5Zghn.getVar("BlackOut").get_vector(0);
		local CQCjoeFBN5m3XO = sq_GetObjectByObjectId(CQE3T4mpyB5Zghn, CQrn2k3fqsLRMRcCH);
		if(CQCjoeFBN5m3XO)
		{
			CQCjoeFBN5m3XO = sq_GetCNRDObjectToActiveObject(CQCjoeFBN5m3XO);
			local CQc5gPtAxTMZ1UxF = sq_GetUniformVelocity(CQE3T4mpyB5Zghn.getXPos(), CQCjoeFBN5m3XO.getXPos(), CQ7yo2Ty7zxc5aY, CQIP2DIFS7SQNBvLrD/2);
			local CQAXDNzcJEySCVxX3D = sq_GetUniformVelocity(CQE3T4mpyB5Zghn.getYPos(), CQCjoeFBN5m3XO.getYPos(), CQ7yo2Ty7zxc5aY, CQIP2DIFS7SQNBvLrD/2);
			local CQdAvh48R28oJQz = sq_GetUniformVelocity(CQE3T4mpyB5Zghn.getZPos(), CQCjoeFBN5m3XO.getZPos()+CQCjoeFBN5m3XO.getObjectHeight()/3*2, CQ7yo2Ty7zxc5aY, CQIP2DIFS7SQNBvLrD/2);
			if(CQE3T4mpyB5Zghn.isMovablePos(CQc5gPtAxTMZ1UxF, CQAXDNzcJEySCVxX3D))
			{
				sq_setCurrentAxisPos(CQE3T4mpyB5Zghn, 0, CQc5gPtAxTMZ1UxF);
				sq_setCurrentAxisPos(CQE3T4mpyB5Zghn, 1, CQAXDNzcJEySCVxX3D);
				sq_setCurrentAxisPos(CQE3T4mpyB5Zghn, 2, CQdAvh48R28oJQz);
			}
		}
		break;
	case 2:
		if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
			CQE3T4mpyB5Zghn.getVar("BlackOut").set_vector(1,sq_GetIntData(CQE3T4mpyB5Zghn, CHANGQING_BLADE_SKILL1, 8));
		break;
	case 3:
		local CQdAvh48R28oJQz = sq_GetUniformVelocity(CQE3T4mpyB5Zghn.getZPos(), 0, CQ7yo2Ty7zxc5aY, CQIP2DIFS7SQNBvLrD/3);
		sq_setCurrentAxisPos(CQE3T4mpyB5Zghn, 2, CQdAvh48R28oJQz);
		break;
	case 5:
		local CQdAvh48R28oJQz = sq_GetUniformVelocity(CQE3T4mpyB5Zghn.getZPos(), 0, CQ7yo2Ty7zxc5aY, CQIP2DIFS7SQNBvLrD/3);
		sq_setCurrentAxisPos(CQE3T4mpyB5Zghn, 2, CQdAvh48R28oJQz);
		break;
	}
}

function onKeyFrameFlag_BlackOut(CQbkBV9lbMGvDgq1, CQF7WfZZPvvhLXmVAN)
{
	if (!CQbkBV9lbMGvDgq1) return false;
	switch(CQF7WfZZPvvhLXmVAN)
	{
	case 0:

		break;
	}
	return true;
}
