


function checkExecutableSkill_SparrowFactory(obj)
{
if (!obj) return false;
local isUse = obj.sq_IsUseSkill(83);

if (isUse)
{

return true;
}
return false;
}

function checkCommandEnable_SparrowFactory(obj)
{
if (!obj) return false;

return false;
}


function checkExecutableSkill_RobotTempester(CQ_Value_zf5xwHU)
{
if (!CQ_Value_zf5xwHU) return false;
local CQ_Value_Kai2s1 = CQ_Value_zf5xwHU.sq_IsUseSkill(63);

if (CQ_Value_Kai2s1)
{

return true;
}
return false;
}

function checkCommandEnable_RobotTempester(CQ_Value_aVSQI)
{
if (!CQ_Value_aVSQI) return false;

return false;
}

function checkExecutableSkill_RobotExsEx(CQ_Value_woCV)
{
if (!CQ_Value_woCV) return false;
local CQ_Value_ZqrRDS = CQ_Value_woCV.sq_IsUseSkill(106);

if (CQ_Value_ZqrRDS)
{
return true;
}
return false;
}

function checkCommandEnable_RobotExsEx(CQ_Value_HanB)
{
if (!CQ_Value_HanB) return false;

return false;
}

function checkExecutableSkill_RobotExs(CQ_Value_CHTbbz)
{
if (!CQ_Value_CHTbbz) return false;
local CQ_Value_caKp968 = CQ_Value_CHTbbz.sq_IsUseSkill(29);

if (CQ_Value_caKp968)
{
return true;
}
return false;
}

function checkCommandEnable_RobotExs(CQ_Value_bfo)
{
if (!CQ_Value_bfo) return false;

return false;
}

function checkExecutableSkill_RobotRX78(CQ_Value_gJoH)
{
if (!CQ_Value_gJoH) return false;
local CQ_Value_osg4eU = CQ_Value_gJoH.sq_IsUseSkill(27);

if (CQ_Value_osg4eU)
{
return true;
}
return false;
}

function checkCommandEnable_RobotRX78(CQ_Value_JRBDSuS)
{
if (!CQ_Value_JRBDSuS) return false;

return false;
}

function checkExecutableSkill_RobotEz8(CQ_Value_aK9T6B)
{
if (!CQ_Value_aK9T6B) return false;
local CQ_Value_5OW = CQ_Value_aK9T6B.sq_IsUseSkill(28);

if (CQ_Value_5OW)
{
return true;
}
return false;
}

function checkCommandEnable_RobotEz8(CQ_Value_znzh)
{
if (!CQ_Value_znzh) return false;

return false;
}


function checkExecutableSkill_RobotEz8Ex(CQ_Value_85Q)
{
if (!CQ_Value_85Q) return false;
local CQ_Value_WX4Vg = CQ_Value_85Q.sq_IsUseSkill(105);

if (CQ_Value_WX4Vg)
{
return true;
}
return false;
}

function checkCommandEnable_RobotEz8Ex(CQ_Value_SUpaQj)
{
if (!CQ_Value_SUpaQj) return false;

return false;
}

function RemoveAllAniEx(CQ_Value_n6G9FpE,CQ_Value_GCnb)
{
if(!CQ_Value_GCnb)
CQ_Value_GCnb = "aniobj";

local CQ_Value_hSMpx1 = CQ_Value_n6G9FpE.getVar(CQ_Value_GCnb);
local CQ_Value_poy = CQ_Value_hSMpx1.get_obj_vector_size();
for(local CQ_Value_3qN7H=0; CQ_Value_3qN7H<CQ_Value_poy; CQ_Value_3qN7H++)
{
local CQ_Value_qlycufW = CQ_Value_hSMpx1.get_obj_vector(CQ_Value_3qN7H);
if(CQ_Value_qlycufW)
CQ_Value_qlycufW.setValid(false);
}
CQ_Value_n6G9FpE.getVar(CQ_Value_GCnb).clear_obj_vector();
}

function CreateAni_HS_1(CQ_Value_K8du,CQ_Value_TBAHXy,CQ_Value_sFx,CQ_Value_6GXzU,CQ_Value_eEetfPo,CQ_Value_Xw6D,CQ_Value_xxe2rl,CQ_Value_Pd5,CQ_Value_9Mae2)
{
}

function Gunner_2nd_Gunner_HS1(CQ_Value_veUhlH)
{
}

function Gunner_2nd_Gunner_HS1Ex(CQ_Value_veUhlH)
{
}

function SetOldSkill_HS_1(CQ_Value_MRiI,CQ_Value_n21,CQ_Value_GKiR9,CQ_Value_hIfUZbp,CQ_Value_pWSa,CQ_Value_3vYZhS,CQ_Value_qgV)
{
}

function SetNewSkill_HS_1(CQ_Value_veUhlH)
{
}

function SetNewSkill_HS_1Ex(CQ_Value_veUhlH)
{
}
