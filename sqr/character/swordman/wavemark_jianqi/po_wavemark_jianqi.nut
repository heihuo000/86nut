
// setCustomData
// �S�ħ���nut
function setCustomData_po_wavemarkattack_light(obj, receiveData)
{
	if(!obj)
		return;
	local attackBonusRate = receiveData.readDword();
	local id = receiveData.readDword();
    obj.getVar("id").clear_vector();
    obj.getVar("id").push_vector(id);

    if (id == 0)
    {
        local attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }

    if (id == 1)
    {
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }

    if (id == 2)
    {
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        local ani = obj.getCustomAnimation(1);
		obj.setCurrentAnimation(ani);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }

}

function procAppend_po_wavemarkattack_light(obj)
{
	if(!obj)
		return;
	local x = sq_GetXPos(obj);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 20);

	if (obj.getDirection() == 0)
		{
			sq_setCurrentAxisPos(obj, 0, x-2);
		}else
		{
			sq_setCurrentAxisPos(obj, 0, x+2);
		}
}

function onEndCurrentAni_po_wavemarkattack_light(obj)
{
	if(!obj)
		return;
		
	if(obj.isMyControlObject())
	{
		sq_SendDestroyPacketPassiveObject(obj);
	}
    if (obj.getVar("id").get_vector(0) == 1)
    {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

