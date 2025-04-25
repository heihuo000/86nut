
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_stylish")//??始的?置
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_stylish")//??始的?置
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_stylish")//結??
}


function proc_appendage_gunner_stylish(appendage)
{
    if(!appendage) return;

    local obj = appendage.getParent()
    if(!obj)
    {
        appendage.setValid(false);
        return;
    }

    switch(obj.getState())
    {
        case STATE_STAND:
        case STATE_DIE:
        case STATE_HOLD:
        case STATE_JUMP:
            onEnd_appendage_gunner_stylish(appendage);
            return;
    }
}


function onStart_appendage_gunner_stylish(appendage)
{
	if(!appendage) return;

    local obj = appendage.getParent();//得到??角色對象
	if(!obj) {
		appendage.setValid(false);
		return;
	}

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");//得到殘影
	if (!spectrumAppendage)//為假
	{
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);//?置殘影
		sq_SetParameterOcularSpectrum(spectrumAppendage, 400, 50, true, sq_RGBA(0, 255, 0, 255), sq_RGBA(0, 255, 0, 0), 2, 2, 2);//?置?果
	}
}

function onEnd_appendage_gunner_stylish(appendage)
{
	if(!appendage) return;

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");//得到殘影
	if(spectrumAppendage)//存在
        spectrumAppendage.endCreateSpectrum();//清除
}


