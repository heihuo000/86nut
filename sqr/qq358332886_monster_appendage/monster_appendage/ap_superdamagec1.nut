
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_superdamage")
}

function proc_appendage_superdamage(appendage)
{
	if (!appendage) return;

	local parentObj = appendage.getParent();
	local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local sourceObj = appendage.getSource();

	if (!sqrChr)
	{
		appendage.setValid(false);
		return;
	}

	if (appendage.getTimer().Get() > 1000)
	{
		appendage.setValid(false);
		return;
	}

	local state = sqrChr.getState();
	if (state != STATE_SIT)
	{
		sqrChr.sq_IntVectClear();
		sqrChr.sq_IntVectPush(190);
		sqrChr.sq_AddSetStatePacket(18, STATE_PRIORITY_USER, true);
	}
	local currentT = appendage.getTimer().Get();//”◊ÓÒ„¡ ‡
	local fireT = 1000;//ı≈„¡ ‡
	if (sqrChr.getXPos()<sourceObj.getXPos())//Œ÷⁄™ÿ¸˙æÒß‹´–‡Ó§Ú¢”ÒÈ”‹´
	{
		sqrChr.setDirection(ENUM_DIRECTION_RIGHT);
		local dstX = sq_GetUniformVelocity(sqrChr.getXPos(), sqrChr.getXPos() - 10, currentT, fireT);
		if (sqrChr.isMovablePos(dstX, sqrChr.getYPos()) && currentT <= fireT)
		sq_setCurrentAxisPos(sqrChr, 0, dstX);
	}
	else
	{
		sqrChr.setDirection(ENUM_DIRECTION_LEFT);
		local dstX = sq_GetUniformVelocity(sqrChr.getXPos(), sqrChr.getXPos() + 10, currentT, fireT);
		if (sqrChr.isMovablePos(dstX, sqrChr.getYPos()) && currentT <= fireT)
			sq_setCurrentAxisPos(sqrChr, 0, dstX);
	}
}