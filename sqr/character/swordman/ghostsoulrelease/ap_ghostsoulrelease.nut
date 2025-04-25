
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_GHOST_SOUL_RELEASE")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_GHOST_SOUL_RELEASE")
}


function proc_appendage_GHOST_SOUL_RELEASE(appendage)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
    local state = sqrChr.getState();

    if (!getGhostSoulReleaseExecultableState(sqrChr) )
        return false;


    if (state == 20 && sq_GetSkillLevel(sqrChr, 6) <= 0 )
    {
        return false;
    }

    if (state == 42 && sq_GetSkillLevel(sqrChr, 80) <= 0 )
    {
        return false;
    }

    if (state == 13)
    {
    }

    local posX = getGhostSoulRelease_Area_Distance(sqrChr,state);

    local skill = sq_GetSkill(sqrChr, 25);
	if(skill)
		skill.setCommandEnable(true); 

    local iEnterSkill = sqrChr.sq_IsEnterSkill(25);
    if (iEnterSkill != -1)
    {
        local isUseSkill = sqrChr.sq_IsUseSkill(25);
        if (isUseSkill) 
        {

            killPassiveObject(sqrChr,20011);

            sq_SendCreatePassiveObjectPacketPos(sqrChr,20011, sq_GetSkillLevel(sqrChr, 25) ,
            posX,sqrChr.getYPos(), 0);
        }
    }


    skill = sq_GetSkill(sqrChr, 36);
	if(skill)
		skill.setCommandEnable(true); 

    iEnterSkill = sqrChr.sq_IsEnterSkill(36);
    if (iEnterSkill != -1)
    {
        local isUseSkill = sqrChr.sq_IsUseSkill(36);
        if (isUseSkill) 
        {

            killPassiveObject(sqrChr,20012);

            sq_SendCreatePassiveObjectPacketPos(sqrChr,20012, sq_GetSkillLevel(sqrChr, 36) ,
            posX,sqrChr.getYPos(), 0);
        }
    }



    skill = sq_GetSkill(sqrChr, 41);
	if(skill)
		skill.setCommandEnable(true); 

    iEnterSkill = sqrChr.sq_IsEnterSkill(41);
    if (iEnterSkill != -1)
    {
        local isUseSkill = sqrChr.sq_IsUseSkill(41);
        if (isUseSkill) 
        {

            killPassiveObject(sqrChr,20013);

            sq_SendCreatePassiveObjectPacketPos(sqrChr,20013, sq_GetSkillLevel(sqrChr, 41) ,
            posX,sqrChr.getYPos(), 0);
        }
    }



    skill = sq_GetSkill(sqrChr, 95);
	if(skill)
		skill.setCommandEnable(true); 

    iEnterSkill = sqrChr.sq_IsEnterSkill(95);
    if (iEnterSkill != -1)
    {
        local isUseSkill = sqrChr.sq_IsUseSkill(95);
        if (isUseSkill) 
        {

            killPassiveObject(sqrChr,20060);

            sq_SendCreatePassiveObjectPacketPos(sqrChr,20060, sq_GetSkillLevel(sqrChr, 95) ,
            posX - 250,sqrChr.getYPos() + 50, 0);
            sq_SendCreatePassiveObjectPacketPos(sqrChr,20060, sq_GetSkillLevel(sqrChr, 95) ,
            posX + 75,sqrChr.getYPos() + 50, 0);
            sq_SendCreatePassiveObjectPacketPos(sqrChr,20060, sq_GetSkillLevel(sqrChr, 95) ,
            posX - 45,sqrChr.getYPos() - 50, 0);
        }
    }
}


function killPassiveObject(obj,id)
{
	local bloodCutObjCount = obj.getMyPassiveObjectCount(id);			
	for (local i = 0; i < bloodCutObjCount ; ++i) 
	{ 
			local bloodCutObj = obj.getMyPassiveObject(id,i);
            if (bloodCutObj)
            {
                sq_SendDestroyPacketPassiveObject(bloodCutObj);
            }
	}

}


function onStart_appendage_GHOST_SOUL_RELEASE(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
}

