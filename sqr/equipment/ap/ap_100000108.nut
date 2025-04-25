function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_100000108")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_100000108")
}

function onStart_appendage_100000108(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}

	local change_appendage = appendage.sq_getChangeStatus("100000108");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("100000108", obj, obj, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, dark);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
	}
}

function onEnd_appendage_100000108(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
