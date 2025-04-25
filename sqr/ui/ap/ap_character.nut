SPECIAL_SKILL_FLAG <- 0
DRAW_MONSTER_PID <- -1
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_character")
	appendage.sq_AddFunctionName("proc", "proc_appendage_character")
	appendage.sq_AddFunctionName("onApplyHpDamage", "onApplyHpDamage_appendage_character")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_character")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_character")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_character")
}

function proc_appendage_character(appendage)
{
	if(!appendage) return;

	local currTime = appendage.getTimer().Get();
	if (currTime - appendage.getVar("monsterTime").getInt(0) > 1000)
	{
		appendage.getVar("monsterTime").setInt(0,currTime);
		setAllMonsterAppend(appendage.getParent());
	}
}

function onAttackParent_appendage_character(appendage, realAttacker, damager, boundingBox, isStuck)
{
	if(!appendage) return;

	local activeObj = sq_GetCNRDObjectToActiveObject(damager);
	if(activeObj.isBoss() || sq_IsNamed(activeObj))
	{
		appendage.getParent().getVar("activeAtk").setInt(0,1);
		DRAW_MONSTER_PID = sq_GetObjectId(activeObj);
	}else if(DRAW_MONSTER_PID != -1)
	{
		DRAW_MONSTER_PID = -1;
	}
}

function onApplyHpDamage_appendage_character(appendage, newHpDamage, attacker)
{
	if (appendage && newHpDamage > 0)
	{
		local parentObj = appendage.getParent();
		
		if(!parentObj) return newHpDamage;

		local x = parentObj.getXPos();
		local y = parentObj.getYPos();
		local h = parentObj.getObjectHeight();

		NOMAL_ATTACK_FLAG = 1;
		applySpecialDamage(newHpDamage,x,y,h,1);
	}
	return newHpDamage;
}

function onSetHp_appendage_character(appendage, hp, attacker)
{
	if(!appendage || hp < 0) return hp;
	
	local parentObj = appendage.getParent();
	if(!parentObj) return currentHp;

	local newHpDamage = parentObj.getHp() - hp;
	if(newHpDamage <= 0)
	{
		newHpDamage = -newHpDamage;
		if(newHpDamage > 50)
		{
			appendage.getVar("totalGreenHp").setInt(0,appendage.getVar("totalGreenHp").getInt(0)+newHpDamage);
		}
		local currTime = appendage.getTimer().Get();
		if(currTime - appendage.getVar("greenChrTime").getInt(0) > 500)
		{
			appendage.getVar("greenChrTime").setInt(0,currTime);
			local totalGreenHp = appendage.getVar("totalGreenHp").getInt(0);
			appendage.getVar("totalGreenHp").setInt(0,0);
			if(totalGreenHp > 150)
			{
				NOMAL_ATTACK_FLAG = 1;
				applySpecialDamage(totalGreenHp,parentObj.getXPos(),
				parentObj.getYPos(),parentObj.getObjectHeight(),3);
			}
		}
		return hp;
	}
			
	if(!attacker)
	{
		if(newHpDamage > 100)
		{
			NOMAL_ATTACK_FLAG = 1;
			applySpecialDamage(newHpDamage,parentObj.getXPos(),
			parentObj.getYPos(),parentObj.getObjectHeight(),2);
		}
	}
	return hp;
}


function onStart_appendage_character(appendage)
{
	if(!appendage) return;

	local currTime = appendage.getTimer().Get();
	appendage.getVar("monsterTime").setInt(0,currTime);
	appendage.getVar("greenChrTime").setInt(0,currTime);
	appendage.getVar("actChrTime").setInt(0,currTime);
}

function onEnd_appendage_character(appendage)
{
	SPECIAL_SKILL_FLAG = 0;
}