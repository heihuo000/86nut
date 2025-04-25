function onChangeSkillEffect_ATPriestNew(obj, skillIndex, reciveData)
{
	if(!obj)
		return;
	
	if(skillIndex == SKILL_ZEAL_OF_FAITH)
	{
		if (reciveData.getSize() > 0)
		{
			local mode = reciveData.readDword();
		}
	}
}


function procAppend_thesevendeadlysins(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	if(skill_level < 1)
		return;
	if(!obj)
		return false;

	if(!obj.isMyControlObject())
		return false;

	local loadSlot = obj.sq_GetSkillLoad(SKILL_THESEVENDEADLYSINS)
	local maxCreateCount = 1

	if(!loadSlot)
	{
		obj.sq_AddSkillLoad(SKILL_THESEVENDEADLYSINS, 109, 0, obj.sq_GetIntData(SKILL_THESEVENDEADLYSINS, 0))
		loadSlot = obj.sq_GetSkillLoad(SKILL_THESEVENDEADLYSINS)
		loadSlot.setStartCool();
	}
	else
	{
		local cishu = loadSlot.getRemainLoadNumber();
		if(cishu < maxCreateCount)
		{
			if(!loadSlot.isCooling())
			{
			loadSlot.increaseLoadCount(1);
			local cishu = loadSlot.getRemainLoadNumber();
				if(cishu < maxCreateCount)
				{
					loadSlot.setStartCool();
				}
			}
		}
	}
}

function isBrandOfHeresy(obj) 
{
	if (!obj) return false;
	return CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/judge/brandofheresy/ap_brandofheresy_enemy.nut");
}

function ATPriestDetonateEssence(chr, obj, type){
	if(!chr || !obj)
		return false;
	local count = chr.getMyPassiveObjectCount(24240);
	for(local i=0;i<count;++i)
	{
		local object = chr.getMyPassiveObject(24240, i);
		if(!object) continue;
		local distance = sq_GetDistanceObject(obj, object, false);
		local id = object.getVar("id").get_vector(0);
		if(id == 114)
		{
			local atkRange = sq_GetBoundingBoxXSize(sq_GetAttackBoundRect(obj.getCurrentAnimation()));
			atkRange = atkRange / 2;
			local dmgRange = sq_GetBoundingBoxXSize(sq_GetAttackBoundRect(object.getCurrentAnimation()));
			dmgRange = dmgRange / 2;
			if(dmgRange + atkRange > distance)
			{
				
				local PosX = sq_GetXPos(object);
				local PosY = sq_GetYPos(object);
				local PosZ = sq_GetZPos(object);
				
				sq_SendDestroyPacketPassiveObject(object);
				sq_BinaryStartWrite();
				sq_BinaryWriteDword(110);
				sq_BinaryWriteDword(type);
				sq_SendCreatePassiveObjectPacketPos(chr,24240, 0, PosX, PosY, PosZ);
				return true;
			}
		}
	}
	return false;
}

function ATPriestDetonateEssenceWithoutDistance(obj){
	if(!obj)
		return false;
	local count = obj.getMyPassiveObjectCount(24240);
	for(local i=0;i<count;++i)
	{
		local object = obj.getMyPassiveObject(24240, i);
		if(!object) continue;
		local id = object.getVar("id").get_vector(0);
		if(id == 114)
		{
			local PosX = sq_GetXPos(object);
			local PosY = sq_GetYPos(object);
			local PosZ = sq_GetZPos(object);
			sq_SendDestroyPacketPassiveObject(object);
			
			sq_BinaryStartWrite();
			sq_BinaryWriteDword(110);
			sq_BinaryWriteDword(0);
			sq_SendCreatePassiveObjectPacketPos(obj,24240, 0, PosX, PosY, PosZ);
			
			return true;
		}
	}
	return false;
}

function procHolyFlame(obj)
{
	if(!obj) return;
	if (isHolyFlame(obj))
	{
		local attackInfo = sq_GetCurrentAttackInfo(obj);
		if(attackInfo){
			attackInfo.setElement(ENUM_ELEMENT_LIGHT); 
			attackInfo.setElement(ENUM_ELEMENT_FIRE); 
		}
	}
}

function isHolyFlame(obj)
{
	if(!obj) return;
	local loadSlot = obj.sq_GetSkillLoad(SKILL_HOLYFLAME);
	if(!loadSlot){
		return false;
	}
	else
	{
		local remain_number = loadSlot.getRemainLoadNumber();
		if(remain_number>0)
		{
			return true;
		}
		return false;
	}
}

function useHolyFlame(obj,count)
{
	if(!obj) return;
	if(isHolyFlame(obj)){
		local loadSlot = obj.sq_GetSkillLoad(SKILL_HOLYFLAME);
		local remain_number = loadSlot.getRemainLoadNumber();
		if(count >= remain_number)
		{
			obj.sq_RemoveSkillLoad(SKILL_HOLYFLAME);
		}
		else
		{
			loadSlot.decreaseLoadCount(count.tointeger());
		}
	}
}

function removeHolyFlame(obj)
{
	if(!obj) return;
	local loadSlot = obj.sq_GetSkillLoad(215);
	if(loadSlot)
	{
		obj.sq_RemoveSkillLoad(215);
	}
}

function getMaxHolyFlame(obj)
{
	if(!obj) return;
	local skill_level = sq_GetSkillLevel(obj, SKILL_BRANDOFHERESY);
	local number = obj.sq_GetIntData(SKILL_HOLYFLAME, 0);
	
	if(skill_level > 0)
	{
		number = number + sq_GetLevelData(obj, SKILL_BRANDOFHERESY, 0, skill_level);
	}
	
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/judge/burnatthestake/ap_burnatthestakebuffb.nut"))
	{
		number = number + 3;
	}
	
	return number;
}


function SetATPriestStatePlaySound(obj)
{
	if(!obj) return;
	if(Seducer(obj))
	{
		obj.sq_SetSoundTagCreatureCommand("PW_CMDPET_DM");
		obj.sq_SetSoundTagLackMp("PW_NOMANA_DM");
		obj.sq_SetSoundTagCoolTime("R_PW_COOLTIME_DM");
		obj.sq_SetSoundTagDie("PW_DIE_DM");
		obj.sq_SetSoundTagBackStepStart("PW_BACK");
		obj.sq_SetSoundTagThrowItem("R_PW_THROW_DM");
	}
	else if(sq_GetSkillLevel(obj, SKILL_ARMORMASTERYCLOTHSORCERESS) > 0)
	{
		obj.sq_SetSoundTagCreatureCommand("PW_CMDPET");
		obj.sq_SetSoundTagLackMp("PW_NOMANA_SORCERESS");
		obj.sq_SetSoundTagCoolTime("R_PW_COOLTIME_SORCERESS");
		obj.sq_SetSoundTagDie("R_PW_DIE_SORCERESS");
		obj.sq_SetSoundTagBackStepStart("PW_BACK");
		obj.sq_SetSoundTagThrowItem("R_PW_THROW");
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		obj.sq_SetSoundTagCreatureCommand("PW_CMDPET_MS");
		obj.sq_SetSoundTagLackMp("PW_NOMANA_MS");
		obj.sq_SetSoundTagCoolTime("R_PW_COOLTIME_MS");
		obj.sq_SetSoundTagDie("PW_DIE_MS");
		obj.sq_SetSoundTagBackStepStart("PW_BACK");
		obj.sq_SetSoundTagThrowItem("R_PW_THROW");
	}
	else if(sq_GetSkillLevel(obj, SKILL_WILLOFINQUISITOR) > 0)
	{
		obj.sq_SetSoundTagCreatureCommand("PW_CMDPET");
		obj.sq_SetSoundTagLackMp("PW_NOMANA_INQUISITOR");
		obj.sq_SetSoundTagCoolTime("R_PW_COOLTIME_INQUISITOR");
		obj.sq_SetSoundTagDie("PW_DIE_INQUISITOR");
		obj.sq_SetSoundTagBackStepStart("PW_BACK");
		obj.sq_SetSoundTagThrowItem("R_PW_THROW");
	}
	else
	{
		obj.sq_SetSoundTagCreatureCommand("PW_CMDPET");
		obj.sq_SetSoundTagLackMp("R_PW_NOMANA");
		obj.sq_SetSoundTagCoolTime("R_PW_COOLTIME");
		obj.sq_SetSoundTagDie("PW_DIE");
		obj.sq_SetSoundTagBackStepStart("PW_BACK");
		obj.sq_SetSoundTagThrowItem("R_PW_THROW");
	}
}

function getAttackCancelStartFrameSize_ATPriest(obj)
{
	local MaxAtkNumber = obj.sq_GetAttackCancelStartFrameSize();
	MaxAtkNumber = 2;
	return MaxAtkNumber;
}

function getAttackAni_ATPriest(obj, index)
{
	if(!obj) return null;
	local animation = obj.sq_GetAttackAni(index);
	local var = obj.getVar();
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		if (index == 0)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_CRUSADE_ATTACK1_BODY);
		else if (index == 1)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_CRUSADE_ATTACK2_BODY);
		else if (index == 2)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_CRUSADE_ATTACK3_BODY);
	}
	else if(Seducer(obj))
	{
		if (index == 0)
			animation = var.GetAnimationMap("SeducerBasicA", "character/priest/seducer/atanimation/demonizationattack_basic_a_body.ani");
		else if (index == 1)
			animation = var.GetAnimationMap("SeducerBasicB", "Character/Priest/Seducer/atanimation/demonizationattack_basic_b_body.ani");
		else if (index == 2)
			animation = var.GetAnimationMap("SeducerBasicC", "Character/Priest/Seducer/atanimation/demonizationattack_basic_c_body.ani");
	}else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		if (index == 0)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_MISTRESS_ATTACK1);
		else if (index == 1)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_MISTRESS_ATTACK2);
		else if (index == 2)
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_MISTRESS_ATTACK3);
	}
	else if(sq_GetSkillLevel(obj, SKILL_WILLOFINQUISITOR) > 0)
	{
		if(isHolyFlame(obj))
		{
			animation = obj.sq_GetCustomAni(ANI_Inquisitor_Attack1 + index);
		}
		else
		{
			animation = obj.sq_GetCustomAni(ANI_NormalInquisitor_Attack1 + index);
		}
	}
	return animation;
}

function getJumpAttackAni_ATPriest(obj)
{
	local animation = obj.sq_GetJumpAttackAni();
	local var = obj.getVar();
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_CRUSADE_JUMP_ATTACK_BODY);
	}
	else if(Seducer(obj))
	{
		animation = var.GetAnimationMap("Seducer99", "Character/Priest/Seducer/ATAnimation/demonizationattack_jump_body.ani");
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_MISTRESS_JUMPATTACK);
	}
	else if(sq_GetSkillLevel(obj, SKILL_WILLOFINQUISITOR) > 0)
	{
		if(isHolyFlame(obj))
		{
			animation = obj.sq_GetCustomAni(ANI_HolyFlameJumpAttack);
		}
		else{
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_INQUISITOR_JUMPATTACK);
		}
	}
	return animation;
}

function getDashAttackAni_ATPriest(obj)
{
	if(!obj) return null;
	local animation = obj.sq_GetDashAttackAni();
	local var = obj.getVar();
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_CRUSADE_DASH_ATTACK_BODY);
	}
	else if(Seducer(obj))
	{
		animation = var.GetAnimationMap("Seducer98", "Character/Priest/Seducer/ATAnimation/demonizationattack_dash_body.ani");
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		animation = obj.sq_GetCustomAni(CUSTOM_ANI_MISTRESS_DASHATTACK);
	}
	else if(sq_GetSkillLevel(obj, SKILL_WILLOFINQUISITOR) > 0)
	{
		if(isHolyFlame(obj))
		{
			animation = obj.sq_GetCustomAni(ANI_HolyFlameDashAttack);
		}
		else{
			animation = obj.sq_GetCustomAni(CUSTOM_ANI_INQUISITOR_DASHATTACK);
		}
	}
	return animation;
}

function getRestAni_ATPriest(obj)
{
	if(!obj)
		return false;
	local ani = obj.sq_GetRestAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer87", "Character/Priest/Seducer/ATAnimation/demonization_stay.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameRest);
	}
	return ani;
}

function getStayAni_ATPriest(obj)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetStayAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer87", "Character/Priest/Seducer/ATAnimation/demonization_stay.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameStay);
	}

	return ani;
}

function getSitAni_ATPriest(obj)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetSitAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer88", "Character/Priest/Seducer/ATAnimation/demonization_sit.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameSit);
	}
	return ani;
}

function getMoveAni_ATPriest(obj)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetMoveAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer89", "Character/Priest/Seducer/ATAnimation/demonization_move.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameMove);
	}
	return ani;
}

function getDashAni_ATPriest(obj)
{
	if(!obj)
		return false;
	local ani = obj.sq_GetDashAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer90", "Character/Priest/Seducer/ATAnimation/demonization_dash.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameDash);
	}
	return ani;
}

function getJumpAni_ATPriest(obj)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetJumpAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer91", "Character/Priest/Seducer/ATAnimation/demonization_jump.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameJump);
	}

	return ani;
}

function getDownAni_ATPriest(obj)
{
	if(!obj)
		return false;
	local ani = obj.sq_GetDownAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer92", "Character/Priest/Seducer/ATAnimation/demonization_down.ani");
	}
	return ani;
}

function getDamageAni_ATPriest(obj, index)
{
	if(!obj)
		return false;

	local ani = obj.sq_GetDamageAni(index);
	local var = obj.getVar();
	if(Seducer(obj))
	{
		if(index == 0)
		{
			ani = var.GetAnimationMap("Seducer93", "Character/Priest/Seducer/ATAnimation/demonization_damage1.ani");
		}
		if(index == 1)
		{
			ani = var.GetAnimationMap("Seducer94", "Character/Priest/Seducer/ATAnimation/demonization_damage2.ani");
		}
	}
	else if(isHolyFlame(obj))
	{
		if(index == 0)
		{
			ani = sq_GetCustomAni(obj, ANI_HolyFlameDamage1);
		}
		if(index == 1)
		{
			ani = sq_GetCustomAni(obj, ANI_HolyFlameDamage2);
		}
	}

	return ani;
}

function getBuffAni_ATPriest(obj)
{
	if(!obj)
		return false;
	local ani = obj.sq_GetBuffAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer102", "Character/Priest/Seducer/ATAnimation/demonization_buff.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAMEBUFF);
	}
	
	return ani;
}

function getThrowChargeAni_ATPriest(obj, index)
{
	if(!obj)
		return false;
		
	local ani = obj.sq_GetThrowChargeAni(index);
	local var = obj.getVar();
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer100", "Character/Priest/Seducer/ATAnimation/demonization_throw1.ani");
	}
	else if(isHolyFlame(obj))
	{
		switch(index) {
			case 0:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_THROW1);
				break;
			case 1:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_PRAY1);
				break;
			case 2:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_DELIVER1);
				break;
		}
	}

	return ani;
}

function getThrowShootAni_ATPriest(obj, index)
{
	if(!obj)
		return false;
	local var = obj.getVar();
	local ani = obj.sq_GetThrowShootAni(index);
	if(Seducer(obj))
	{
		ani = var.GetAnimationMap("Seducer101", "Character/Priest/Seducer/ATAnimation/demonization_throw2.ani");
	}
	else if(isHolyFlame(obj))
	{
		switch(index) {
			case 0:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_THROW2);
				break;
			case 1:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_PRAY2);
				break;
			case 2:
				ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_DELIVER2);
				break;
		}
	}
	return ani;
}

function getOverturnAni_ATPriest(obj)
{
	if(!obj) return null;
	local ani = obj.sq_GetOverturnAni();
	local var = obj.getVar();
	if(Seducer(obj))
	{ 
		ani = null;
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, CUSTOM_ANI_HOLYFLAME_OVERTURN);
	}
	return ani;
}

function getGetItemAni_ATPriest(obj)
{
	if(!obj) return null
	local ani = obj.sq_GetGetItemAni()
	local var = obj.getVar();
	if(Seducer(obj))
	{ 
		ani = var.GetAnimationMap("Seducer88", "Character/Priest/Seducer/ATAnimation/demonization_sit.ani");
	}
	else if(isHolyFlame(obj))
	{
		ani = sq_GetCustomAni(obj, ANI_HolyFlameSit);
	}
	return ani
}

function getDefaultAttackInfo_ATPriest(obj, index)
{
	if(!obj) return null;
	local attackInfo = obj.sq_GetDefaultAttackInfo(index);
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		if (index == 0)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_CRUSADE_ATTACK1);
		else if (index == 1)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_CRUSADE_ATTACK2);
		else if (index == 2)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_CRUSADE_ATTACK3);
	}else if(Seducer(obj))
	{
		if (index == 0)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_DEMONIZATION_ATTACK1);
		else if (index == 1)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_DEMONIZATION_ATTACK2);
		else if (index == 2)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_DEMONIZATION_ATTACK3);
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		if (index == 0)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_TEMPTRESS_ATTACK1);
		else if (index == 1)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_TEMPTRESS_ATTACK2);
		else if (index == 2)
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_TEMPTRESS_ATTACK3);
	}
	else if(sq_GetSkillLevel(obj, SKILL_WILLOFINQUISITOR) > 0)
	{
		if(isHolyFlame(obj) && index < 4)
		{
			attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_HOLYFLAME_ATTACK1 + index);
		}
		else if(!isHolyFlame(obj) && index < 4)
		{
			attackInfo = sq_GetCustomAttackInfo(obj, ATK_Inquisitor_Attack1 + index);
		}
	}
	
	return attackInfo;
}


function getJumpAttackInfo_ATPriest(obj)
{
	local attackInfo = obj.sq_GetJumpAttackInfo();
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_CRUSADE_JUMP_ATTACK);
	}else if(Seducer(obj))
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_DEMONIZATION_JUMPATTACK);
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_TEMPTRESS_JUMPATTACK);
	}
	else if(isHolyFlame(obj))
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_HOLYFLAME_JUMP_ATTACK);
	}
	return attackInfo;
}

function getDashAttackInfo_ATPriest(obj)
{
	if(!obj) return null;
	local attackInfo = obj.sq_GetDashAttackInfo();
	if(sq_GetSkillLevel(obj, SKILL_CRUSADE) > 0)
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_CRUSADE_DASH_ATTACK);
	}else if(Seducer(obj))
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_DEMONIZATION_DASHATTACK);
	}
	else if(sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN) > 0)
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_TEMPTRESS_DASHATTACK);
	}
	else if(isHolyFlame(obj))
	{
		attackInfo = sq_GetCustomAttackInfo(obj, CUSTOM_ATTACK_INFO_HOLYFLAME_DASH_ATTACK);
	}
	return attackInfo;
}

function ATPriest_Als_Ani(obj,aniFilename, disX, disY, disZ, imgangle, imgRate, Parent, SpeedRate)
{
	local angle = imgangle;	
	local ani = sq_CreateAnimation("",aniFilename);
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));
	local sizeRate = imgRate;
	local size = sizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size, size);
	ani.setAutoLayerWorkAnimationAddSizeRate(size);
	local setSpeedRateF = 100 * SpeedRate;
	ani.setSpeedRate(setSpeedRateF.tofloat()); 
	local pooledObj = sq_CreatePooledObject(ani,true);
	sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	if (Parent == 0)
	{
		sq_moveWithParent(obj, pooledObj);
	}
	sq_AddObject(obj,pooledObj,2,false);
}

function ATPriest_Create(obj,aniFilename,ENUM_DRAWLAYER_NORMAL,Xpos,Ypos,Zpos,angle,sizeRate,Parent,Speed,Push_obj)
{
	local image = sq_CreateDrawOnlyObject(obj,aniFilename,ENUM_DRAWLAYER_NORMAL,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), Xpos);
	image.setCurrentPos(posX,obj.getYPos() + Ypos,obj.getZPos() + Zpos);
	local rotate = angle.tointeger() * 0.017453;
	image.setCustomRotate(true,rotate);
	local imageAni = image.getCurrentAnimation();
	local size = sizeRate.tofloat() / 100.0;
	imageAni.Proc();
	imageAni.setImageRateFromOriginal(size, size);
	imageAni.setAutoLayerWorkAnimationAddSizeRate(size);
	if (Speed == 101)
	{
		image.setCurrentDirection(0);
	}
	if (Speed == 102)
	{
		image.setCurrentDirection(1);
	}
	else
	{
		image.setCurrentDirection(obj.getDirection());
	}
	imageAni.setSpeedRate(Speed.tofloat());
	if (Parent == 0)
	{
		sq_moveWithParent(obj, image);
	}
	obj.getVar(Push_obj).push_obj_vector(image);
}

function isDistanceOfTarget(obj, target, range)
{
	local distance = sq_GetDistanceObject(obj, target, false);
	if (distance <= range)
		return true;
	return false;
}

function isSkillCooltime(obj,skillIndex)
{
	local skill = sq_GetSkill(obj, skillIndex);
	return skill.isInCoolTime();
}

function isWeaponCrossc(obj)
{
	local WeaponSubType = obj.getWeaponSubType();
	if (WeaponSubType == 0)
		return true;
	return false;
}

function isStudyZealOfFaith(obj)
{
	if(obj.sq_GetSkillLevel(SKILL_ZEAL_OF_FAITH) > 0)
	{
		local Time = sq_GetIntData(obj, SKILL_ZEAL_OF_FAITH, 1);
		return Time;
	}
	return 0;
}

function isStudyBlessOfRaphael_AriaOfCourage(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_RAPHAEL);
	if(skill_level > 0)
	{
		local value = sq_GetLevelData(obj, SKILL_BLESS_OF_RAPHAEL, 5, skill_level)/10 + 100;
		return value;
	}
	return 100;
}

function isStudyBlessOfRaphael_AriaOfRegeneration(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_RAPHAEL);
	if(skill_level > 0)
	{
		local value = sq_GetLevelData(obj, SKILL_BLESS_OF_RAPHAEL, 7, skill_level)/10 + 100;
		return value;
	}
	return 100;
}

/*function onStartDungeonGetMagicalAttack(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_RAPHAEL);
	if(skill_level > 0)
	{
		local MagicalAttack = sq_GetCharacterIntelligence();
		INTELLIGENCE_VALUE = MagicalAttack;
	}
}*/

function onClosePopupWindow_ATPriest(obj, popupType, windowTileType)
{
	if (!obj)
		return;
}

function onMouseLeftButtonUp_ATPriest(obj)
{
	onMouseLeftButtonUp_AllGrowJob(obj);
}

function Seducer(obj)
{
    if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/seducer/depravitysevensins/ap_depravitysevensins.nut") == true)
		return true;
	return false;
}
    
function bodypressedsin(obj)
{
	if ( obj.sq_GetSkillLevel(SKILL_BODYPRESSEDSIN ) > 0  )
		return true;
	return false;
}

function createAttackCutExp(obj,damager)
{
	local rand = sq_getRandom(0,100).tointeger();
	local ani = null;
		
	if (rand <= 33)
	{
		if(damager.getObjectHeight() < 120)
		{
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_small2.ani";
		} else {
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_large2.ani";
		}
	}
	if (rand > 33 && rand <=66)
	{
		if(damager.getObjectHeight() < 120)
		{
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_small3.ani";
		} else {
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_large3.ani";
		}
	}
	if (rand > 66 && rand <=100)
	{
		if(damager.getObjectHeight() < 120)
		{
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_small1.ani";
		} else {
			ani = "character/priest/seducer/effect/animation/rosehiteffect/attemptresshiteffect_slash_large1.ani";
		}
	}
	ani = sq_CreateAnimation("",ani);
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(damager.getXPos() ,damager.getYPos() + 1,damager.getZPos() + damager.getObjectHeight()/2 );
	pooledObj.setCurrentDirection(damager.getDirection());
	sq_AddObject(obj,pooledObj,2,false);
}


function procSkill_ATPriest(obj)
{
	proc_TheSevenDeadlySins(obj);
	proc_bodypressedsin(obj);
	proc_armormasteryclothsorceress(obj);
}

function proc_TheSevenDeadlySins(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS);
	local isMistress = sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN);
	if (skill_level > 0 && isMistress > 0) {
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/seducer/thesevendeadlysins/ap_atthesevendeadlysins.nut")) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_THESEVENDEADLYSINS, false,
				"character/atpriest/seducer/thesevendeadlysins/ap_atthesevendeadlysins.nut", true);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_THESEVENDEADLYSINS, true);
		}
	}
}

function proc_bodypressedsin(obj)
{
	local skill_level = sq_GetSkillLevel(obj, SKILL_BODYPRESSEDSIN);
	if(skill_level > 0)
	{
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/seducer/bodypressedsin/ap_bodypressedsin.nut") )
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_BODYPRESSEDSIN, false, "character/atpriest/seducer/bodypressedsin/ap_bodypressedsin.nut", true);
			
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_BODYPRESSEDSIN, skill_level);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_BODYPRESSEDSIN, true);
		}
	}
}

function proc_armormasteryclothsorceress(obj)
{
    local skill_level = sq_GetSkillLevel(obj, SKILL_ARMORMASTERYCLOTHSORCERESS);
	if(skill_level > 0)
	{
		if(!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atpriest/3_sorceress/rosaryshooting/ap_rosarybead.nut"))
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ARMORMASTERYCLOTHSORCERESS, false, "character/atpriest/3_sorceress/rosaryshooting/ap_rosarybead.nut", true);
		}
	}
}

function RosaryBeadIncrease(obj)
{
	if(!obj) return;
	local loadSlot =  obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	if(loadSlot && loadSlot.getRemainLoadNumber() < 6)
		loadSlot.increaseLoadCount(1);
}

function RosaryBeadDecrease(obj)
{
	if(!obj) return;
	local loadSlot =  obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	if(loadSlot && loadSlot.getRemainLoadNumber() > 0)
		loadSlot.decreaseLoadCount(1);
}

function RosaryBeadClear(obj)
{
	if(!obj) return;
	local loadSlot =  obj.sq_GetSkillLoad(SKILL_ROSARYSHOOTING);
	if(loadSlot && loadSlot.getRemainLoadNumber() > 0)
		loadSlot.decreaseLoadCount(loadSlot.getRemainLoadNumber());
}


function userCreatePooledObjectSimple(obj,aniFilename, xPos, yPos, zPos, moveWithParent, imageLayer)
{
	local ani = sq_CreateAnimation("",aniFilename);
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj.setCurrentPos(xPos, yPos, zPos);
	pooledObj.setDrawLayer(imageLayer);
	if(moveWithParent == 1)
		sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
	obj.getVar("pooledObject").push_obj_vector(pooledObj);
}

function sq_createPooledObject(obj, aniFilename, x, y, z, imageSizeRate, speedRate, imageAngle, moveWithParent, imageLayer)
{
	local ani = sq_CreateAnimation("", aniFilename);

	local pooledObj = sq_CreatePooledObject(ani, true);
	local distanceXPos = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), x);
	pooledObj.setCurrentPos(distanceXPos, obj.getYPos() + y, obj.getZPos() + z);
	pooledObj.setCurrentDirection(obj.getDirection());

	local size = 1.0;
	imageSizeRate = imageSizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size * imageSizeRate, size * imageSizeRate);
	ani.setAutoLayerWorkAnimationAddSizeRate(size * imageSizeRate);

	ani.setSpeedRate(100.0 * speedRate);

	local angle = imageAngle;
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));

	if(moveWithParent == 1)
		sq_moveWithParent(obj, pooledObj);
	if(imageLayer == 2)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	}
	else if(imageLayer == 1)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	}
	else if(imageLayer == 0)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	}
	else
	{
		sq_ChangeDrawLayer(pooledObj, imageLayer);
	}
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("pooledObject").push_obj_vector(pooledObj);
}

function procBlessOfAngel(obj)
{
	if (!obj) return;
	local skill_level = sq_GetSkillLevel(obj, SKILL_BLESS_OF_ANGEL);
	if (skill_level < 1) 
	{
		return;
	}
	local append = "character/atpriest/blessofangel/ap_blessofangel.nut";
	local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, append);
	if (appendage) {
		obj.setSkillCommandEnable(SKILL_BLESS_OF_ANGEL, true);
	}
	else if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, append)) 
	{
		obj.setSkillCommandEnable(SKILL_BLESS_OF_ANGEL, true);
	}
}

function SeducerStateCommandEnable(obj)
{


	if (Seducer(obj))
	{
		sq_SetAllCommandEnable(obj, false);

		local skill = sq_GetSkill(obj, SKILL_DEPRAVITYSEVENSINS);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_DepravitySevenSins(obj));
		}
		
		skill = sq_GetSkill(obj, 169);
		if (skill) {
			skill.setCommandEnable(true);
		}
		skill = sq_GetSkill(obj, 175);
		if (skill) {
			skill.setCommandEnable(true);
		}
		skill = sq_GetSkill(obj, 176);
		if (skill) {
			skill.setCommandEnable(true);
		}
		skill = sq_GetSkill(obj, 180);
		if (skill) {
			skill.setCommandEnable(true);
		}
		skill = sq_GetSkill(obj, SKILL_DUALSLASH);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Dualslash(obj));
		}

		skill = sq_GetSkill(obj, SKILL_GUILLOTINE);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Guillotine(obj));
		}

		skill = sq_GetSkill(obj, SKILL_ROLLINGRUSH);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Rollingrush(obj));
		}

		skill = sq_GetSkill(obj, SKILL_LUSTHAND);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Lusthand(obj));
		}

		skill = sq_GetSkill(obj, SKILL_PRIDEACCEL);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Prideaccel(obj));
		}

		skill = sq_GetSkill(obj, SKILL_SLOTHBODY);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Slothbody(obj));
		}

		skill = sq_GetSkill(obj, SKILL_GREEDTHELURKER);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Greedthelurker(obj));
		}

		skill = sq_GetSkill(obj, SKILL_SCYTHEMSSACRE);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Scythemssacre(obj));
		}

		skill = sq_GetSkill(obj, SKILL_SCUDTHEWRATH);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Scudthewrath(obj));
		}

		skill = sq_GetSkill(obj, SKILL_THIRDRIB);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Thirdrib(obj));
		}

		skill = sq_GetSkill(obj, SKILL_SECONDSOUL);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_Secondsoul(obj));
		}

		skill = sq_GetSkill(obj, SKILL_FLOWEROFPURIFICATION);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_FlowerOfPurification(obj));
		}

		skill = sq_GetSkill(obj, SKILL_LASTGENESIS);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_LastGenesis(obj));
		}


		skill = sq_GetSkill(obj, SKILL_ENVIOUSKISS);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_EnviousKiss(obj));
		}


		skill = sq_GetSkill(obj, SKILL_GLUTTONYVOMIT);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_GluttonyVomit(obj));
		}

		skill = sq_GetSkill(obj, SKILL_THESEVENDEADLYSINS);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_TheSevenDeadlySins(obj));
		}


		skill = sq_GetSkill(obj, SKILL_HANDAWAKENTOSIN);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_HandAwakenToSin(obj));
		}

		skill = sq_GetSkill(obj, SKILL_RISING_SLASH);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_RisingSlash(obj));
		}

		skill = sq_GetSkill(obj, SKILL_HEAVY_SIN);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_HeavySin(obj));
		}

		skill = sq_GetSkill(obj, SKILL_NECK_UP_SCYTHE);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_NeckUpScythe(obj));
		}

		skill = sq_GetSkill(obj, SKILL_CUT_IN_DASH);

		if (skill) {
			skill.setCommandEnable(checkCommandEnable_CutInDash(obj));
		}
	}

}

function StartDungeon_thesevendeadlysins(obj)
{
	if(!obj)
		return false;

	if(!obj.isMyControlObject())
		return false;
	local skill_level = sq_GetSkillLevel(obj, SKILL_THESEVENDEADLYSINS)
	if(skill_level > 0)
    {
	obj.sq_AddSkillLoad(SKILL_THESEVENDEADLYSINS, 109, 0, obj.sq_GetIntData(SKILL_THESEVENDEADLYSINS, 0))

    }else
	{
	obj.sq_RemoveSkillLoad(SKILL_THESEVENDEADLYSINS);//齧踝??��踝蕭齧踝??��踝蕭
	}

	return
}

function procAppendTalismanOfTimeBomb(obj) {
	if (!obj) return;
	local iEnterSkill = obj.sq_IsEnterSkill(SKILL_TALISMANOFTIMEBOMB);
	if (iEnterSkill != -1) {
		local count = obj.getMyPassiveObjectCount(24338);
		for (local i = 0; i < count; ++i) {
			local object = obj.getMyPassiveObject(24338, i);
			if (!object || !object.isMyControlObject())
				continue;
			local type = object.getVar("type").get_vector(0);
			local id = object.getVar("id").get_vector(0);
			local state = object.getVar("state").get_vector(0);
			if (type == 3 && id == 11 && state == 11) {
				object.sendStateOnlyPacket(12);
				object.flushSetStatePacket();
			}
		}
	}
}

function sq_removePooledObject(obj)
{
	local aniObjCount = obj.getVar("pooledObject").get_obj_vector_size();
	for(local i = 0; i < aniObjCount; i++)
	{
		local aniObj = obj.getVar("pooledObject").get_obj_vector(i);
		if(aniObj)
			aniObj.setValid(false);
	}
	obj.getVar("pooledObject").clear_obj_vector();
}

function sq_isInterval(obj, term, varName)
{
	if(!obj) return false;

	local t = obj.getVar(varName).get_ct_vector(0);
	if(!t)
	{
		obj.getVar(varName).clear_ct_vector();
		obj.getVar(varName).push_ct_vector();
		t = obj.getVar(varName).get_ct_vector(0);
		t.Reset();
		t.Start(10000, 0);
		return true;
	}

	local currentT = t.Get();
	if(currentT > term)
	{
		t.Reset();
		t.Start(10000, 0);
		return true;
	}
	return false;
}

function sq_setCurrentAnimationSizeRate(obj, size, sizeRate)
{
	local ani = obj.getCurrentAnimation();
	sizeRate = sizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size * sizeRate, size * sizeRate);
	ani.setAutoLayerWorkAnimationAddSizeRate(size * sizeRate);
	sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
}

function sq_setCurrentAttackBoundingBoxSizeRate(obj, size, sizeRate)
{
	local ani = obj.getCurrentAnimation();
	sizeRate = sizeRate.tofloat() / 100.0;
	sq_SetAttackBoundingBoxSizeRate(ani, size * sizeRate, size * sizeRate, size * sizeRate);
}

function setZealOfFaithAppend(obj, skill_index) {
	if (!obj) return;
	if (sq_GetCurrentModuleType() != 3)
		return;
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {  
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER)) {
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local append = "character/atpriest/appendage/ap_zealoffaith_friend.nut";
			local isAppend = object.IsSquirrelAppendage(append);
			if(isSameObject(obj, object)){
				local appendageself = obj.GetSquirrelAppendage(append);
				if(!appendageself)
				{
					isAppend = false;
				}
			}
			local range = sq_GetIntData(obj, skill_index, 0);
			if (isDistanceOfTarget(obj, object, range) && !isAppend) {
			
				local skill_level = sq_GetSkillLevel(obj, skill_index);
				local physical_magical_attack = sq_GetLevelData(obj, skill_index, 0, skill_level).tofloat();
				local physical_magical_defense = sq_GetLevelData(obj, skill_index, 1, skill_level).tofloat();
				local attackspeed = sq_GetLevelData(obj, skill_index, 2, skill_level).tofloat();
				attackspeed = attackspeed / 10;
				local movespeed = sq_GetLevelData(obj, skill_index, 3, skill_level).tofloat();
				movespeed = movespeed / 10;
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, skill_index, false, append, false);
				appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_PRIEST, skill_index, skill_level);
				CNSquirrelAppendage.sq_Append(appendage, object, obj);
				appendage = object.GetSquirrelAppendage(append);
				if (appendage) {
					local change_appendage = appendage.sq_getChangeStatus("zealoffaith");
					if (!change_appendage) {
						change_appendage = appendage.sq_AddChangeStatusAppendageID(object, obj, 0, 34, false, 0, APID_COMMON);
					}
					if (change_appendage) {
						change_appendage.clearParameter();
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physical_magical_attack);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, physical_magical_attack);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, physical_magical_defense);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physical_magical_defense);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, true, attackspeed);
						change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, true, movespeed);
					}
				}
			} else if (!isDistanceOfTarget(obj, object, range) && isAppend) {
				CNSquirrelAppendage.sq_RemoveAppendage(object, append);
			}
		}
	}
}

function setRevive(obj) 
{
	if (!obj) return;
	local skill_level = sq_GetSkillLevel(obj, SKILL_REVIVE);
	if(skill_level < 1)
	{
		return;
	}
	local objectManager = obj.getObjectManager();
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i += 1) {  
		local object = objectManager.getCollisionObject(i);
		if (object && !obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_CHARACTER) && !isSameObject(obj, object)) {
			object = sq_GetCNRDObjectToSQRCharacter(object);
			local append = "character/atpriest/revive/ap_revive.nut";
			//if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, append))
				//continue;
			local recHp = sq_GetLevelData(obj, SKILL_REVIVE, 0, skill_level);
			local holdTime = sq_GetIntData(obj, SKILL_REVIVE, 2);
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, SKILL_REVIVE, false, append, false);
			appendage.getVar("revive").clear_vector();
			appendage.getVar("revive").push_vector(recHp);
			appendage.getVar("revive").push_vector(holdTime);
			appendage.getVar("revive").push_vector(0);
			CNSquirrelAppendage.sq_AppendAppendageID(appendage, object, obj, SKILL_REVIVE, true);
		}
	}
}

function sq_GetGraceOfDevineEnemy(obj)
{
	if(sq_GetCurrentModuleType() == 3)
	{
		local objectManager = obj.getObjectManager();
		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);
			if (object && obj.isEnemy(object))
			{
				return object;
			}
		}
	}
	return null;
}

function isStudyCruxOfVictoria_Level3(obj)
{
	if(!obj) return;
	if(sq_GetSkillLevel(obj, SKILL_CRUX_OF_VICTORIA) >= 3)
	{
		return 110;
	}
	return 0;
}

function setAnimationEmptyMiracleLightning(obj) {
	if (!obj)
		return;

	local i = 0;
	local object_num = obj.getVar("cl").get_obj_vector_size();

	for (i = 0; i < object_num; i++) {
		local pObj = obj.getVar("cl").get_obj_vector(i);
		if (pObj) {
			local currentAni = sq_GetCurrentAnimation(pObj);
			if (currentAni) {
				if (currentAni.isLoop()) {
					local ani = sq_CreateAnimation("", "character/priest/effect/animation/atmiracleshine/line01_castfail.ani");
					pObj.setCurrentAnimation(ani);
				}
			}
		}
	}
}


function setAnimationDiableMiracleLightning(obj) {
	if (!obj)
		return;

	local i = 0;
	local object_num = obj.getVar("cl").get_obj_vector_size();

	for (i = 0; i < object_num; i++) {
		local pObj = obj.getVar("cl").get_obj_vector(i);
		if (pObj) {
			pObj.setValid(false);
		}
	}
}

function procMiracleChain(thisObj, obj, pTargetChr, targetIndex) {
	if (!obj) return;

	local X = obj.getXPos();
	local Y = obj.getYPos();
	local Z = obj.getZPos();


	local pAni = obj.getCurrentAnimation();
	local frameIndex = pAni.GetCurrentFrameIndex();

	local targetI = targetIndex * 3;

	local posX = thisObj.getVar("target").get_vector(targetI);
	local posY = thisObj.getVar("target").get_vector(targetI + 1);
	local posZ = thisObj.getVar("target").get_vector(targetI + 2);

	if (pTargetChr) {
		posX = pTargetChr.getXPos();
		posY = pTargetChr.getYPos();
		posZ = pTargetChr.getZPos() + (sq_GetObjectHeight(pTargetChr) / 2);

		thisObj.getVar("target").set_vector(targetI, posX);
		thisObj.getVar("target").set_vector(targetI + 1, posY);
		thisObj.getVar("target").set_vector(targetI + 2, posZ);
	}

	if (posX == -1)
		return;

	local offset = posX - X;

	if (offset < 0) {
		//print(" ENUM_DIRECTION_LEFT");
		obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
	} else {
		//print(" ENUM_DIRECTION_RIGHT");
		obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
	}

	local distance = sq_GetDistance(X, Y - Z, posX, posY - posZ, true);

	local w = posX - X;
	if (w < 0) w = -w;

	local h = (posY - posZ) - (Y - Z);
	local width = sq_Abs(posX - X);
	local angle = sq_Atan2(h.tofloat(), width.tofloat());

	if ((posY - posZ) > (Y - Z)) {
		angle = -angle;
	}

	local nRevision = distance;

	local cos = nRevision.tofloat() * sq_Cos(angle);
	local sin = nRevision.tofloat() * sq_Sin(angle);

	local nX = sq_Abs(cos.tointeger());
	local nY = sq_Abs(sin.tointeger());

	sq_SetfRotateAngle(pAni, angle);

	pAni.setImageRate(1.0, 1.0);

	local dis = 246;

	local cos_x = dis.tofloat() * sq_Cos(angle);
	local sin_y = dis.tofloat() * sq_Sin(angle);

	local nW = sq_Abs(cos_x.tointeger());
	local nH = sq_Abs(sin_y.tointeger());
	local wRate = width.tofloat() / nW.tofloat();
	local hRate = h.tofloat() / nH.tofloat();
	pAni.setImageRate(wRate.tofloat(), hRate.tofloat());
}

function getDestroyObjectByCIObjectIndex(obj, diedObject) {
	if (!diedObject || !obj)
		return null;
	local objectNum = obj.sq_var.get_obj_vector_size();
	local index = obj.sq_var.get_obj_vector_index(diedObject);
	return index;
}

function setDiableAnimationCIObject(obj, index) {
	if (!obj)
		return;
	local destroyIndex = index + 1;
	if (destroyIndex >= obj.getVar("cl").get_obj_vector_size())
		destroyIndex = index;
	local clObject = obj.getVar("cl").get_obj_vector(destroyIndex);
	if (clObject) {
		if (destroyIndex < obj.getVar("cl").get_obj_vector_size()) {
			for (local i = destroyIndex; i < obj.getVar("cl").size_vector(); i += 1) {
				if ((i + 1) < obj.getVar("cl").size_vector()) {
					local flagValue = obj.getVar("cl").get_vector(i + 1);
					obj.getVar("cl").set_vector(i, flagValue);
				}
			}
		}
		obj.getVar("cl").remove_obj_vector(clObject);
		clObject.setValid(false);
	}
}

function ATPriestTurnPoSkill(obj,CohesionId, objid, X, Y, Z)
{
	sq_BinaryStartWrite();
	sq_BinaryWriteDword(CohesionId);
	sq_BinaryWriteDword(0);
	sq_SendCreatePassiveObjectPacketPos(obj, objid, 0, X, Y, Z);
	sq_SendDestroyPacketPassiveObject(obj);
}

function ATPriestTurnPoSkillNew(obj,CohesionId1, CohesionId2, objid, X, Y, Z)
{
	sq_BinaryStartWrite();
	sq_BinaryWriteDword(CohesionId1);
	sq_BinaryWriteDword(0);
	sq_SendCreatePassiveObjectPacketPos(obj, objid, 0, X, Y, Z);
	
	sq_BinaryStartWrite();
	sq_BinaryWriteDword(CohesionId2);
	sq_BinaryWriteDword(0);
	sq_SendCreatePassiveObjectPacketPos(obj, objid, 0, X, Y, Z);
	
	sq_SendDestroyPacketPassiveObject(obj);
}
