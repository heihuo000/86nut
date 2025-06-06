function onTimeEvent_po_bladespirit_skill(obj, timeEventIndex, timeEventCount)
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
	switch(id)
	{
		case 0:
			switch (timeEventIndex)
			{
				case 0:
					if(obj.isMyControlObject())
					{
						local x = sq_GetXPos(obj);
						local y = sq_GetYPos(obj);
						local SizePx = obj.getVar("mubei").get_vector(1);
						SizePx = SizePx.tointeger();
						if(SizePx <= 100)
						SizePx = 100;
						local NumX = SizePx * 10 / 13;
						local NumY = SizePx / 4;
						local randNumX = sq_getRandom(-NumX.tointeger(), NumX.tointeger());
						local randNumY = sq_getRandom(-NumY.tointeger(), NumY.tointeger());
						local xpos = x + randNumX;
						local ypos = y + randNumY;
						parentChr.sq_StartWrite();
						parentChr.sq_WriteDword(1);
						sq_SendCreatePassiveObjectPacketPos(obj, 243445, 0, xpos, ypos, 50);
						
					}
					if (timeEventCount >= obj.getVar("mubei").get_vector(0))
						sq_SendDestroyPacketPassiveObject(obj);
				break;
			}
		break;
	}
}