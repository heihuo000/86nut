
// setCustomData
function setCustomData_po_ATWindStrike(obj, receiveData)
{
	if(!obj)
		return;

	local attackBonusRate = receiveData.readDword();// ���ݷ�(%)	
	local power = receiveData.readDword();		// ���ݷ�+
	local upForce = receiveData.readWord();		// ���� ��
	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
	sq_SetCurrentAttackPower(attackInfo, power);
	sq_SetCurrentAttacknUpForce(attackInfo, upForce);
}



function onEndCurrentAni_po_ATWindStrike(obj)
{
	if(!obj)
		return;
		
	if(obj.isMyControlObject())
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
}
