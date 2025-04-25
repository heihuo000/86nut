
function setCustomData_po_ATIceRoad(obj, reciveData)
{

	if(!obj) return;	
	
	//sq_BinaryWriteDword(change_time); // �ð�
	//sq_BinaryWriteDword(rate); //		 Ȯ��
	//sq_BinaryWriteDword(movSpd); //	 ����ġ 
	
	local changeTime = reciveData.readDword(); // �ð�
	local rate = reciveData.readDword(); // Ȯ��
	local movSpd = reciveData.readDword(); // ����ġ
	
	obj.getVar("info").clear_vector();
	obj.getVar("info").push_vector(changeTime);
	
	local atk = sq_GetCurrentAttackInfo(obj);
	//sq_SetChangeStatusIntoAttackInfo(atk, 0, ACTIVESTATUS_SLOW, rate, movSpd, changeTime);
	
	
	
	// Ư����ų�� ����
	// ���̽� �ε� Ư�� �нú� ��ų�� ����ٸ� ���� ���� ���� �����̻� �ɸ���.
	local exSkillLevel = reciveData.readWord();
	if (exSkillLevel > 0)
	{
		local prob = reciveData.readFloat();
		local asLevel = reciveData.readWord();
		local validTime = reciveData.readDword();
		
		sq_SetChangeStatusIntoAttackInfoWithEtc(atk, 0, ACTIVESTATUS_FREEZE, prob.tointeger(), asLevel, validTime, 0, 0);
	}
}


function setState_po_ATIceRoad(obj, state, datas)
{

	if(!obj) return;

}

function procAppend_po_ATIceRoad(obj)
{

	if(!obj) return;
	
	//print(" ice road");
	
	// 
}

function onAttack_po_ATIceRoad(obj, damager, boundingBox, isStuck)
{
	if(!obj) return 0;
	
	local pChr = obj.getTopCharacter();
	
	if(!pChr) return 0;
	
	if(obj.isMyControlObject())
	{
		
		local skill_level = sq_GetSkillLevel(pChr, SKILL_ICEROAD);
		local rate = sq_GetLevelData(pChr, SKILL_ICEROAD, SKL_LV_3, skill_level); // �̼� Ȯ��
		
		local rand = sq_getRandom(0, 100); 
		
		
		// �̼�Ȯ���� �Ѿ�� �̼Ӱ��� ��������� �ɾ��ݴϴ�..
		//sq_IsValidActiveStatus(damager, ACTIVESTATUS_SLOW);
		if(rate >= rand)
		{
			local group = sq_GetGroup(damager);
			local uniqueId = sq_GetUniqueId(damager);

			sq_BinaryStartWrite();
			sq_BinaryWriteWord(group);
			sq_BinaryWriteWord(uniqueId);
			
			sq_SendChangeSkillEffectPacket(obj, SKILL_ICEROAD);
		}
	}
	//
	
	
	return 0;
}



function onChangeSkillEffect_po_ATIceRoad(obj, skillIndex, reciveData)
{
	print(" onChangeSkillEffect_po_ATIceRoad:" + obj);

	if(skillIndex != SKILL_ICEROAD) return;	
	if(!obj) return;
	
	local pChr = obj.getTopCharacter();
	
	print(" onChangeSkillEffect_po_ATIceRoad:" + pChr);
	
	if(!pChr) return;
	
	
	//print(" iceroad rand:" + rand + " rate:" + rate);
	
	local group = reciveData.readWord();
	local uniqueId = reciveData.readWord();
	
	local damager = sq_GetObject(obj, group, uniqueId);

	local active_damager = sq_GetCNRDObjectToActiveObject(damager);
	
	if(!active_damager) return 0;
	
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, damager, SKILL_ICEROAD, true, "Character/ATMage/IceRoad/ap_ATMage_IceRoadCS.nut", false);

	// ���⼭ append �۾�		
	CNSquirrelAppendage.sq_AppendAppendageID(appendage, damager, damager, APID_SKILL_LIGHT_ENCHANT_WEAPON, false);
	//		
	
	// �ߺ��Ǹ� �ȵǱ� ������.. �ٽ� ��´�..
	appendage = active_damager.GetSquirrelAppendage("Character/ATMage/IceRoad/ap_ATMage_IceRoadCS.nut");
	
	// �̼� ����
	if(appendage)
	{
		local skill_level = sq_GetSkillLevel(pChr, SKILL_ICEROAD);
		local change_time = sq_GetLevelData(pChr, SKILL_ICEROAD, SKL_LV_1, skill_level); // ���ӽð�
		//local change_time = 5000;

		appendage.sq_SetValidTime(change_time); // ������� Ÿ�� ����
		
		local mov_spd = sq_GetLevelData(pChr, SKILL_ICEROAD, SKL_LV_2, skill_level); // ���ӽð�
		mov_spd = -mov_spd;
		//local mov_spd = -600;
		
		print(" mov_spd:" + mov_spd.tofloat());
		
		appendage.getTimer().Reset();
		appendage.getTimer().Start(0,0);
		
		appendage.sq_var.clear_vector();		
		appendage.sq_var.push_vector(change_time); // ���ӽð�
		appendage.sq_var.push_vector(0); // �÷���
		
		
		local change_appendage = appendage.sq_getChangeStatus("changeStatus");
		
		if(!change_appendage)
			change_appendage = appendage.sq_AddChangeStatusAppendageID(damager, damager, 0, CHANGE_STATUS_TYPE_MOVE_SPEED, false, mov_spd, APID_COMMON);
		
		if(change_appendage)
		{
			change_appendage.clearParameter();
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, mov_spd.tofloat());
		}
	}
	else
	{
		print(" exist appendage");
	}

}

function onDestroyObject_po_ATIceRoad(obj, object)
{

	if(!obj) return;

}

function onKeyFrameFlag_po_ATIceRoad(obj, flagIndex)
{

}

function onEndCurrentAni_po_ATIceRoad(obj)
{

	if(!obj) return;
	
		if(obj.isMyControlObject()) {
			sq_SendDestroyPacketPassiveObject(obj);
		}

}
