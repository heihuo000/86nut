function drawUltimateCutinUI(obj)
{
	local ani;
	if(obj.getDirection() == ENUM_DIRECTION_LEFT)
		sq_GetStrikerSkillUi().SetVisible(false);
	if(ULTIMATE_RANDOM_ANI_NAME == -1)
	{		
		local aniName;
		if(IS_MANAY_SELECTED_CUTSCENE == 0)
			aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(CURRENT_CUTSCENE_TYPE)[0];
		else
			aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(SELECTED_CUTSCENE_TYPE[sq_getRandom(0,SELECTED_CUTSCENE_TYPE.len()-1)])[0];
		ULTIMATE_RANDOM_ANI_NAME = aniName;
		
		ani = obj.getVar().GetAnimationMap(aniName,aniName);
		sq_SetFrameDelayTime(ani, 0, 1000);
		if (obj.getDirection() == ENUM_DIRECTION_LEFT)
		{
			ani.setImageRate(-1.0,1.0);
			ULTIMATE_SKILL_DIRECTION = ENUM_DIRECTION_LEFT;
		}else{
			ani.setImageRate(1.0,1.0);
			ULTIMATE_SKILL_DIRECTION = ENUM_DIRECTION_RIGHT;
		}	
	}

	ani = obj.getVar().GetAnimationMap(ULTIMATE_RANDOM_ANI_NAME, ULTIMATE_RANDOM_ANI_NAME);
	if(sq_IsEnd(ani))
	{
		sq_Rewind(ani);
		ULTIMATE_SKILL_ID = -1;
		ULTIMATE_RANDOM_ANI_NAME = -1;
		return;
	}

	local x;
	local time = sq_GetCurrentTime(ani);
	if(time <= 100)
		x = sq_GetAccel(-400,0,time,100,true);
	else if(time <= 900)
		x= 0;
	else
		x = sq_GetAccel(0,-400,time-900,100,true);
		
	if(ULTIMATE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, 800-x, 480, false);
	}else{
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, x, 480, false);
	}
}