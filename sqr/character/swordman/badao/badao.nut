
function onAfterAttack_MomentarySlash(obj, damager, boundingBox, isStuck)
{
	
    if(!obj.isMyControlObject())
       return false;


}

function onBeforeAttack_MomentarySlash(obj, damager, boundingBox, isStuck)
{

	local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);

    if (obj.getWeaponSubType() == 2)
    {
        if(damager.getState() != STATE_HOLD 
             && sq_IsGrabable(obj,damager) 
             && sq_IsHoldable(obj,damager) 
             && !sq_IsFixture(damager)) 
        {

            if (!CNSquirrelAppendage.sq_IsAppendAppendage(damager, "character/swordman/badao/ap_baodao2.nut") )
            {
                    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 9, false, "character/swordman/badao/ap_badao.nut", true);				 
                    sq_HoldAndDelayDie(damager, obj, false, true, true, 200, 200, ENUM_DIRECTION_NEUTRAL , masterAppendage);

                    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 9, false, "character/swordman/badao/ap_baodao2.nut", true);				 

            }else{

                    local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, 9, false, "character/swordman/badao/ap_badao.nut", true);				 
                    sq_HoldAndDelayDie(damager, obj, false, true, true, 200, 200, ENUM_DIRECTION_NEUTRAL , masterAppendage);

            }

        }
    }
    if (obj.getVar("isAtk").get_vector(0) == 0)
    {
        obj.getVar("isAtk").set_vector(0,1);
//        triggerWeaponSwitch(obj);
    }
}

function onAfterSetState_MomentarySlash(obj, state, datas, isResetTimer)
{
    if (obj.getWeaponSubType() == 2)
    {
		local upForce = 200;
        
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttacknUpForce(attackInfo, upForce);
    }
    obj.getVar("isAtk").clear_vector();
    obj.getVar("isAtk").push_vector(0);

}
function checkCommandEnable_MomentarySlash(obj)
{

	return true;
}

function checkExecutableSkill_MomentarySlash(obj)  
{
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill( 9);

	if (isUseSkill) 
	{
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(0);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
		obj.sq_AddSetStatePacket(23, STATE_PRIORITY_USER, true);
		return true;
	}
}