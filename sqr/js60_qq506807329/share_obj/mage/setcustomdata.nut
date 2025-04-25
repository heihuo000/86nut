
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





 
 
function setCustomData_po_qq506807329new_mage_24372(LUiM_0hXlChfq, XDK8M9SqpuVMB4UpE0ZQA)
{
 if(!LUiM_0hXlChfq) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local qGHQHL0tRsTnm = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("skill").clear_vector(); 
 LUiM_0hXlChfq.getVar("skill").push_vector(qGHQHL0tRsTnm);
 switch(qGHQHL0tRsTnm) 
 {
 case 242: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(LUiM_0hXlChfq, 0), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.setTimeEvent(0, XDK8M9SqpuVMB4UpE0ZQA.readDword(), 1, false); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 245: 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 1); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/avatar/avatarfinish_star_b.ani"); 
 Cq5TQagvAzlc484.setSpeedRate(XDK8M9SqpuVMB4UpE0ZQA.readFloat()); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 LUiM_0hXlChfq.getVar().clear_obj_vector(); 
 LUiM_0hXlChfq.getVar("aniobj").clear_obj_vector(); 
 break;
 case 247: 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 2); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/quasarexplosion/qcexpa_exp_00.ani"); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 break;
 case 249: 
 sq_ChangeDrawLayer(LUiM_0hXlChfq, ENUM_DRAWLAYER_BOTTOM); 
 local XQnYRgQWQWRi6J = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_groundcircle.ani"); 
 local N1rcKLgw8_j1w = XQnYRgQWQWRi6J.tofloat() / 100.0; 
 Cq5TQagvAzlc484.setImageRateFromOriginal(N1rcKLgw8_j1w, N1rcKLgw8_j1w); 
 Cq5TQagvAzlc484.setAutoLayerWorkAnimationAddSizeRate(N1rcKLgw8_j1w); 
 sq_SetAttackBoundingBoxSizeRate(Cq5TQagvAzlc484, N1rcKLgw8_j1w, N1rcKLgw8_j1w, N1rcKLgw8_j1w); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 3); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(LUiM_0hXlChfq, 4), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 
 LUiM_0hXlChfq.setTimeEvent(0, XDK8M9SqpuVMB4UpE0ZQA.readDword(), 0, false); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XQnYRgQWQWRi6J); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 
 local hfzYnU3jrqLJmA9MpbZtle42 = sq_CreateDrawOnlyObject(LUiM_0hXlChfq, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_aurorabehind_aurora1.ani", ENUM_DRAWLAYER_NORMAL, true);
 local xAlHKXXfXQ1OxlANSXNrtFV = hfzYnU3jrqLJmA9MpbZtle42.getCurrentAnimation(); 
 xAlHKXXfXQ1OxlANSXNrtFV.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_aurora.ani"), true);
 xAlHKXXfXQ1OxlANSXNrtFV.setImageRateFromOriginal(N1rcKLgw8_j1w, N1rcKLgw8_j1w); 
 xAlHKXXfXQ1OxlANSXNrtFV.setAutoLayerWorkAnimationAddSizeRate(N1rcKLgw8_j1w); 
 
 local bGWkCc5ojS9V = sq_CreateDrawOnlyObject(LUiM_0hXlChfq, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_aurorafront_sky1.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_setCurrentAxisPos(bGWkCc5ojS9V, 1, LUiM_0hXlChfq.getYPos() - 1); 
 local UfuNzYq8uJ58uOp7JUE = (330.0 * N1rcKLgw8_j1w).tointeger(); 
 sq_setCurrentAxisPos(bGWkCc5ojS9V, 2, UfuNzYq8uJ58uOp7JUE); 
 local ff2ozlgxPiPoGd9bOuS7D = bGWkCc5ojS9V.getCurrentAnimation(); 
 ff2ozlgxPiPoGd9bOuS7D.setImageRateFromOriginal(N1rcKLgw8_j1w, N1rcKLgw8_j1w); 
 ff2ozlgxPiPoGd9bOuS7D.setAutoLayerWorkAnimationAddSizeRate(N1rcKLgw8_j1w); 
 LUiM_0hXlChfq.getVar("aniobj").clear_obj_vector(); 
 LUiM_0hXlChfq.getVar("aniobj").push_obj_vector(hfzYnU3jrqLJmA9MpbZtle42); 
 LUiM_0hXlChfq.getVar("aniobj").push_obj_vector(bGWkCc5ojS9V); 
 break;
 case 250: 
 sq_ChangeDrawLayer(LUiM_0hXlChfq, ENUM_DRAWLAYER_BOTTOM); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 5); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.getVar().clear_obj_vector(); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 251: 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 6); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 252: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1:
 local DDSK6TeLANSy0 = sq_GetCNRDObjectToActiveObject(sq_GetObject(LUiM_0hXlChfq, XDK8M9SqpuVMB4UpE0ZQA.readDword(), XDK8M9SqpuVMB4UpE0ZQA.readDword())); 
 if(DDSK6TeLANSy0 && !DDSK6TeLANSy0.isDead())
 {
 LUiM_0hXlChfq.setCurrentPos(DDSK6TeLANSy0.getXPos(), DDSK6TeLANSy0.getYPos(), DDSK6TeLANSy0.getZPos() + sq_GetObjectHeight(DDSK6TeLANSy0) + 120); 
 sq_moveWithParent(DDSK6TeLANSy0, LUiM_0hXlChfq); 
 }
 LUiM_0hXlChfq.getVar().clear_vector(); 
 local wq2983twpeU_Zol1ILTmU = LUiM_0hXlChfq.getVar(); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readWord()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 LUiM_0hXlChfq.setDirection(XDK8M9SqpuVMB4UpE0ZQA.readWord()); 
 local oYXm_t3r2dUDYxPcXLMmz = XDK8M9SqpuVMB4UpE0ZQA.readWord(); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 7); 
 L9vHkUd1313at9pgcW2TS2pg.setElement(oYXm_t3r2dUDYxPcXLMmz); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 local tqaa6TNowMF = XDK8M9SqpuVMB4UpE0ZQA.readFloat(); 
 LUiM_0hXlChfq.sq_SetMoveParticle("particle/thegate_move.ptl", 0.0, tqaa6TNowMF); 
 local uaEzFG6HsB9StUjxsu = [
 "fire/fire_crystal.ani",
 "ice/ice_crystal.ani",
 "dark/dark_crystal.ani",
 "light/light_crystal.ani"];
 local Cq5TQagvAzlc484 = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/", uaEzFG6HsB9StUjxsu[oYXm_t3r2dUDYxPcXLMmz]); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local MCgClSBeD80m6ktzNVTMRU = [
 "thegatefiretail.ptl",
 "thegateicetail.ptl",
 "thegatedarktail.ptl",
 "thegatelighttail.ptl"];
 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/mage/particle/" + MCgClSBeD80m6ktzNVTMRU[oYXm_t3r2dUDYxPcXLMmz], LUiM_0hXlChfq, 0, 0, 0, true, 80, 0, 15);
 LUiM_0hXlChfq.getVar().setBool(0, false); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(oYXm_t3r2dUDYxPcXLMmz); 
 break;
 }
 break;
 case 253: 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/sestoelemento/start_main.ani"); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 8); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(LUiM_0hXlChfq, 9), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 local LKiDWPPPfb7 = XDK8M9SqpuVMB4UpE0ZQA.readDword() - 1; 
 if(LKiDWPPPfb7 < 1)LKiDWPPPfb7 = 1;
 local uL0OKpoVKfl = Cq5TQagvAzlc484.getDelaySum(0, 1); 
 LUiM_0hXlChfq.setTimeEvent(0, uL0OKpoVKfl / LKiDWPPPfb7, 0, false); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.sq_PlaySound("SESTOELEMENTO");
 if(LUiM_0hXlChfq.isMyControlObject())
 {
 local M88jvV8sNFCHNEINcoEV = sq_flashScreen(LUiM_0hXlChfq, 300, 99990, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 LUiM_0hXlChfq.getVar("flashobj").clear_obj_vector(); 
 LUiM_0hXlChfq.getVar("flashobj").push_obj_vector(M88jvV8sNFCHNEINcoEV); 
 }
 break;
 case 131: 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 local pOdiiaMqIt = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local xQFzWprkgF7aBeAt = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local kjmSbYGkD8yE9winlkf = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local dfe4wnu4fj5b5fJuUOKV_1 = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local oNHyWJFxSfjgNrxQ_gP3d3 = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local EFd0LSWkJem27doUtWVa = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 10); 
 local P_Z3e7LnuMl6 = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 11); 
 sq_SetCurrentAttackBonusRate(EFd0LSWkJem27doUtWVa, pOdiiaMqIt); 
 sq_SetCurrentAttackBonusRate(P_Z3e7LnuMl6, xQFzWprkgF7aBeAt); 
 sq_SetChangeStatusIntoAttackInfo(EFd0LSWkJem27doUtWVa, 0, ACTIVESTATUS_LIGHTNING, kjmSbYGkD8yE9winlkf, 100, oNHyWJFxSfjgNrxQ_gP3d3, dfe4wnu4fj5b5fJuUOKV_1); 
 sq_SetChangeStatusIntoAttackInfo(P_Z3e7LnuMl6, 0, ACTIVESTATUS_LIGHTNING, kjmSbYGkD8yE9winlkf, 100, oNHyWJFxSfjgNrxQ_gP3d3, dfe4wnu4fj5b5fJuUOKV_1); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 133: 
 local gzyJCAqVWwgqd = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local SPxzkPmZGxBUE = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local L9vHkUd1313at9pgcW2TS2pg = null; 
 if(gzyJCAqVWwgqd == 1) 
 {
 L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 13); 
 sq_SetChangeStatusIntoAttackInfo(L9vHkUd1313at9pgcW2TS2pg, 0, ACTIVESTATUS_LIGHTNING, XDK8M9SqpuVMB4UpE0ZQA.readDword(), 100, XDK8M9SqpuVMB4UpE0ZQA.readDword(), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 }
 else 
 {
 L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 12); 
 sq_SetChangeStatusIntoAttackInfo(L9vHkUd1313at9pgcW2TS2pg, 0, ACTIVESTATUS_BLIND, XDK8M9SqpuVMB4UpE0ZQA.readDword(), XDK8M9SqpuVMB4UpE0ZQA.readDword(), XDK8M9SqpuVMB4UpE0ZQA.readDword(), 50, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 }
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, SPxzkPmZGxBUE); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(gzyJCAqVWwgqd); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 134: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1: 
 local w2Nitc8Zo5FumsGM = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 local uaEzFG6HsB9StUjxsu = ["Fire_Dodge.ani", "Ice_Dodge.ani", "Dark_Dodge.ani", "Light_Dodge.ani"];
 local Cq5TQagvAzlc484 = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/uroboros/explosion_", uaEzFG6HsB9StUjxsu[w2Nitc8Zo5FumsGM]); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 14); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 L9vHkUd1313at9pgcW2TS2pg.setElement(w2Nitc8Zo5FumsGM); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 LUiM_0hXlChfq.sq_PlaySound("R_UROBOROS_SPARK_EXP"); 
 break;
 case 2: 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/uroboros/explosion_dodge.ani"); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 15); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/mage/particle/uroborossub.ptl", LUiM_0hXlChfq, 0, 0, 20, false, 5, 0, 1); 
 break;
 }
 break;
 case 132: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1: 
 local bkWPRBYFFTuBXa5eiDRjr = sq_GetCNRDObjectToCollisionObject(LUiM_0hXlChfq.getTopCharacter()); 
 if(bkWPRBYFFTuBXa5eiDRjr)
 {
 bkWPRBYFFTuBXa5eiDRjr.getVar().clear_obj_vector(); 
 bkWPRBYFFTuBXa5eiDRjr.getVar().push_obj_vector(LUiM_0hXlChfq); 
 }
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 17); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(LUiM_0hXlChfq, 18), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 local wq2983twpeU_Zol1ILTmU = LUiM_0hXlChfq.getVar(); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 break;
 case 2: 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 16); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 break;
 }
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 135: 
 sq_ChangeDrawLayer(LUiM_0hXlChfq, ENUM_DRAWLAYER_BOTTOM); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 19); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 local wq2983twpeU_Zol1ILTmU = LUiM_0hXlChfq.getVar(); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 wq2983twpeU_Zol1ILTmU.push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 136: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1: 
 LUiM_0hXlChfq.setTimeEvent(0, 1000, 1, false); 
 break;
 case 2: 
 local Cq5TQagvAzlc484 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/kruta/ragefinisheff_01.ani"); 
 LUiM_0hXlChfq.setCurrentAnimation(Cq5TQagvAzlc484); 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 20); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 sq_CreateDrawOnlyObject(LUiM_0hXlChfq, "monster/character/mage/kruta/animation/ragefinishfloor_f01.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 }
 break;
 case 139: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1: 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(LUiM_0hXlChfq.getXPos()); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 LUiM_0hXlChfq.setDirection(XDK8M9SqpuVMB4UpE0ZQA.readWord()); 
 LUiM_0hXlChfq.setTimeEvent(0, 1000, 1, false); 
 break;
 case 3: 
 local L9vHkUd1313at9pgcW2TS2pg = sq_GetCustomAttackInfo(LUiM_0hXlChfq, 21); 
 sq_SetCurrentAttackBonusRate(L9vHkUd1313at9pgcW2TS2pg, XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 sq_SetCurrentAttackInfo(LUiM_0hXlChfq, L9vHkUd1313at9pgcW2TS2pg); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(LUiM_0hXlChfq, 22), XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 LUiM_0hXlChfq.getVar().clear_vector(); 
 LUiM_0hXlChfq.getVar().push_vector(XDK8M9SqpuVMB4UpE0ZQA.readDword()); 
 if(LUiM_0hXlChfq.isMyControlObject())
 LUiM_0hXlChfq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 138: 
 local Vc0rw5FwGWIbIYDT1X = XDK8M9SqpuVMB4UpE0ZQA.readDword(); 
 LUiM_0hXlChfq.getVar("subType").clear_vector(); 
 LUiM_0hXlChfq.getVar("subType").push_vector(Vc0rw5FwGWIbIYDT1X);
 switch(Vc0rw5FwGWIbIYDT1X)
 {
 case 1: 
 LUiM_0hXlChfq.setTimeEvent(0, 1000, 1, false); 
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
