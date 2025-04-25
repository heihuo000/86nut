function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_100000105")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_100000105")
}

function onStart_appendage_100000105(appendage)
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
	sq_SetParameterOcularSpectrum(spectrumAppendage, 500, 100, true, sq_RGBA(240, 230, 140, 255), sq_RGBA(240, 230, 140, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 500, 100, true, sq_RGBA(240, 230, 140, 255), sq_RGBA(240, 230, 140, 0), 2, 0, 1);

	local physicalAttack = 100;
	local physicalDefense = 100;
	local magicalAttack = 100;
	local magicalDefense = 100;
	local equipmentphysicalAttack = 70;
	local equipmentmagicalAttack = 70;
	local equipmentphysicalgenuine = 70;
	local equipmentmagicalgenuine = 70;
	local attackall = 10;
	local physicalrate = 6;
	local magicaltate = 6;
	local stuck = -8;
	local change_appendage = appendage.sq_getChangeStatus("100000105");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("100000105", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, equipmentphysicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, equipmentmagicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_PHYSICAL_GENUINE_ATTACK, false, equipmentphysicalgenuine.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ADDITIONAL_MAGICAL_GENUINE_ATTACK, false, equipmentmagicalgenuine.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, attackall.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, physicalrate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, magicaltate.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, stuck.tofloat());
	}
}

function onEnd_appendage_100000105(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
