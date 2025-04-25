function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_100000102")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_100000102")
}

function onStart_appendage_100000102(appendage)
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
	sq_SetParameterOcularSpectrum(spectrumAppendage, 350, 100, true, sq_RGBA(127, 255, 170, 255), sq_RGBA(127, 255, 170, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 350, 100, true, sq_RGBA(127, 255, 170, 255), sq_RGBA(127, 255, 170, 0), 2, 0, 1);

	local physicalAttack = 30;
	local physicalDefense = 30;
	local magicalAttack = 30;
	local magicalDefense = 30;
	local equipmentphysicalAttack = 25;
	local equipmentmagicalAttack = 25;
	local equipmentphysicalgenuine = 25;
	local equipmentmagicalgenuine = 25;
	local stuck = -5;
	local change_appendage = appendage.sq_getChangeStatus("100000102");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("100000102", obj, obj, 0, CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack);
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
		change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, stuck.tofloat());
	}
}

function onEnd_appendage_100000102(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
