function setCustomData_po_bladespirit_skill(obj, receiveData)
{
	if(!obj) return;
	local pChrOBJ = obj.getTopCharacter();
	local parentChr = sq_GetCNRDObjectToSQRCharacter(pChrOBJ);
	local id = receiveData.readDword();
	obj.getVar("id").clear_vector();
	obj.getVar("id").push_vector(id);
	switch(id)
	{
		case 0:
			local skillLevel = sq_GetSkillLevel(parentChr, 44);
			local SizePx = sq_GetLevelData(parentChr, 44, 0, skillLevel);
			local Time = sq_GetLevelData(parentChr, 44, 1, skillLevel);
			local Ms_Count = sq_GetLevelData(parentChr, 44, 2, skillLevel);
			local TotalNumber = (Time / 1000) * Ms_Count;
			local HitTime = 1000 / Ms_Count;
			obj.setTimeEvent(0, HitTime.tointeger(), TotalNumber.tointeger(), true);
			obj.getVar("mubei").clear_vector();
			obj.getVar("mubei").push_vector(TotalNumber.tointeger());
			obj.getVar("mubei").push_vector(SizePx.tointeger());
		break;
		case 1:
			local ani = sq_CreateAnimation("","passiveobject/character/swordman/animation/tombstone.ani");
			obj.setCurrentAnimation(ani);
			local attackInfo = sq_GetCustomAttackInfo(obj, 0);
			sq_SetCurrentAttackInfo(obj, attackInfo);
			local damage = parentChr.sq_GetPowerWithPassive(44, -1, 3, -1, 1.0);
			local attackInfo = sq_GetCurrentAttackInfo(obj);
			sq_SetCurrentAttackPower(attackInfo, damage);
			local skillLevel = sq_GetSkillLevel(parentChr, 44);
			local Rate = sq_GetLevelData(parentChr, 44, 5, skillLevel);
			Rate = Rate * 0.1;
			local Level = sq_GetLevelData(parentChr, 44, 4, skillLevel);
			local Time = sq_GetLevelData(parentChr, 44, 6, skillLevel);
			local Vauel = sq_GetLevelData(parentChr, 44, 7, skillLevel);
			sq_SetChangeStatusIntoAttackInfoWithEtc(attackInfo, 0, ACTIVESTATUS_CURSE ,Rate.tointeger() , Level, Time, Vauel, 0);
			obj.setDirection(sq_getRandom(0, 1));
			AddaAni_Als(obj, "", "passiveobject/character/swordman/animation/tombstoneglow1.ani", 0, -1, -1, 0, 100, 1.0, 1, 1);
			AddaAni_Als(obj, "", "passiveobject/character/swordman/animation/tombstoneglow2.ani", 0, -1, -1, 0, 100, 1.0, 1, 1);
		break;
	}
}