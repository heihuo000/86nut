
function setCustomData_po_Gunner_HS1(CQ_Value_MR9WxX, CQ_Value_NEGNDeH)
{
if(!CQ_Value_MR9WxX) return;
local CQ_Value_6RWmEw = sq_ObjectToSQRCharacter(CQ_Value_MR9WxX.getTopCharacter());

local CQ_Value_EyT8CT = CQ_Value_NEGNDeH.readDword();
local CQ_Value_4UJ = CQ_Value_NEGNDeH.readDword();
local CQ_Value_Qkmim = CQ_Value_NEGNDeH.readDword();
CQ_Value_MR9WxX.getVar().clear_vector();
CQ_Value_MR9WxX.getVar().push_vector(CQ_Value_4UJ);
CQ_Value_MR9WxX.getVar().push_vector(CQ_Value_Qkmim);

CQ_Value_MR9WxX.setMapFollowParent(CQ_Value_6RWmEw);
CQ_Value_MR9WxX.setMapFollowType(1);

local CQ_Value_L62JRmj = sq_GetGlobalIntVector();
sq_IntVectorClear(CQ_Value_L62JRmj);
sq_IntVectorPush(CQ_Value_L62JRmj, 0);
CQ_Value_MR9WxX.addSetStatePacket(0, CQ_Value_L62JRmj, STATE_PRIORITY_AUTO, false, "");

CQ_Value_MR9WxX.getVar("ObjTime").clear_vector();
CQ_Value_MR9WxX.getVar("ObjTime").push_vector(0);
}

function setState_po_Gunner_HS1(CQ_Value_lCo5, CQ_Value_IS1xrH, CQ_Value_7ii)
{
if(!CQ_Value_lCo5) return;
CQ_Value_lCo5.getVar("state").clear_vector();
CQ_Value_lCo5.getVar("state").push_vector(CQ_Value_IS1xrH);

local CQ_Value_rmRF3 = sq_GetVectorData(CQ_Value_7ii, 0);

local CQ_Value_CTD3FMx = sq_ObjectToSQRCharacter(CQ_Value_lCo5.getTopCharacter());
switch(CQ_Value_IS1xrH)
{
case 0:
local CQ_Value_c7vT = CQ_Value_lCo5.getCustomAnimation(0);
CQ_Value_lCo5.setCurrentAnimation(CQ_Value_c7vT);

local CQ_Value_AVVrzv = "passiveobject/chang_qing_skill/gunner/animation/hs1/Hs-1_Loading.ani";
RemoveAllAniEx(CQ_Value_lCo5,"Face");
local CQ_Value_dDW = CreateAni_HS_1(CQ_Value_lCo5,CQ_Value_AVVrzv,ENUM_DRAWLAYER_NORMAL,CQ_Value_lCo5.getXPos(),CQ_Value_lCo5.getYPos(),CQ_Value_lCo5.getZPos(),false, false,true);
CQ_Value_lCo5.getVar("Face").clear_obj_vector();
CQ_Value_lCo5.getVar("Face").push_obj_vector(CQ_Value_dDW);

CQ_Value_lCo5.setTimeEvent(0,1000,0,false);
break;
case 10:
CQ_Value_lCo5.stopTimeEvent(0);
local CQ_Value_c7vT = CQ_Value_lCo5.getCustomAnimation(0);
CQ_Value_lCo5.setCurrentAnimation(CQ_Value_c7vT);

local CQ_Value_AVVrzv = "passiveobject/chang_qing_skill/gunner/animation/hs1/hs-1_cast.ani";
RemoveAllAniEx(CQ_Value_lCo5,"Face");
local CQ_Value_dDW = CreateAni_HS_1(CQ_Value_lCo5,CQ_Value_AVVrzv,ENUM_DRAWLAYER_NORMAL,CQ_Value_lCo5.getXPos(),CQ_Value_lCo5.getYPos(),CQ_Value_lCo5.getZPos(),false, false,true);
CQ_Value_lCo5.getVar("Face").clear_obj_vector();
CQ_Value_lCo5.getVar("Face").push_obj_vector(CQ_Value_dDW);
CQ_Value_lCo5.getVar().setBool(0,true);

local CQ_Value_F9IOZC = sq_GetObjectTime(CQ_Value_lCo5);
CQ_Value_lCo5.getVar("ObjTime").clear_vector();
CQ_Value_lCo5.getVar("ObjTime").push_vector(CQ_Value_F9IOZC);

local CQ_Value_2dl = CQ_Value_lCo5.getVar().get_vector(0);
local CQ_Value_mMLgjwV = 200;
if(CQ_Value_2dl == 70)
CQ_Value_mMLgjwV = 60;
local CQ_Value_JHQm = sq_GetDistancePos(CQ_Value_lCo5.getXPos(), CQ_Value_lCo5.getDirection(), CQ_Value_mMLgjwV);
CQ_Value_lCo5.getVar("tarPos").clear_vector();
CQ_Value_lCo5.getVar("tarPos").push_vector(CQ_Value_JHQm);
CQ_Value_lCo5.getVar("tarPos").push_vector(CQ_Value_lCo5.getZPos()+80+CQ_Value_rmRF3);
break;
}
}

function procAppend_po_Gunner_HS1(CQ_Value_ka4sAK)
{
if(!CQ_Value_ka4sAK) return;
local CQ_Value_aep = CQ_Value_ka4sAK.getVar("state").get_vector(0);
local CQ_Value_5c3dk = sq_ObjectToSQRCharacter(CQ_Value_ka4sAK.getTopCharacter());

if(!CQ_Value_5c3dk)
sq_SendDestroyPacketPassiveObject(CQ_Value_ka4sAK);

}

function onEndCurrentAni_po_Gunner_HS1(CQ_Value_JAajy)
{
if(!CQ_Value_JAajy) return;
local CQ_Value_kujQxjC = CQ_Value_JAajy.getVar("state").get_vector(0);
local CQ_Value_aUHO = sq_ObjectToSQRCharacter(CQ_Value_JAajy.getTopCharacter());
switch(CQ_Value_kujQxjC)
{
case -1:

break;
}
}

function onTimeEvent_po_Gunner_HS1(CQ_Value_5kUBEp, CQ_Value_w61, CQ_Value_ZCumd)
{
if(!CQ_Value_5kUBEp) return;
local CQ_Value_zDMsXF1 = CQ_Value_5kUBEp.getVar("state").get_vector(0);
local CQ_Value_OouX = sq_ObjectToSQRCharacter(CQ_Value_5kUBEp.getTopCharacter());
switch(CQ_Value_zDMsXF1)
{
case 0:
switch(CQ_Value_w61)
{
case 0:
local CQ_Value_8qfdmf = [
"passiveobject/chang_qing_skill/gunner/animation/hs1/Hs-1_Loading.ani",
"passiveobject/chang_qing_skill/gunner/animation/hs1/hs-1_countdown.ani",
"passiveobject/chang_qing_skill/gunner/animation/hs1/hs-1_standby.ani",
"passiveobject/chang_qing_skill/gunner/animation/hs1/hs-1_town.ani"
];
local CQ_Value_WlS = CQ_Value_ZCumd%4;
local CQ_Value_V8cpS = CQ_Value_8qfdmf[CQ_Value_WlS];
RemoveAllAniEx(CQ_Value_5kUBEp,"Face");
local CQ_Value_YBCLrc5 = CreateAni_HS_1(CQ_Value_5kUBEp,CQ_Value_V8cpS,ENUM_DRAWLAYER_NORMAL,CQ_Value_5kUBEp.getXPos(),CQ_Value_5kUBEp.getYPos(),CQ_Value_5kUBEp.getZPos(),false, false,true);
CQ_Value_5kUBEp.getVar("Face").clear_obj_vector();
CQ_Value_5kUBEp.getVar("Face").push_obj_vector(CQ_Value_YBCLrc5);

break;
}
break;
}
return false;
}

