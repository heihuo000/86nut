function procAppend_po_bladespirit_skill(obj)
{
	if(!obj) return;
	local pChrOBJ = obj.getTopCharacter();
	local parentChr = sq_GetCNRDObjectToSQRCharacter(pChrOBJ);
	if(!parentChr) 
	{
		sq_SendDestroyPacketPassiveObject(obj);
		return;
	}
	local id = obj.getVar("id").get_vector(0);
	local x = sq_GetXPos(obj);
	local y = sq_GetYPos(obj);
	local z = sq_GetZPos(obj);
	local pAni = obj.getCurrentAnimation();
	local currentT = sq_GetCurrentTime(pAni);
	local frameindex = sq_GetCurrentFrameIndex(obj);
	local time = sq_GetObjectTime(obj);
	switch(id)
	{
		case 1:
			local z = sq_GetZPos(obj);
			local pAni = obj.getCurrentAnimation();
			local currentT = sq_GetCurrentTime(pAni);
			local zAccel = sq_GetUniformVelocity(z, 0, currentT, 5);
			sq_setCurrentAxisPos(obj, 2, zAccel);
			if (z == 0 && obj.getVar("mubeieffetc").getBool(0) == false)
			{
				sq_SetMyShake(obj, 3, 25);
				obj.getVar("mubeieffetc").setBool(0, true);
				obj.sq_PlaySound("R_ZIEG_TOMBSTONE");
				AddaAni_Als(obj, "", "passiveobject/character/swordman/animation/tombstonedust.ani", 0, 1, 0, 0, 100, 1.0, 1, 1);
			}
		break;
	}
}