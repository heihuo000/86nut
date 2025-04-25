

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_wuqi")
	appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_wuqi")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_wuqi")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_wuqi")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_wuqi")
}


function sq_AddEffect(appendage)
{
	if(!appendage)
		return;
	appendage.sq_AddEffectBack("character/swordman/effect/animation/atfivecircle/buffeffect/buff_back_1.ani")
	appendage.sq_AddEffectBack("character/swordman/effect/animation/atfivecircle/buffeffect/buff_front_1.ani")
}





function proc_appendage_wuqi(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	
	if(!obj)
	{
		appendage.setValid(false);
		return;
	}	
	
	local time = appendage.getTimer().Get();
	
	local x = obj.getXPos();
	local y = obj.getYPos();
	local z = obj.getZPos();
	
	local t = appendage.getVar().get_timer_vector(0);
	
	if(!t)
		return;
	
	if(t.isOnEvent(time) == true)
	{
		//local particleCreater = appendage.getVar().GetparticleCreaterMap("mm_darkaura", "passiveobject/new_skill/at_mage_summon_nutouwang/particle/buff_effect_blue.ptl", obj);
			
		particleCreater.Restart(0);
		particleCreater.SetPos(x, y, z);
		
        //sq_SendCreatePassiveObjectPacketPos(obj,0, 0, x, y, z);
		sq_AddParticleObject(obj, particleCreater);
	}
	
	if(t.isEnd() == true)
	{
		appendage.setValid(false);
	}
}


function onStart_appendage_wuqi(appendage)
{
	if(!appendage) {
		return;
	}	
	
	local obj = appendage.getParent();
	
	if(!obj)
	{
		appendage.setValid(false);
		return;
	}	
	
	initGetVarTimer(appendage, 1, 150, 90000);
	
	
}


function prepareDraw_appendage_wuqi(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
}




function onEnd_appendage_wuqi(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
	
}


// ??? ?? ??? ???
function isEnd_appendage_wuqi(appendage)
{
	
	
	return false;
}