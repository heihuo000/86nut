function onEndCurrentAni_po_swordman_baynk(obj)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

	switch(id)
	{
		case 1://������ ����
		case 2://������ ����
		case 3://������ ����
		case 5://������ ����
			if(obj.isMyControlObject())
				sq_SendDestroyPacketPassiveObject(obj);
		break;
	}
}