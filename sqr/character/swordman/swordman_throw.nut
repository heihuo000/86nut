


function onAfterSetState_swordman_throw(uFPW55kl1uKc, mLYBIhDJ3ErccxoBV7i0tO, mcnQak3sSvuFfsN6mFd3q, yQE9v68QxmS5ql8Jk)
{
 if(!uFPW55kl1uKc) return;
 local qil_yICWN0OrZUW = uFPW55kl1uKc.getThrowIndex(); 
 local cNNqCNeq1I1owvNPsN2X36sX = uFPW55kl1uKc.getThrowState(); 
 switch(qil_yICWN0OrZUW)
 {
 case 47: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_wavemark.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_wavemark.nut");
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 47, true, "character/swordman/appendage/ap_wavemark.nut", false);
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 case 82: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_kalla.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_kalla.nut");
 local e5iMmYEhk2_ZCROCo = uFPW55kl1uKc.sq_GetLevelData(82, 0, sq_GetSkillLevel(uFPW55kl1uKc, 82)); 
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 82, true, "character/swordman/appendage/ap_kalla.nut", false);
 B88LiI5xw3wLi.sq_SetValidTime(e5iMmYEhk2_ZCROCo); 
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 case 18: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_ghoststep.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(uFPW55kl1uKc, "character/swordman/appendage/ap_ghoststep.nut");
 local e5iMmYEhk2_ZCROCo = uFPW55kl1uKc.sq_GetLevelData(18, 0, sq_GetSkillLevel(uFPW55kl1uKc, 18)); 
 local B88LiI5xw3wLi = CNSquirrelAppendage.sq_AppendAppendage(uFPW55kl1uKc, uFPW55kl1uKc, 18, true, "character/swordman/appendage/ap_ghoststep.nut", false);
 B88LiI5xw3wLi.sq_SetValidTime(e5iMmYEhk2_ZCROCo); 
 CNSquirrelAppendage.sq_Append(B88LiI5xw3wLi, uFPW55kl1uKc, uFPW55kl1uKc, false);
 break;
 }
} ;

function onProc_StandAloneWave(obj)
{
	if(!obj) return;
	if (checkModuleType(MODULE_TYPE_DUNGEON_TYPE)){
	local skill = sq_GetSkill(obj, SKILL_WAVESPINAREA);
	if(skill && skill.isInCoolTime() == false){
		obj.setSkillCommandEnable(SKILL_WAVESPINAREA,true);
		local b_useskill = obj.sq_IsEnterSkill(SKILL_WAVESPINAREA);
		if(b_useskill != -1)
		{
			local skill_level = sq_GetSkillLevel(obj, SKILL_WAVESPINAREA);
			local ShootTime		= sq_GetIntData(obj, SKILL_WAVESPINAREA, 0);
			obj.startSkillCoolTime(SKILL_WAVESPINAREA, skill_level, -1);
			obj.sq_IntVectClear();				
			obj.sq_IntVectPush(0);		// throwState
			obj.sq_IntVectPush(0);		// throwType
			obj.sq_IntVectPush(SKILL_WAVESPINAREA);	// throwIndex
			obj.sq_IntVectPush(0);		// throwChargeTime
			obj.sq_IntVectPush(ShootTime);		// throwShootTime
			obj.sq_IntVectPush(1);		// throwAnimationIndex
			obj.sq_IntVectPush(4);		// chargeSpeedType
			obj.sq_IntVectPush(4);		// throwShootSpeedType
			obj.sq_IntVectPush(1000);	// chargeSpeedValue
			obj.sq_IntVectPush(1000);	// throwShootSpeedValue
			obj.sq_IntVectPush(-1);		// personalCastRange
			obj.sq_AddSetStatePacket(STATE_THROW, STATE_PRIORITY_USER, true);	
		}
	}
	}
}
