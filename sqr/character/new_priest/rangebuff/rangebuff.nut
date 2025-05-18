function useRangeBuff_getTeamCount(obj)
{
	local array = [];
	local objectManager = obj.getObjectManager();
	for(local i=0; i<objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		if(object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER))
		{
			local sqrChr = sq_GetCNRDObjectToSQRCharacter(object);
			local isAI = sq_IsAiCharacter(sqrChr);
			if(isAI) continue;
			local id = sq_GetObjectId(object);
			array.push(id);
		}
	}
	return array;
}

function useRangeBuff_setState(obj, state, datas)
{
	if(state != 13) return;
	local subState = obj.sq_GetVectorData(datas, 0);
	if(subState != 2) return;
	local skillIndex = obj.getCurrentSkillIndex();
	obj.getVar("rangeBuff").setBool(0, true);
	obj.getVar("rangeBuff").clear_vector();
	obj.getVar("rangeBuff").push_vector(0);
}

function useRangeBuff(obj)
{
	local array = useRangeBuff_getTeamCount(obj);
	if(obj.getVar("rangeBuff").getBool(0))
	{
		local index = obj.getVar("rangeBuff").get_vector(0);
		if(index >= array.len())
		{
			obj.getVar("rangeBuff").setBool(0, false);
			return;
		}
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_IntVectPush(array[index]);
		obj.sq_AddSetStatePacket(13, STATE_PRIORITY_IGNORE_FORCE, true);
		obj.getVar("rangeBuff").set_vector(0, index+1);
	}
}
