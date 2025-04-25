
function checkExecutableSkill_HolyMace(obj)
{
	if (!obj) return false;
	local isUse = obj.sq_IsUseSkill(253);

	if (isUse)
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(253, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_HolyMace(obj)
{
	if (!obj) return false;

	return true;

}

function onSetState_HolyMace(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	switch(substate)
	{
	case 0:
		obj.sq_StopMove();
//		obj.sq_PlaySound("DL_QUICKPUNTO");

		obj.sq_SetCurrentAnimation(251);
		
		local alspath = "effect/animation/holymace/change_jupiterholymace_effect.ani";
	//	local dodge = sq_CreateAnimation("",alspath);
	//	obj.sq_AddStateLayerAnimation(-1,obj.sq_CreateCNRDAnimation(alspath), 0, 0);
		break;
	case 1:
		obj.sq_SetCurrentAnimation(252);
		
		
		break;
	}
}

function onEnterFrame_HolyMace(obj, frameIndex)
{
	if(!obj) return;
	local SubState = obj.getSkillSubState();
	switch(SubState)
	{
	case 0:
		if(frameIndex == 5)
		{
			local ParAp = "character/new_priest/jupiter/ap_jupiter.nut";
			if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, ParAp))
				CNSquirrelAppendage.sq_RemoveAppendage(obj, ParAp );
				
			local Path = "appendage/character/ap_holymace.nut";
			local skillLevel = obj.sq_GetSkillLevel(253);
			local change_time = sq_GetLevelData(obj, 253, 0, skillLevel);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 253,false, Path, false);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), 253, skillLevel);
			appendage.sq_SetValidTime(change_time);
			appendage.setEnableIsBuff(true);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj, true);
			appendage.setBuffIconImage(120);
			obj.setShowEquipmentLayer(10,false);
		}
		break;
	}
}

function onEndCurrentAni_HolyMace(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	switch(substate)
	{
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(253, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function ChangQing_751675335_BodyHolyMace(obj, AniName)
{
	local alsarr = [
		"animation/jupiter/jupiterholymacebotnormal/" + AniName + ".ani",
		"animation/jupiter/jupiterholymacebotdodge/" + AniName + ".ani"
	];
	foreach(key ,alspath in alsarr)
	{
		local dodge = sq_CreateAnimation("",alspath);
		obj.sq_AddStateLayerAnimation(-1 - key,obj.sq_CreateCNRDAnimation(alspath), 0, 0);
	}
	
	local alsarr2 = [
		"animation/jupiter/jupiterholymacetopdodge/" + AniName + ".ani",
		"animation/jupiter/jupiterholymacetopnormal/" + AniName + ".ani"
	];
	foreach(key ,alspath in alsarr2)
	{
		local dodge = sq_CreateAnimation("",alspath);
		obj.sq_AddStateLayerAnimation(2790 + key,obj.sq_CreateCNRDAnimation(alspath), 0, 0);
	}
	
}
