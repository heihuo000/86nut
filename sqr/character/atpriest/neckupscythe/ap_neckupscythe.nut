
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_neckupscythe")
}

function sq_AddEffect(appendage)
{

}


function proc_appendage_neckupscythe(appendage)
{
	if(!appendage) {
		return;
	}

	local DamageMonster = appendage.getParent();
	local ChrMater = appendage.getSource();
	local ChrState = ChrMater.getState();
	local SqrChr = sq_GetCNRDObjectToSQRCharacter(ChrMater);
	local ChrSubState = SqrChr.getSkillSubState();
	local pAni = SqrChr.getCurrentAnimation();
	local frmIndex = sq_GetAnimationFrameIndex(pAni);

	local Name1_Obj = SqrChr.getVar("damaNeckUpScythe").get_obj_vector(0);
	
	if(ChrState == STATE_NECK_UP_SCYTHE)
	{
		if (DamageMonster.isMyControlObject() && DamageMonster.getState() != STATE_DIE && !DamageMonster.isDead())
			{
				sq_IntVectorClear(sq_GetGlobalIntVector());
				sq_IntVectorPush(sq_GetGlobalIntVector(),0);
				sq_IntVectorPush(sq_GetGlobalIntVector(),0);
				sq_AddSetStatePacketActiveObject
				(DamageMonster,STATE_HOLD, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);//啮踝萧??啮踝萧??
			}
	}
	if(ChrSubState == 2 && ChrState == STATE_NECK_UP_SCYTHE)
	{	
		if(frmIndex == 5)
		{
			local timeg = -48;
			if(SqrChr.getDirection() == 0)
			timeg = 38;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);

			local Srcx = sq_GetDistancePos(SqrChr.getXPos(), SqrChr.getDirection(), -145);
			sq_SetCurrentPos(Name1_Obj, Srcx, SqrChr.getYPos() - 1, SqrChr.getZPos() 0);
		}
		if(frmIndex == 6)
		{
			local timeg = 0;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);
			sq_SetCurrentPos(Name1_Obj, Name1_Obj.getXPos(), Name1_Obj.getYPos(), 0);
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(),SqrChr.getDirection());
			sq_IntVectorPush(sq_GetGlobalIntVector(),2);
			sq_IntVectorPush(sq_GetGlobalIntVector(),DOWN_PARAM_TYPE_FORCE);
			sq_IntVectorPush(sq_GetGlobalIntVector(),0);
			sq_IntVectorPush(sq_GetGlobalIntVector(),10);
			sq_AddSetStatePacketActiveObject(DamageMonster,STATE_DOWN, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE)

			SqrChr.getVar("damaNeckUpScythe").clear_obj_vector();
			appendage.setValid(false);
			return;
		}
	}
	if(ChrSubState == 3 && ChrState == STATE_NECK_UP_SCYTHE)
	{	
		if(frmIndex == 1)
		{
			local timeg = -38;
			if(SqrChr.getDirection() == 0)
			timeg = 38;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);

			local Srcx = sq_GetDistancePos(SqrChr.getXPos(), SqrChr.getDirection(), 150);
			sq_SetCurrentPos(Name1_Obj, Srcx, SqrChr.getYPos() - 1, SqrChr.getZPos() + 128);
		}
		if(frmIndex == 4)
		{
			local timeg = 0;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);
			local Srcx = sq_GetDistancePos(SqrChr.getXPos(), SqrChr.getDirection(), 150);
			sq_SetCurrentPos(Name1_Obj, Srcx, SqrChr.getYPos() - 1, SqrChr.getZPos() 0);
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(),sq_GetOppositeDirection(ChrMater.getDirection()));
			sq_IntVectorPush(sq_GetGlobalIntVector(),2);
			sq_IntVectorPush(sq_GetGlobalIntVector(),DOWN_PARAM_TYPE_FORCE);
			sq_IntVectorPush(sq_GetGlobalIntVector(),0);
			sq_IntVectorPush(sq_GetGlobalIntVector(),10);
			sq_AddSetStatePacketActiveObject(DamageMonster,STATE_DOWN, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE)

			SqrChr.getVar("damaNeckUpScythe").clear_obj_vector();
			appendage.setValid(false);
			return;
		}
	}
	if(ChrSubState == 5 && ChrState == STATE_NECK_UP_SCYTHE)
	{	
		if(frmIndex == 3)
		{
			local timeg = -38;
			if(SqrChr.getDirection() == 0)
			timeg = 38;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);

			local Srcx = sq_GetDistancePos(SqrChr.getXPos(), SqrChr.getDirection(), 150);
			sq_SetCurrentPos(Name1_Obj, Srcx, SqrChr.getYPos() - 1, SqrChr.getZPos() + 128);
		}
		if(frmIndex == 4)
		{
			local timeg = 0;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);
			local Srcx = sq_GetDistancePos(SqrChr.getXPos(), SqrChr.getDirection(), 150);
			sq_SetCurrentPos(Name1_Obj, Srcx, SqrChr.getYPos() - 1, SqrChr.getZPos() 0);
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(),sq_GetOppositeDirection(ChrMater.getDirection()));
			sq_IntVectorPush(sq_GetGlobalIntVector(),2);
			sq_IntVectorPush(sq_GetGlobalIntVector(),DOWN_PARAM_TYPE_FORCE);
			sq_IntVectorPush(sq_GetGlobalIntVector(),0);
			sq_IntVectorPush(sq_GetGlobalIntVector(),10);
			sq_AddSetStatePacketActiveObject(DamageMonster,STATE_DOWN, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE)

			SqrChr.getVar("damaNeckUpScythe").clear_obj_vector();
			appendage.setValid(false);
			return;
		}
	}
		else if(ChrState != STATE_NECK_UP_SCYTHE)
		{
			local timeg = 0;
			local rotate1 = timeg.tointeger() * 0.017453;
			Name1_Obj.setCustomRotate(true,rotate1);
			sq_SetCurrentPos(Name1_Obj, Name1_Obj.getXPos(), Name1_Obj.getYPos(), 0);
			sq_IntVectorClear(sq_GetGlobalIntVector());
			sq_IntVectorPush(sq_GetGlobalIntVector(),sq_GetOppositeDirection(ChrMater.getDirection()));
			sq_IntVectorPush(sq_GetGlobalIntVector(),2);
			sq_IntVectorPush(sq_GetGlobalIntVector(),DOWN_PARAM_TYPE_FORCE);
			sq_IntVectorPush(sq_GetGlobalIntVector(),0);
			sq_IntVectorPush(sq_GetGlobalIntVector(),10);
			sq_AddSetStatePacketActiveObject(DamageMonster,STATE_DOWN, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE)

			SqrChr.getVar("damaNeckUpScythe").clear_obj_vector();
			appendage.setValid(false);
			return;
		}
}



