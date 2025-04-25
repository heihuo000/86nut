function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_pvp_character")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_pvp_character")
}

function onStart_appendage_pvp_character(appendage)
{
	if(!appendage) return;

	local currTime = appendage.getTimer().Get();
	appendage.getVar("atkTime").setInt(0,currTime);
}

function onAttackParent_appendage_pvp_character(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage || !damager || isStuck) return;

	local newHpDamage = 0;
	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	local beforeHp = activeObj.getVar("before_hp").getInt(0);
	if(beforeHp == 0)
	{
		newHpDamage = activeObj.getHpMax() - activeObj.getHp();
	}else{
		newHpDamage = beforeHp - activeObj.getHp();
	}
	activeObj.getVar("before_hp").setInt(0,activeObj.getHp());

	if(newHpDamage > 0)
	{
		local x = sq_GetCenterXPos(boundingBox) + 60;
		local y = activeObj.getYPos();
 		local z = activeObj.getZPos() + activeObj.getObjectHeight()/2;
			
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(x);
		sq_BinaryWriteDword(y);
		sq_BinaryWriteDword(z);
		sq_BinaryWriteDword(newHpDamage);
		sq_BinaryWriteDword(PVP_DAMAGE_FONT_TYPE);
		sq_SendChangeSkillEffectPacket(appendage.getParent(),169);
	}
}