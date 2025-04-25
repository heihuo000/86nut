

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_nitromotor")
	appendage.sq_AddFunctionName("proc", "proc_appendage_nitromotor")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_nitromotor")
}



function onStart_appendage_nitromotor(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
}



function proc_appendage_nitromotor(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	local parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);


	local soften_number = sq_GetIntData(parentObj, 17, 0);
	soften_number = soften_number;


	local cooltime = sq_GetIntData(parentObj, 17, 1);
	cooltime = cooltime;


	local loadSlot = parentObj.sq_GetSkillLoad(17);
	if(!loadSlot)
	{
		parentObj.sq_AddSkillLoad(17, 80, soften_number, cooltime);
		loadSlot = parentObj.sq_GetSkillLoad(17);
	}
	else
	{
		local remain_number = loadSlot.getRemainLoadNumber();
		if(!loadSlot.isCooling())
		{
			if(remain_number < soften_number)
			{
				loadSlot.increaseLoadCount(1);
				if(loadSlot.getRemainLoadNumber() < soften_number)
					loadSlot.setStartCool();
			}
		}
	}
}



function onEnd_appendage_nitromotor(appendage)
{
	if(!appendage) return;
	local parentObj = appendage.getParent();
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	local parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local loadSlot = parentObj.sq_GetSkillLoad(17);
	if(loadSlot)
		parentObj.sq_RemoveSkillLoad(17);
}

