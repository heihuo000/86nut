
function procAppend_Flowmind_Comminterrupt(obj) {
	if (!obj) {
		return;
	}
	if (sq_getGrowType(obj) > 1) {
		return;
	}
	local mystate = obj.sq_GetState();
	local substatejump = obj.getVar("jumpsteps").get_vector(0);
	local substateflow1 = obj.getVar("flowmind1s").get_vector(0);
	local currentJumpT = 0;
	if (mystate == 3 || mystate == 4 || mystate == 5 || mystate == 9 || mystate == 16 || mystate == 7 || mystate == 25) return;
	if (mystate == 6 && substatejump == 1) return;
	if (mystate == 6) {
		local pAni = obj.sq_GetCurrentAni();
		currentJumpT = sq_GetCurrentTime(pAni);
		//print(currentJumpT+"\n\r");
	} else {
		currentJumpT = 0;
	}
	if (sq_GetZPos(obj) == 0 && (mystate == 0 || mystate == 14 || mystate == 63)) {
		EnableSoften(obj, 107, 62); //×µãıí©
		SetSkillState(obj, 107, 62, [0, 61]);
	}
	if (mystate == 29) {
		local pAni = obj.sq_GetCurrentAni();
		local currentT = sq_GetCurrentTime(pAni);
		if (currentT > 300) 
		{
			EnableSoften(obj, 107, 62); //×µãıí©
			SetSkillState(obj, 107, 62, [0, 61]);
		}
	}
	if ((sq_GetZPos(obj) > 30) && currentJumpT > 400&& currentJumpT < 11000 && mystate == 6) {
		EnableSoften(obj, 107, 147);
		local xkey = sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL);
		if(!xkey){
			local enterskill = SetSkillState(obj, 107, 147, [0]);
			if (enterskill) {
				obj.startSkillCoolTime(107, sq_GetSkillLevel(obj, 107), -1);
			}
		}
		
	}
	if (mystate == 64) {
		EnableSoften(obj, 107, 147);
		local enterskill = SetSkillState(obj, 107, 147, [0]);
		if (enterskill) {
			obj.startSkillCoolTime(107, sq_GetSkillLevel(obj, 107), -1);
		}
	}
	if (mystate == 0 || mystate == 8 || mystate == 14 || mystate == 62 || mystate == 64 || mystate == 29 || mystate == 147) //Òö×µå¸í©ïÈã®
	{
		EnableSoften(obj, 108, 63); //×µãıå¸
		SetSkillState(obj, 108, 63, [0, 61, 62, 104, 0]);
	}
	local weapon = obj.getWeaponSubType();
	if (weapon == 0 || weapon == 3) {

		if (mystate == 63 || mystate == 29) //Òö×µå¸í©ïÈã®
		{
			EnableSoften(obj, 109, 64); //×µãıã®
			if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)) {
				UseSkillState(obj, 109, 64, [0, 6, 61]);
			}
		}
		if (mystate == 62 && substateflow1 == 1) //Òö×µå¸í©ïÈã®
		{
			//EnableSoften(obj,109,64);	//×µãıã®
			local pAni = obj.sq_GetCurrentAni();
			local currentT = sq_GetCurrentTime(pAni);
			if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL) && currentT > 370) {
				UseSkillState(obj, 109, 64, [0, 6, 61]);
			}
		}
	}
	else {
		if (mystate == 63 || mystate == 62 || mystate == 29) //Òö×µå¸í©ïÈã®
		{

			EnableSoften(obj, 109, 64); //×µãıã®
			if (sq_IsKeyDown(OPTION_HOTKEY_SKILL, ENUM_SUBKEY_TYPE_ALL)) {
				UseSkillState(obj, 109, 64, [0, 6, 61]);
			}
		}
	}
	local fmtskill = sq_GetSkill(obj, 109);
	if (fmtskill.isSealFunction() && (mystate == 0 || mystate == 8 || mystate == 14 || mystate == 63 || mystate == 62 || mystate == 29)) {
		EnableSoften(obj, 109, 64); //×µãıã®
		SetSkillState(obj, 109, 64, [0, 6, 61]);
	}

}

function createFrontDefaneBlood(obj) {
	 local ani = sq_AddDrawOnlyAniFromParent(obj, "character/swordman/animation/berserk/berserkhit_a.ani", 0, 1, 0);
 	sq_moveWithParent(obj, ani);
}

function EnableSoften(obj, skillindex, state) {
	if (obj.sq_GetState() == state) //üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
	return false;
	obj.setSkillCommandEnable(skillindex, true); //ŞÅÒöĞüÒö£¨ïÇÕÕÓñøö£¬Ê¦ì¤ŞÅéÄ£©
	return true;
}

function SetSkillState(obj, skillindex, state, Arr) {

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if (iEnterSkill == -1) return false;
	if (obj.sq_GetState() == state) //üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
	return false;
	if (obj.sq_IsUseSkill(skillindex)) //÷÷Ó¨Ó×îñĞüÒöãÀÜúÊ¦éÄ£¨cd ÕÀÙÄÔõğÉËì£©
	{
		obj.sq_IntVectClear(); //?ğ¶ú¾Õá£¨ßÒ÷¾£©
		if (Arr.len() < 1) //åıÍıóÑâ¦â¦ğÚíşÓøá³éÍ1
		{
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			return true;
		}
		else {
			foreach(sub in Arr) //âàü»÷êâ¦ğÚArrØßËÁà÷ê¬ŞĞìısub£¬îÏãÀìéËÁâàü»
			obj.sq_IntVectPush(sub); //àâöÇí­ßÒ÷¾sub
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true); //àâöÇĞüÒößÒ÷¾
			return true;
		}
	}
	return false;
}

function UseSkillState(obj, skillindex, state, Arr) {
	if (obj.sq_GetState() == state) //üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
	return false;
	if (obj.sq_IsUseSkill(skillindex)) //÷÷Ó¨Ó×îñĞüÒöãÀÜúÊ¦éÄ£¨cd ÕÀÙÄÔõğÉËì£©
	{
		obj.sq_IntVectClear(); //?ğ¶ú¾Õá£¨ßÒ÷¾£©
		if (Arr.len() < 1) //åıÍıóÑâ¦â¦ğÚíşÓøá³éÍ1
		{
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true);
			return true;
		}
		else {
			foreach(sub in Arr) //âàü»÷êâ¦ğÚArrØßËÁà÷ê¬ŞĞìısub£¬îÏãÀìéËÁâàü»
			obj.sq_IntVectPush(sub); //àâöÇí­ßÒ÷¾sub
			obj.sq_AddSetStatePacket(state, STATE_PRIORITY_USER, true); //àâöÇĞüÒößÒ÷¾
			return true;
		}
	}
	return false;
}

function setEnableCancelSkill_Swordman(obj, CSDeDFugOHJaOjHj1gt) {
	if (!obj) return false;
	if (!obj.isMyControlObject()) return false;
	if (!CSDeDFugOHJaOjHj1gt) return true;
	obj.setSkillCommandEnable(229, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(230, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(231, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(232, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(233, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(234, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(235, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(236, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(237, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(238, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(239, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(240, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(241, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(242, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(243, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(244, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(245, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(246, CSDeDFugOHJaOjHj1gt);
	obj.setSkillCommandEnable(247, CSDeDFugOHJaOjHj1gt);
	return true;
};

function setState_Swordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	setState_Swordman_swordman_handlingsword(obj, state, datas, isResetTimer);
	if (sq_getGrowType(obj) == 1) {
		if (state == 6) {
			local subState1 = obj.sq_GetVectorData(datas, 1);
			obj.getVar("jumpsteps").clear_vector();
			obj.getVar("jumpsteps").push_vector(subState1);
		} else {
			obj.getVar("jumpsteps").clear_vector();
			obj.getVar("jumpsteps").push_vector(0);
		}
		if (state == 62) {
			local subState0 = obj.sq_GetVectorData(datas, 0);
			obj.getVar("flowmind1s").clear_vector();
			obj.getVar("flowmind1s").push_vector(subState0);
		} else {
			obj.getVar("flowmind1s").clear_vector();
			obj.getVar("flowmind1s").push_vector(0);
		}
	}
	else if (sq_getGrowType(obj) == 0) {
		if (state == 6) {
			local subState1 = obj.sq_GetVectorData(datas, 1);
			obj.getVar("jumpsteps").clear_vector();
			obj.getVar("jumpsteps").push_vector(subState1);
		} else {
			obj.getVar("jumpsteps").clear_vector();
			obj.getVar("jumpsteps").push_vector(0);
		}
	}
	return 0;
};

function addSetStatePacket_Swordman(obj, state, datas) {
	if (!obj) return -1;
	switch (state) {
	case STATE_ATTACK:
		local isResetTimer = obj.sq_GetVectorData(datas, 0);
		local xfRERcXbPBR = obj.sq_GetVectorData(datas, 1);
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_kalla.nut") && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_ghoststep.nut")) {
			if (obj.sq_IsMyControlObject()) {
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(0);
				obj.sq_IntVectPush(0);
				obj.sq_AddSetStatePacket(44, STATE_PRIORITY_USER, true);
			}
			return -1;
		}
		switch (isResetTimer) {
		case 2:
			if (obj.isCurrentCutomAniIndex(58) && xfRERcXbPBR == -1) {
				local ICUtVtUM7t = sq_GetSkill(obj, 76);
				if (ICUtVtUM7t && !ICUtVtUM7t.isSealFunction()) {
					if (obj.sq_IsMyControlObject()) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(0);
						obj.sq_AddSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
					}
					return -1;
				}
			}
			break;
		}
		break;
	}
	return 1;
};

function setZigDirection(obj)
{
	local enemyObj = obj.sq_FindFirstTarget(-1000, 1000, 2000, 200);
	if(enemyObj)
	{
		if(sq_GetXPos(obj) - sq_GetXPos(enemyObj) > 0)
		{
			if(enemyObj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
			}
			else if(enemyObj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
			}
		}
		if(sq_GetXPos(obj) - sq_GetXPos(enemyObj) < 0)
		{
			if(enemyObj.getDirection() == ENUM_DIRECTION_LEFT)
			{
				obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
			}
			else if(enemyObj.getDirection() == ENUM_DIRECTION_RIGHT)
			{
				obj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
			}
		}
	}
}



function ZigAttackWithChr(obj)
{
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	if(parentChr.sq_IsEnterSkill(111) != -1 && !sq_GetSkill(parentChr, 111).isInCoolTime())
	{
		obj.sendStateOnlyPacket(16);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(112) != -1 && !sq_GetSkill(parentChr, 112).isInCoolTime())
	{
		obj.sendStateOnlyPacket(17);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(60) != -1 && !sq_GetSkill(parentChr, 60).isInCoolTime())
	{
		obj.sendStateOnlyPacket(18);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(44) != -1 && !sq_GetSkill(parentChr, 44).isInCoolTime())
	{
		obj.sendStateOnlyPacket(19);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(25) != -1 && !sq_GetSkill(parentChr, 25).isInCoolTime())
	{
		obj.sendStateOnlyPacket(20);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(41) != -1 && !sq_GetSkill(parentChr, 41).isInCoolTime())
	{
		obj.sendStateOnlyPacket(21);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(36) != -1 && !sq_GetSkill(parentChr, 36).isInCoolTime())
	{
		obj.sendStateOnlyPacket(22);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(96) != -1 && !sq_GetSkill(parentChr, 96).isInCoolTime())
	{
		obj.sendStateOnlyPacket(23);
		obj.flushSetStatePacket();
	}
	else if(parentChr.sq_IsEnterSkill(75) != -1 && !sq_GetSkill(parentChr, 75).isInCoolTime())
	{
		obj.sendStateOnlyPacket(24);
		obj.flushSetStatePacket();
	}
	local appendage = CNSquirrelAppendage.sq_IsAppendAppendage(parentChr, "character/swordman/zigadvent/ap_zig_character.nut");
	appendage = parentChr.GetSquirrelAppendage("character/swordman/zigadvent/ap_zig_character.nut");
	if(appendage)
	{
		if(appendage.isValid())
		{
			if(parentChr.sq_IsEnterSkill(241) != -1 || sq_IsKeyDown(OPTION_HOTKEY_EXSKILL7 , ENUM_SUBKEY_TYPE_ALL))
			{
				appendage.setValid(false);
				if(obj.isMyControlObject())
				{
					local skill_level = sq_GetSkillLevel(parentChr, 241);
					parentChr.sq_StartWrite();
					parentChr.sq_WriteDword(241);
					parentChr.sq_WriteDword(1);
					parentChr.sq_WriteDword(parentChr.sq_GetBonusRateWithPassive(241, 241, 0, 1.0));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 5, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 6, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 7, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 8, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 1, skill_level));
					sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
					parentChr.sq_StartWrite();
					parentChr.sq_WriteDword(241);
					parentChr.sq_WriteDword(2);
					parentChr.sq_WriteDword(parentChr.sq_GetBonusRateWithPassive(241, 241, 2, 1.0));
					parentChr.sq_WriteDword(parentChr.sq_GetBonusRateWithPassive(241, 241, 3, 1.0));
					parentChr.sq_WriteDword(parentChr.sq_GetBonusRateWithPassive(241, 241, 4, 1.0));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 9, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 10, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 11, skill_level));
					parentChr.sq_WriteDword(sq_GetLevelData(parentChr, 241, 12, skill_level));
					sq_SendCreatePassiveObjectPacketPos(obj, 24370, 0, sq_GetXPos(obj), sq_GetYPos(obj), sq_GetZPos(obj));
					sq_SendDestroyPacketPassiveObject(obj);
				}
			}
		}
	}
}


function als_ani(obj, aniFilename, disX, disY, disZ, imgangle, imgRate, Parent, layer, SpeedRate)
{
	local angle = imgangle;
	local ani = sq_CreateAnimation("", aniFilename);
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));
	
	local sizeRate = imgRate;
	local size = sizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size, size);
	ani.setAutoLayerWorkAnimationAddSizeRate(size);

	ani.setSpeedRate(100.0 * SpeedRate);
	
	local pooledObj = sq_CreatePooledObject(ani, true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY, obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());

	if(Parent == 1)
	{
		sq_moveWithParent(obj, pooledObj);
	}
	if(layer == 2)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	}
	if(layer == 1)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	}
	if(layer == 0)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	}
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("aniobj").push_obj_vector(pooledObj);
}



function RemoveAllAnimation(obj)
{
	local var = obj.getVar("aniobj");
	local max_aniObj = var.get_obj_vector_size();
	for(local i = 0; i < max_aniObj; i ++)
	{
		local aniObj = var.get_obj_vector(i);
		if(aniObj)
		aniObj.setValid(false);
	}
	obj.getVar("aniobj").clear_obj_vector();
}



function SMals_ani(obj, aniFilename, x, y, z, imageSizeRate, SpeedRate, imageAngle, moveWithParent, imageLayer)
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

	ani.setSpeedRate(100.0 * SpeedRate);

	local angle = imageAngle;
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));

	if(moveWithParent == 1)
	{
		sq_moveWithParent(obj, pooledObj);
	}
	if(imageLayer == 2)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_COVER);
	}
	if(imageLayer == 1)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL);
	}
	if(imageLayer == 0)
	{
		sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	}
	sq_AddObject(obj, pooledObj, 2, false);
	obj.getVar("aniobj").push_obj_vector(pooledObj);
}



function removeAni(obj)
{
	local var = obj.getVar("aniobj");
	local aniObjCount = var.get_obj_vector_size();
	for(local i = 0; i < aniObjCount; i ++)
	{
		local aniObj = var.get_obj_vector(i);
		if(aniObj)
			aniObj.setValid(false);
	}
	obj.getVar("aniobj").clear_obj_vector();
}


function apocalypseFollow_zhengfa(obj)
{
if(!obj) return;
local x = obj.getXPos();
local y = obj.getYPos();
local array = [20011,20012,20013,20040,20062];
for(local z=0;z<array.len();++z)
{
local MonsterID = array[z];
local num = obj.getMyPassiveObjectCount(MonsterID);
for(local i=0;i<num;++i)
{
local object = obj.getMyPassiveObject(MonsterID, i);
if(!object) continue;
local z = object.getZPos();
object.setCurrentPos(x, y, z+3000);
object.setMapFollowType(1);
object.setMapFollowParent(obj);
}
}
}