function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_HolyLight")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_HolyLight")
	appendage.sq_AddFunctionName("proc", "proc_appendage_HolyLight")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_HolyLight")
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_HolyLight")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_HolyLight")
}

function sq_AddEffect(appendage)
{

}

function drawAppend_appendage_HolyLight(appendage, isOver, x, y, isFlip)
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
	
	if(isOver) 
	{
 		local ani = appendage.getVar().GetAnimationMap("barrierloop", "character/priest/effect/animation/atholylight/barrier/barrierloop.ani");
		sq_AnimationProc(ani);
		//sq_drawCurrentFrame(ani, x, y - sq_GetObjectHeight(parentObj)*3/10, isFlip);
		sq_drawCurrentFrame(ani, x, y, isFlip);
	}
}

function onDamageParent_appendage_HolyLight(appendage ,attacker, boundingBox, isStuck) 
{
	local parentObj = appendage.getParent();	
	
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}
	local ani = sq_AddDrawOnlyAniFromParent(parentObj, "character/priest/effect/animation/atholylight/barrier/hiteffect.ani", 0, -60, 0);
	sq_moveWithParent(parentObj, ani);
}

function onStart_appendage_HolyLight(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}
	local hiteffect = "character/priest/effect/animation/atholylight/barrier/hiteffect.ani";
	ATPriest_Create(obj,hiteffect,ENUM_DRAWLAYER_NORMAL,0,-60,0,0,100,0,100,"hiteffect");
	local currTime = appendage.getTimer().Get();
	appendage.getVar("apTime").setInt(0,currTime);
}

function proc_appendage_HolyLight(appendage)
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
	local currTime = appendage.getTimer().Get();
	if (currTime - appendage.getVar("apTime").getInt(0) > 2000)
	{
		appendage.getVar("apTime").setInt(0,currTime);
		parentObj.sq_PlaySound("HOLYLIGHT_LOOP");
	}
}

function getImmuneTypeDamageRate_appendage_HolyLight(appendage, damageRate, attacker)
{
	if (!appendage)
		return damageRate;
	local obj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(obj);
	local skillLevel = sqrChr.sq_GetSkillLevel(SKILL_HOLY_LIGHT);
	local Rate = sqrChr.sq_GetLevelData(SKILL_HOLY_LIGHT, 2, skillLevel);
	damageRate = damageRate - Rate / 10;
	//print("Rate:" + Rate);
	return damageRate;
}

function onEnd_appendage_HolyLight(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}
	local barrierloop_omen = "character/priest/effect/animation/atholylight/barrier/barrierend_barrierend.ani";
	ATPriest_Create(obj,barrierloop_omen,ENUM_DRAWLAYER_BOTTOM,0,-60,0,0,100,0,100,"barrierloop_omen");
}