function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_400360013")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_400360013")
}

function onStart_appendage_400360013(appendage)
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
	sq_SetParameterOcularSpectrum(spectrumAppendage, 550, 100, true, sq_RGBA(128, 128, 128, 255), sq_RGBA(128, 128, 128, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 550, 100, true, sq_RGBA(128, 128, 128, 255), sq_RGBA(128, 128, 128, 0), 2, 0, 1);
	
	local physicalAttack = 180;
	local magicalAttack = 180;
	local physicalDefense = 180;
	local magicalDefense = 180;
	local equipmentphysicalAttack = 180;
	local equipmentmagicalAttack = 180;
	local attackSpeed = 80;
	local moveSpeed = 80;
	local castSpeed = 80;
	local fire = 15;
	local water = 15;
	local dark = 15;
	local light = 15;
	local physicalcritical = 8;
	local magicalcritical = 8;
	local CriticalDamage = 180;
	local PhysicalAttackDamage = 180;
	local MagicalAttackDamage = 180;
	local change_appendage = appendage.sq_getChangeStatus("400360013");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("400360013", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed);
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
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, fire.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, water.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, dark.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, light.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalcritical.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalcritical.tofloat());
	}
}

function onEnd_appendage_400360013(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
