

function ProcPassiveSkill_ATGunner(obj, skill_index, skill_level)
{
	if (skill_index == 17)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/nitromotor/ap_nitromotor.nut", true);
		}
	}
	if (skill_index == 64)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/qiangrengailiang/ap_qiangrengailiang.nut", true);
		}
	}
	else if (skill_index == 66)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/zhongwuzhuanggaizao/ap_zhongwuzhuanggaizao.nut", true);
		}
	}
	else if (skill_index == 171)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/appendage/ap_atgunner_comminterrupt.nut", true);
		}
	}
	else if (skill_index == 254)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
		}
	}
	else if (skill_index == 67)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/g_zhuzai/ap_g_zhuzai.nut", true);
		}
	}
	else if (skill_index == 250)
	{
		if(skill_level > 0)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/atgunner/appendage/ap_stylish_buff.nut", true);
			local subCount = obj.sq_GetLevelData(skill_index, 2, skill_level); 
			local recoverTime = obj.sq_GetLevelData(skill_index, 3, skill_level); 
			appendage.getVar().clear_vector(); 
			appendage.getVar().push_vector(subCount); 
			appendage.getVar().push_vector(subCount); 
			 
			appendage.getVar().clear_timer_vector();
			appendage.getVar().push_timer_vector();
			local t = appendage.getVar().get_timer_vector(0);
			t.setParameter(recoverTime, -1); 
			t.resetInstant(0); 
		}
	}
	return true;
}









 
 
 
function onStartGhost_My_atgunner_stylish(obj)
{
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_stylish.nut")) 
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/atgunner/appendage/ap_stylish.nut"); 

		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 250, false, "character/atgunner/appendage/ap_stylish.nut", false);

	if(appendage)
	{
		local skill_level = sq_GetSkillLevel(obj, 250); 
		appendage.sq_SetValidTime(obj.sq_GetLevelData(250, 6, skill_level)); 
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_AT_GUNNER, 250, skill_level); 
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, 250, true); 
		local change_appendage = appendage.sq_getChangeStatus("changeStatus");
			if(!change_appendage)
			change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON); 
				if(change_appendage) 
				{

				local speedRate = obj.sq_GetLevelData(250, 5, skill_level); 
				change_appendage.clearParameter();

				change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, speedRate.tofloat());
				change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, speedRate.tofloat());
				}
	}
}



if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onProcIsSub_My_atgunner_stylish(nbQfOGveQGCejCH)
{
 local KOYRmdjs9JBtbgjP7o5kx = onProc_My_atgunner_stylish(nbQfOGveQGCejCH);
 if(KOYRmdjs9JBtbgjP7o5kx != 0)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(KOYRmdjs9JBtbgjP7o5kx); 
 sq_SendChangeSkillEffectPacket(nbQfOGveQGCejCH, 250); 
 }
} ;

 
 
function onProc_My_atgunner_stylish(nbQfOGveQGCejCH)
{
 local KOYRmdjs9JBtbgjP7o5kx = CNSquirrelAppendage.sq_GetAppendage(nbQfOGveQGCejCH, "character/atgunner/appendage/ap_stylish_buff.nut");
 if(!KOYRmdjs9JBtbgjP7o5kx) return 0;
 if(KOYRmdjs9JBtbgjP7o5kx.getVar().get_vector(0)<=0)return 0;
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 9).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(9, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(9) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(9, sq_GetSkillLevel(nbQfOGveQGCejCH, 9), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(15);
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(100);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(24, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 72).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(72, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(72) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(72, sq_GetSkillLevel(nbQfOGveQGCejCH, 72), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(37);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(37, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 104).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(104, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(104) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(104, sq_GetSkillLevel(nbQfOGveQGCejCH, 104), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(97);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(58, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 51).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(51, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(51) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(51, sq_GetSkillLevel(nbQfOGveQGCejCH, 51), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_IntVectPush(nbQfOGveQGCejCH.getDirection());
 nbQfOGveQGCejCH.sq_IntVectPush(4);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(41, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 100).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(100, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(100) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(100, sq_GetSkillLevel(nbQfOGveQGCejCH, 100), -1); 
 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(45, STATE_PRIORITY_USER, false);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 5).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(5, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(5) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(5, sq_GetSkillLevel(nbQfOGveQGCejCH, 5), -1); 
 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(1);
 nbQfOGveQGCejCH.sq_IntVectPush(5);
 nbQfOGveQGCejCH.sq_IntVectPush(0);
 nbQfOGveQGCejCH.sq_AddSetStatePacket(8, STATE_PRIORITY_USER, true);
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 236).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(236, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(236) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(236, sq_GetSkillLevel(nbQfOGveQGCejCH, 236), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(236, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 237).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(237, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(237) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(237, sq_GetSkillLevel(nbQfOGveQGCejCH, 237), -1); 
 if(!isSubSkill_atgunner_KILLPOINT(nbQfOGveQGCejCH))
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 238).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(238, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(238) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(238, sq_GetSkillLevel(nbQfOGveQGCejCH, 238), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 
 if(!sq_GetSkill(nbQfOGveQGCejCH, 239).isInCoolTime()) 
 {
 nbQfOGveQGCejCH.setSkillCommandEnable(239, true); 
 if(nbQfOGveQGCejCH.sq_IsEnterSkill(239) != -1) 
 {
 nbQfOGveQGCejCH.startSkillCoolTime(239, sq_GetSkillLevel(nbQfOGveQGCejCH, 239), -1); 
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return 1;
 }
 }
 return 0;
} ;


function isSubSkill_atgunner_KILLPOINT(etTHKCUHt3oHaObu)
{
 local d37RtunETwe = -1; 
 local ywvx6qpnou_QI = etTHKCUHt3oHaObu.getDirection(); 
 local oJX5o4Dc9rAH = sq_GetXPos(etTHKCUHt3oHaObu); 
 local M5rrAxW8LFsrntPG_4bV36 = []; 
 local DmX7zW1pAidal52u672o = etTHKCUHt3oHaObu.getObjectManager(); 
 local RLAK3Iq8eZ = DmX7zW1pAidal52u672o.getCollisionObjectNumber(); 
 for (local XfxTJd8nJzWVwCuPBGkH1 = 0; XfxTJd8nJzWVwCuPBGkH1 < RLAK3Iq8eZ; XfxTJd8nJzWVwCuPBGkH1++)
 {
 local AqI9ihXLqnfEl5WhkA_xz = DmX7zW1pAidal52u672o.getCollisionObject(XfxTJd8nJzWVwCuPBGkH1); 
 
 if (!etTHKCUHt3oHaObu.isEnemy(AqI9ihXLqnfEl5WhkA_xz) || !AqI9ihXLqnfEl5WhkA_xz.isObjectType(OBJECTTYPE_ACTIVE)) continue;
 local MVnBFMtsS5P5IaBI4O = CNSquirrelAppendage.sq_GetAppendage(AqI9ihXLqnfEl5WhkA_xz, "character/atgunner/killpoint/ap_killpoint.nut");
 if (MVnBFMtsS5P5IaBI4O && isSameObject(etTHKCUHt3oHaObu, MVnBFMtsS5P5IaBI4O.getSource()) && MVnBFMtsS5P5IaBI4O.isValid())
 {
 local Mp3mmlw7bfIJba6eDWs = (oJX5o4Dc9rAH > sq_GetXPos(AqI9ihXLqnfEl5WhkA_xz)) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT; 
 if (d37RtunETwe == -1) 
 d37RtunETwe = Mp3mmlw7bfIJba6eDWs; 
 
 if(d37RtunETwe != -1 && d37RtunETwe == Mp3mmlw7bfIJba6eDWs)
 M5rrAxW8LFsrntPG_4bV36.push(1); 
 else 
 M5rrAxW8LFsrntPG_4bV36.push(2); 
 M5rrAxW8LFsrntPG_4bV36.push(sq_GetGroup(AqI9ihXLqnfEl5WhkA_xz)); 
 M5rrAxW8LFsrntPG_4bV36.push(sq_GetUniqueId(AqI9ihXLqnfEl5WhkA_xz)); 
 }
 }
 if (M5rrAxW8LFsrntPG_4bV36.len() > 0 && d37RtunETwe != -1) 
 {
 etTHKCUHt3oHaObu.sq_IntVectClear();
 etTHKCUHt3oHaObu.sq_IntVectPush(1);
 etTHKCUHt3oHaObu.sq_IntVectPush(sq_getRandom(0,1)); 
 etTHKCUHt3oHaObu.sq_IntVectPush(d37RtunETwe); 
 etTHKCUHt3oHaObu.sq_IntVectPush(M5rrAxW8LFsrntPG_4bV36.len()); 
 foreach (val in M5rrAxW8LFsrntPG_4bV36)
 etTHKCUHt3oHaObu.sq_IntVectPush(val); 
 etTHKCUHt3oHaObu.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;


CURRENT_BUFF_COUNT_qianzhi		<- 0;

function useSkill_after_ATGunner(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
	local skillLevel = sq_GetSkillLevel(obj, SKILL_G_ZHUZAI);
	if(skillLevel > 0){
		local magical_atk = sq_GetLevelData(obj, SKILL_G_ZHUZAI, 0, skillLevel);
		local time = sq_GetLevelData(obj, SKILL_G_ZHUZAI, 2, skillLevel);
		if(CURRENT_BUFF_COUNT_qianzhi >= 4)
		{
			CURRENT_BUFF_COUNT_qianzhi = 3;//‚‘??buff
			
		}
			
			//79	G1
			//80	G2
			//81	G3
			//96	G0_1·ß
			//246	G4_2jue
		if(skillIndex == 79 || skillIndex == 80 || skillIndex == 81 || skillIndex == 82 || skillIndex == 96 || skillIndex == 246)
		{
			CURRENT_BUFF_COUNT_qianzhi+=1;
			if(CURRENT_BUFF_COUNT_qianzhi < 3)
				return true;
			local appendage = obj.GetSquirrelAppendage("character/atgunner/g_zhuzai/ap_g_zhuzai_buff.nut");
			if(appendage)
				appendage.setValid(false);
			
			appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_G_ZHUZAI, false, "character/atgunner/g_zhuzai/ap_g_zhuzai_buff.nut", false);
			appendage.getVar("skillData").clear_vector();
			appendage.getVar("skillData").push_vector(magical_atk/10);
			appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_G_ZHUZAI, skillLevel);
			appendage.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(appendage, obj, obj);
		}
	}

	return true;
}

function procSkill_ATGunner(obj)
{

procSkill_ChangQing751675335_AlphaSupport(obj);
}


function setState_ATGunner(obj, state, datas, isResetTimer)
{
	ChangQing751675335_AlphaSupport(obj, state, datas, isResetTimer);
}