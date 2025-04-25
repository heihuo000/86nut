function checkExecutableSkill_BreachingDown(obj) {
	if (!obj) return false;

	local isUseSkill = obj.sq_IsUseSkill(SKILL_BREACHINGDOWN);
	if (isUseSkill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_AddSetStatePacket(STATE_BREACHINGDOWN, STATE_PRIORITY_USER, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BreachingDown(obj) {
	return false;
}

function onSetState_BreachingDown(obj, state, datas, isResetTimer) {
	local subState = obj.sq_GetVectorData(datas, 0); 
	obj.setSkillSubState(subState);
	obj.sq_StopMove();

	local object = obj.getVar("AttackSign").get_obj_vector(0);

	switch (subState) {
	case 0:
		local x = sq_GetXPos(obj); 
		local objectx = sq_GetXPos(object); 
		if (objectx < x) {
			sq_SetCurrentDirection(obj, ENUM_DIRECTION_LEFT);
		} else {
			sq_SetCurrentDirection(obj, ENUM_DIRECTION_RIGHT);
		}
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BREACHINGDOWNCAST);
		obj.sq_PlaySound("R_GN_BREACHING_DOWN_01"); 
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/breachingdown/startdash01_00.ani", ENUM_DRAWLAYER_NORMAL, true);

		break;
	case 1:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BREACHINGDOWNSTART01);
		local x = sq_GetXPos(obj); 
		local y = sq_GetYPos(obj); 
		local objectx = sq_GetXPos(object); 
		local objecty = sq_GetYPos(object); 
		local EnemyDistanceX = sq_Abs(x - objectx);
		local EnemyDistanceY = sq_Abs(y - objecty);

		local ani = sq_CreateAnimation("", "character/gunner/effect/animation/breachingdown/startdash02_03.ani"); 
		local pooledObj = sq_CreatePooledObject(ani, true); 
		sq_SetCurrentDirection(pooledObj, obj.getDirection()); 
		pooledObj.setCurrentPos(x, y, sq_GetHeightObject(obj) / 2); 
		pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_NORMAL); 
		sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false); 

		local angleX = CalculateRotationAngle(x, y, objectx, objecty); 
		angleX = sq_ToRadian(angleX);
		sq_SetCustomRotate(pooledObj, angleX);

		local maxDistance = 600;
		local nowDistance = sq_GetDistance(x, y, objectx, objecty, true);;
		local distanceRate = 1 - (maxDistance.tofloat() - EnemyDistanceX.tofloat()) / maxDistance.tofloat();
		ani.setImageRateFromOriginal(distanceRate, distanceRate); 
		ani.setAutoLayerWorkAnimationAddSizeRate(distanceRate); 

		obj.getVar("BreachingDown1").clear_vector(); 
		obj.getVar("BreachingDown1").push_vector(x); 
		obj.getVar("BreachingDown1").push_vector(EnemyDistanceX); 
		obj.getVar("BreachingDown1").push_vector(y); 
		obj.getVar("BreachingDown1").push_vector(EnemyDistanceY); 
		obj.getVar("BreachingDown1").push_vector(y > objecty ? ENUM_DIRECTION_UP : ENUM_DIRECTION_DOWN); 
		break;
	case 2:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BREACHINGDOWNSTART02);
		obj.sq_PlaySound("BREACHINGDOWN_ATTACK"); 
		sq_CreateDrawOnlyObject(obj, "character/gunner/effect/animation/breachingdown/startsmoke_01.ani", ENUM_DRAWLAYER_BOTTOM, true);

		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BREACHINGDOWN, STATE_BREACHINGDOWN, 0, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_BREACHINGDOWN); 
		sq_BinaryWriteDword(0); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 0, 0, sq_GetHeightObject(obj) / 2, obj.getDirection());

		local x = sq_GetXPos(obj); 
		obj.getVar("BreachingDown2").clear_vector(); 
		obj.getVar("BreachingDown2").push_vector(x); 
		obj.getVar("BreachingDown2").push_vector(-200); 
		break;
	case 3:
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_BREACHINGDOWNEND);
		obj.sq_PlaySound("BREACHINGDOWN_SHOT"); 
		sq_AddDrawOnlyAniFromParent(obj, "character/gunner/effect/animation/breachingdown/endboombottom_00.ani", 200, 0, 0);
		local attackBonusRate = addGrowSkillDamage(obj, obj.sq_GetBonusRateWithPassive(SKILL_BREACHINGDOWN, STATE_BREACHINGDOWN, 1, 1.0));
		sq_BinaryStartWrite();
		sq_BinaryWriteDword(SKILL_BREACHINGDOWN); 
		sq_BinaryWriteDword(1); 
		sq_BinaryWriteDword(attackBonusRate.tointeger()); 
		sq_SendCreatePassiveObjectPacket(obj, PASSIVEOBJ_GUNNER_ASSAULT_ID, 0, 200, 0, 0, obj.getDirection());
		break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
}

function onEnterFrame_BreachingDown(obj, frameIndex) {
	if (!obj) return;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 3:
		switch (frameIndex) {
		case 2:
			obj.sq_PlaySound("R_GN_BREACHING_DOWN_02");
			break;
		}
		break;
	}
}

function onKeyFrameFlag_BreachingDown(obj, flagIndex) {
	if (!obj) return false;
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 1:
		if (obj.getVar("ArcDischarge").getInt(0) >= 100) {
			obj.getVar("BreachingDownIsArcDischarge").setBool(0, true);
		}
		break;
	}
	return true;
}

function onProc_BreachingDown(obj) {
	if (!obj) return;
	local subState = obj.getSkillSubState(); 
	if (obj.getVar("BreachingDownIsArcDischarge").getBool(0)) {
		startArcDischarge(obj, "BreachingDownIsArcDischarge");
	}
	switch (subState) {
	case 1:
		if (obj.getVar("BreachingDown1").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = sq_GetDelaySum(pAni); 
			local x = obj.getVar("BreachingDown1").get_vector(0);
			local EnemyDistanceX = obj.getVar("BreachingDown1").get_vector(1);
			local y = obj.getVar("BreachingDown1").get_vector(2);
			local EnemyDistanceY = obj.getVar("BreachingDown1").get_vector(3);
			local direction = obj.getDirection();
			local upDownDirection = obj.getVar("BreachingDown1").get_vector(4);
			local velocityX = sq_GetUniformVelocity(0, EnemyDistanceX, currentT, fireT);
			local velocityY = sq_GetUniformVelocity(0, EnemyDistanceY, currentT, fireT);
			local dstX = sq_GetDistancePos(x, direction, velocityX); 
			local dstY = upDownDirection == ENUM_DIRECTION_UP ? y - velocityY : y + velocityY;
			local endXPoint = sq_GetDistancePos(x, direction, EnemyDistanceX);
			local endYPoint = upDownDirection == ENUM_DIRECTION_UP ? y - EnemyDistanceY : y + EnemyDistanceY;
			if (obj.isMovablePos(dstX, dstY)) {
				sq_setCurrentAxisPos(obj, 0, dstX);
				sq_setCurrentAxisPos(obj, 1, dstY);
			} else if (!obj.isMovablePos(endXPoint, endYPoint)) {
				obj.getVar("BreachingDown1").clear_vector();
			}

		}
		break;
	case 2:
		if (obj.getVar("BreachingDown2").size_vector() > 0) {
			local pAni = obj.getCurrentAnimation(); 
			local currentT = sq_GetCurrentTime(pAni); 
			local fireT = sq_GetDelaySum(pAni); 
			local x = obj.getVar("BreachingDown2").get_vector(0);
			local EnemyDistanceX = obj.getVar("BreachingDown2").get_vector(1);
			local direction = obj.getDirection();
			local velocityX = sq_GetUniformVelocity(0, EnemyDistanceX, currentT, fireT);
			local dstX = sq_GetDistancePos(x, direction, velocityX); 
			if (obj.isMovablePos(dstX, obj.getYPos())) {
				sq_setCurrentAxisPos(obj, 0, dstX);
			} else {
				obj.getVar("BreachingDown2").clear_vector();
			}

		}
		break;
	}
}

function onEndCurrentAni_BreachingDown(obj) {
	local subState = obj.getSkillSubState();
	switch (subState) {
	case 0:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(1);
		obj.sq_AddSetStatePacket(STATE_BREACHINGDOWN, STATE_PRIORITY_USER, true);
		break;
	case 1:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(2);
		obj.sq_AddSetStatePacket(STATE_BREACHINGDOWN, STATE_PRIORITY_USER, true);
		break;
	case 2:
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(3);
		obj.sq_AddSetStatePacket(STATE_BREACHINGDOWN, STATE_PRIORITY_USER, true);
		break;
	case 3:
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		break;
	}
}