function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_400360020")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_400360020")
}

function onStart_appendage_400360020(appendage)
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
	sq_SetParameterOcularSpectrum(spectrumAppendage, 900, 100, true, sq_RGBA(25, 25, 112, 255), sq_RGBA(25, 25, 112, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 900, 100, true, sq_RGBA(25, 25, 112, 255), sq_RGBA(25, 25, 112, 0), 2, 0, 1);
	
	local physicalAttack = 350;
	local magicalAttack = 350;
	local physicalDefense = 350;
	local magicalDefense = 350;
	local equipmentphysicalAttack = 200;
	local equipmentmagicalAttack = 200;
	local fire = 35;
	local water = 35;
	local dark = 35;
	local light = 35;
	local physicalcritical = 25;
	local magicalcritical = 25;
	local CriticalDamage = 140;
	local change_appendage = appendage.sq_getChangeStatus("400360020");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("400360020", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed);
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
		change_appendage.addParameter(CHANGE_STATUS_TYPE_COOLTIME_DECLINE, false, cooltime.tofloat());
	}
}

function onEnd_appendage_400360020(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
