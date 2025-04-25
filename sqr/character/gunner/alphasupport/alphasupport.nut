

function ChangQing751675335_AlphaSupporta(obj, state, datas, isResetTimer)
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

function procSkill_ChangQing751675335_AlphaSupporta(obj)
{
if(sq_GetSkillLevel(obj, 18) < 1)
return;

local CQ_3N8 = obj.getState();

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
case 75:
AlphaSupportaChangeEx(obj,22260,3);
break;
case 108:
AlphaSupportaChangeEx(obj,22289,3);
break;
}
break;
case 36:
AlphaSupportaChangeEx(obj,22237,3);
break;
}
}

function onSetState_AlphaSupporta(CQ_9WG, CQ_tvnLa, CQ_Bg, CQ_v3bY)
{
if(!CQ_9WG) return;
SetState_AlphaSupporta(CQ_9WG, CQ_tvnLa, CQ_Bg, CQ_v3bY)
}

function onEndCurrentAni_AlphaSupporta(CQ_DLNiCR)
{
if(!CQ_DLNiCR) return;
EndCurrentAni_AlphaSupporta(CQ_DLNiCR)
}

function onTimeEvent_AlphaSupporta(CQ_ROy, CQ_it95k, CQ_HbPx)
{
if(!CQ_ROy) return false
TimeEvent_AlphaSupporta(CQ_ROy, CQ_it95k, CQ_HbPx)
}

function onAttack_AlphaSupporta(CQ_jhxtS9, CQ_E4X, CQ_4Ze3l, CQ_QC)
{
if(!CQ_jhxtS9 || CQ_QC)return false
Attack_AlphaSupporta(CQ_jhxtS9, CQ_E4X, CQ_4Ze3l, CQ_QC)
}

function onCreateObject_AlphaSupporta(CQ_LSwr, CQ_li5Avs)
{ 
if(!CQ_LSwr) return;
CreateObject_AlphaSupporta(CQ_LSwr, CQ_li5Avs)
}

function onEnterFrame_AlphaSupporta(CQ_Ima, CQ_7TkjL)
{
EnterFrame_AlphaSupporta(CQ_Ima, CQ_7TkjL)
}




function onKeyFrameFlag_AlphaSupporta(CQ_AoU, CQ_dq1mw)
{
if (!CQ_AoU) return false;
KeyFrameFlag_AlphaSupporta(CQ_AoU, CQ_dq1mw)
return true;
}


function onProcCon_AlphaSupporta(CQ_yl)
{
if(!CQ_yl) return;
ProcCon_AlphaSupporta(CQ_yl)
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

function AlphaSupportaChange(CQ_7Rmgqm,CQ_r22,CQ_CKoID,CQ_cI)
{
local CQ_AWFf = CQ_7Rmgqm.getCurrentAnimation();
local CQ_dbvn4M = CQ_AWFf.GetCurrentFrameIndex();

local CQ_lC6IC = CQ_7Rmgqm.getMyPassiveObjectCount(CQ_r22);
if(CQ_7Rmgqm.isCurrentCutomAniIndex(CQ_CKoID) && CQ_dbvn4M >= CQ_cI && CQ_lC6IC < 1)
{
CQ_7Rmgqm.sq_IntVectClear();
CQ_7Rmgqm.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
if(CQ_7Rmgqm.getVar("AlphaSupportaFlameThrower").get_obj_vector_size() > 0)
{
destroyObjectByVar(CQ_7Rmgqm, "AlphaSupportaFlameThrower");
local CQ_Hrnq = CQ_7Rmgqm.sq_GetIntData(13, 3)/100.0;
if(CQ_Hrnq <= 1.0)
CQ_Hrnq = 1.0;
local CQ_bZ = sq_GetDistancePos(CQ_7Rmgqm.getXPos(), CQ_7Rmgqm.getDirection(), 174);
local CQ_FPWv = CQ_7Rmgqm.getYPos()+1
local CQ_gy8oEO = CQ_7Rmgqm.getZPos()+65;
local CQ_mnOJn = "character/gunner/effect/animation/atajreinforceparts/flamethrower/fire_end.ani"
local CQ_JU = sq_GetDistancePos(CQ_7Rmgqm.getXPos(), CQ_7Rmgqm.getDirection(), 174)
createAnimationImageRatePooledObject(CQ_7Rmgqm, CQ_mnOJn, true, CQ_Hrnq, CQ_Hrnq, CQ_bZ,CQ_FPWv, CQ_gy8oEO)
}
}
}

function AlphaSupportaChangeEx(CQ_kkZc,CQ_a6Qyew,CQ_5CL)
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

function AlphaSupportaEnergy(CQ_88G, CQ_WBnki, CQ_VF, CQ_YpnP)
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

function SetState_AlphaSupporta(CQ_u9dqg, CQ_MN, CQ_nGxC, CQ_GEXfQx)
{
if(sq_GetSkillLevel(CQ_u9dqg, 18) < 1)
return;
CQ_u9dqg.getVar("AlphaSupportaObject").setInt(0, -1);
CQ_u9dqg.getVar("AlphaSupporta").clear_vector();
for(local CQ_3ae = 0; CQ_3ae < sq_getVectorSize(CQ_nGxC); ++CQ_3ae)
CQ_u9dqg.getVar("AlphaSupporta").push_vector(CQ_u9dqg.sq_GetVectorData(CQ_nGxC, CQ_3ae));
}

function EndCurrentAni_AlphaSupporta(CQ_qe)
{
if(!CQ_qe) return;

}

function TimeEvent_AlphaSupporta(CQ_KceZ, CQ_TR58x5, CQ_s2a)
{
if(!CQ_KceZ) return false;

}

function Attack_AlphaSupporta(CQ_5Kki, CQ_wIJJuj, CQ_ZWm, CQ_zv1xX)
{
if(!CQ_5Kki || CQ_zv1xX)return false;

}

function CreateObject_AlphaSupporta(CQ_Og, CQ_831G)
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
local CQ_Sb = CQ_Og.getVar("AlphaSupporta").get_vector(2);
if(CQ_Sb < 0)
CQ_Sb = 0.0;
local CQ_fhV1 = 1.0 + CQ_Sb/600.0;
local CQ_u4WjDr = "character/gunner/effect/animation/atajreinforceparts/laserrifle/laserriflelightning.ani";
local CQ_MXC = sq_GetDistancePos(CQ_Og.getXPos(), CQ_Og.getDirection(), 120);
createAnimationImageRatePooledObject(CQ_Og, CQ_u4WjDr, true, 2.2, CQ_fhV1, CQ_MXC, CQ_Og.getYPos(), CQ_Og.getZPos() + 80);
}

}
}


function KeyFrameFlag_AlphaSupporta(CQ_P4MdG, CQ_9Z)
{
if (!CQ_P4MdG) return false;

return true;
}


function ProcCon_AlphaSupporta(CQ_tPdE)
{
if(!CQ_tPdE) return;

}
