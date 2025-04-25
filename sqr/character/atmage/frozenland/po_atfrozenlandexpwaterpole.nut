
function setCustomData_po_ATFrozenLandExpWaterPole(obj, reciveData)
{

	if(!obj) return;
	
	local index = reciveData.readDword(); // �ε���
	local expAttackRate = reciveData.readDword(); // ���߰��ݷ�
	
	local atk = sq_GetCurrentAttackInfo(obj);
	
	if(atk)
	{
		sq_SetCurrentAttackBonusRate(atk, expAttackRate);
	}

	if(index == 1)
	{	
		local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
	}
}




function onDestroyObject_po_ATFrozenLandExpWaterPole(obj, object)
{

	if(!obj) return;

}

function onEndCurrentAni_po_ATFrozenLandExpWaterPole(obj)
{

	if(!obj) return;
	
	if(!obj.isMyControlObject()) return;
	

	sq_SendDestroyPacketPassiveObject(obj);

}
