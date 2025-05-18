function onEndCurrentAni_po_swordman_baynk(obj)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

	switch(id)
	{
		case 1://ÚûÓïóÖ Ùùìã
		case 2://ÚûÓïóÖ ÷¼Óï
		case 3://ÚûÓïóÖ ÎÃËü
		case 5://ÚûÓïóÖ ËİËü
			if(obj.isMyControlObject())
				sq_SendDestroyPacketPassiveObject(obj);
		break;
	}
}