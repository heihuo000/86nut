
function checkExecutableSkill_SliceImpact(CQEfSi6Ex6mNE1u)
{
	if (!CQEfSi6Ex6mNE1u) return false;
	local CQgtelvmDFkvAlPL6A = CQEfSi6Ex6mNE1u.sq_IsUseSkill(CHANGQING_BLADE_SKILL17);
	
	if (CQgtelvmDFkvAlPL6A)
	{
		CQEfSi6Ex6mNE1u.sq_IntVectClear();
		CQEfSi6Ex6mNE1u.sq_IntVectPush(0);
		CQEfSi6Ex6mNE1u.sq_AddSetStatePacket(CHANGQING_BLADE_STATE17, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_SliceImpact(CQobXr83zfGhJGO)
{
	if (!CQobXr83zfGhJGO) return false;
	
	return true;
	
}

function onSetState_SliceImpact(CQ2hwSLGEtb6SrOCn, CQk451piMCVVs3LK, CQaZajbgr9eFDyKNWY, CQ5Pkw9NKr4aI6K)
{
	if(!CQ2hwSLGEtb6SrOCn) return;
	ChangqingQQ751675335Skill39(CQ2hwSLGEtb6SrOCn, CQk451piMCVVs3LK, CQaZajbgr9eFDyKNWY, CQ5Pkw9NKr4aI6K)

}

function onEndCurrentAni_SliceImpact(CQwyJPOSvZproDJJK)
{
	if(!CQwyJPOSvZproDJJK) return;
	local CQZUUBQvOTRvOz = CQwyJPOSvZproDJJK.getSkillSubState();
	switch(CQZUUBQvOTRvOz)
	{
	case 0:
		CQwyJPOSvZproDJJK.sq_IntVectClear();
		CQwyJPOSvZproDJJK.sq_IntVectPush(1);
		CQwyJPOSvZproDJJK.sq_AddSetStatePacket(CHANGQING_BLADE_STATE17, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQwyJPOSvZproDJJK.sq_IntVectClear();
		CQwyJPOSvZproDJJK.sq_IntVectPush(2);
		CQwyJPOSvZproDJJK.sq_AddSetStatePacket(CHANGQING_BLADE_STATE17, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQwyJPOSvZproDJJK.sq_IntVectClear();
		CQwyJPOSvZproDJJK.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_SliceImpact(CQzk1gj94wAjpHHZ, CQO6UqMAuKz6tWG1jt, CQ8C1sAWCjK8E4F, CQWSiCezTomMyuF3v)
{
	local CQVifd5XFHMJwl = SwordLicense_ATSwoedman(CQzk1gj94wAjpHHZ, CQO6UqMAuKz6tWG1jt, CQ8C1sAWCjK8E4F, CQWSiCezTomMyuF3v);
	
	return CQVifd5XFHMJwl;
}

function onAttack_SliceImpact(CQYmSnHI9gtIuGS6, CQSqYEuwwu7yexS2St, CQflVLc51NsUU2A, CQu8r86KYfjTctX5Z)
{
	if(!CQYmSnHI9gtIuGS6 || CQu8r86KYfjTctX5Z)	return false;
	CQYmSnHI9gtIuGS6.getVar("DeepduskLicense").setBool(0,true);
	local CQMBCvJELtF9m5 = CQYmSnHI9gtIuGS6.getSkillSubState();
	
	switch(CQMBCvJELtF9m5)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_SliceImpact(CQnFrimjgCYMYDZ8, CQGp7JR2txXJTzZjlA)
{
	if(!CQnFrimjgCYMYDZ8) return;
	local CQhQI5VG5rwOvHL = CQnFrimjgCYMYDZ8.getSkillSubState();
	switch(CQhQI5VG5rwOvHL)
	{
	case 0:
		if(CQGp7JR2txXJTzZjlA == 2 && CQnFrimjgCYMYDZ8.isMyControlObject())
			sq_SetMyShake(CQnFrimjgCYMYDZ8,2,100);
		break;
	case 1:
		if(CQGp7JR2txXJTzZjlA == 4 && CQnFrimjgCYMYDZ8.isMyControlObject())
		{
			
		}
		break;
	case 2:
		
		break;
	}
}

function onEndState_SliceImpact(CQpxTxInUZ3ylYK7i, CQ3dKyqRSTiUg4)
{
	if(!CQpxTxInUZ3ylYK7i) return;
	local CQkMqFgFlwdlxyJdP = CQpxTxInUZ3ylYK7i.getSkillSubState();
	switch(CQkMqFgFlwdlxyJdP)
	{
	case 3:

		break;
	case 4:

		break;
	}
}
	
	
	
function onChangeSkillEffect_SliceImpact(CQaHK3DupKP9j6, CQ5aqlWYdjlMdFHg, CQwe2rlBeoJ2kxGx8A)
{
	if(!CQaHK3DupKP9j6 || CQ5aqlWYdjlMdFHg != CHANGQING_BLADE_SKILL17) return;
	
}


function onProc_SliceImpact(CQZcoS3AJHnZfJF)
{
	if(!CQZcoS3AJHnZfJF) return;
	local CQzfg1GrvgNA6tNYk = CQZcoS3AJHnZfJF.getSkillSubState();
	switch(CQzfg1GrvgNA6tNYk)
	{
	case 1:
		local CQO1Fjy8OuWi15 = CQZcoS3AJHnZfJF.getVar("SliceImpact").getInt(0);
		local CQ8Jbw9X3B6Q7iVn = sq_GetDelaySum(sq_GetCurrentAnimation(CQZcoS3AJHnZfJF));
		local CQWsBOZsyfEx2lVcEA = CQZcoS3AJHnZfJF.sq_GetStateTimer();
		local CQVIvBElXtgfVGC = sq_GetUniformVelocity(CQZcoS3AJHnZfJF.getXPos(), CQO1Fjy8OuWi15, CQWsBOZsyfEx2lVcEA, CQ8Jbw9X3B6Q7iVn);
		if(CQZcoS3AJHnZfJF.isMovablePos(CQVIvBElXtgfVGC, CQZcoS3AJHnZfJF.getYPos()))
			sq_setCurrentAxisPos(CQZcoS3AJHnZfJF, 0, CQVIvBElXtgfVGC);
		break;
	}
}

function onKeyFrameFlag_SliceImpact(CQYWBgn5kCD33cXbB, CQSvtmdJDzcZBK)
{
	if (!CQYWBgn5kCD33cXbB) return false;
	switch(CQSvtmdJDzcZBK)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_SliceImpact(CQfg8sXq8rZALyZm)
{
	if(!CQfg8sXq8rZALyZm) return;
	onProc_DeepduskLicense(CQfg8sXq8rZALyZm);
	local CQu4OCwjEZqoN6ZvfS = CQfg8sXq8rZALyZm.getSkillSubState();
	switch(CQu4OCwjEZqoN6ZvfS)
	{
	case 2:
		foreach(skillId,skillInfo in PUSHEXTRA_ATSWORDMAN)
			ForceUse_ATSwordman(CQfg8sXq8rZALyZm,skillId,skillInfo[1],skillInfo[0]);
		break;
	}
}