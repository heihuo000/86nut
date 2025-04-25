

function setCustomData_po_qq506807329new_gunner_24371(obj ,  receiveData)

{

if (!obj)

return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  receiveData.readDword();

obj.getVar("skill").clear_vector();

obj.getVar("skill").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_getRandom(0 , receiveData.readDword());

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  0);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

obj.sq_SetMoveParticle("particle/msc7.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case SKILL_SEISMICWAVE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setImageRateFromOriginal(1.20833333 ,  1.20833333);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setAutoLayerWorkAnimationAddSizeRate(1.20833333);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 ,  1.20833333 ,  1.20833333 ,  1.0);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  4);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

sq_SetChangeStatusIntoAttackInfo(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  0 ,  ACTIVESTATUS_STUN , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  3)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setImageRateFromOriginal(0.625 ,  0.625);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setAutoLayerWorkAnimationAddSizeRate(0.625);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 ,  0.625 ,  0.625 ,  1.0);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  4);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

}

break;

case SKILL_PLASMABOOST:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23 =  receiveData.readDword();

obj.getVar().clear_vector();

obj.getVar().push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserloop_00.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  6);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  obj.getParent();

sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 ,  obj);

obj.getVar().setBool(0 , true);

obj.setTimeEvent(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 ,  0 ,  true);

obj.sq_PlaySound("P_ICECANNON_SHOT");

break;

case SKILL_BURSTERBEAMNEW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkaeff_laser.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexpla_floordodge_a.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ==  3)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexplb_light_a.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  7);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

}

break;

case SKILL_DEADLYAPPROACH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/deadlyapproach/shooteffect_1.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  8);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

break;

case SKILL_WIPEOUT:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack01_12.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

sq_SetCurrentAttackInfoFromCustomIndex(obj ,  9);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB39 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack02_hitf_02.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  10);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB42 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.getDelaySum(0 ,  7);

obj.setTimeEvent(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB42 / Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB39 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB39 ,  true);

}

break;

case SKILL_FASTDRAW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB43 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB44 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/fastdraw/fastdraw_bullet_normal.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  11);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB44);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB43==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB47 =  null;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48 =  obj.sq_FindFirstTarget(150 ,  600 ,  50 ,  110);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB49 =  sq_GetShootingHorizonAngle(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48 ,  obj.getYPos() ,  0 ,  360 ,  abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48.getXPos() - obj.getXPos()));

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB49 ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  (0-sq_getRandom(0 , 2)).tofloat() ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

{

obj.sq_SetMoveParticle("particle/fastdrawbulletdown.ptl" ,  (0-sq_getRandom(0 , 5)).tofloat() ,  (0-sq_getRandom(15 , 25)).tofloat());

sq_SetCustomRotate(obj ,  -0.349064);

}

obj.getVar().clear_vector();

obj.getVar().push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB43);

break;

case SKILL_SEVENTHFLOW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB50 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB51 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52 =  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seventhflow/seventhflow";

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 =  12;

switch(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB50)

{

case SUB_STATE_SEVENTHFLOW_1: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "1shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_2: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "2shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_3: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "3shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_4: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "4shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_5: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "5shoot.ani"; break;

case SUB_STATE_SEVENTHFLOW_6: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+= "6shoot.ani"; break;

case SUB_STATE_SEVENTHFLOW_7: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52+="last.ani"; Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53= 13; break;

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB52);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB51);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

break;

case SKILL_PISTOLCARBINE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB44 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bulletpistolcarbine.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 =  -1;

switch (sq_getRandom(1 , 3))

{

case 1: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58=  ENUM_ELEMENT_FIRE; break;

case 2: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58=  ENUM_ELEMENT_WATER; break;

case 3: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58=  ENUM_ELEMENT_LIGHT; break;

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  14);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB44);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7.setElement(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB47 =  null;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48 =  obj.sq_FindFirstTarget(150 ,  600 ,  50 ,  110);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB49 =  sq_GetShootingHorizonAngle(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48 ,  obj.getYPos() ,  0 ,  360 ,  abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48.getXPos() - obj.getXPos()));

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB49 ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  (0-sq_getRandom(0 , 2)).tofloat() ,  (0-sq_getRandom(0 , 2)).tofloat());

break;

case SKILL_GRAVITYGRENADE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB64 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB67 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB64);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB67);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB67.tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70 =  (180.0*Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69).tointeger();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  (60.0*Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69).tointeger();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

if(receiveData.readDword()== 1)

obj.sq_SetMoveParticle("particle/grenadecenter.ptl" ,  0.0 ,  0.0);

else

obj.sq_SetMoveParticle("particle/grenadedown.ptl" ,  0.0 ,  0.0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case SKILL_DANGERCLOSE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(obj.getXPos());

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(obj.getYPos());

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangershell.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 =  sq_getRandom(17 , 20);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  obj.getParent();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB84 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26.getYPos();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70 =  sq_getRandom(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70-50 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70+50);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  sq_getRandom(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71-25 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71+25);

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB84);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(obj.getYPos());

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB88 =  45.0*(sq_Abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB84 - Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70).tofloat() / 800.0)*0.0174532;

sq_SetCustomRotate(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB88);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector((Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB88*10000000.0).tointeger());

obj.getVar().setBool(0 , false);

obj.getVar().setBool(1 , false);

obj.setTimeEvent(0 ,  100 ,  0 ,  false);

obj.setTimeEvent(1 ,  20 ,  0 ,  false);

}

break;

case SKILL_G38ARG:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB90 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB93 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB94 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB96 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB97 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB93);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB94);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB96);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB97);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB90== 1)

obj.sq_SetMoveParticle("particle/grenadecenter.ptl" ,  0.0 ,  0.0);

else

obj.sq_SetMoveParticle("particle/grenadedown.ptl" ,  0.0 ,  0.0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/shot01.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  21);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7.setElement(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

}

break;

case SKILL_SUPERNOVA:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB107 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB108 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB109 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB110 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB107);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB108);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB109);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB110);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98 =  receiveData.readDword();

obj.getVar().clear_vector();

obj.getVar().push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorloop/floorloop_floornormal.ani");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98.tofloat() / 350.0;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

obj.setTimeEvent(3 ,  2000 ,  1 ,  false);

}

break;

case SKILL_DIMENSIONRUNNER:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

switch(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10)

{

case 1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB119 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB121 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB119);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB121);

obj.getVar("atkcount").clear_vector();

obj.getVar("atkcount").push_vector(0);

obj.getVar("atkcount").push_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/attackareadummy.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  25);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB128 =  obj.getObjectManager();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB129 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB128.getCollisionObjectNumber();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB129;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB130 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB128.getCollisionObject(i);

if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB130 || !obj.isEnemy(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB130)) continue;

sq_AddHitObject(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB130);

}

obj.setTimeEvent(0 ,  50 ,  0 ,  false);

break;

}

break;

case SKILL_HELLMARCH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

switch(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10)

{

case 1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB134 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 =  receiveData.readDword();

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB134);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummyexplosion.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  28);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

obj.setTimeEvent(5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16.getDelaySum(false) / Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 ,  false);

break;

case 3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB134 =  receiveData.readDword();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummy.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_GetCustomAttackInfo(obj ,  27);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

obj.getVar().clear_vector();

obj.getVar().push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB134);

break;

}

break;

default:

break;

}

}

function setState_po_qq506807329new_gunner_24371(obj ,  state ,  datas)

{

	if(!obj) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

obj.getVar("state").clear_vector(); 

obj.getVar("state").push_vector(state);

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/missile_01.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

obj.getVar("moveobj").clear_obj_vector();

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

obj.getVar().push_vector(obj.getXPos());

obj.getVar("time").clear_ct_vector();

obj.getVar("time").push_ct_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  obj.getVar("time").get_ct_vector(0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.Reset();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3.Start(10000 , 0);

break;

case PASSIVEOBJ_SUB_STATE_2:

obj.sq_RemoveMoveParticle();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getVar("moveobj").get_obj_vector_size();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  obj.getVar("moveobj");

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.get_obj_vector(i);

sq_moveWithParent(null ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/msc7/explosion_bottom.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  2 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(1)).tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/explosion_08.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  1);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

break;

}

break;

case SKILL_SEISMICWAVE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13==  1)

{

obj.getVar("state").clear_vector(); 

obj.getVar("state").push_vector(state);

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_start.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

break;

case PASSIVEOBJ_SUB_STATE_1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_end.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  sq_GetSkillLevel(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 ,  SKILL_SEISMICWAVE);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  8 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  9 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  11 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB28 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB29 =  sq_GetLevelData(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 , SKILL_SEISMICWAVE ,  13 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

obj.getVar().clear_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB28);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB29);

break;

case PASSIVEOBJ_SUB_STATE_2:

sq_setCurrentAxisPos(obj ,  2 ,  900);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/drop/drop_seismicwave.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(0);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/start/start_seismicwave.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetMyShake(obj , 4 , 300);

sq_flashScreen(obj ,  0 ,  40 ,  200 ,  204 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(2);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(3);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SEISMICWAVE);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.set_vector(4 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(4)-1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23 =  (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(5)).tofloat();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwave.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setSpeedRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetMyShake(obj , 5 , 180);

sq_flashScreen(obj ,  0 ,  0 ,  120 ,  153 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_LINEARDODGE ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(6);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(7);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(8);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SEISMICWAVE);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

case PASSIVEOBJ_SUB_STATE_5:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/end/end_exp_dodge.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_SetMyShake(obj , 3 , 300);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(9);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

break;

}

}

break;

case SKILL_GRAVITYGRENADE:

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_dodge.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.addLayerAnimation(-1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 , true);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

obj.setTimeEvent(0 ,  50 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71=  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_front.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72=  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background01.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.getCurrentAnimation();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/02_loop/grenadegravity_loop_background.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  1.0);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB64 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB65 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  15);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB65);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

obj.setTimeEvent(1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB64 ,  0 ,  false);

obj.setTimeEvent(2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_4:

obj.stopTimeEvent(1);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_front.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  obj.getVar().get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  16);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_background.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7.getCurrentAnimation();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54);

break;

}

break;

case SKILL_DANGERCLOSE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13==  1)

{

if(state== PASSIVEOBJ_SUB_STATE_0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/dangerclose/dangerclose.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

}

else if(state== PASSIVEOBJ_SUB_STATE_1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75 =  obj.getVar().get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB76 =  obj.getXPos();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB76<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75)

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_LEFT);

else

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_RIGHT);

obj.setCurrentAnimation(null);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  obj.getVar().get_vector(2);

obj.setTimeEvent(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 ,  0 ,  true);

}

}

break;

case SKILL_G38ARG:

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

obj.sq_PlaySound("G_38ARG_THROW");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argthrow.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 =  obj.getVar().get_vector(0);

obj.setTimeEvent(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB63 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.setTimeEvent(1 ,  150 ,  1 ,  false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argmove.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB81 =  null;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB82 =  -1;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB83 =  obj.getObjectManager();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB84 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB83.getCollisionObjectNumber();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB84;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB83.getCollisionObject(i);

if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 || !obj.isEnemy(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6) || !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6.isObjectType(OBJECTTYPE_ACTIVE)) continue;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6= sq_GetCNRDObjectToActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6.isDead() || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6.getState ==  STATE_DIE) continue;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB86 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6.getHp();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB86>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB82)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB82= Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB86;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB81 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6;

}

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB81!= null)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB87 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB88 =  obj.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB76 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB81.getXPos();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB87>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB76)

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_LEFT);

else

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_RIGHT);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/staydust01.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB88-1);

obj.getVar("move").setBool(0 , false);

obj.getVar("target").clear_obj_vector();

obj.getVar("target").push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB81);

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argnonattack.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argattack.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_4:

obj.sq_RemoveMoveParticle();

sq_moveWithParent(obj ,  obj);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/explosion_08.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95 =  obj.getVar().get_vector(6);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  22);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

sq_flashScreen(obj ,  0 ,  80 ,  0 ,  178 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_DARK ,  ENUM_DRAWLAYER_BOTTOM);

sq_flashScreen(obj ,  0 ,  0 ,  300 ,  102 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

break;

}

break;

case SKILL_SUPERNOVA:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  null;

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/bomb_bomb.ani");

obj.sq_SetMoveParticle("particle/supernova.ptl" ,  0.0 ,  0.0);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/start/explosionstart_hemisphere01.ani");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98 =  obj.getVar().get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  23);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB98);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

sq_SetMyShake(obj , 2 , 300);

break;

case PASSIVEOBJ_SUB_STATE_2:

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/loop/explosionloop_hemisphere01.ani");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB102 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB103 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8.get_vector(4);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  24);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB103);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

obj.setTimeEvent(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 ,  1 ,  false);

obj.setTimeEvent(1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB102 ,  0 ,  false);

obj.setTimeEvent(2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 / 3*2 ,  1 ,  false);

obj.getVar("time").clear_vector();

obj.getVar("time").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101/3);

break;

case PASSIVEOBJ_SUB_STATE_3:

obj.stopTimeEvent(1);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/end/explosionend_hemisphere01.ani");

sq_SetMyShake(obj , 7 , 200);

sq_SetMyShake(obj , 8 , 300);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SUPERNOVA);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(obj.getVar().get_vector(0));

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

}

if(state!= PASSIVEOBJ_SUB_STATE_0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 =  (obj.getVar().get_vector(0)).tofloat() / 350.0;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105);

}

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case SKILL_DIMENSIONRUNNER:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 ==  1)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetloop_00.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_1:

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerready_body.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetend_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfire_body.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicideready_body.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicide_body.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suicidedust_00.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  1 ,  obj.getYPos()-1);

break;

case PASSIVEOBJ_SUB_STATE_5:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosiona_body.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

break;

case PASSIVEOBJ_SUB_STATE_6:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionb_04.ani");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

sq_SetAttackBoundingBoxSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionground_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7.getCurrentAnimation().setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhandeff_ground_normal.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhand.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  1 ,  obj.getYPos()-1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118 =  obj.getVar().get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_GetCustomAttackInfo(obj ,  26);

sq_SetCurrentAttackBonusRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB118);

sq_SetCurrentAttackInfo(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12);

sq_SetMyShake(obj , 5 , 320);

break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13== 2)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missile_01.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

obj.sq_SetMoveParticle("particle/dimensionrunner.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , 150);

sq_SetSpeedToMoveParticle(obj , 2 , sq_getRandom(250 , 700));

obj.getVar().clear_vector();

obj.getVar().push_vector(sq_getRandom(250 , 400));

obj.setTimeEvent(1 ,  50 ,  0 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

obj.sq_SetMoveParticle("particle/dimensionrunner.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , 800);

sq_SetSpeedToMoveParticle(obj , 1 , sq_getRandom(-400 , 400));

obj.getVar().clear_vector();

obj.getVar().push_vector(obj.getZPos());

break;

case PASSIVEOBJ_SUB_STATE_2:

obj.stopTimeEvent(1);

obj.sq_RemoveMoveParticle();

sq_SetCustomRotate(obj ,  0.0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosion_04.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosionground_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_SetMyShake(obj , 3 , 80);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB122 =  sq_GetCNRDObjectToCollisionObject(obj.getParent());

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB122.getVar("atkcount").set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB122.getVar("atkcount").get_vector(0)+1);

break;

}

}

break;

case SKILL_HELLMARCH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 ==  1)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125 =  obj.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 =  obj.getDirection();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  -65) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125-110 , 0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  -75) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125+70 , 0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  845+65) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125-110 , 0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  845+75) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125+70 , 0);

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73 ,  sq_GetOppositeDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126));

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74 ,  sq_GetOppositeDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126));

obj.getVar("aniobj").clear_obj_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131 =  obj.getVar("aniobj");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74);

sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/laser_electric02.ani" ,  ENUM_DRAWLAYER_COVER ,  true) ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125+85);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132 =  obj.getVar().get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133 =  obj.getVar().get_vector(2);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_HELLMARCH);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB133);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 ,  obj.getDirection());

obj.setTimeEvent(0 ,  1040 ,  1 ,  false);

obj.setTimeEvent(1 ,  880 ,  1 ,  false);

obj.setTimeEvent(2 ,  1000 ,  1 ,  false);

obj.setTimeEvent(3 ,  1650 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131 =  obj.getVar("aniobj");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.get_obj_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.get_obj_vector(3);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateloop_dot4.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateloop_dot2.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB73.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateloop_dot4.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB74.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateloop_dot2.ani"));

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/gateground_03.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB131.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB75);

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 =  obj.getDirection();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  -100);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  845+100);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_appear_leftfootmove1.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_leftfootmove1.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_leftfootmove.ani") , false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_leftfootmove.ani") , false);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143);

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  sq_GetOppositeDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126));

obj.getVar("aniobj1").clear_obj_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB146 =  obj.getVar("aniobj1");

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB146.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB146.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72);

obj.getVar("aniobj1").clear_vector();

obj.getVar("aniobj1").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142);

obj.getVar("aniobj1").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143);

obj.getVar("clarity").clear_vector();

obj.getVar("clarity").push_vector(0);

obj.getVar("direction").clear_vector();

obj.getVar("direction").push_vector(1);

obj.getVar("direction").push_vector(1);

obj.getVar("aniobj2").clear_obj_vector();

obj.setTimeEvent(4 ,  100 ,  1 ,  false);

obj.getVar().set_vector(0 , obj.getVar().get_vector(0)-1);

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147 =  obj.getVar().get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147 <= 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148 =  obj.getVar("aniobj");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB149 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB150 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB151 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.get_obj_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB152 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.get_obj_vector(3);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB149.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateend_dot4.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB150.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateend_dot2.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB151.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateend_dot4.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB152.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateend_dot2.ani"));

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB91 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.getVar().set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147-1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125 =  obj.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 =  obj.getDirection();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB157 =  sq_GetOppositeDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB158 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  -100+30*3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB159 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB124 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  845+100-30*3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB160 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB125-20*3;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB164 =  obj.getVar("direction").get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165 =  "";

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB164==  1)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165= "right";

obj.getVar("direction").set_vector(0 , 2);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB164== 2)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165= "left";

obj.getVar("direction").set_vector(0 , 1);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166 =  obj.getVar("direction").get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167 =  "";

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166==1||Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166== 4)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167= "1";

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166==2 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166== 3)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167= "2";

obj.getVar("direction").set_vector(1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB166+1);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/LeaderRed/leader_appear_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167+".ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167+".ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove.ani") , false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove.ani") , false);

obj.getVar("aniobj1").clear_vector();

obj.getVar("aniobj1").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.getXPos());

obj.getVar("aniobj1").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.getXPos());

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector_size();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167+".ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove.ani") , false);

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169<6*2*3)

for(local i= 0;i<7;i++)

{

if(i== 3) continue;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB167+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove.ani") , false);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB165+"footmove.ani") , false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB173 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB160+20*i;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB158 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  -30*i) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB173 , 0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72.setCurrentPos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB159 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB126 ,  30*i) , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB173 , 0);

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB157);

sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.push_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174 =  obj.getVar("clarity");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB175 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.size_vector();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB175;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB176 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.get_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.set_vector(i , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB176+63);

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB175<4)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.push_vector(0);

obj.setTimeEvent(4 ,  100 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_sir.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_sir.ani"));

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector_size();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_sir.ani"));

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174 =  obj.getVar("clarity");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB175 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.size_vector();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB175;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB176 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.get_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB174.set_vector(i , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB176+63);

}

break;

case PASSIVEOBJ_SUB_STATE_5:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_readytoexplosion.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_readytoexplosion.ani"));

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector_size();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_readytoexplosion.ani"));

}

break;

case PASSIVEOBJ_SUB_STATE_6:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector_size();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector(i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red) ,  -100) ,  -60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue) ,  -100) ,  -60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red) ,  -180) ,  0 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue) ,  -180) ,  0 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red) ,  -280) ,  60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue) ,  -280) ,  60 ,  120 ,  true ,  100 ,  0 ,  2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  obj.getVar().get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB199 =  obj.getVar().get_vector(4);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_HELLMARCH);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB199);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 ,  obj.getDirection());

sq_SetMyShake(obj , 5 , 300);

break;

case PASSIVEOBJ_SUB_STATE_7:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

sq_SetMyShake(obj , 5 , 300);

break;

case PASSIVEOBJ_SUB_STATE_8:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148 =  obj.getVar("aniobj");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB204 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.get_obj_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB204)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB204.setValid(false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1311.get_obj_vector(1);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Red.setValid(false);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7_Blue.setValid(false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector_size();

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB169;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1312.get_obj_vector(i);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB170.setValid(false);

}

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

break;

}

}

function procAppend_po_qq506807329new_gunner_24371(obj)

{

	if(!obj) return;

if(!obj.isMyControlObject()) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("state").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2!= PASSIVEOBJ_SUB_STATE_2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  -1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getVar("time").get_ct_vector(0).Get();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  200;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5)

{

obj.getVar("time").clear_ct_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  obj.getVar().get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar().get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetUniformVelocity(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  obj.getDirection() ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  obj.getParent();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_GetCNRDObjectToSQRCharacter(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 == -1)

{

if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11.isMovablePos(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100) ,  obj.getYPos()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

else

{

if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11.isMovablePos(sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  obj.getDirection() ,  100) ,  obj.getYPos()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

sq_setCurrentAxisPos(obj ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

}

}

break;

case SKILL_SEISMICWAVE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("state").get_vector(0); 

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11.sq_GetState()!= STATE_SEISMICWAVE)

sq_SendDestroyPacketPassiveObject(obj);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  obj.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  200;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  900; 

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

sq_setCurrentAxisPos(obj ,  2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9== 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2>PASSIVEOBJ_SUB_STATE_2 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2<PASSIVEOBJ_SUB_STATE_5)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(10);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(11);

setRangeObjectXPos(obj , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25 , ENUM_DIRECTION_NEUTRAL , 0 , 300 , 0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26);

}

}

break;

case SKILL_PLASMABOOST:

if(obj.getVar().getBool(0))

if(obj.sq_GetParentState()!= STATE_PLASMABOOST || obj.sq_GetParentSkillSubState()>SUB_STATE_PLASMABOOST_1)

{

obj.getVar().setBool(0 , false);

sq_moveWithParent(obj , obj);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserend_00.ani");

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27);

}

break;

case SKILL_FASTDRAW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB28 =  obj.getVar().get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB28== 2)

if(obj.getZPos()<= 0)

{

sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hiteffect/collisionfloor.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_SendDestroyPacketPassiveObject(obj);

}

break;

case SKILL_GRAVITYGRENADE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_3)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 =  obj.getVar().get_vector(5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB31 =  obj.getVar().get_vector(6);

setRangeObjectXPos(obj , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 , ENUM_DIRECTION_NEUTRAL , 0 , 100 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB31 , 1);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_0)

if(obj.getZPos()<= 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case SKILL_DANGERCLOSE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14==1 && obj.getState()==PASSIVEOBJ_SUB_STATE_0 && obj.sq_GetParentState() != STATE_DANGERCLOSE)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24 =  obj.getVar();

if(!Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.getBool(0) && !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.getBool(1))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetObjectTime(obj);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  400;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB39 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  800; 

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(2);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB42 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB45 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB39 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB42 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB46 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

sq_SetCurrentPos(obj , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB45 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB46);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB46== 0)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.setBool(0 , true);

return;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.getBool(0) && !Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.getBool(1))

{

obj.stopTimeEvent(0);

obj.stopTimeEvent(1);

sq_SetCustomRotate(obj ,  0.0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB47 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.get_vector(4);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48 =  "";

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB47)

{

case 17: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboom_01.ani"; break;

case 18: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomfire_01.ani"; break;

case 19: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomlight_01.ani"; break;

case 20: Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomice_01.ani"; break;

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  sq_CreateAnimation("" , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB48);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27);

sq_SetMyShake(obj , 3 , 200);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerground.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24.setBool(1 , true);

}

}

break;

case SKILL_G38ARG:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14!= 1) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2)

{

case PASSIVEOBJ_SUB_STATE_0:

if(obj.getZPos()<= 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_1:

if(obj.isExistTimeEvent(1)) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 =  obj.getVar("target").get_obj_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 && !sq_GetCNRDObjectToActiveObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53).isDead())

{

if(obj.getVar("move").getBool(0)== false)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55 =  obj.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 =  sq_Abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54-Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59 =  sq_Abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55-Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58<=10 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59<= 10)

{

obj.getVar("time").clear_ct_vector();

obj.getVar("time").push_ct_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60 =  obj.getVar("time").get_ct_vector(0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60.Reset();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60.Start(10000 , 0);

obj.sq_PlaySound("G_38ARG_GRAB");

obj.getVar("move").setBool(0 , true);

return;

}

else

{

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58>0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 / 10+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56) Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 / -1;

sq_setCurrentAxisPos(obj ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61);

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59>0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59 / 10+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57) Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62= Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62 / -1;

sq_setCurrentAxisPos(obj ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62);

}

}

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60 =  obj.getVar("time").get_ct_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB60.Get();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  200;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  0; 

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53.getZPos()+sq_GetObjectHeight(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53) / 2;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetUniformVelocity(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

obj.setCurrentPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53.getXPos() , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53.getYPos()+1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9== Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69 =  CNSquirrelAppendage.sq_GetAppendage(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 ,  "character/gunner/g38arg/ap_g38arg.nut");

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69.isValid())

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70 =  sq_GetCNRDObjectToCollisionObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB69.getSource());

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70.getState()!= PASSIVEOBJ_SUB_STATE_4)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB70.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

CNSquirrelAppendage.sq_RemoveAppendage(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 ,  "character/gunner/g38arg/ap_g38arg.nut");

}

sq_moveWithParent(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 ,  obj);

CNSquirrelAppendage.sq_AppendAppendage(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB53 ,  obj ,  SKILL_G38ARG ,  true ,  "character/gunner/g38arg/ap_g38arg.nut" ,  true);

obj.getVar("time").clear_ct_vector();

obj.getVar("target").clear_obj_vector();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

}

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

}

break;

case SKILL_SUPERNOVA:

if(obj.getState()== PASSIVEOBJ_SUB_STATE_0)

{

if(obj.getZPos()<= 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

break;

case SKILL_DIMENSIONRUNNER:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB77 =  obj.sq_GetParentState();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB77!= STATE_DIMENSIONRUNNER)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54 =  obj.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55 =  obj.getYPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56 =  obj.getVar("atkobj").get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57 =  obj.getVar("atkobj").get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 =  sq_Abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54-Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59 =  sq_Abs(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55-Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58<=10 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59<= 10)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58>0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB58 / 10+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB56) Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61 / -1;

sq_setCurrentAxisPos(obj ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB54+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB61);

}

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59>0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB59 / 10+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB57) Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62= Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62 / -1;

sq_setCurrentAxisPos(obj ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB55+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB62);

}

}

break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetObjectTime(obj);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  obj.getVar().get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetAccel(0 ,  110 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9.tofloat()*0.0174532;

sq_SetCustomRotate(obj ,  -Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB94 =  obj.getVar().get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95 =  obj.getZPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92 =  (110.0+35.0*(1.0-Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95.tofloat() / Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB94.tofloat()))*0.0174532;

sq_SetCustomRotate(obj ,  -Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB92);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB95<= 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

}

break;

case SKILL_HELLMARCH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2)

{

case PASSIVEOBJ_SUB_STATE_0:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100 =  obj.getVar("aniobj");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17.getDelaySum(0 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  100;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetAccel(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB113 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101) ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105) ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB113);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115 =  obj.getVar("clarity").get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+sq_GetUniformVelocity(0 ,  63 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117_new =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB117_new.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17.getDelaySum(0 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB100.get_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  100;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetAccel(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 , true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB113 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB71 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101) ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114 =  sq_GetDistancePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB72 ,  sq_GetDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105) ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB113);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB114);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132 =  obj.getVar("clarity");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116 =  sq_GetUniformVelocity(0 ,  63 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation() ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB105.getCurrentAnimation() ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB138 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB138.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB139 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.size_vector()-1;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB140 =  obj.getVar("aniobj2");

for(local a=1;a<= Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB139;a++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB141 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.get_vector(a);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142 =  (a-1)*12;

for(local i= 0;i<12;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB140.get_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142+i);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143.getCurrentAnimation() ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144_New =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB141+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144_New.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB141+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

}

}

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147 =  obj.getVar("aniobj");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147.get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB148.getCurrentAnimation()))

{

for(local i= 0;i<4;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB149 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB147.get_obj_vector(i);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB149)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB149.setValid(false);

}

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132 =  obj.getVar("clarity");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB115+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116<255)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB153 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB154 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB153.get_obj_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB155 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB153.get_obj_vector(1);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB154.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB155.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB138 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB135.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB136.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB137.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB138.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB139 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.size_vector()-1;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB140 =  obj.getVar("aniobj2");

for(local a=1;a<= Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB139;a++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB141 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.get_vector(a);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116_dy =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB141+1;

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116_dy>= 255) continue;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142 =  (a-1)*12;

for(local i= 0;i<12;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB140.get_obj_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB142+i);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB143.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144_New =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144 ,  0);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116_dy);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB144_New.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116_dy);

}

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB132.set_vector(a , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB116_dy);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  obj.getVar("aniobj1").get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_5:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1002 =  obj.getVar("aniobj2");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1002.get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_6:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1001 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1001.get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_7 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_7:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1001 =  obj.getVar("aniobj1");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1001.get_obj_vector(0);

if(sq_IsEnd(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB101.getCurrentAnimation()))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_8 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB179 =  obj.getVar("aniobj").get_obj_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB179)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB179.getCurrentAnimation();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetCurrentTime(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17.getDelaySum(false);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetUniformVelocity(255 ,  50 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB184 =  sq_AniLayerListSize(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17);

for(local i= 0;i<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB184;i++)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB185 =  sq_getAniLayerListObject(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 ,  i);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB185.setRGBA(255 ,  255 ,  255 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

}

}

}

break;

}

}

break;

}

}

function onAttack_po_qq506807329new_gunner_24371(obj ,  damager ,  boundingBox ,  isStuck)

{

	if (!obj)

return 0;

	if(!damager)

return 0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

if(isStuck) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("state").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2<PASSIVEOBJ_SUB_STATE_1)

{

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))

{

if(!sq_IsHoldable(obj , damager) || !sq_IsGrabable(obj , damager) || sq_IsFixture(damager))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  55);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 = sq_GetCNRDObjectToActiveObject(damager);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.isMovablePos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 ,  sq_GetYPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5)))

{

sq_setCurrentAxisPos(damager ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4);

sq_moveWithParent(obj ,  damager);

obj.getVar("moveobj").push_obj_vector(damager);

}

else

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

break;

case SKILL_PLASMABOOST:

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE)&& !isStuck)

{

if(sq_IsHoldable(obj , damager))

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/plasmaboost/ap_plasmaboost.nut"))

CNSquirrelAppendage.sq_AppendAppendage(damager ,  obj ,  SKILL_PLASMABOOST ,  true ,  "character/gunner/plasmaboost/ap_plasmaboost.nut" ,  true);

}

break;

case SKILL_BURSTERBEAMNEW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 ==  1)

{

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut"))

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

CNSquirrelAppendage.sq_AppendAppendage(damager ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  SKILL_BURSTERBEAMNEW ,  true ,  "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut" ,  true);

}

}

break;

case SKILL_FASTDRAW:

if(!damager || !obj.isEnemy(damager) || !damager.isObjectType(OBJECTTYPE_ACTIVE) || isStuck) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  sq_GetWidthObject(damager)/2 / 2;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_GetCenterZPos(boundingBox);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/fastdraw/hit_light.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_SetCurrentPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 , sq_GetDistancePos(damager.getXPos() ,  obj.getDirection() ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10) , damager.getYPos() , damager.getZPos()+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11);

break;

case SKILL_SEVENTHFLOW:

if(!damager || !obj.isEnemy(damager) || !damager.isObjectType(OBJECTTYPE_ACTIVE) || isStuck) return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13 =  sq_GetObjectHeight(damager) / 2;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_CreateDrawOnlyObject(damager ,  "character/gunner/effect/animation/seventhflow/add_attack/attack_normal.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  2 ,  damager.getZPos()+Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB13);

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  sq_GetOppositeDirection(sq_GetDirection(damager)));

break;

case SKILL_SUPERNOVA:

if(obj.getState() !=  PASSIVEOBJ_SUB_STATE_1) return;

if(!damager

||!obj.isEnemy(damager)

||!damager.isObjectType(OBJECTTYPE_ACTIVE)

||isStuck

||!sq_IsGrabable(obj , damager)) return;

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/supernova/ap_supernova.nut"))

CNSquirrelAppendage.sq_AppendAppendage(damager ,  obj ,  SKILL_SUPERNOVA ,  true ,  "character/gunner/supernova/ap_supernova.nut" ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15 =  ENUM_DIRECTION_RIGHT;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  damager.getXPos();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  obj.getXPos();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17>Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16)

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15 =  ENUM_DIRECTION_LEFT;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 =  sq_CreateDrawOnlyObject(damager ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/hit_shadow.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  2 ,  damager.getZPos()+sq_GetObjectHeight(damager) / 2);

sq_SetCurrentDirection(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB12 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15);

break;

}

}

function onEndCurrentAni_po_qq506807329new_gunner_24371(obj)

{

	if(!obj)

return;

if(!obj.isMyControlObject())

return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SEISMICWAVE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getVar("state").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4)

{

case PASSIVEOBJ_SUB_STATE_1:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_3:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  obj.getVar().get_vector(4);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5>0)

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_5:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==2 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 3)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_PLASMABOOST:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_BURSTERBEAMNEW:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_DEADLYAPPROACH:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_WIPEOUT:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SEVENTHFLOW:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_GRAVITYGRENADE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4)

{

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

break;

case SKILL_DANGERCLOSE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_G38ARG:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getState();

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4)

{

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SUPERNOVA:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getState();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4== PASSIVEOBJ_SUB_STATE_1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4== PASSIVEOBJ_SUB_STATE_3)

sq_SendDestroyPacketPassiveObject(obj);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 2)

{

sq_SendDestroyPacketPassiveObject(obj);

}

break;

case SKILL_DIMENSIONRUNNER:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getState();

switch(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4)

{

case PASSIVEOBJ_SUB_STATE_1:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetarea.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 ,  0 ,  sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  120));

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DIMENSIONRUNNER);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(obj.getVar().get_vector(1));

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  120 ,  0 ,  0 , obj.getDirection());

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_2:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19 =  obj.getVar().get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19>0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  [19 , 58 , -27 , -56];

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21 =  [148 , 125 , 149 , 127];

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22 =  ["passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_a.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_b.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_c.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_d.ani"];

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23 =  ["passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirea_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfireb_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirec_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfired_00.ani"];

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24 =  sq_getRandom(0 , 3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25 =  obj.getYPos()-1;

for(local i= 0;i<4;i++)

{

if(i== Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB24) continue;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20[i];

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB21[i];

sq_CreateDrawOnlyObject(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB22[i] ,  ENUM_DRAWLAYER_NORMAL ,  true);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 =  sq_CreateDrawOnlyObject(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB23[i] ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB25);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DIMENSIONRUNNER);

sq_BinaryWriteDword(2);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB26 ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB27 , obj.getDirection());

}

obj.getVar().set_vector(0 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19-1);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB29 =  obj.getVar().get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30 =  obj.sq_FindFirstTarget(0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB29 ,  80 ,  200);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30)

{

obj.getVar("atkobj").clear_vector();

obj.getVar("atkobj").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30.getXPos());

obj.getVar("atkobj").push_vector(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB30.getYPos());

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_5:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_6:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ==  2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_HELLMARCH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==2 || Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 3)

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

function onKeyFrameFlag_po_qq506807329new_gunner_24371(obj ,  flagIndex)

{

if(!obj) return false;

if(!obj.isMyControlObject()) return false;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_MSC7:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("state").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==PASSIVEOBJ_SUB_STATE_2&&flagIndex== 1)

sq_SetMyShake(obj , 10 , 120);

break;

case SKILL_SEISMICWAVE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("state").get_vector(0); 

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_3)

{

if(flagIndex== 1)

obj.resetHitObjectList();

else if(flagIndex== 2)

sq_SetMyShake(obj , 3 , 150);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2==PASSIVEOBJ_SUB_STATE_5 && flagIndex== 2)

sq_flashScreen(obj ,  0 ,  80 ,  100 ,  76 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

}

break;

case SKILL_BURSTERBEAMNEW:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 ==  2)

{

switch (flagIndex)

{

case 1:

sq_flashScreen(obj ,  40 ,  60 ,  80 ,  153 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 2 , 240);

break;

case 2:

sq_flashScreen(obj ,  40 ,  60 ,  80 ,  165 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 3 , 180);

break;

case 3:

sq_flashScreen(obj ,  40 ,  60 ,  160 ,  204 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 5 , 120);

break;

case 4:

sq_flashScreen(obj ,  80 ,  480 ,  480 ,  229 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 20 , 2000);

break;

case 5:

sq_SetMyShake(obj , 1 , 480);

break;

}

}

break;

case SKILL_GRAVITYGRENADE:

if(obj.getState()== PASSIVEOBJ_SUB_STATE_4)

if(flagIndex== 1)

sq_flashScreen(obj ,  0 ,  50 ,  0 ,  102 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

else if(flagIndex== 2)

{

sq_flashScreen(obj ,  0 ,  20 ,  180 ,  127 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 3 , 200);

}

break;

case SKILL_SUPERNOVA:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getState();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_1)

{

switch (flagIndex)

{

case 1: sq_SetMyShake(obj , 4 , 200); break;

case 2: sq_SetMyShake(obj , 2 , 120); break;

case 3: sq_SetMyShake(obj , 1 , 160); break;

}

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== PASSIVEOBJ_SUB_STATE_2)

{

if(flagIndex==  1)

{

sq_SetMyShake(obj , 1 , 80);

}

}

break;

case SKILL_HELLMARCH:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB3== 3)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  obj.getVar().get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  sq_GetCurrentAnimation(obj);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  sq_GetAnimationFrameIndex(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9.getDelaySum(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

obj.setTimeEvent(5 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 / Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 ,  false);

}

break;

}

return true;

}

function onTimeEvent_po_qq506807329new_gunner_24371(obj ,  timeEventIndex ,  timeEventCount)

{

if(!obj)

return;

if(!obj.isMyControlObject())

return;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_PLASMABOOST:

obj.resetHitObjectList();

break;

case SKILL_WIPEOUT:

obj.resetHitObjectList();

break;

case SKILL_WIPEOUT:

obj.resetHitObjectList();

break;

case SKILL_SEVENTHFLOW:

obj.resetHitObjectList();

break;

case SKILL_GRAVITYGRENADE:

if(timeEventIndex== 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex== 1)

obj.resetHitObjectList();

else if(timeEventIndex== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case SKILL_DANGERCLOSE:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5 =  obj.getVar();

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.get_vector(1);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6<= 0)

{

obj.stopTimeEvent(0);

sq_SendDestroyPacketPassiveObject(obj);

}

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.get_vector(3);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.get_vector(4);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DANGERCLOSE);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB7);

sq_SendCreatePassiveObjectPacketPos(obj ,  24371 ,  0 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB8 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB9 ,  800);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB5.set_vector(1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB6-1);

}

else if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB4== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10 =  (obj.getVar().get_vector(5)).tofloat() / 10000000.0;

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  null;

if(timeEventIndex== 0)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangersmoke.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

}

else if(timeEventIndex==  1)

{

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/missilesmoke"+(sq_getRandom(1 , 3)).tostring()+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 ,  1 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11.getYPos()-1);

}

sq_SetCustomRotate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB10);

}

break;

case SKILL_G38ARG:

if(timeEventIndex== 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex==  1)

{

obj.sq_RemoveMoveParticle();

}

break;

case SKILL_SUPERNOVA:

if(timeEventIndex== 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex==  1)

{

obj.resetHitObjectList();

}

else if(timeEventIndex== 2)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14 =  obj.getVar("time").get_vector(0);

sq_flashScreen(obj ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB14+200 ,  50 ,  300 ,  255 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_COVER);

}

else if(timeEventIndex== 3)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorend/floorend_floornormal.ani");

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 =  (obj.getVar().get_vector(0)).tofloat() / 350.0;

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15.setImageRateFromOriginal(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15.setAutoLayerWorkAnimationAddSizeRate(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB16);

obj.setCurrentAnimation(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB15);

}

break;

case SKILL_DIMENSIONRUNNER:

if(timeEventIndex== 0)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 =  obj.getParent();

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17 && Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB17.getState() < PASSIVEOBJ_SUB_STATE_6)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18 =  sq_GetCNRDObjectToCollisionObject(obj.getParent());

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18.getVar("atkcount").get_vector(0);

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20 =  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18.getVar("atkcount").get_vector(1);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20<Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB19)

{

obj.resetHitObjectList();

Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB18.getVar("atkcount").set_vector(1 , Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB20+1);

}

}

else

sq_SendDestroyPacketPassiveObject(obj);

}

else if(timeEventIndex==  1)

{

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilesmoke_00.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB11 ,  1 ,  obj.getYPos()-1);

}

break;

case SKILL_HELLMARCH:

switch (timeEventIndex)

{

case 0:

sq_flashScreen(obj ,  0 ,  80 ,  600 ,  255 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

break;

case 1:

sq_SetMyShake(obj , 2 , 1000);

break;

case 2:

sq_flashScreen(obj ,  0 ,  0 ,  160 ,  178 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_DODGE ,  ENUM_DRAWLAYER_BOTTOM);

break;

case 3:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2);

sq_IntVectorPush(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 4:

sq_SetMyShake(obj , 1 , 100);

break;

case 5:

obj.resetHitObjectList();

break;

}

break;

}

}

function getCustomHitEffectFileName_po_qq506807329new_gunner_24371(obj ,  isAttachOnDamager)

{

if(!obj)

return "";

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1 =  obj.getVar("skill").get_vector(0);

switch (Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB1)

{

case SKILL_WIPEOUT:

local Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2 =  obj.getVar("subtype").get_vector(0);

if(Js60QQ506807329_ShouTu1000RMB_NutShouTu2000RMB2== 2)

return "character/gunner/effect/animation/hiteffect/updefault.ani";

case SKILL_DEADLYAPPROACH:

case SKILL_FASTDRAW:

case SKILL_SEVENTHFLOW:

return "character/gunner/effect/animation/hiteffect/updefault.ani";

default:

return "";

}

}

