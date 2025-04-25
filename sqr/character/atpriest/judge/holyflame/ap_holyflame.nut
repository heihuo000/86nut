
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_holyflame")
	appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_holyflame")
}

function sq_AddEffect(appendage)
{
	if(!appendage)
		return;
	//appendage.sq_AddEffectFront("character/priest/atanimation/HolyFlameWeaponEffect/Rest.ani")
}

function proc_appendage_holyflame(appendage)
{
	if(!appendage)
	{
		return;
	}
}

function onStart_appendage_holyflame(appendage)
{

}


function onEnd_appendage_holyflame(appendage)
{
	
}

function prepareDraw_appendage_holyflame(appendage)
{
	if(!appendage)
	{
		return;
	}
	
	local obj = appendage.getParent();
}


function isEnd_appendage_holyflame(appendage)
{

}