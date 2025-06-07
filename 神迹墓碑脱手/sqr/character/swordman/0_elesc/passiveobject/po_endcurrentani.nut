function onEndCurrentAni_po_bladespirit_skill(obj)
{
	if(!obj) return;
	local pChrOBJ = obj.getTopCharacter();
	local parentChr = sq_GetCNRDObjectToSQRCharacter(pChrOBJ);
	local id = obj.getVar("id").get_vector(0);
	switch(id)
	{
		case 1:
			if(obj.isMyControlObject())
			{
				sq_SendDestroyPacketPassiveObject(obj);
			}
		break;
	}
}