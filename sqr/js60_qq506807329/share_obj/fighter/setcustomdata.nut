
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
 
function setCustomData_po_qq506807329new_fighter_24373(g44WEOc5oTb2t9i1lq, H2YWtLmi885OY)
{
 if(!g44WEOc5oTb2t9i1lq)return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local izsPP8AuIhnk = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("skill").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("skill").push_vector(izsPP8AuIhnk);
 switch(izsPP8AuIhnk) 
 {
 case 225: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 0); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local qmp3kTtWKKLM5aXSeE = g44WEOc5oTb2t9i1lq.getXPos();
 local dLQRvotmledk4VlhGR = g44WEOc5oTb2t9i1lq.getYPos();
 local mtEcK5kSB8RW = g44WEOc5oTb2t9i1lq.getZPos();
 g44WEOc5oTb2t9i1lq.getVar().clear_vector(); 
 local vwmPkVFDr4 = g44WEOc5oTb2t9i1lq.getVar(); 
 vwmPkVFDr4.push_vector(qmp3kTtWKKLM5aXSeE); 
 vwmPkVFDr4.push_vector(dLQRvotmledk4VlhGR); 
 vwmPkVFDr4.push_vector(mtEcK5kSB8RW); 
 vwmPkVFDr4.push_vector(sq_GetDistancePos(qmp3kTtWKKLM5aXSeE, g44WEOc5oTb2t9i1lq.getDirection(), H2YWtLmi885OY.readDword())); 
 vwmPkVFDr4.push_vector(dLQRvotmledk4VlhGR+H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 g44WEOc5oTb2t9i1lq.getVar().setFloat(0, sq_ToRadian(H2YWtLmi885OY.readFloat())); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 g44WEOc5oTb2t9i1lq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 1); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/explosion_l_normal1.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 
 sq_CreateDrawOnlyObject(g44WEOc5oTb2t9i1lq, "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/explosion_l_normal2.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 }
 break;
 case 226: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 2), H2YWtLmi885OY.readDword()); 
 g44WEOc5oTb2t9i1lq.getVar().clear_vector(); 
 local vwmPkVFDr4 = g44WEOc5oTb2t9i1lq.getVar(); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(g44WEOc5oTb2t9i1lq.getXPos()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 g44WEOc5oTb2t9i1lq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/saintillusion/explode3_charge_explode.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 2); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local WyfBkIIZILinIA4 = H2YWtLmi885OY.readDword(); 
 local qmp3kTtWKKLM5aXSeE = g44WEOc5oTb2t9i1lq.getXPos(); 
 local dLQRvotmledk4VlhGR = g44WEOc5oTb2t9i1lq.getYPos(); 
 local mtEcK5kSB8RW = g44WEOc5oTb2t9i1lq.getYPos(); 
 local qZ8ApfUqpx09A1ji4nlDh9h = g44WEOc5oTb2t9i1lq.getObjectManager(); 
 for(local THH14LdcDoVRgEtdqA7B = 0; THH14LdcDoVRgEtdqA7B < qZ8ApfUqpx09A1ji4nlDh9h.getCollisionObjectNumber(); THH14LdcDoVRgEtdqA7B++)
 {
 local y2SAz02iQl = qZ8ApfUqpx09A1ji4nlDh9h.getCollisionObject(THH14LdcDoVRgEtdqA7B); 
 if(y2SAz02iQl
 && !g44WEOc5oTb2t9i1lq.isEnemy(y2SAz02iQl)
 && y2SAz02iQl.isObjectType(OBJECTTYPE_CHARACTER)) 
 {
 local mlqxmT6l8cgl6GZza6WU1lT = sq_GetCNRDObjectToActiveObject(y2SAz02iQl); 
 if(!mlqxmT6l8cgl6GZza6WU1lT.isDead())
 {
 if(sq_Abs(qmp3kTtWKKLM5aXSeE - sq_GetXPos(mlqxmT6l8cgl6GZza6WU1lT)) < 100
 && sq_Abs(dLQRvotmledk4VlhGR - sq_GetYPos(mlqxmT6l8cgl6GZza6WU1lT)) <= 40
 && sq_Abs(mtEcK5kSB8RW - sq_GetZPos(mlqxmT6l8cgl6GZza6WU1lT)) <= 120)
 mlqxmT6l8cgl6GZza6WU1lT.setHp(mlqxmT6l8cgl6GZza6WU1lT.getHp() + WyfBkIIZILinIA4, null, true); 
 }
 }
 }
 break;
 }
 break;
 case 227: 
 local H3oWLprwJ39BkAFv = g44WEOc5oTb2t9i1lq.getParent(); 
 if(H3oWLprwJ39BkAFv)
 sq_moveWithParent(H3oWLprwJ39BkAFv, g44WEOc5oTb2t9i1lq); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 3); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/absorbenergyball/lv1_start_shootinhaledenergy_00_normal.ani");
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/absorbenergyball/lv1_loop_shootinhaledenergy_01_normal.ani"), true); 
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/absorbenergyball/lv1_end_shootinhaledenergy_01_normal.ani"), true); 
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/absorbenergyball/lv2_start_current_shot_normal.ani"), true); 
 sq_SetAttackBoundingBoxSizeRate(j0ZdPNLLfiqJ6dUTIo, 1.4526923076923077, 1.0, 1.0); 
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 local uAejd1pW2r2r89A3oq7 = H2YWtLmi885OY.readDword(); 
 local qubNWiTv7LZ = j0ZdPNLLfiqJ6dUTIo.getDelaySum(0, 6); 
 g44WEOc5oTb2t9i1lq.setTimeEvent(0, qubNWiTv7LZ / uAejd1pW2r2r89A3oq7, (uAejd1pW2r2r89A3oq7-1<1)?1: uAejd1pW2r2r89A3oq7-1, false); 
 break;
 case 228: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 4); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/nenofbrilliance/ready_ex1_12.ani");
 local HmeqRGG0ngDDKyQJN = (H2YWtLmi885OY.readDword()).tofloat() / 100.0; 
 j0ZdPNLLfiqJ6dUTIo.setImageRateFromOriginal(HmeqRGG0ngDDKyQJN, HmeqRGG0ngDDKyQJN); 
 j0ZdPNLLfiqJ6dUTIo.setAutoLayerWorkAnimationAddSizeRate(HmeqRGG0ngDDKyQJN); 
 sq_SetAttackBoundingBoxSizeRate(j0ZdPNLLfiqJ6dUTIo, HmeqRGG0ngDDKyQJN, HmeqRGG0ngDDKyQJN, HmeqRGG0ngDDKyQJN); 
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 sq_SetChangeStatusIntoAttackInfo(D3jdBeVLJ5IBpA2lvsu2DF, 0, ACTIVESTATUS_LIGHTNING, H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 break;
 case 229: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 4 + NuQJ1u1MnEz); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 
 local tY0vSE0rcPVN6hrRQVKAaHQ = sq_GetCNRDObjectToCollisionObject(g44WEOc5oTb2t9i1lq.getParent()); 
 if(tY0vSE0rcPVN6hrRQVKAaHQ && tY0vSE0rcPVN6hrRQVKAaHQ.getState() == 229) 
 {
 local PzUXbG9DCFSgp1Gia8_G4 = "passiveobj" + NuQJ1u1MnEz.tostring(); 
 tY0vSE0rcPVN6hrRQVKAaHQ.getVar(PzUXbG9DCFSgp1Gia8_G4).push_obj_vector(g44WEOc5oTb2t9i1lq); 
 local BXOEVgreni4yJoV7IIm9 = "atkobj"+ NuQJ1u1MnEz.tostring();
 local kTJan8mjeH = tY0vSE0rcPVN6hrRQVKAaHQ.getVar(BXOEVgreni4yJoV7IIm9).get_obj_vector_size(); 
 local A_bFwVZDmOtxa3wvdekot = tY0vSE0rcPVN6hrRQVKAaHQ.getVar(BXOEVgreni4yJoV7IIm9); 
 for(local THH14LdcDoVRgEtdqA7B = 0; THH14LdcDoVRgEtdqA7B < kTJan8mjeH; THH14LdcDoVRgEtdqA7B++)
 {
 local QufRrrSbnDfC = sq_GetCNRDObjectToCollisionObject(A_bFwVZDmOtxa3wvdekot.get_obj_vector(THH14LdcDoVRgEtdqA7B)); 
 if(QufRrrSbnDfC)sq_AddHitObject(g44WEOc5oTb2t9i1lq, QufRrrSbnDfC); 
 }
 }
 local hRcvCCZ11vsDeuUxk = ["RisingUpperExHIT_A.ani", "RisingUpperExHIT_B.ani", "RisingUpperExHIT_C01.ani"];
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/fighter/animation/oneelbowchainhit/", hRcvCCZ11vsDeuUxk[NuQJ1u1MnEz - 1]);
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 break;
 case 230: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 8); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/tigerstrike/tiger_endatk_c_eff_12.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 break;
 case 231: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 9); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/chaindestruction/atk04back_01.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 break;
 case 232: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1: 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/finalheaven/frontduststart_10.ani");
 j0ZdPNLLfiqJ6dUTIo.setSpeedRate(H2YWtLmi885OY.readFloat()); 
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 sq_SetCurrentAttackInfoFromCustomIndex(g44WEOc5oTb2t9i1lq, 10); 
 break;
 case 2: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 11); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/finalheaven/finalheavenexpdummy.ani");
 j0ZdPNLLfiqJ6dUTIo.setSpeedRate(H2YWtLmi885OY.readFloat()); 
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 break;
 case 3: 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 12); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/finalheaven/finalheavensuccesshitdummy.ani");
 j0ZdPNLLfiqJ6dUTIo.setSpeedRate(H2YWtLmi885OY.readFloat()); 
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 break;
 }
 break;
 case 233: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1: 
 g44WEOc5oTb2t9i1lq.getVar().clear_obj_vector(); 
 local APOSOzx3T0dvPHjUlG = H2YWtLmi885OY.readDword(); 
 local L3E9htT3t63 = H2YWtLmi885OY.readDword(); 
 local qmp3kTtWKKLM5aXSeE = H2YWtLmi885OY.readDword(); 
 local dLQRvotmledk4VlhGR = H2YWtLmi885OY.readDword(); 
 local mtEcK5kSB8RW = H2YWtLmi885OY.readDword(); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(233); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(APOSOzx3T0dvPHjUlG); 
 sq_BinaryWriteDword(L3E9htT3t63); 
 sq_BinaryWriteDword(qmp3kTtWKKLM5aXSeE); 
 sq_BinaryWriteDword(dLQRvotmledk4VlhGR); 
 sq_BinaryWriteDword(mtEcK5kSB8RW); 
 sq_SendCreatePassiveObjectPacket(g44WEOc5oTb2t9i1lq, 24373, 0, 0, 0, 0, g44WEOc5oTb2t9i1lq.getDirection()); 
 sq_SetMyShake(g44WEOc5oTb2t9i1lq, 10, 300); 
 sq_flashScreen(g44WEOc5oTb2t9i1lq, 50, 50, 50, 200, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/poisonexplosion/explosion_00_shockwave_n.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 13); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 g44WEOc5oTb2t9i1lq.getVar().clear_vector(); 
 local vwmPkVFDr4 = g44WEOc5oTb2t9i1lq.getVar(); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(D3jdBeVLJ5IBpA2lvsu2DF, 0, ACTIVESTATUS_POISON, vwmPkVFDr4.get_vector(7), vwmPkVFDr4.get_vector(8), vwmPkVFDr4.get_vector(9), vwmPkVFDr4.get_vector(10)); 
 sq_SetChangeStatusIntoAttackInfo(D3jdBeVLJ5IBpA2lvsu2DF, 1, ACTIVESTATUS_BURN, vwmPkVFDr4.get_vector(11), vwmPkVFDr4.get_vector(12), vwmPkVFDr4.get_vector(13), vwmPkVFDr4.get_vector(14)); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 break;
 case 2:
 case 3:
 case 4: 
 local mlqxmT6l8cgl6GZza6WU1lT = sq_GetCNRDObjectToActiveObject(sq_GetObject(g44WEOc5oTb2t9i1lq, H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword())); 
 g44WEOc5oTb2t9i1lq.setCurrentPos(H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword()); 
 if(!mlqxmT6l8cgl6GZza6WU1lT.isDead()) 
 {
 g44WEOc5oTb2t9i1lq.setCurrentPos(mlqxmT6l8cgl6GZza6WU1lT.getXPos(), mlqxmT6l8cgl6GZza6WU1lT.getYPos(), mlqxmT6l8cgl6GZza6WU1lT.getZPos() + sq_GetObjectHeight(mlqxmT6l8cgl6GZza6WU1lT) / 2); 
 sq_moveWithParent(mlqxmT6l8cgl6GZza6WU1lT, g44WEOc5oTb2t9i1lq); 
 
 local H3oWLprwJ39BkAFv = sq_GetCNRDObjectToCollisionObject(g44WEOc5oTb2t9i1lq.getParent()); 
 if(H3oWLprwJ39BkAFv)
 {
 H3oWLprwJ39BkAFv.getVar().push_obj_vector(mlqxmT6l8cgl6GZza6WU1lT); 
 sq_EffectLayerAppendage(mlqxmT6l8cgl6GZza6WU1lT, sq_RGB(0, 0, 0), 254, 1300, 0, 1300); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 sq_sendSetActiveStatusPacket(mlqxmT6l8cgl6GZza6WU1lT, H3oWLprwJ39BkAFv, ACTIVESTATUS_SLOW, 100.0, 120, false, 1300, H3oWLprwJ39BkAFv.getVar().get_vector(6), H3oWLprwJ39BkAFv.getVar().get_vector(5)); 
 }
 }
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 g44WEOc5oTb2t9i1lq.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 234: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1: 
 sq_ChangeDrawLayer(g44WEOc5oTb2t9i1lq, ENUM_DRAWLAYER_BOTTOM); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/dragonmine/poisonloop_dragonmine_bottom.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 local VcbtZhLNRdXKLVweR9jR = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.setTimeEvent(1, VcbtZhLNRdXKLVweR9jR, 1, false); 
 local Wm4iAbtVrC7VaP = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.setTimeEvent(0, Wm4iAbtVrC7VaP, 0, false); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 15); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(D3jdBeVLJ5IBpA2lvsu2DF, 0, ACTIVESTATUS_SLOW, 100, 100, Wm4iAbtVrC7VaP, 0, H2YWtLmi885OY.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(D3jdBeVLJ5IBpA2lvsu2DF, 1, ACTIVESTATUS_POISON, H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 sq_flashScreen(g44WEOc5oTb2t9i1lq, 200, VcbtZhLNRdXKLVweR9jR - 200, 200, 60, sq_RGB(128, 0, 128), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
 break;
 case 2: 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/dragonmine/explosion/boom_dragonmine_boom4.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 16); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local DatoSg9ynn620kNasIuHS = H2YWtLmi885OY.readDword(); 
 local qubNWiTv7LZ = j0ZdPNLLfiqJ6dUTIo.getDelaySum(0, 13); 
 g44WEOc5oTb2t9i1lq.setTimeEvent(0, qubNWiTv7LZ / DatoSg9ynn620kNasIuHS, DatoSg9ynn620kNasIuHS-1, false); 
 break;
 }
 break;
 case 237: 
 local mlqxmT6l8cgl6GZza6WU1lT = sq_GetCNRDObjectToActiveObject(sq_GetObject(g44WEOc5oTb2t9i1lq, H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword())); 
 if(mlqxmT6l8cgl6GZza6WU1lT)
 {
 g44WEOc5oTb2t9i1lq.setCurrentPos(mlqxmT6l8cgl6GZza6WU1lT.getXPos(), mlqxmT6l8cgl6GZza6WU1lT.getYPos(), mlqxmT6l8cgl6GZza6WU1lT.getZPos()); 
 sq_moveWithParent(mlqxmT6l8cgl6GZza6WU1lT, g44WEOc5oTb2t9i1lq); 
 }
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 break;
 case 238: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1:
 local mlqxmT6l8cgl6GZza6WU1lT = sq_GetCNRDObjectToActiveObject(sq_GetObject(g44WEOc5oTb2t9i1lq, H2YWtLmi885OY.readDword(), H2YWtLmi885OY.readDword())); 
 if(mlqxmT6l8cgl6GZza6WU1lT && !mlqxmT6l8cgl6GZza6WU1lT.isDead())
 {
 g44WEOc5oTb2t9i1lq.setCurrentPos(mlqxmT6l8cgl6GZza6WU1lT.getXPos(), mlqxmT6l8cgl6GZza6WU1lT.getYPos(), mlqxmT6l8cgl6GZza6WU1lT.getZPos() + sq_GetObjectHeight(mlqxmT6l8cgl6GZza6WU1lT) / 2); 
 sq_moveWithParent(mlqxmT6l8cgl6GZza6WU1lT, g44WEOc5oTb2t9i1lq); 
 }
 g44WEOc5oTb2t9i1lq.getVar().clear_vector(); 
 local vwmPkVFDr4 = g44WEOc5oTb2t9i1lq.getVar(); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 vwmPkVFDr4.push_vector(H2YWtLmi885OY.readDword()); 
 g44WEOc5oTb2t9i1lq.setTimeEvent(0, 200, 0, true); 
 if(g44WEOc5oTb2t9i1lq.isMyControlObject())
 {
 local SOHbsT6Dk0H226 = sq_flashScreen(g44WEOc5oTb2t9i1lq, 0, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_flashScreen(g44WEOc5oTb2t9i1lq, 0, 0, 200, 100, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 g44WEOc5oTb2t9i1lq.getVar("flashobj").clear_obj_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("flashobj").push_obj_vector(SOHbsT6Dk0H226); 
 }
 break;
 case 2:
 sq_SetCustomRotate(g44WEOc5oTb2t9i1lq, sq_ToRadian(H2YWtLmi885OY.readFloat())); 
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 19); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_a.ani");
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_b.ani"), true);
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 sq_SetMyShake(g44WEOc5oTb2t9i1lq, 2, 100); 
 break;
 case 3:
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 20); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_c_4.ani");
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_c_2.ani"), true);
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_c_3.ani"), true);
 j0ZdPNLLfiqJ6dUTIo.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/torbellino/torbellino_hit_c_1.ani"), true);
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 sq_SetMyShake(g44WEOc5oTb2t9i1lq, 8, 300); 
 break;
 }
 break;
 case 239: 
 local NuQJ1u1MnEz = H2YWtLmi885OY.readDword(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").clear_vector(); 
 g44WEOc5oTb2t9i1lq.getVar("subType").push_vector(NuQJ1u1MnEz);
 switch(NuQJ1u1MnEz)
 {
 case 1:
 local D3jdBeVLJ5IBpA2lvsu2DF = sq_GetCustomAttackInfo(g44WEOc5oTb2t9i1lq, 21); 
 sq_SetCurrentAttackBonusRate(D3jdBeVLJ5IBpA2lvsu2DF, H2YWtLmi885OY.readDword()); 
 sq_SetCurrentAttackInfo(g44WEOc5oTb2t9i1lq, D3jdBeVLJ5IBpA2lvsu2DF); 
 local j0ZdPNLLfiqJ6dUTIo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/hurricanesupersuplex/boom_26.ani");
 g44WEOc5oTb2t9i1lq.setCurrentAnimation(j0ZdPNLLfiqJ6dUTIo); 
 sq_SetMyShake(g44WEOc5oTb2t9i1lq, 20, 650); 
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
