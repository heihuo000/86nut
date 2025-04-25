function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_400360017")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_400360017")
}

function onStart_appendage_400360017(appendage)
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
	sq_SetParameterOcularSpectrum(spectrumAppendage, 650, 100, true, sq_RGBA(255, 255, 224, 255), sq_RGBA(255, 255, 224, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 650, 100, true, sq_RGBA(255, 255, 224, 255), sq_RGBA(255, 255, 224, 0), 2, 0, 1);

	local physicalAttack = 200;
	local physicalDefense = 200;
	local magicalAttack = 200;
	local magicalDefense = 200;
	local equipmentphysicalAttack = 100;
	local equipmentmagicalAttack = 100;
	local equipmentphysicalgenuine = 100;
	local equipmentmagicalgenuine = 100;
	local attackall = 20;
	local physicalrate = 16;
	local magicaltate = 16;
	local stuck = -20;
	local change_appendage = appendage.sq_getChangeStatus("400360017");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("400360017", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack);
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

function onEnd_appendage_400360017(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
