function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_400360010")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_400360010")
}

function onStart_appendage_400360010(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}
	
	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	
	if(!spectrumAppendage)
	{
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);
	}
	sq_SetParameterOcularSpectrum(spectrumAppendage, 400, 100, true, sq_RGBA(212, 242, 231, 255), sq_RGBA(212, 242, 231, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 400, 100, true, sq_RGBA(212, 242, 231, 255), sq_RGBA(212, 242, 231, 0), 2, 0, 1);
	
	local physicalAttack = 100;
	local magicalAttack = 100;
	local physicalDefense = 100;
	local magicalDefense = 100;
	local equipmentphysicalAttack = 130;
	local equipmentmagicalAttack = 130;
	local attackSpeed = 50;
	local moveSpeed = 50;
	local castSpeed = 50;
	local physicalcritical = 3;
	local magicalcritical = 3;
	local CriticalDamage = 80;
	local PhysicalAttackDamage = 80;
	local MagicalAttackDamage = 80;
	local change_appendage = appendage.sq_getChangeStatus("400360010");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("400360010", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, false, PhysicalAttackDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, false, MagicalAttackDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, CriticalDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, CriticalDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, moveSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, castSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, equipmentphysicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, equipmentmagicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalcritical.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalcritical.tofloat());
	}
}

function onEnd_appendage_400360010(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
