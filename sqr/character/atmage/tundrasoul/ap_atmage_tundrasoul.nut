
////////////////////////////////////////////////////////////////////

function enableAuraEffect_AuraTundraSoul(appendage, target)
{
	//print(" auratundra");	
	
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(target, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut");

	print( "isAppend:" + isAppend);
	
	local parentObject = appendage.getParent();
	local parentObj = sq_ObjectToSQRCharacter(parentObject);
	
	if(!parentObj)
		return;
	
	if(isAppend)
	{
		if(sq_IsValidActiveStatus(target, ACTIVESTATUS_FREEZE) || !parentObj.isInBattle())
		{
			CNSquirrelAppendage.sq_RemoveAppendage(target, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut");
		}
		return;
	}
		
		
		
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(target, parentObj, SKILL_TUNDRASOUL, false, 
	"Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut", true);
	
	local skillLevel = parentObj.sq_GetSkillLevel(SKILL_TUNDRASOUL);
	// 0.������ �ɸ��� �ð� 1.���᷹�� 2.����Ȯ�� 3.����ð� 4.����ִ� �� �߰� ������
	local frozenWaitTime = parentObj.sq_GetLevelData(SKILL_TUNDRASOUL, 0, skillLevel); // 0.������ �ɸ��� �ð�
	local frozenLevel = parentObj.sq_GetLevelData(SKILL_TUNDRASOUL, 1, skillLevel);	 // 1.���᷹��
	local frozenRate = parentObj.sq_GetLevelData(SKILL_TUNDRASOUL, 2, skillLevel);	 // 2.����Ȯ��
	local frozenTime = parentObj.sq_GetLevelData(SKILL_TUNDRASOUL, 3, skillLevel);	 // 3.����ð�
	local frozenAddDamageRate = parentObj.sq_GetLevelData(SKILL_TUNDRASOUL, 4, skillLevel);	 // 4.����ִ� �� �߰� ������

	appendage.getVar("skl").clear_vector();
	appendage.getVar("skl").push_vector(frozenWaitTime);
	appendage.getVar("skl").push_vector(frozenLevel);
	appendage.getVar("skl").push_vector(frozenRate);
	appendage.getVar("skl").push_vector(frozenTime);
	appendage.getVar("skl").push_vector(frozenAddDamageRate);
}

function disableAuraEffect_AuraTundraSoul(appendage, target)
{
	if(!sq_IsValidActiveStatus(target, ACTIVESTATUS_FREEZE))
	{
		CNSquirrelAppendage.sq_RemoveAppendage(target, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut");
	}
	//print(" disable");

}

function isInAuraRange_AuraTundraSoul(appendage, target)
{
	//print(" \n aa:" + target);
	if(sq_IsValidActiveStatus(target, ACTIVESTATUS_FREEZE))
	{
		local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(target, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut");
		
		if(isAppend)
		{
			//CNSquirrelAppendage.sq_RemoveAppendage(target, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoulCS.nut");
		}
		return false;
	}
	
	if(!sq_IsInBattle())
		return false;
	
	return true;
}
////////////////////////////////////////////////////////////////////

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_tundrasoul")
	appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_atmage_tundrasoul")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_tundrasoul")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atmage_tundrasoul")
	appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_atmage_tundrasoul")
	appendage.sq_AddFunctionName("onSetHp", "onSetHp_appendage_atmage_tundrasoul")
}


function sq_AddEffect(appendage)
{
}

function proc_appendage_atmage_tundrasoul(appendage)
{
	if(!appendage) {
		return;
	}	
	
	
	local parentObj = appendage.getParent();
	local currentT = appendage.getTimer().Get();
	local rebirthTime_ = appendage.sq_var.get_vector(VECTOR_I_REBIRTH_TIME);
	
	if(!parentObj)
	{
		appendage.setValid(false);
		return;
	}
	
	
	local parentChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
	
	if(!parentChr)
	{
		appendage.setValid(false);
		return;
	}
	
	local skill = sq_GetSkill(parentChr, SKILL_TUNDRASOUL);
	
	if(skill)
	{
		local auraAppendage = 0;
		local appendage = CNSquirrelAppendage.sq_GetAppendage(parentChr, "Character/ATMage/TundraSoul/ap_ATMage_TundraSoul.nut");
		
		if(appendage)
		{
			auraAppendage = appendage.sq_getSquirrelAuraMaster("AuraTundraSoul");
		}
		
		if(!parentChr.isInBattle())
		{ // �������� �ƴ϶��.. on�̵� off�� ������ aura ȿ���� �����մϴ�.
			if(auraAppendage)
			{
				if(parentChr.isMyControlObject())
				{
					sq_BinaryStartWrite();
					sq_BinaryWriteDword(1); // 
					sq_SendChangeSkillEffectPacket(parentChr, SKILL_TUNDRASOUL);
				}
			}
		}
		else		
		{ // �������̶��..

			if(skill.isSealFunction())
			{ // off�ε� �ƿ�� ������ �����մϴ�.
				if(auraAppendage)
				{
					//print(" parentChr.isInBattle():" + parentChr.isInBattle() + " auraAppendage:" + auraAppendage);
					if(parentChr.isMyControlObject())
					{
						sq_BinaryStartWrite();
						sq_BinaryWriteDword(1); // 
						sq_SendChangeSkillEffectPacket(parentChr, SKILL_TUNDRASOUL);
					}
				}
			}
			else
			{ // on�ε� �ƿ�� ������ �Ѿ��մϴ�.
				if(parentObj.getState() == STATE_DIE) // �������¶�� �ƿ�� �ϴ� �����մϴ�.
				{
					if(auraAppendage)
					{
						if(parentChr.isMyControlObject())
						{
							sq_BinaryStartWrite();
							sq_BinaryWriteDword(1); // 
							sq_SendChangeSkillEffectPacket(parentChr, SKILL_TUNDRASOUL);
						}
					}
				}
				else
				{				
					if(!auraAppendage)
					{
						if(parentChr.isMyControlObject())
						{
							//print(" parentChr.isInBattle():" + parentChr.isInBattle() + " auraAppendage:" + auraAppendage);
							sq_BinaryStartWrite();
							sq_BinaryWriteDword(0); // 
							sq_SendChangeSkillEffectPacket(parentChr, SKILL_TUNDRASOUL);
						}
					}
					else
					{ // �ƿ�� �ִٴ� ���������� valid�� false�� �� �ֽ��ϴ�.
						if(!auraAppendage.isValid())
						{ // �ƿ�� isvalid�� false���.. �ϴ� �������մϴ�.
							print( " \n\n valid:" + auraAppendage.isValid());
							sq_BinaryStartWrite();
							sq_BinaryWriteDword(1); // 
							sq_SendChangeSkillEffectPacket(parentChr, SKILL_TUNDRASOUL);
						}
					}
				}
			}
		}
	}
	
}


function onStart_appendage_atmage_tundrasoul(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();		


	appendage.sq_var.clear_timer_vector();
	appendage.sq_var.push_timer_vector();
	appendage.sq_var.push_timer_vector();
	
	appendage.sq_var.clear_vector();
	appendage.sq_var.push_vector(0); // state
			
	local t = appendage.sq_var.get_timer_vector(0);
	t.setParameter(400, -1);
	t.resetInstant(0);
	
	local sqrObj = sq_GetCNRDObjectToSQRCharacter(obj);
	
	if(sqrObj)
	{
	}
}


function prepareDraw_appendage_atmage_tundrasoul(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();	
}

function onEnd_appendage_atmage_tundrasoul(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();		
	
	local sqrObj = sq_GetCNRDObjectToSQRCharacter(obj);
	
	if(sqrObj)
	{
	}
	
}

// ��� ���� ������ ���κ�
function isEnd_appendage_atmage_tundrasoul(appendage)
{
	if(!appendage)
		return false;
		
	local T = appendage.getTimer().Get();	
	
	return false;
}