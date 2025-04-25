

function ChangQing751675335_AlphaSupport(obj, state, datas, isResetTimer)
{
if(sq_GetSkillLevel(obj, 18) < 1) return;
switch(state)
{
case 30:
local CQ_hzVS = obj.sq_GetVectorData(datas, 0);
switch(CQ_hzVS)
{
case 40:
obj.sq_StopMove();
break;
case 39:
obj.sq_StopMove();
break;
}
break;
}
return;
}

function procSkill_ChangQing751675335_AlphaSupport(obj)
{
if(sq_GetSkillLevel(obj, 18) < 1)
return;

local CQ_3N8 = obj.getState();
if(CQ_3N8 != 26)
{
if(obj.getVar("AlphaSupportFlameThrower").get_obj_vector_size() > 0)
{
destroyObjectByVar(obj, "AlphaSupportFlameThrower");
local CQ_qGOQQ = obj.sq_GetIntData(13, 3)/100.0;
if(CQ_qGOQQ <= 1.0)
CQ_qGOQQ = 1.0;
local CQ_KE = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 144);
local CQ_TwLB = obj.getYPos()+1;
local CQ_seQRt6 = obj.getZPos()+65;
local CQ_6cL = "character/gunner/effect/animation/atajreinforceparts/flamethrower/fire_end.ani";
local CQ_efQs4 = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 144);
createAnimationImageRatePooledObject(obj, CQ_6cL, true, CQ_qGOQQ, CQ_qGOQQ, CQ_KE,CQ_TwLB, CQ_seQRt6);
}
}
switch(CQ_3N8)
{
case 26:
local CQ_X2 = obj.getCurrentSkillIndex();
switch(CQ_X2)
{
case 38:
obj.sq_StopMove();
obj.sq_SetStaticMoveInfo(0, 0, 0, false);

AlphaSupportChange(obj,22298,20,2);
break;
case 12:
local CQ_xKpd = obj.getCurrentAnimation();
local CQ_PIhncp = CQ_xKpd.GetCurrentFrameIndex();
sq_SetFrameDelayTime(CQ_xKpd, 0, 2);

if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
{
obj.sq_IntVectClear();
obj.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
}
break;
case 13:
AlphaSupportChange(obj,22292,20,0);
break;
case 36:
AlphaSupportChange(obj,22293,20,0);
break;
case 75:
AlphaSupportChangeEx(obj,22260,3);
break;
case 108:
AlphaSupportChangeEx(obj,22289,3);
break;
}
break;
case 36:
AlphaSupportChangeEx(obj,22237,3);
break;
}
}

function onSetState_AlphaSupport(CQ_9WG, CQ_tvnLa, CQ_Bg, CQ_v3bY)
{
if(!CQ_9WG) return;
SetState_AlphaSupport(CQ_9WG, CQ_tvnLa, CQ_Bg, CQ_v3bY)
}

function onEndCurrentAni_AlphaSupport(CQ_DLNiCR)
{
if(!CQ_DLNiCR) return;
EndCurrentAni_AlphaSupport(CQ_DLNiCR)
}

function onTimeEvent_AlphaSupport(CQ_ROy, CQ_it95k, CQ_HbPx)
{
if(!CQ_ROy) return false
TimeEvent_AlphaSupport(CQ_ROy, CQ_it95k, CQ_HbPx)
}

function onAttack_AlphaSupport(CQ_jhxtS9, CQ_E4X, CQ_4Ze3l, CQ_QC)
{
if(!CQ_jhxtS9 || CQ_QC)return false
Attack_AlphaSupport(CQ_jhxtS9, CQ_E4X, CQ_4Ze3l, CQ_QC)
}

function onCreateObject_AlphaSupport(CQ_LSwr, CQ_li5Avs)
{ 
if(!CQ_LSwr) return;
CreateObject_AlphaSupport(CQ_LSwr, CQ_li5Avs)
}

function onEnterFrame_AlphaSupport(CQ_Ima, CQ_7TkjL)
{
EnterFrame_AlphaSupport(CQ_Ima, CQ_7TkjL)
}

function onEndState_AlphaSupport(CQ_r7, CQ_CVUO)
{
EndState_AlphaSupport(CQ_r7, CQ_CVUO)
}

function onProc_AlphaSupport(CQ_cD1BBj)
{
Proc_AlphaSupport(CQ_cD1BBj)
}

function onKeyFrameFlag_AlphaSupport(CQ_AoU, CQ_dq1mw)
{
if (!CQ_AoU) return false;
KeyFrameFlag_AlphaSupport(CQ_AoU, CQ_dq1mw)
return true;
}


function onProcCon_AlphaSupport(CQ_yl)
{
if(!CQ_yl) return;
ProcCon_AlphaSupport(CQ_yl)
}

function CreatePooledObjectAni(CQ_N8fX,CQ_bBSdAD,CQ_FFY,CQ_gpCp5,CQ_mw,CQ_HxClu,CQ_jd,CQ_Ef7D,CQ_41s1sZ,CQ_QJT,CQ_LsKwR)
{
local CQ_lr = sq_CreateAnimation("",CQ_bBSdAD)
if(CQ_QJT != false)
{
CQ_lr.setImageRateFromOriginal(CQ_QJT, CQ_QJT)
CQ_lr.setAutoLayerWorkAnimationAddSizeRate(CQ_QJT)
}
if(CQ_LsKwR != false)
CQ_lr.setSpeedRate(CQ_LsKwR);

local CQ_IY3N = sq_CreatePooledObject(CQ_lr,CQ_41s1sZ);
if(CQ_Ef7D)
sq_moveWithParent(CQ_N8fX, CQ_IY3N);

CQ_IY3N = sq_SetEnumDrawLayer(CQ_IY3N, CQ_FFY);
sq_SetCurrentDirection(CQ_IY3N, CQ_jd)
CQ_IY3N.setCurrentPos(CQ_gpCp5,CQ_mw,CQ_HxClu)
sq_AddObject(CQ_N8fX, CQ_IY3N, OBJECTTYPE_DRAWONLY, false)
return CQ_IY3N;
}

function AlphaSupportChange(CQ_7Rmgqm,CQ_r22,CQ_CKoID,CQ_cI)
{
local CQ_AWFf = CQ_7Rmgqm.getCurrentAnimation();
local CQ_dbvn4M = CQ_AWFf.GetCurrentFrameIndex();

local CQ_lC6IC = CQ_7Rmgqm.getMyPassiveObjectCount(CQ_r22);
if(CQ_7Rmgqm.isCurrentCutomAniIndex(CQ_CKoID) && CQ_dbvn4M >= CQ_cI && CQ_lC6IC < 1)
{
CQ_7Rmgqm.sq_IntVectClear();
CQ_7Rmgqm.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
if(CQ_7Rmgqm.getVar("AlphaSupportFlameThrower").get_obj_vector_size() > 0)
{
destroyObjectByVar(CQ_7Rmgqm, "AlphaSupportFlameThrower");
local CQ_Hrnq = CQ_7Rmgqm.sq_GetIntData(13, 3)/100.0;
if(CQ_Hrnq <= 1.0)
CQ_Hrnq = 1.0;
local CQ_bZ = sq_GetDistancePos(CQ_7Rmgqm.getXPos(), CQ_7Rmgqm.getDirection(), 144);
local CQ_FPWv = CQ_7Rmgqm.getYPos()+1
local CQ_gy8oEO = CQ_7Rmgqm.getZPos()+65;
local CQ_mnOJn = "character/gunner/effect/animation/atajreinforceparts/flamethrower/fire_end.ani"
local CQ_JU = sq_GetDistancePos(CQ_7Rmgqm.getXPos(), CQ_7Rmgqm.getDirection(), 144)
createAnimationImageRatePooledObject(CQ_7Rmgqm, CQ_mnOJn, true, CQ_Hrnq, CQ_Hrnq, CQ_bZ,CQ_FPWv, CQ_gy8oEO)
}
}
}

function AlphaSupportChangeEx(CQ_kkZc,CQ_a6Qyew,CQ_5CL)
{
local CQ_wSQ31 = CQ_kkZc.getMyPassiveObjectCount(CQ_a6Qyew);
for(local CQ_Zi = 0; CQ_Zi < CQ_wSQ31; CQ_Zi++)
{
local CQ_zmEW = CQ_kkZc.getMyPassiveObject(CQ_a6Qyew,CQ_Zi);
if(CQ_zmEW)
{
local CQ_OlhS63 = CQ_zmEW.getState();
if(CQ_OlhS63 == CQ_5CL)
CQ_kkZc.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, false);
}
}
}

function AlphaSupportEnergy(CQ_88G, CQ_WBnki, CQ_VF, CQ_YpnP)
{
local CQ_SQNNLS = CQ_88G.getPassiveObjectIndex();
local CQ_fzy = sq_ObjectToSQRCharacter(CQ_88G.getTopCharacter());
if(sq_GetSkillLevel(CQ_fzy, 18) < 1)
return;


if(CQ_SQNNLS == 22238)
{
createPaticleMap(CQ_fzy, "passiveobject/common/particle/noneexplosionparticle1.ptl", CQ_88G.getXPos(), CQ_88G.getYPos(), CQ_88G.getZPos());
createPaticleMap(CQ_fzy, "passiveobject/common/particle/noneexplosionparticle2.ptl", CQ_88G.getXPos(), CQ_88G.getYPos(), CQ_88G.getZPos());
createPaticleMap(CQ_fzy, "passiveobject/common/particle/noneexplosionparticle3.ptl", CQ_88G.getXPos(), CQ_88G.getYPos(), CQ_88G.getZPos());
createPaticleMap(CQ_fzy, "passiveobject/common/particle/noneexplosionparticle4.ptl", CQ_88G.getXPos(), CQ_88G.getYPos(), CQ_88G.getZPos());
sq_SendDestroyPacketPassiveObject(CQ_88G);
}
}

function SetState_AlphaSupport(CQ_u9dqg, CQ_MN, CQ_nGxC, CQ_GEXfQx)
{
if(sq_GetSkillLevel(CQ_u9dqg, 18) < 1)
return;
CQ_u9dqg.getVar("AlphaSupportObject").setInt(0, -1);
CQ_u9dqg.getVar("AlphaSupport").clear_vector();
for(local CQ_3ae = 0; CQ_3ae < sq_getVectorSize(CQ_nGxC); ++CQ_3ae)
CQ_u9dqg.getVar("AlphaSupport").push_vector(CQ_u9dqg.sq_GetVectorData(CQ_nGxC, CQ_3ae));
}

function EndCurrentAni_AlphaSupport(CQ_qe)
{
if(!CQ_qe) return;

}

function TimeEvent_AlphaSupport(CQ_KceZ, CQ_TR58x5, CQ_s2a)
{
if(!CQ_KceZ) return false;

}

function Attack_AlphaSupport(CQ_5Kki, CQ_wIJJuj, CQ_ZWm, CQ_zv1xX)
{
if(!CQ_5Kki || CQ_zv1xX)return false;

}

function CreateObject_AlphaSupport(CQ_Og, CQ_831G)
{
if(sq_GetSkillLevel(CQ_Og, 18) < 1)
return;
if(CQ_831G.isObjectType(OBJECTTYPE_PASSIVE))
{
local CQ_831G = sq_GetCNRDObjectToCollisionObject(CQ_831G);
local CQ_VOf = CQ_831G.getCollisionObjectIndex();
if(CQ_VOf == 22017)
{
local CQ_YtSWr = CQ_Og.sq_GetIntData(39, 2)/100.0 - 1.3;
local CQ_Sb = CQ_Og.getVar("AlphaSupport").get_vector(2);
if(CQ_Sb < 0)
CQ_Sb = 0.0;
local CQ_fhV1 = 1.0 + CQ_Sb/600.0;
local CQ_u4WjDr = "character/gunner/effect/animation/atajreinforceparts/laserrifle/laserriflelightning.ani";
local CQ_MXC = sq_GetDistancePos(CQ_Og.getXPos(), CQ_Og.getDirection(), 120);
createAnimationImageRatePooledObject(CQ_Og, CQ_u4WjDr, true, 2.2, CQ_fhV1, CQ_MXC, CQ_Og.getYPos(), CQ_Og.getZPos() + 80);
}
else if(CQ_VOf == 22292)
{
CQ_Og.sq_SetStaticMoveInfo(0, 100, 100, true);
CQ_Og.sq_SetStaticMoveInfo(1, 50, 50, true);
CQ_Og.sq_SetMoveDirection(CQ_Og.getDirection(), ENUM_DIRECTION_NEUTRAL);

local CQ_VOf = sq_GetUniqueId(CQ_831G);
CQ_Og.getVar("AlphaSupportObject").setInt(0, CQ_VOf);
CQ_Og.getVar("AlphaSupportObject").setInt(1, sq_GetGroup(CQ_831G));

local CQ_u4WjDr = "character/gunner/effect/animation/atajreinforceparts/flamethrower/fire_loop.ani";
local CQ_3iIgol = CQ_Og.sq_GetIntData(13, 3)/100.0;
local CQ_qml = sq_GetDistancePos(CQ_Og.getXPos(), CQ_Og.getDirection(), 144);
local CQ_KTKs8 = CQ_Og.getYPos();
local CQ_T7 = CQ_Og.getZPos();

if(CQ_3iIgol <= 1.0)
CQ_3iIgol = 1.0;
local CQ_sVKd = CreatePooledObjectAni(CQ_Og,CQ_u4WjDr,1,CQ_qml,CQ_KTKs8,CQ_T7,CQ_Og.getDirection(),false,true,CQ_3iIgol,false);
CQ_Og.getVar("AlphaSupportFlameThrower").clear_obj_vector();
CQ_Og.getVar("AlphaSupportFlameThrower").push_obj_vector(CQ_sVKd);
}
else if(CQ_VOf == 22293)
{
local CQ_u4WjDr = "character/gunner/effect/animation/atajreinforceparts/flamethrowerboost/fire_loop.ani";
local CQ_qml = sq_GetDistancePos(CQ_Og.getXPos(), CQ_Og.getDirection(), 144);
local CQ_KTKs8 = CQ_Og.getYPos()+1;
local CQ_T7 = CQ_Og.getZPos()+65;
local CQ_sVKd = createAnimationImageRatePooledObject(CQ_Og, CQ_u4WjDr, true, 1.0, 1.0, CQ_qml,CQ_KTKs8, CQ_T7);
CQ_Og.getVar("AlphaSupportFlameThrowerEx").clear_obj_vector();
CQ_Og.getVar("AlphaSupportFlameThrowerEx").push_obj_vector(CQ_sVKd);
}
}
}

function EndState_AlphaSupport(CQ_BEv6x, CQ_vw)
{
if(sq_GetSkillLevel(CQ_BEv6x, 18) < 1)
return;
if(CQ_vw != 26)
{
local CQ_Dxty = CQ_BEv6x.getVar("AlphaSupportFlameThrowerEx").get_obj_vector_size();
if(CQ_Dxty > 0)
{
destroyObjectByVar(CQ_BEv6x, "AlphaSupportFlameThrowerEx");
local CQ_Rc9Fi8 = sq_GetDistancePos(CQ_BEv6x.getXPos(), CQ_BEv6x.getDirection(), 144);
local CQ_ifO = CQ_BEv6x.getYPos()+1
local CQ_11zl7 = CQ_BEv6x.getZPos()+65
local CQ_UJ = "character/gunner/effect/animation/atajreinforceparts/flamethrowerboost/fire_end.ani"
createAnimationImageRatePooledObject(CQ_BEv6x, CQ_UJ, true, 1.0, 1.0, CQ_Rc9Fi8,CQ_ifO, CQ_11zl7)
}
}
}

function Proc_AlphaSupport(CQ_HswS)
{
if(sq_GetSkillLevel(CQ_HswS, 18) < 1)
return;

local CQ_4rZ = CQ_HswS.getVar("AlphaSupportFlameThrowerEx").get_obj_vector_size()
if(CQ_4rZ > 0)
{
local CQ_QYQjV = CQ_HswS.getVar("AlphaSupportFlameThrowerEx").get_obj_vector(0)
local CQ_LR = sq_GetDistancePos(CQ_HswS.getXPos(), CQ_HswS.getDirection(), 144)
sq_setCurrentAxisPos(CQ_QYQjV, 0,CQ_LR)
sq_setCurrentAxisPos(CQ_QYQjV, 1,CQ_HswS.getYPos()+1)
sq_setCurrentAxisPos(CQ_QYQjV, 2,CQ_HswS.getZPos() + 65)
}

local CQ_l2EP = CQ_HswS.getVar("AlphaSupportObject").getInt(0)
local CQ_IKjB3o = CQ_HswS.getVar("AlphaSupportObject").getInt(1)
if(CQ_l2EP < 1) return

local CQ_7IH = sq_GetObject(CQ_HswS, CQ_IKjB3o, CQ_l2EP)
if(CQ_7IH)
{
local CQ_LR = sq_GetDistancePos(CQ_HswS.getXPos(), CQ_HswS.getDirection(), 144)
sq_setCurrentAxisPos(CQ_7IH, 0,CQ_LR);
sq_setCurrentAxisPos(CQ_7IH, 1,CQ_HswS.getYPos());
sq_setCurrentAxisPos(CQ_7IH, 2,CQ_HswS.getZPos() + 65);

local CQ_4rZ = CQ_HswS.getVar("AlphaSupportFlameThrower").get_obj_vector_size();
if(CQ_4rZ > 0)
{
local CQ_QYQjV = CQ_HswS.getVar("AlphaSupportFlameThrower").get_obj_vector(0)
sq_setCurrentAxisPos(CQ_QYQjV, 0,CQ_LR)
sq_setCurrentAxisPos(CQ_QYQjV, 1,CQ_HswS.getYPos()+1)
sq_setCurrentAxisPos(CQ_QYQjV, 2,CQ_HswS.getZPos() + 65)
}
}
}

function KeyFrameFlag_AlphaSupport(CQ_P4MdG, CQ_9Z)
{
if (!CQ_P4MdG) return false;

return true;
}


function ProcCon_AlphaSupport(CQ_tPdE)
{
if(!CQ_tPdE) return;

}
