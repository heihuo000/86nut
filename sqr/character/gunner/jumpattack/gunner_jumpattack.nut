function onProcCon_gunner_jumpattack(obj)
{
	if (!obj) return;
	if(sq_GetSkillLevel(obj,248)>0)
	{
		EnableSoften(obj,5,8);
 		SetSkillState(obj,5,169,[1,5,0]);
	}
}