

function checkCommandEnable_LifeDepriveDisposition(obj)

{

	return true;

}

function checkExecutableSkill_LifeDepriveDisposition(obj)

{

	if(!obj) return false;

	local UncleBangValue1 =  obj.sq_IsUseSkill(SKILL_LIFEDEPRIVEDISPOSITION);

	if(UncleBangValue1)

	

{

obj.sq_IntVectClear();

obj.sq_IntVectPush(0);

obj.sq_AddSetStatePacket(STATE_LIFEDEPRIVEDISPOSITION ,  STATE_PRIORITY_IGNORE_FORCE ,  true);

return true;

	

}

	return false;

}

function onSetState_LifeDepriveDisposition(obj ,  state ,  datas ,  isResetTimer)

{

	if(!obj) return;

	local UncleBangValue1 =  obj.sq_GetVectorData(datas ,  0);

	obj.setSkillSubState(UncleBangValue1);

	obj.sq_StopMove();

	switch(UncleBangValue1)

	

{

case 0:

obj.sq_SetCurrentAnimation(CUSTOM_ANI_LIFEDEPRIVEDISPOSITION1);

local UncleBangValue2 =  obj.getCurrentAnimation().getDelaySum(false);

obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

local UncleBangValue3 =  obj.getCurrentAnimation().getDelaySum(false);

local UncleBangValue4 =  UncleBangValue2.tofloat()  /  UncleBangValue3.tofloat();

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lifedeprivedisposition_cast_eff03.ani" ,  0 ,  0 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  UncleBangValue4 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_cast_magiccircle_a01.ani" ,  350 ,  0 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  UncleBangValue4 ,  0 ,  0 ,  1);

break;

case 1:

obj.sq_SetCurrentAnimation(CUSTOM_ANI_LIFEDEPRIVEDISPOSITION2);

sq_setCurrentAttackBoundingBoxSizeRate(obj ,  1.0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0));

local UncleBangValue2 =  obj.getCurrentAnimation().getDelaySum(false);

obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

local UncleBangValue3 =  obj.getCurrentAnimation().getDelaySum(false);

local UncleBangValue4 =  UncleBangValue2.tofloat()  /  UncleBangValue3.tofloat();

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_magiccircle_a01.ani" ,  350 ,  -1 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  UncleBangValue4 ,  0 ,  0 ,  1);

RosaryBeadClear(obj);

break;

case 2:

obj.sq_SetCurrentAnimation(CUSTOM_ANI_LIFEDEPRIVEDISPOSITION3);

sq_setCurrentAttackBoundingBoxSizeRate(obj ,  1.0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0));

local UncleBangValue2 =  obj.getCurrentAnimation().getDelaySum(false);

obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

local UncleBangValue3 =  obj.getCurrentAnimation().getDelaySum(false);

local UncleBangValue4 =  UncleBangValue2.tofloat()  /  UncleBangValue3.tofloat();

obj.getVar("lifedeprivedispositionSpeed").setFloat(2 ,  UncleBangValue4);

break;

	

}

}

function onEndCurrentAni_LifeDepriveDisposition(obj)

{

	if(!obj || !obj.isMyControlObject()) return;

	local UncleBangValue1 =  obj.getSkillSubState();

	if(UncleBangValue1 <=  1)

	

{

obj.sq_IntVectClear();

obj.sq_IntVectPush(UncleBangValue1 + 1);

obj.sq_AddSetStatePacket(STATE_LIFEDEPRIVEDISPOSITION ,  STATE_PRIORITY_IGNORE_FORCE ,  true);

	

}

	if(UncleBangValue1 >=  2)

	

{

obj.sq_IntVectClear();

obj.sq_AddSetStatePacket(STATE_STAND ,  STATE_PRIORITY_IGNORE_FORCE ,  true);

	

}

}

function onKeyFrameFlag_LifeDepriveDisposition(obj ,  flagIndex)

{

	if(!obj) return false;

	local UncleBangValue1 =  obj.getSkillSubState();

	switch(UncleBangValue1)

	

{

case 1:

switch(flagIndex)

{

case 10001:

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  350 ,  0 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  350 ,  0 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  380 ,  0 ,  50 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  380 ,  0 ,  50 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  310 ,  0 ,  50 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  310 ,  0 ,  50 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  350 ,  0 ,  220 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  350 ,  0 ,  220 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  380 ,  0 ,  170 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  380 ,  0 ,  170 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddbead_missile_hit01.ani" ,  310 ,  0 ,  170 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_shot_type_crackeff01.ani" ,  310 ,  0 ,  170 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  1.0 ,  0 ,  0 ,  1);

obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RITUALFORDRAGON1);

local UncleBangValue2 =  obj.sq_GetSkillLoad(234);

local UncleBangValue3 =  UncleBangValue2.getRemainLoadNumber();

local UncleBangValue4 =  sq_GetIntData(obj ,  SKILL_ROSARYSHOOTING ,  UncleBangValue3);

local UncleBangValue5 =  obj.sq_GetBonusRateWithPassive(SKILL_LIFEDEPRIVEDISPOSITION ,  -1 ,  0 ,  1.0);

UncleBangValue5 =  UncleBangValue5 * (1 + UncleBangValue4.tofloat()  /  100);

obj.sq_SetCurrentAttackBonusRate(UncleBangValue5.tointeger());

break;

}

break;

case 2:

switch(flagIndex)

{

case 10001:

obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_RITUALFORDRAGON2);

local UncleBangValue2 =  obj.sq_GetSkillLoad(234);

local UncleBangValue3 =  UncleBangValue2.getRemainLoadNumber();

local UncleBangValue4 =  sq_GetIntData(obj ,  SKILL_ROSARYSHOOTING ,  UncleBangValue3);

local UncleBangValue5 =  obj.sq_GetBonusRateWithPassive(SKILL_LIFEDEPRIVEDISPOSITION ,  -1 ,  1 ,  1.0);

UncleBangValue5 =  UncleBangValue5 * (1 + UncleBangValue4.tofloat()  /  100);

obj.sq_SetCurrentAttackBonusRate(UncleBangValue5.tointeger());

sq_removePooledObject(obj);

sq_createPooledObject(obj ,  "character/priest/effect/animation/atlifedeprivedisposition/lddmagiccircle_explosion_esplosion02.ani" ,  350 ,  0 ,  0 ,  sq_GetIntData(obj ,  SKILL_LIFEDEPRIVEDISPOSITION ,  0) ,  obj.getVar("lifedeprivedispositionSpeed").getFloat(2) ,  0 ,  0 ,  1);

if(obj.isMyControlObject())

{

sq_SetMyShake(obj ,  10 ,  200);

sq_flashScreen(obj ,  80 ,  80 ,  0 ,  255 ,  sq_RGB(255 ,  255 ,  255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

}

break;

}

break;

	

}

	return true;

}

   