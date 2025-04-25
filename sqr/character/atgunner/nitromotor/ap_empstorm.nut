
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_empstorm")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_empstorm")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_empstorm")
}



function sq_AddEffect(appendage)
{

}



function proc_appendage_empstorm(appendage)
{
	if(!appendage || !appendage.isValid())
	{
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}

	if(parentObj.isMyControlObject() && parentObj.getState() != STATE_DIE && !parentObj.isDead())
	{
		sq_IntVectorClear(sq_GetGlobalIntVector());
		sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
		sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
		sq_AddSetStatePacketActiveObject(parentObj, STATE_HOLD, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
	}
}



function onStart_appendage_empstorm(appendage)
{
	if(!appendage) return;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}

	if(parentObj.getState() == STATE_HOLD)
	{
		if (parentObj.getState() == STATE_HOLD && !sq_IsInCategory(parentObj, CATEGORY_ETC_FIXTURE))
		{
			parentObj.setCurrentDirection(sq_GetOppositeDirection(sourceObj.getDirection()));
		}
	}
	appendage.sq_AddEffectFront("passiveobject/unclebang_shared_passive_object/atgunner/animation/empstorm/lightning_control.ani");
}



function onEnd_appendage_empstorm(appendage)
{
	if(!appendage) 
	{
		return;
	}
		
	local parentObj = appendage.getParent();
				
	if(!parentObj) 
	{
		appendage.setValid(false);
		return;
	}
		
	if (parentObj.getState() == STATE_HOLD)
	{
		appendage.setValid(false);
		appendage.sq_DeleteEffectFront();
		parentObj.sendStateOnlyPacket(STATE_STAND);
	}

}

