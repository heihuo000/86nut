
function onAfterSetState_mage_buff(obj , state , datas , isResetTimer)
{

}

function onEndCurrentAni_mage_buff(obj)
{
	if(!obj) return;
	local SkillIndex = obj.getBuffSkillIndex();
	local apd = "";
	
	if(sq_getGrowType(obj) != 1)
	{
		if(SkillIndex == 40)
		apd = "character/mage/appendage/ap_chaserautocreate.nut";
	}
	
	if(apd != "")
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj , "character/mage/appendage/ap_chaserautocreate.nut"))
		{
			CNSquirrelAppendage.sq_RemoveAppendage(obj , "character/mage/appendage/ap_chaserautocreate.nut");
		}
		
		local validTime = obj.sq_GetLevelData(SkillIndex , 0 , sq_GetSkillLevel(obj , SkillIndex));
		local Appendage = CNSquirrelAppendage.sq_AppendAppendage(obj , obj , SkillIndex , true , apd , true);
		Appendage.sq_SetValidTime(validTime);
	}
}