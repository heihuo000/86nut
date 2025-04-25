
function onAfterSetState_atgunner_buff(obj , state , datas , isResetTimer)
{

}

function onEndCurrentAni_atgunner_buff(obj)
{
	if(!obj) return;
	local SkillIndex = obj.getBuffSkillIndex();
	local apd = "";
	
	if(SkillIndex == 62)
	apd = "character/atgunner/appendage/ap_subweaponstuckdown.nut";
	else if(SkillIndex == 46)
	apd = "character/atgunner/appendage/ap_robotics.nut";
	
	if(apd != "")
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/atgunner/appendage/ap_subweaponstuckdown.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/atgunner/appendage/ap_subweaponstuckdown.nut");
		}
		else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/atgunner/appendage/ap_robotics.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/atgunner/appendage/ap_robotics.nut");
		}

		local validTime = obj.sq_GetLevelData(SkillIndex , 0 , sq_GetSkillLevel(obj , SkillIndex));;
		local Appendage = CNSquirrelAppendage.sq_AppendAppendage(obj , obj , SkillIndex , true , apd , true);
		Appendage.sq_SetValidTime(validTime);
	}
}