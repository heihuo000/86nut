
function preloadMonster_AllGrowJob(obj)
{
	local monsterId = obj.getCollisionObjectIndex(obj);
	local aniList = MONSTER_CUSTOM_ANI_CONFIG_INFO.rawget(monsterId);
	if(!aniList) return;
	
	foreach(aniFilename in aniList)
		preloadByAniName(obj,aniFilename);
}

function preloadAwakeCutin_AllGrowJob(obj)
{
	local aniName;
	if(IS_MANAY_SELECTED_CUTSCENE == 0)
	{
		aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(CURRENT_CUTSCENE_TYPE)[0];
		preloadByAniMapName(obj,aniName);
	}else{
		foreach(type in SELECTED_CUTSCENE_TYPE)
		{
			aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(type)[0];
			preloadByAniMapName(obj,aniName);
		}
	}
}

function preloadSkill_AllGrowJob(obj)
{
	local info = SKILL_CUTSCENE_ANI_CONFIG_INFO.rawget(sq_getJob(obj));
	if(!info) return;
	
	foreach(skillIndex,aniList in info)
	{
		local skillLevel = sq_GetSkillLevel(obj, skillIndex);
		if(skillLevel && skillLevel > 0)
		{
			foreach(aniFilename in aniList)
				preloadByAniName(obj,aniFilename);
		}
	}
}

function preloadCommon_AllGrowJob(obj)
{
	preloadByAni(obj, createMaxNumberAni());
	for(local i = 0; i < 10; i++)
	{
		preloadByAni(obj, createCriNumberAni(i));
		preloadByAni(obj, createRedNumberAni(i));
		preloadByAni(obj, createGreenNumberAni(i));
		preloadByAni(obj, createBlueNumberAni(i));
		preloadByAni(obj, createWhiteNumberAni(i));
		preloadByAni(obj, createAddNumberAni(i));
		preloadByAni(obj, createActiveNumberAni(i));
		preloadByAni(obj, createActiveAddNumberAni(i));
	}
}

function preloadByAniMapName(obj, aniFilename)
{
	local ani = obj.getVar().GetAnimationMap(aniFilename,aniFilename);
	sq_AnimationProc(ani);
	for(local i = 0; i < 200; i++)
	{
		sq_SetAnimationFrameIndex(ani,i);
		if(sq_GetAnimationFrameIndex(ani) != i)
			break;
	}
	sq_Rewind(ani);
}

function preloadByAniName(obj, aniFilename)
{	
	preloadByAni(obj,sq_CreateAnimation("",aniFilename));	
}

function preloadByAni(obj, ani)
{
	if(!ani) return;

	ani.setRGBA(0,0,0,0);
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(302,550,-99999);
	sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);
	for(local i = 0; i < 999; i++)
	{
		sq_SetAnimationFrameIndex(ani,i);
		if(sq_GetAnimationFrameIndex(ani) != i)
		{
			pooledObj.setValid(false);
			return;
		}
	}
}