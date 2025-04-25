

SUB_STATE_SEVENTHFLOW_0	<- 0

SUB_STATE_SEVENTHFLOW_1	<- 1

SUB_STATE_SEVENTHFLOW_2	<- 2

SUB_STATE_SEVENTHFLOW_3	<- 3

SUB_STATE_SEVENTHFLOW_4	<- 4

SUB_STATE_SEVENTHFLOW_5	<- 5

SUB_STATE_SEVENTHFLOW_6	<- 6

SUB_STATE_SEVENTHFLOW_7	<- 7

function checkExecutableSkill_seventhflow(obj)

{

	if (!obj) return false;

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.sq_IsUseSkill(SKILL_SEVENTHFLOW);

	if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

	

{

obj.sq_IntVectClear();

obj.sq_IntVectPush(SUB_STATE_SEVENTHFLOW_0); 

obj.sq_AddSetStatePacket(STATE_SEVENTHFLOW ,  STATE_PRIORITY_USER ,  true);

return true;

	

}

	return false;

}

function checkCommandEnable_seventhflow(obj)

{

	if (!obj) return false;

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.sq_GetState();

	if (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 ==  STATE_STAND)

return true;

	if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 ==  STATE_ATTACK)

	

{

return obj.sq_IsCommandEnable(SKILL_SEVENTHFLOW); 

	

}

	

	

	

	return true;

}

function onSetState_seventhflow(obj ,  state ,  datas ,  isResetTimer)

{

	

	if(!obj) return;

	obj.sq_StopMove();

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.sq_GetVectorData(datas ,  0);

	obj.setSkillSubState(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.sq_GetVectorData(datas ,  1);

obj.getVar("state").clear_vector();

obj.getVar("moveinfo").clear_vector();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 !=  -1)

{

obj.getVar("state").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==1 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1== SUB_STATE_SEVENTHFLOW_6)

{

if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT ,  ENUM_SUBKEY_TYPE_ALL))

obj.setDirection(ENUM_DIRECTION_LEFT);

else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT ,  ENUM_SUBKEY_TYPE_ALL))

obj.setDirection(ENUM_DIRECTION_RIGHT);

obj.getVar("moveinfo").push_vector(obj.getXPos());

obj.getVar("moveinfo").push_vector(obj.getYPos());

obj.getVar("atkinfo").set_vector(4 , 150);

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1== SUB_STATE_SEVENTHFLOW_7)

{

if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT ,  ENUM_SUBKEY_TYPE_ALL))

obj.setDirection(ENUM_DIRECTION_LEFT);

else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT ,  ENUM_SUBKEY_TYPE_ALL))

obj.setDirection(ENUM_DIRECTION_RIGHT);

}

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SUB_STATE_SEVENTHFLOW_0:

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOWCAST);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetSkillLevel(obj ,  SKILL_SEVENTHFLOW);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetLevelData(obj , SKILL_SEVENTHFLOW ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  sq_GetLevelData(obj , SKILL_SEVENTHFLOW ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetLevelData(obj , SKILL_SEVENTHFLOW ,  2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetLevelData(obj , SKILL_SEVENTHFLOW ,  3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

obj.getVar("atkinfo").clear_vector();

obj.getVar("atkinfo").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);

obj.getVar("atkinfo").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

obj.getVar("atkinfo").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

obj.getVar("atkinfo").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

obj.getVar("atkinfo").push_vector(600);

if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj ,  "character/gunner/appendage/ap_cutin_ani.nut"))

CNSquirrelAppendage.sq_AppendAppendage(obj ,  obj ,  SKILL_SEVENTHFLOW ,  true ,  "character/gunner/appendage/ap_cutin_ani.nut" ,  true);

break;

case SUB_STATE_SEVENTHFLOW_1:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW1DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100));

obj.getVar("moveinfo").push_vector(obj.getYPos()-sq_getRandom(50 , 200));

sq_CreateParticle("character/gunner/effect/animation/seventhflow/dust_particle/dust.ptl" ,  obj ,  0 ,  0 ,  0 ,  true ,  250 ,  0 ,  25);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW1SHOOT);

}

break;

case SUB_STATE_SEVENTHFLOW_2:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW2DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100));

obj.getVar("moveinfo").push_vector(obj.getYPos()+200);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW2SHOOT);

}

break;

case SUB_STATE_SEVENTHFLOW_3:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW3DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100));

obj.getVar("moveinfo").push_vector(obj.getYPos()-200);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW3SHOOT);

}

break;

case SUB_STATE_SEVENTHFLOW_4:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW4DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100));

obj.getVar("moveinfo").push_vector(obj.getYPos()+150);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW4SHOOT);

}

break;

case SUB_STATE_SEVENTHFLOW_5:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW5DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100));

obj.getVar("moveinfo").push_vector(obj.getYPos()-150);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW5SHOOT);

}

break;

case SUB_STATE_SEVENTHFLOW_6:

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW6DASH);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  25));

obj.getVar("moveinfo").push_vector(obj.getYPos()+20);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

{

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOW6SHOOT);

obj.getVar("moveinfo").push_vector(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  75));

obj.getVar("moveinfo").push_vector(obj.getYPos()+55);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  sq_GetCurrentAnimation(obj);

sq_flashScreen(obj ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.getDelaySum(false) ,  200 ,  120 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

}

break;

case SUB_STATE_SEVENTHFLOW_7:

obj.sq_SetCurrentAnimation(CUSTOM_ANI_SEVENTHFLOWLAST);

sq_RemoveParticle("character/gunner/effect/animation/seventhflow/dust_particle/dust.ptl" , obj);

break;

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1<SUB_STATE_SEVENTHFLOW_6 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  obj.getCurrentAnimation();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9.setSpeedRate(160.0);

}

}

function onKeyFrameFlag_seventhflow(obj , flagIndex)

{

	if(!obj)

return false;

	if(!obj.sq_IsMyControlObject())

return false;

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getSkillSubState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SUB_STATE_SEVENTHFLOW_0:

if(flagIndex== 1)

sq_flashScreen(obj ,  0 ,  60 ,  0 ,  255 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

else if(flagIndex== 2)

sq_flashScreen(obj ,  0 ,  60 ,  180 ,  255 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

break;

case SUB_STATE_SEVENTHFLOW_1:

case SUB_STATE_SEVENTHFLOW_2:

case SUB_STATE_SEVENTHFLOW_3:

case SUB_STATE_SEVENTHFLOW_4:

case SUB_STATE_SEVENTHFLOW_5:

if(flagIndex== 1)

{

sq_SetMyShake(obj , 2 , 80);

sq_flashScreen(obj ,  0 ,  0 ,  80 ,  70 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

obj.sq_StartWrite();

obj.sq_WriteDword(SKILL_SEVENTHFLOW);

obj.sq_WriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

obj.sq_WriteDword(obj.getVar("atkinfo").get_vector(0));

obj.sq_SendCreatePassiveObjectPacket(24371 ,  0 ,  0 ,  0 ,  0);

}

break;

case SUB_STATE_SEVENTHFLOW_6:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 0.0;

switch(flagIndex)

{

case 1: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 2.6179799999999998; break;

case 2: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 2.094384; break;

case 3: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 1.5707879999999999; break;

case 4: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 1.047192; break;

case 5: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 0.8726599999999999; break;

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/seventhflow/6/6_shoot_2.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  2 ,  120);

sq_SetCustomRotate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetMyShake(obj , 5 , 80);

sq_flashScreen(obj ,  0 ,  0 ,  30 ,  100 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

obj.sq_StartWrite();

obj.sq_WriteDword(SKILL_SEVENTHFLOW);

obj.sq_WriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

obj.sq_WriteDword(obj.getVar("atkinfo").get_vector(0));

obj.sq_SendCreatePassiveObjectPacket(24371 ,  0 ,  0 ,  0 ,  0);

break;

case SUB_STATE_SEVENTHFLOW_7:

if(flagIndex== 2)

{

sq_flashScreen(obj ,  0 ,  150 ,  200 ,  120 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

obj.sq_StartWrite();

obj.sq_WriteDword(SKILL_SEVENTHFLOW);

obj.sq_WriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

obj.sq_WriteDword(obj.getVar("atkinfo").get_vector(1));

obj.sq_SendCreatePassiveObjectPacket(24371 ,  0 ,  0 ,  0 ,  0);

}

break;

}

	return true;

}

function onProc_seventhflow(obj)

{

	if(!obj) return;

obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

if(!obj.isMyControlObject()) return;

if(obj.getVar("moveinfo").size_vector()<= 0) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getCurrentAnimation();

if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT ,  ENUM_SUBKEY_TYPE_ALL) && obj.getDirection()== ENUM_DIRECTION_LEFT

||sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT ,  ENUM_SUBKEY_TYPE_ALL) && obj.getDirection()== ENUM_DIRECTION_RIGHT)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("atkinfo");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.get_vector(4);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.get_vector(3);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.get_vector(2)+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.setSpeedRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.tofloat());

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.set_vector(4 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

}

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1.getDelaySum(false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar("moveinfo");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

if(obj.isMovablePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14))

obj.setCurrentPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 , 0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9==Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11&&Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10== Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12)

obj.getVar("moveinfo").clear_vector();

}

function onEndCurrentAni_seventhflow(obj)

{

if(!obj) return;

	local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getSkillSubState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SUB_STATE_SEVENTHFLOW_0:

obj.sq_IntVectClear();

obj.sq_IntVectPush(SUB_STATE_SEVENTHFLOW_1); 

obj.sq_IntVectPush(1); 

obj.sq_AddSetStatePacket(STATE_SEVENTHFLOW ,  STATE_PRIORITY_USER ,  true);

break;

case SUB_STATE_SEVENTHFLOW_1:

case SUB_STATE_SEVENTHFLOW_2:

case SUB_STATE_SEVENTHFLOW_3:

case SUB_STATE_SEVENTHFLOW_4:

case SUB_STATE_SEVENTHFLOW_5:

case SUB_STATE_SEVENTHFLOW_6:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  -1;

if(obj.getVar("state").get_vector(0)== 1)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 2;

else if(obj.getVar("state").get_vector(0)== 2)

{

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1!= SUB_STATE_SEVENTHFLOW_6)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2= 1;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1+= 1;

}

obj.sq_IntVectClear();

obj.sq_IntVectPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1); 

obj.sq_IntVectPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2); 

obj.sq_AddSetStatePacket(STATE_SEVENTHFLOW ,  STATE_PRIORITY_USER ,  true);

break;

case SUB_STATE_SEVENTHFLOW_7:

obj.sq_AddSetStatePacket(STATE_STAND ,  STATE_PRIORITY_USER ,  false);

break;

}

}

