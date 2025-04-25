
function onAfterSetState_atfighter_buff(obj , state , datas , isResetTimer)
{

}

function onEndCurrentAni_atfighter_buff(obj)
{
	if(!obj) return;
	local SkillIndex = obj.getBuffSkillIndex();
	local apd = "";
	
	if(SkillIndex == 31)
	apd = "character/atfighter/appendage/ap_attackspeedup.nut";
	else if(SkillIndex == 43)
	apd = "character/atfighter/appendage/ap_doublethrow.nut";
	else if(SkillIndex == 50)
	apd = "character/atfighter/appendage/ap_definitegrab.nut";
	
	if(apd != "")
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/atfighter/appendage/ap_attackspeedup.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/atfighter/appendage/ap_attackspeedup.nut");
		}
		else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/atfighter/appendage/ap_doublethrow.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/atfighter/appendage/ap_doublethrow.nut");
		}
		else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/atfighter/appendage/ap_definitegrab.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/atfighter/appendage/ap_definitegrab.nut");
		}

		local validTime = obj.sq_GetLevelData(SkillIndex , 0 , sq_GetSkillLevel(obj , SkillIndex));
		if(apd == "character/atfighter/appendage/ap_attackspeedup.nut")
			validTime = obj.sq_GetLevelData(SkillIndex , 1 , sq_GetSkillLevel(obj , SkillIndex));
		local Appendage = CNSquirrelAppendage.sq_AppendAppendage(obj , obj , SkillIndex , true , apd , true);
		Appendage.sq_SetValidTime(validTime);
	}
}