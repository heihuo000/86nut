

// state�� �����ϰ� ó������ ������ �˴ϴ�. ���� ���ҽ��� �����մϴ�. 
function onSetState_JumpAttack(obj, state, datas, isResetTimer)
{	
	if (!obj) return;
}


function onAfterSetState_JumpAttack(obj, state, datas, isResetTimer)
{
	if (!obj) return;
	
	local iceElementalAttackSkillLevel = obj.sq_GetSkillLevel(SKILL_ICE_ELEMENTAL_ATTACK);
	
	if (state == STATE_JUMP_ATTACK && iceElementalAttackSkillLevel <= 0)
	{
		// ��Ÿ ����Ʈ�� ���δ�.
		// �ɷ��ִ� ���� ��ų �ε��� �� ���� ������Ʈ�� ���� �������� ����Ʈ�� �ٸ� (�Ӽ������� �ٴ� ����Ʈ�� �ٸ�)
		local element = obj.getThrowElement();
		local attackIndex = obj.getAttackIndex();
		
		local appendage = obj.GetSquirrelAppendage("Character/ATMage/ElementalChange/ap_ATMage_Elemental_Change.nut");
		if (!appendage || !appendage.isValid())
			element = ENUM_ELEMENT_NONE;
			
		
		if (element == ENUM_ELEMENT_FIRE)
		{
			obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/fire/attack1_fire_normal.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/fire/attack1_fire_dodge.ani"), 0, 0);
		}
		else if (element == ENUM_ELEMENT_WATER)
		{
			obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/water/attack1_water_normal.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/water/attack1_water_dodge.ani"), 0, 0);
		}
		else if (element == ENUM_ELEMENT_DARK)
		{
			obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/dark/attack1_dark_normal.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/dark/attack1_dark_dodge.ani"), 0, 0);
		}
		else if (element == ENUM_ELEMENT_LIGHT)
		{
			obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/light/attack1_light_normal.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/light/attack1_light_dodge.ani"), 0, 0);
		}
		else if (element == ENUM_ELEMENT_NONE)
		{
			obj.sq_AddStateLayerAnimation(1, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/attack1_none_normal.ani"), 0, 0);
			obj.sq_AddStateLayerAnimation(2, obj.sq_CreateCNRDAnimation("Effect/Animation/ATJumpAttack/attack1_none_dodge.ani"), 0, 0);
		}
	}
}



// ���ݽ� ���� ��ü�� �����Ѵ�.
function onKeyFrameFlag_JumpAttack(obj, flagIndex)
{
	if(!obj)
		return false;

	if (obj.sq_IsMyControlObject() && (flagIndex == 1 || flagIndex == 2))
	{
		local xPos = 29, zPos = 54;
		if (flagIndex == 2)
		{
			xPos = 32, zPos = 76;
		}
		
		// ������ü�� �����Ѵ�.
		createMiniMagicCircle(obj, xPos, zPos, 1, 0); // direction 0:����  1:�밢��  2:�ϴ�
		
		if (obj.getDirection() == ENUM_DIRECTION_LEFT)
			xPos = -xPos;

		local element = obj.getThrowElement();
		local effectFile = "Character/Mage/Effect/Animation/ATJumpAttack/attack1_none_dodge_obj.ani";
		
		if (element == ENUM_ELEMENT_FIRE)
			effectFile = "Character/Mage/Effect/Animation/ATJumpAttack/fire/attack1_fire_dodge_obj.ani";
		else if (element == ENUM_ELEMENT_WATER)
			effectFile = "Character/Mage/Effect/Animation/ATJumpAttack/water/attack1_water_dodge_obj.ani";
		else if (element == ENUM_ELEMENT_DARK)
			effectFile = "Character/Mage/Effect/Animation/ATJumpAttack/dark/attack1_dark_dodge_obj.ani";
		else if (element == ENUM_ELEMENT_LIGHT)
			effectFile = "Character/Mage/Effect/Animation/ATJumpAttack/light/attack1_light_dodge_obj.ani";
		
		createAnimationPooledObject(obj, effectFile, true, obj.getXPos() + xPos, obj.getYPos() + 1, obj.getZPos() + zPos);		
		
		local attackIndex = 0;
		playSoundForAtmageAttack(obj, element, attackIndex);
	}
	else if (flagIndex == 10)
	{
		// ����ü�� �������, ���߿��� ������ ���� 2�븦 �°Ե�
		obj.resetHitObjectList();
	}

	return true;
}
