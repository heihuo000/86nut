

function sq_AddFunctionName(appendage)

{

	appendage.sq_AddFunctionName("onStart" ,  "onStart_appendage_rosarybead")

	appendage.sq_AddFunctionName("proc" ,  "proc_appendage_rosarybead")

	appendage.sq_AddFunctionName("onEnd" ,  "onEnd_appendage_rosarybead")

}

function onStart_appendage_rosarybead(appendage)

{

	if(!appendage) return;

	local UncleBang740438587QQ1 =  appendage.getParent();

	local UncleBang740438587QQ2 =  appendage.getSource();

	local UncleBang740438587QQ1 =  sq_GetCNRDObjectToSQRCharacter(UncleBang740438587QQ1);

	if(!UncleBang740438587QQ2 || !UncleBang740438587QQ1)

	

{

appendage.setValid(false);

return;

	

}

	local UncleBang740438587QQ4 =  6;

	local UncleBang740438587QQ5 =  sq_GetLevelData(UncleBang740438587QQ1 ,  SKILL_ROSARYSHOOTING ,  0 ,  sq_GetSkillLevel(UncleBang740438587QQ1 ,  SKILL_ROSARYSHOOTING));

	local UncleBang740438587QQ6 =  UncleBang740438587QQ1.sq_GetSkillLoad(234);

	if(!UncleBang740438587QQ6)

UncleBang740438587QQ1.sq_AddSkillLoad(234 ,  113 ,  UncleBang740438587QQ4 ,  UncleBang740438587QQ5);

	for(local i = 1; i <=  6; i ++)

	

{

UncleBang740438587QQ1.sq_StartWrite();

UncleBang740438587QQ1.sq_WriteDword(3);

UncleBang740438587QQ1.sq_WriteDword(1);

UncleBang740438587QQ1.sq_WriteDword(i);

UncleBang740438587QQ1.sq_SendCreatePassiveObjectPacket(24338 ,  0 ,  0 ,  0 ,  0);

	

}

}

function proc_appendage_rosarybead(appendage)

{

	if(!appendage) return;

	local UncleBang740438587QQ1 =  appendage.getParent();

	local UncleBang740438587QQ2 =  appendage.getSource();

	local UncleBang740438587QQ1 =  sq_GetCNRDObjectToSQRCharacter(UncleBang740438587QQ1);

	if(!UncleBang740438587QQ2 || !UncleBang740438587QQ1 || UncleBang740438587QQ1.isDead())

	

{

appendage.setValid(false);

return;

	

}

	local UncleBang740438587QQ4 =  UncleBang740438587QQ1.sq_GetSkillLoad(234);

	if(UncleBang740438587QQ4)

	

{

local UncleBang740438587QQ5 =  6;

local UncleBang740438587QQ6 =  UncleBang740438587QQ4.getRemainLoadNumber();

if(UncleBang740438587QQ6 < UncleBang740438587QQ5 && UncleBang740438587QQ1.getVar("rosaryBeadStartCooling").getInt(0) ==  1)

{

UncleBang740438587QQ4.setStartCool();

UncleBang740438587QQ1.getVar("rosaryBeadStartCooling").setInt(0 ,  0);

}

if(UncleBang740438587QQ6 < UncleBang740438587QQ5 && !UncleBang740438587QQ4.isCooling())

{

UncleBang740438587QQ1.getVar("rosaryBeadStartCooling").setInt(0 ,  1);

UncleBang740438587QQ4.increaseLoadCount(1);

}

	

}

}

function onEnd_appendage_rosarybead(appendage)

{

	if(!appendage) return;

	local UncleBang740438587QQ1 =  appendage.getParent();

	local UncleBang740438587QQ1 =  sq_GetCNRDObjectToSQRCharacter(UncleBang740438587QQ1);

	local UncleBang740438587QQ3 =  UncleBang740438587QQ1.sq_GetSkillLoad(234);

	if(UncleBang740438587QQ3)

UncleBang740438587QQ1.sq_RemoveSkillLoad(234);

	appendage.sq_DeleteAppendages();

}



 