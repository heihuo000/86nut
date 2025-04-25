
function onAfterSetState_fighter_buff(obj , state , datas , isResetTimer)
{

}

function onEndCurrentAni_fighter_buff(obj)
{
	if(!obj) return;
	local SkillIndex = obj.getBuffSkillIndex();
	local apd = "";
	
	if(SkillIndex == 31)
	apd = "character/fighter/appendage/ap_attackspeedup.nut";
	else if(SkillIndex == 38)
	apd = "character/fighter/appendage/ap_enchantpoison.nut";
	else if(SkillIndex == 50)
	apd = "character/fighter/appendage/ap_definitegrab.nut";
	
	if(apd != "")
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/appendage/ap_attackspeedup.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/fighter/appendage/ap_attackspeedup.nut");
		}
		else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/appendage/ap_enchantpoison.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/fighter/appendage/ap_enchantpoison.nut");
		}
		else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/fighter/appendage/ap_definitegrab.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/fighter/appendage/ap_definitegrab.nut");
		}

		local validTime = obj.sq_GetLevelData(SkillIndex , 0 , sq_GetSkillLevel(obj , SkillIndex));
		if(apd == "character/fighter/appendage/ap_attackspeedup.nut")
			validTime = obj.sq_GetLevelData(SkillIndex , 1 , sq_GetSkillLevel(obj , SkillIndex));
		local Appendage = CNSquirrelAppendage.sq_AppendAppendage(obj , obj , SkillIndex , true , apd , true);
		Appendage.sq_SetValidTime(validTime);
	}
}