function procAppend_po_swordman_baynk(obj)
{
	if(!obj) return false;

	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	if(!parentChr)
	{
		sq_SendDestroyPacketPassiveObject(obj);
		return false;
	}
	local chrState = parentChr.sq_GetState();

	switch(id)
	{
		case 4://Ó­Ëü÷åüù
			if(currentT > 1500)
			sq_SendDestroyPacketPassiveObject(obj);
		break;
	}
}