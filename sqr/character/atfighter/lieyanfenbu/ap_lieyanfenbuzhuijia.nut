function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_lieyanfenbuzhuijia")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_lieyanfenbuzhuijia")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_lieyanfenbuzhuijia")
}

function sq_AddEffect(appendage)
{
}

function proc_appendage_lieyanfenbuzhuijia(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	sqrChr.setSkillCommandEnable(41,true);
	local b_useskill = sqrChr.sq_IsEnterSkill(41);

	if(b_useskill != -1 && obj.getState()==0)
	{
		sq_AddSetStatePacketActiveObject(obj, STATE_LIE_YAN_FEN_BU_ZHUI_JIA, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);

	}
}

function onStart_appendage_lieyanfenbuzhuijia(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}

function onEnd_appendage_lieyanfenbuzhuijia(appendage)
{
	if(!appendage) return;
	local obj = appendage.getParent();
}
