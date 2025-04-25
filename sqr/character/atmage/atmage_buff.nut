
function onAfterSetState_Buff(obj, state, datas, isResetTimer)
{
	local buffSkillIndex = obj.getBuffSkillIndex();
	
	if (buffSkillIndex == SKILL_MAGICAL_ATTACK_UP)
	{
		// ����� ���
		obj.sq_PlaySound("MW_ANCIENT");
	}
	else if (buffSkillIndex == SKILL_SUPER_ARMOR_ON_CAST)
	{
		// �ұ��� ����
		obj.sq_PlaySound("MW_WILL");
	}
	else if (buffSkillIndex == SKILL_JUMP_POWER_UP)
	{
		// ����
		obj.sq_PlaySound("MW_LEAP_BUFF");
	}
}
