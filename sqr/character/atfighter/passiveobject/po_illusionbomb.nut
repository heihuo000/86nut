


function setCustomData_po_illusionbomb(obj,reciveData)
{
	local Power = reciveData.readDword();
	local pAttack = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackPower(pAttack, Power);

    local currentAni = obj.getCurrentAnimation();
    local sizeRate = (reciveData.readDword()).tofloat() / 100.0;
    currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
    currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    sq_CreateParticle("passiveobject/huanyingbaosui/fighter/particle/lightexplosionparticle1.ptl", obj, 0, 0, 0, true, 1, 0, 2);
    sq_CreateParticle("passiveobject/huanyingbaosui/fighter/particle/lightexplosionparticle2.ptl", obj, 0, 0, 0, true, 1, 0, 2);
    sq_CreateParticle("passiveobject/huanyingbaosui/fighter/particle/lightexplosionparticle3.ptl", obj, 0, 0, 0, true, 1, 0, 2);
    sq_CreateParticle("passiveobject/huanyingbaosui/fighter/particle/lightexplosionparticle4.ptl", obj, 0, 0, 0, true, 1, 0, 2);
}

function onEndCurrentAni_po_illusionbomb(obj)
{
	if(!obj) return;
	
	sq_SendDestroyPacketPassiveObject(obj);
}