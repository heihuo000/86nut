function onCreat_Khazan(passiveObj)
{
	local limit = passiveObj.getVar("limit").getBool(0);
	if(!limit)
	{
		passiveObj.getVar("limit").setBool(0,true);

		local chr = passiveObj.getParent();
		local sqrChr = sq_GetCNRDObjectToSQRCharacter(chr);
		local attackPower = sqrChr.sq_GetPowerWithPassive(SKILL_GHOST_RELEASE, -1, 0, -1, 1.0);
		local pAttackInfo = sq_GetCurrentAttackInfo(passiveObj);
		sq_SetCurrentAttackPower(pAttackInfo, attackPower);
	}
}

function onProc_Khazan(passiveObj)
{
	//25	`Swordman/Khazan.skl`
	local chr = passiveObj.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(chr);
	local size = sqrChr.sq_GetIntData(25, 1);
	local skillLevel = sq_GetSkillLevel(sqrChr, SKILL_GHOST_RELEASE);
	local interval = sq_GetLevelData(sqrChr, SKILL_GHOST_RELEASE, 1, skillLevel);
	if(IsInterval(passiveObj, interval))
	{
		local objectManager = passiveObj.getObjectManager();
		for(local i=0; i<objectManager.getCollisionObjectNumber(); ++i)
		{
			local object = objectManager.getCollisionObject(i);
			local dis = sq_GetDistanceObject(object, passiveObj, false);
			if(object && passiveObj.isEnemy(object) && dis<=size && object.isObjectType(OBJECTTYPE_ACTIVE))
			{
				local z = object.getZPos() + object.getObjectHeight()/2;
				sq_SendHitObjectPacketWithNoStuck(passiveObj,object,0,0,z);
			}
		}
	}
}
