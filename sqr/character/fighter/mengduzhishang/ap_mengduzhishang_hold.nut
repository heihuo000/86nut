function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mengduzhishang_hold")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_mengduzhishang_hold")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mengduzhishang_hold")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_mengduzhishang_hold(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local activeObj = sq_GetCNRDObjectToActiveObject(obj);
	local time = appendage.getVar("skillData").get_vector(0);
	local currentT = appendage.getTimer().Get();
	if(currentT <= time)
	{
		sq_IntVectorClear(sq_GetGlobalIntVector());
		sq_IntVectorPush(sq_GetGlobalIntVector(), Z_ACCEL_TYPE_CONST);
		sq_AddSetStatePacketActiveObject(activeObj, STATE_HOLD, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
	}
	else if(currentT > time && currentT <= time+100)
	{
		sq_AddSetStatePacketActiveObject(activeObj, STATE_STAND, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
	}
}

function onStart_appendage_mengduzhishang_hold(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_mengduzhishang_hold(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
