
function checkExecutableSkill_Scythemssacre(obj) {
	if (!obj) return false;

	local isUse = obj.sq_IsUseSkill(SKILL_SCYTHEMSSACRE);

	if (isUse) {
		obj.getVar("Scythemssacre").clear_vector();
		obj.getVar("Scythemssacre").push_vector(1);
		obj.getVar("Scythemssacre_skill").clear_vector();
		obj.getVar("Scythemssacre_skill").push_vector(1);
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_SCYTHEMSSACRE, pIntVec, STATE_PRIORITY_FORCE, false, "");
	}
}

function checkCommandEnable_Scythemssacre(obj) {
	return true;
}


function onSetState_Scythemssacre(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local state = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(state);
	obj.sq_StopMove();
	switch (state) {
		case 0:
			if (Seducer(obj)) {
				local ani = obj.getVar().GetAnimationMap("Seducer146", "Character/Priest/Seducer/ATAnimation/atscythemssacre_demonstep1_body.ani");
				obj.setCurrentAnimation(ani);
			}
			else {
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSCYTHEMSSACRE_STEP1_BODY); 

			}
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SCYTHEMSSACRE_LOOP);

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_SCYTHEMSSACRE, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			break;
		case 1:
			if (Seducer(obj)) {
				local ani = obj.getVar().GetAnimationMap("Seducer147", "Character/Priest/Seducer/ATAnimation/atscythemssacre_demonloop_body.ani");
				obj.setCurrentAnimation(ani);
			}
			else {
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSCYTHEMSSACRE_LOOP_BODY); 

			}
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SCYTHEMSSACRE_END);

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_SCYTHEMSSACRE, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			break;
		case 2:

			if (Seducer(obj)) {
				local ani = obj.getVar().GetAnimationMap("Seducer148", "Character/Priest/Seducer/ATAnimation/atscythemssacre_demonstep2_body.ani");
				obj.setCurrentAnimation(ani);
			}
			else {
				obj.sq_SetCurrentAnimation(CUSTOM_ANI_ATSCYTHEMSSACRE_STEP2_BODY); //

			}
			obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_SCYTHEMSSACRE_LASTATTACK);

			local damage = obj.sq_GetBonusRateWithPassive(SKILL_SCYTHEMSSACRE, -1, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			obj.getVar("jineng").clear_vector();
			obj.getVar("jineng").push_vector(0);
			break;

	}

}


function onProc_Scythemssacre(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);

	local currSize = obj.getVar("Scythemssacre").get_vector(0);
	local HitCount = obj.sq_GetIntData(SKILL_SCYTHEMSSACRE, 0)

	local Scythemssacre_skill = obj.getVar("Scythemssacre_skill").get_vector(0);
	local suod = obj.sq_GetIntData(SKILL_SCYTHEMSSACRE, 1) / 100.0;
	switch (state) {
		case 0:
			sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
			if (sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
				local currSize = obj.getVar("Scythemssacre_skill").get_vector(0);
				obj.getVar("Scythemssacre_skill").set_vector(0, currSize + 1);
			}
			if (Scythemssacre_skill >= 5) {
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0 + suod.tofloat());
			} else
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			break;

		case 1:
			sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
			if (sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
				local currSize = obj.getVar("Scythemssacre_skill").get_vector(0);
				obj.getVar("Scythemssacre_skill").set_vector(0, currSize + 1);
			}
			if (Scythemssacre_skill >= 5) {
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0 + suod.tofloat());
			} else {
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			}
			if (currSize > HitCount) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_SCYTHEMSSACRE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}


			local offsetx = 0;
			local offsety = 0;
			local movelv = 1;
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
				offsety -= movelv;
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
				offsety += movelv;
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL))
				offsetx -= movelv;
			if (sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
				offsetx += movelv;
			if (offsetx == 0 && offsety == 0) return;

			local x = obj.getXPos() + offsetx;
			local y = obj.getYPos() + offsety;
			if (!obj.isMovablePos(x, y)) return;
			sq_setCurrentAxisPos(obj, 0, x);
			sq_setCurrentAxisPos(obj, 1, y);
			break;
		case 2:
			sq_SetKeyxEnable(obj, E_ATTACK_COMMAND, true);
			if (sq_IsEnterCommand(obj, E_ATTACK_COMMAND)) {
				local currSize = obj.getVar("Scythemssacre_skill").get_vector(0);
				obj.getVar("Scythemssacre_skill").set_vector(0, currSize + 1);
			}
			if (Scythemssacre_skill >= 5) {
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0 + suod.tofloat());
			} else {
				obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
			}
			if (frmIndex == 20 && obj.getVar("jineng").get_vector(0) == 0) {
				if (Seducer(obj)) {
					obj.resetHitObjectList(); 

					obj.sq_SetShake(obj, 3, 100);
					sq_flashScreen(obj, 1, 40, 50, 76, sq_RGB(255, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);

				} else {
					obj.sq_SetShake(obj, 3, 100);
					sq_flashScreen(obj, 1, 50, 100, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
				}
				obj.getVar("jineng").clear_vector();
				obj.getVar("jineng").push_vector(1);
			}
			break;
	}
}

function onAttack_Scythemssacre(obj, damager, boundingBox, isStuck) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local pAni = obj.sq_GetCurrentAni();
	local currentT = sq_GetCurrentTime(pAni);
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	switch (state) {
		case 1:
			if (damager.isObjectType(OBJECTTYPE_ACTIVE) &&
				!sq_IsFixture(damager)) {
				createAttackCutExp(obj, damager);

				local objX = obj.getXPos();
				local objY = obj.getYPos();

				local damaX = damager.getXPos();
				local damaY = damager.getYPos();
				local damaZ = damager.getZPos();

				local x_move = 10;
				local y_move = 10;
				if (objX < damaX) x_move = -x_move;
				if (objY < damaY) y_move = -y_move;
				if (sq_Abs(objX - damaX) <= 20) x_move = 0;
				if (sq_Abs(objY - damaY) <= 20) y_move = 0;
				damager.setCurrentPos(damaX + x_move, damaY + y_move, damaZ);
				damager.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
			}
			break;
		case 2:
			if (damager.isObjectType(OBJECTTYPE_ACTIVE))
				createAttackCutExp(obj, damager);
			break;
	}
}

function onEndState_Scythemssacre(obj, new_state) {
	if (new_state != STATE_SCYTHEMSSACRE) {
		obj.getVar("Scythemssacre").clear_vector();
	}
}



function onEndCurrentAni_Scythemssacre(obj) {
	if (!obj) return;

	local state = obj.getSkillSubState(); 
	local currSize = obj.getVar("Scythemssacre").get_vector(0);
	local HitCount = obj.sq_GetIntData(SKILL_SCYTHEMSSACRE, 0)
	switch (state) {
		case 0:

			local pIntVec = sq_GetGlobalIntVector();
			sq_IntVectorClear(pIntVec);
			sq_IntVectorPush(pIntVec, 1);

			obj.addSetStatePacket(STATE_SCYTHEMSSACRE, pIntVec, STATE_PRIORITY_FORCE, false, "");

			break;
		case 1:
			if (currSize > HitCount) {
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 2);

				obj.addSetStatePacket(STATE_SCYTHEMSSACRE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			} else {
				obj.getVar("Scythemssacre").set_vector(0, currSize + 1);
				local pIntVec = sq_GetGlobalIntVector();
				sq_IntVectorClear(pIntVec);
				sq_IntVectorPush(pIntVec, 1);

				obj.addSetStatePacket(STATE_SCYTHEMSSACRE, pIntVec, STATE_PRIORITY_FORCE, false, "");
			}
			break;
		case 2:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}

}


function onKeyFrameFlag_Scythemssacre(obj, flagIndex) 
{
	if (!obj) return;


	local state = obj.getSkillSubState(); 

	switch (state) {
		case 2:
			if (Seducer(obj)) {
				if (flagIndex == 0) {
					obj.resetHitObjectList(); 
				}
				if (flagIndex == 1) {
					obj.resetHitObjectList(); 
				}
			} else {
				if (flagIndex == 0) {
					obj.resetHitObjectList(); 
				}
				if (flagIndex == 1) {
					obj.resetHitObjectList(); 
				}
				if (flagIndex == 2) {
					obj.resetHitObjectList(); 

				}
			}
			break;
	}
	return true;
} 