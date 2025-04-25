
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function setState_po_qq506807329new_mage_24372(dKqt8L7ZvgyB, QME3kfKOCzou, lbNq4j7HjAgxvbvbVNWDo)
{
 if(!dKqt8L7ZvgyB) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 dKqt8L7ZvgyB.getVar("state").clear_vector(); 
 dKqt8L7ZvgyB.getVar("state").push_vector(QME3kfKOCzou); 
 local TlzoNCxafZNgvQCspJKs = dKqt8L7ZvgyB.getVar("skill").get_vector(0);
 switch(TlzoNCxafZNgvQCspJKs)
 {
 case 249: 
 switch(QME3kfKOCzou)
 {
 case 10:
 dKqt8L7ZvgyB.removeAllTimeEvent(); 
 sq_ChangeDrawLayer(dKqt8L7ZvgyB, ENUM_DRAWLAYER_NORMAL); 
 local dtmCKaqMvIx = (dKqt8L7ZvgyB.getVar().get_vector(0)).tofloat() / 100.0; 
 
 local UBvODlra6dvb70BE = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_groundcircle.ani", ENUM_DRAWLAYER_BOTTOM, true);
 local ODVBTstXf7WasLwzBX = UBvODlra6dvb70BE.getCurrentAnimation(); 
 ODVBTstXf7WasLwzBX.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 dKqt8L7ZvgyB.getVar("aniobj").push_obj_vector(UBvODlra6dvb70BE); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_auroraend_broken.ani"); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 sq_SetAttackBoundingBoxSizeRate(cTnfR1MZO2GJgngLVmc, dtmCKaqMvIx, dtmCKaqMvIx, dtmCKaqMvIx); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 4); 
 if(dKqt8L7ZvgyB.isMyControlObject())
 sq_flashScreen(dKqt8L7ZvgyB, 720, 0, 200, 51, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 245: 
 switch(QME3kfKOCzou)
 {
 case 10:
 dKqt8L7ZvgyB.setTimeEvent(0, 250, 1, false); 
 dKqt8L7ZvgyB.setTimeEvent(1, 800, 1, false); 
 break;
 }
 break;
 case 242: 
 switch(QME3kfKOCzou)
 {
 case 10: 
 
 local UiGgaR0Sxa3q6prB6gpCUzvJ = [1.2857142857142858, 0.8571428571428571, 1.4285714285714286, 0.8571428571428571, 1.0, 0.7142857142857143, 0.42857142857142855, 0.8571428571428571];
 local heDN_uCkB17J9201rg = dKqt8L7ZvgyB.getXPos(); 
 local MRP4slDbuWo9SNG = dKqt8L7ZvgyB.getYPos(); 
 local vyGc49A9i5 = dKqt8L7ZvgyB.getDirection(); 
 local BspZl49ZNm7 = [-62, -32, 30, 87, 99, 106, 148, 152];
 local QrPYKYZdZs0QFjXo = [55, -59, 16, -52, 46, -12, -45, 10];
 local CmGusJwNOJ4E4KzoHoidcL = [10, 0, 8, 0, 0, 0, 0, 0];
 dKqt8L7ZvgyB.getVar("move").clear_vector(); 
 local xPrWsP62wK330aqqf = dKqt8L7ZvgyB.getVar("move"); 
 dKqt8L7ZvgyB.getVar("moveStart").clear_vector(); 
 local S8HHSGcboN7EBa04hb = dKqt8L7ZvgyB.getVar("moveStart"); 
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < 8; dJtWGZD1GzN++)
 {
 xPrWsP62wK330aqqf.push_vector([0, 180][sq_getRandomUnique(true, 0, 2)]); 
 xPrWsP62wK330aqqf.push_vector(sq_getRandomUnique(true, 2500, 6000)); 
 S8HHSGcboN7EBa04hb.push_vector(50 + CmGusJwNOJ4E4KzoHoidcL[dJtWGZD1GzN]); 
 }
 dKqt8L7ZvgyB.getVar("aniobj").clear_obj_vector(); 
 local iXHGSUQMh6Hk8CQXP3V = dKqt8L7ZvgyB.getVar("aniobj"); 
 
 dKqt8L7ZvgyB.getVar("aniobj2").clear_obj_vector(); 
 local I28Izb0VMFO4ap_O8vugHmO = dKqt8L7ZvgyB.getVar("aniobj2"); 
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < 8; dJtWGZD1GzN++)
 {
 local dtmCKaqMvIx = UiGgaR0Sxa3q6prB6gpCUzvJ[dJtWGZD1GzN]; 
 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/chasercluster/chaserclusterstart_00.ani"); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 local UBvODlra6dvb70BE = sq_CreatePooledObject(cTnfR1MZO2GJgngLVmc, false); 
 sq_SetCurrentDirection(UBvODlra6dvb70BE, vyGc49A9i5); 
 UBvODlra6dvb70BE.setCurrentPos(sq_GetDistancePos(heDN_uCkB17J9201rg, vyGc49A9i5, BspZl49ZNm7[dJtWGZD1GzN]), MRP4slDbuWo9SNG + QrPYKYZdZs0QFjXo[dJtWGZD1GzN], 50 + CmGusJwNOJ4E4KzoHoidcL[dJtWGZD1GzN]); 
 UBvODlra6dvb70BE = sq_SetEnumDrawLayer(UBvODlra6dvb70BE, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(dKqt8L7ZvgyB, UBvODlra6dvb70BE, OBJECTTYPE_DRAWONLY, false); 
 iXHGSUQMh6Hk8CQXP3V.push_obj_vector(UBvODlra6dvb70BE); 
 
 local R2X8krKn2CD1 = sq_CreateDrawOnlyObject(UBvODlra6dvb70BE, "passiveobject/script_sqr_nut_qq506807329/mage/animation/chasercluster/chaserclusterfloor_00.ani", ENUM_DRAWLAYER_BOTTOM, false);
 sq_setCurrentAxisPos(R2X8krKn2CD1, 2, 0); 
 local LVcyyg_k9q0g0map7wmvZ = R2X8krKn2CD1.getCurrentAnimation(); 
 LVcyyg_k9q0g0map7wmvZ.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 LVcyyg_k9q0g0map7wmvZ.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 I28Izb0VMFO4ap_O8vugHmO.push_obj_vector(R2X8krKn2CD1); 
 }
 break;
 case 11: 
 
 local UiGgaR0Sxa3q6prB6gpCUzvJ = [1.2857142857142858, 0.8571428571428571, 1.4285714285714286, 0.8571428571428571, 1.0, 0.7142857142857143, 0.42857142857142855, 0.8571428571428571];
 local wzvv4UOgZZA = [0.43632999999999994, 0.0, -0.43632999999999994]; 
 local iXHGSUQMh6Hk8CQXP3V = dKqt8L7ZvgyB.getVar("aniobj"); 
 local UUaHkoJEYxKeD = iXHGSUQMh6Hk8CQXP3V.get_obj_vector_size(); 
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < UUaHkoJEYxKeD; dJtWGZD1GzN++)
 {
 local dtmCKaqMvIx = UiGgaR0Sxa3q6prB6gpCUzvJ[dJtWGZD1GzN]; 
 local UBvODlra6dvb70BE = iXHGSUQMh6Hk8CQXP3V.get_obj_vector(dJtWGZD1GzN); 
 if(UBvODlra6dvb70BE)
 {
 local U_WDyr4lOAjCIbUR7cLYKV = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/chasercluster/chaserclusterloop_00.ani"); 
 U_WDyr4lOAjCIbUR7cLYKV.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 U_WDyr4lOAjCIbUR7cLYKV.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 UBvODlra6dvb70BE.setCurrentAnimation(U_WDyr4lOAjCIbUR7cLYKV); 
 local OU9rqrV_MaHomksH = sq_getRandomUnique(true, 0, wzvv4UOgZZA.len()); 
 sq_SetCustomRotate(UBvODlra6dvb70BE, wzvv4UOgZZA[OU9rqrV_MaHomksH]); 
 }
 }
 dKqt8L7ZvgyB.getVar("aniobj").clear_vector();
 dKqt8L7ZvgyB.getVar("aniobj").push_vector(sq_GetObjectTime(dKqt8L7ZvgyB)); 
 break;
 case 12: 
 dKqt8L7ZvgyB.stopTimeEvent(0); 
 local I28Izb0VMFO4ap_O8vugHmO = dKqt8L7ZvgyB.getVar("aniobj2"); 
 dKqt8L7ZvgyB.getVar("aniobj").clear_vector(); 
 local iXHGSUQMh6Hk8CQXP3V = dKqt8L7ZvgyB.getVar("aniobj"); 
 local yTJR2vuPIZGOpOtC = [0, 1, 2, 3, 4, 5, 6, 7];
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < 8; dJtWGZD1GzN++)
 {
 local U8aaN2R4UvV = sq_getRandomUnique(true, 0, yTJR2vuPIZGOpOtC.len()); 
 iXHGSUQMh6Hk8CQXP3V.push_vector(yTJR2vuPIZGOpOtC[U8aaN2R4UvV]); 
 yTJR2vuPIZGOpOtC.remove(U8aaN2R4UvV); 
 local R2X8krKn2CD1 = I28Izb0VMFO4ap_O8vugHmO.get_obj_vector(dJtWGZD1GzN); 
 if(R2X8krKn2CD1)
 R2X8krKn2CD1.setValid(false); 
 }
 iXHGSUQMh6Hk8CQXP3V.push_vector(0); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/chasercluster/chaserclustermainexplosion.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 0); 
 local D_BrJqz0WEoYR = dKqt8L7ZvgyB.getVar().get_vector(0) - 1; 
 dKqt8L7ZvgyB.setTimeEvent(1, 450 / D_BrJqz0WEoYR, D_BrJqz0WEoYR, false); 
 dKqt8L7ZvgyB.setTimeEvent(2, 40, 0, true); 
 sq_SetMyShake(dKqt8L7ZvgyB, 3, 450); 
 break;
 }
 break;
 case 250: 
 local dtmCKaqMvIx = (dKqt8L7ZvgyB.getVar().get_vector(0)).tofloat() / 100.0; 
 switch(QME3kfKOCzou)
 {
 case 10:
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalquake/magiccircle.ani"); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 11:
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalquake/quakebottom_crack.ani"); 
 
 cTnfR1MZO2GJgngLVmc.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalquake/quake_glowbeam.ani"), true); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 sq_SetAttackBoundingBoxSizeRate(cTnfR1MZO2GJgngLVmc, dtmCKaqMvIx, dtmCKaqMvIx, dtmCKaqMvIx); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 
 
 
 
 
 break;
 }
 break;
 case 251: 
 local dtmCKaqMvIx = (dKqt8L7ZvgyB.getVar().get_vector(0)).tofloat() / 100.0; 
 if(QME3kfKOCzou < 14)
 {
 local Xiy54ye7MQB = [
 "character/mage/effect/animation/crystalofovermind/groweffect/crystalofovermind_grow01_start.ani",
 "character/mage/effect/animation/crystalofovermind/groweffect/crystalofovermind_grow02_start.ani",
 "character/mage/effect/animation/crystalofovermind/groweffect/crystalofovermind_grow03_start.ani",
 "character/mage/effect/animation/crystalofovermind/groweffect/crystalofovermind_grow04_start.ani",
 "character/mage/effect/animation/crystalofovermind/groweffect/crystalofovermind_grow04_start_back.ani"]; 
 local a3EygYW_g9T1s9M7D1FBA1E4 = [
 "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/crystalofovermind_grow01_loop.ani",
 "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/crystalofovermind_grow02_loop.ani",
 "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/crystalofovermind_grow03_loop.ani",
 "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/crystalofovermind_grow04_loop.ani"]; 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", Xiy54ye7MQB[QME3kfKOCzou - 10]); 
 if(QME3kfKOCzou != 13)
 cTnfR1MZO2GJgngLVmc.addLayerAnimation(-1, sq_CreateAnimation("", a3EygYW_g9T1s9M7D1FBA1E4[QME3kfKOCzou - 10]), true); 
 else 
 cTnfR1MZO2GJgngLVmc.addLayerAnimation(-1, sq_CreateAnimation("", Xiy54ye7MQB[QME3kfKOCzou - 10 + 1]), true); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 cTnfR1MZO2GJgngLVmc.setSpeedRate(100.0 * dtmCKaqMvIx); 
 }
 switch(QME3kfKOCzou)
 {
 case 10:
 local g5sBG1uqkblsrK_XFC7e5o2 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/crystalofovermind/start/crystalofmind_side_back01_start.ani", ENUM_DRAWLAYER_NORMAL, false); 
 sq_setCurrentAxisPos(g5sBG1uqkblsrK_XFC7e5o2, 1, dKqt8L7ZvgyB.getYPos() - 1); 
 local R2X8krKn2CD1 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/crystalofovermind/start/crystalofmind_side_front_start.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local O5VFPKBA6bHM1IsqPu = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/crystalofovermind/start/crystalofovermind_background_01.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 local R6L0If4Ag_tpe3v_bOvikBU = g5sBG1uqkblsrK_XFC7e5o2.getCurrentAnimation(); 
 local LVcyyg_k9q0g0map7wmvZ = R2X8krKn2CD1.getCurrentAnimation(); 
 local RALrRVvIHzr = O5VFPKBA6bHM1IsqPu.getCurrentAnimation(); 
 R6L0If4Ag_tpe3v_bOvikBU.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 R6L0If4Ag_tpe3v_bOvikBU.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 LVcyyg_k9q0g0map7wmvZ.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 LVcyyg_k9q0g0map7wmvZ.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 RALrRVvIHzr.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 RALrRVvIHzr.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 dKqt8L7ZvgyB.getVar("aniobj").clear_obj_vector(); 
 local bEjfeMZwipt4Iwd5ell6TsgV = dKqt8L7ZvgyB.getVar("aniobj"); 
 bEjfeMZwipt4Iwd5ell6TsgV.push_obj_vector(g5sBG1uqkblsrK_XFC7e5o2); 
 bEjfeMZwipt4Iwd5ell6TsgV.push_obj_vector(R2X8krKn2CD1); 
 bEjfeMZwipt4Iwd5ell6TsgV.push_obj_vector(O5VFPKBA6bHM1IsqPu); 
 dKqt8L7ZvgyB.getVar("loop").setBool(0, false); 
 break;
 case 14:
 local bEjfeMZwipt4Iwd5ell6TsgV = dKqt8L7ZvgyB.getVar("aniobj"); 
 local g5sBG1uqkblsrK_XFC7e5o2 = bEjfeMZwipt4Iwd5ell6TsgV.get_obj_vector(0); 
 local R2X8krKn2CD1 = bEjfeMZwipt4Iwd5ell6TsgV.get_obj_vector(1); 
 local R6L0If4Ag_tpe3v_bOvikBU = sq_CreateAnimation("", "character/mage/effect/animation/crystalofovermind/end/crystalofmind_side_back01_finish.ani"); 
 local LVcyyg_k9q0g0map7wmvZ = sq_CreateAnimation("", "character/mage/effect/animation/crystalofovermind/end/crystalofmind_side_front_finish.ani"); 
 R6L0If4Ag_tpe3v_bOvikBU.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 R6L0If4Ag_tpe3v_bOvikBU.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 LVcyyg_k9q0g0map7wmvZ.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 LVcyyg_k9q0g0map7wmvZ.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 
 g5sBG1uqkblsrK_XFC7e5o2.setCurrentAnimation(R6L0If4Ag_tpe3v_bOvikBU);
 R2X8krKn2CD1.setCurrentAnimation(LVcyyg_k9q0g0map7wmvZ);
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/finish/front/crystalofovermind_finish_front_00.ani"); 
 cTnfR1MZO2GJgngLVmc.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/finish/back/crystalofovermind_finish_back_00.ani"), true); 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 break;
 case 252: 
 local XFcAI7XS43Vf = dKqt8L7ZvgyB.getVar("subType").get_vector(0);
 switch(XFcAI7XS43Vf)
 {
 case 1:
 local PXJWl_9Eg8wDNjWaU1wNm = ""; 
 switch(QME3kfKOCzou)
 {
 case 10:PXJWl_9Eg8wDNjWaU1wNm = "start"; break;
 case 11:PXJWl_9Eg8wDNjWaU1wNm = "loop"; break;
 case 12:PXJWl_9Eg8wDNjWaU1wNm = "end"; break;
 }
 local Xiy54ye7MQB = [
 "fire/" + PXJWl_9Eg8wDNjWaU1wNm + "/fire_magic.ani",
 "ice/" + PXJWl_9Eg8wDNjWaU1wNm + "/ice_magic.ani",
 "dark/" + PXJWl_9Eg8wDNjWaU1wNm + "/dark_magic.ani",
 "light/" + PXJWl_9Eg8wDNjWaU1wNm + "/light_magic.ani"];
 local MYzqnxTaNPIojh1Ajqgi = dKqt8L7ZvgyB.getVar().get_vector(0); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/", Xiy54ye7MQB[MYzqnxTaNPIojh1Ajqgi]); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 switch(QME3kfKOCzou)
 {
 case 11:
 local qwfPLwdUSnCAKqcAtg4MEjv = dKqt8L7ZvgyB.getVar().get_vector(1); 
 dKqt8L7ZvgyB.setTimeEvent(0, qwfPLwdUSnCAKqcAtg4MEjv, 0, true); 
 break;
 case 12:
 dKqt8L7ZvgyB.removeAllTimeEvent(); 
 break;
 }
 break;
 }
 break;
 case 253: 
 switch(QME3kfKOCzou)
 {
 case 10:
 dKqt8L7ZvgyB.removeAllTimeEvent(); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/sestoelemento/explosion_main.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 9); 
 break;
 }
 break;
 case 131: 
 local EoomQRkoQYn2rqAb9 = dKqt8L7ZvgyB.getVar().get_vector(0); 
 local HVVZ1iI00dqCo = ""; 
 switch(EoomQRkoQYn2rqAb9)
 {
 case 3: HVVZ1iI00dqCo = "Fail"; break; 
 case 4: HVVZ1iI00dqCo = "Success"; break; 
 case 5: HVVZ1iI00dqCo = "Great"; break; 
 }
 local g5sBG1uqkblsrK_XFC7e5o2 = null;
 local R2X8krKn2CD1 = null;
 switch(QME3kfKOCzou)
 {
 case 10: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/start/" + HVVZ1iI00dqCo + "_start_elecrabbit.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 g5sBG1uqkblsrK_XFC7e5o2 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/start/" + HVVZ1iI00dqCo + "_ground_03.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 R2X8krKn2CD1 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/start/" + HVVZ1iI00dqCo + "_thunder_02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 dKqt8L7ZvgyB.sq_PlaySound("ELETRIC_RABBIT_SHOCK");
 break;
 case 11: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/loop/" + HVVZ1iI00dqCo + "_loop_elecrabbit.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 g5sBG1uqkblsrK_XFC7e5o2 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/loop/" + HVVZ1iI00dqCo + "_ground_01.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 R2X8krKn2CD1 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/loop/" + HVVZ1iI00dqCo + "_thunder_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 10); 
 sq_SetMyShake(dKqt8L7ZvgyB, 2, 160); 
 local D_BrJqz0WEoYR = 4; 
 local Z_DZ00sJWtya_rlkfURBg = cTnfR1MZO2GJgngLVmc.getDelaySum(false); 
 dKqt8L7ZvgyB.setTimeEvent(0, Z_DZ00sJWtya_rlkfURBg / (D_BrJqz0WEoYR + 1), D_BrJqz0WEoYR - 1, false); 
 break;
 case 12: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/end/" + HVVZ1iI00dqCo + "_elecrabbit.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 g5sBG1uqkblsrK_XFC7e5o2 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/end/" + HVVZ1iI00dqCo + "_ground_02.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 R2X8krKn2CD1 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/end/" + HVVZ1iI00dqCo + "_thunder_03.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 13: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/explosion/explosion_dodge.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 11); 
 sq_SetMyShake(dKqt8L7ZvgyB, 4, 300); 
 dKqt8L7ZvgyB.sq_PlaySound("ELETRIC_RABBIT_EXP");
 break;
 }
 if(g5sBG1uqkblsrK_XFC7e5o2 != null) 
 {
 RemoveAllAni(dKqt8L7ZvgyB); 
 dKqt8L7ZvgyB.getVar("aniobj").clear_obj_vector(); 
 dKqt8L7ZvgyB.getVar("aniobj").push_obj_vector(g5sBG1uqkblsrK_XFC7e5o2); 
 dKqt8L7ZvgyB.getVar("aniobj").push_obj_vector(R2X8krKn2CD1); 
 }
 break;
 case 133: 
 local Sd1FMOlScP4 = dKqt8L7ZvgyB.getVar().get_vector(0) - 1; 
 switch(QME3kfKOCzou)
 {
 case 10: 
 local Xiy54ye7MQB = ["WhiteStart_Dw_Start.ani", "BlackStart_D_Start.ani", "BoseStart_Start.ani"];
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/lollipopcrush/", Xiy54ye7MQB[Sd1FMOlScP4]); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 11: 
 local Xiy54ye7MQB = ["WhiteLoop_Dw_Body.ani", "BlackLoop_Db_Body.ani", "BoseLoop_Body.ani"];
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/lollipopcrush/", Xiy54ye7MQB[Sd1FMOlScP4]); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 dKqt8L7ZvgyB.getVar("move").clear_vector(); 
 dKqt8L7ZvgyB.getVar("move").push_vector(dKqt8L7ZvgyB.getXPos()); 
 dKqt8L7ZvgyB.getVar("move").push_vector(dKqt8L7ZvgyB.getYPos()); 
 dKqt8L7ZvgyB.getVar("move").push_vector(dKqt8L7ZvgyB.getZPos()); 
 dKqt8L7ZvgyB.getVar("move").push_vector(sq_GetVectorData(lbNq4j7HjAgxvbvbVNWDo, 0)); 
 dKqt8L7ZvgyB.getVar("move").push_vector(sq_GetVectorData(lbNq4j7HjAgxvbvbVNWDo, 1)); 
 dKqt8L7ZvgyB.getVar("move").push_vector(sq_GetVectorData(lbNq4j7HjAgxvbvbVNWDo, 2)); 
 
 dKqt8L7ZvgyB.getVar().clear_timer_vector();
 dKqt8L7ZvgyB.getVar().push_timer_vector();
 local kEIwClvifdl6_vRudTY2Ff9 = dKqt8L7ZvgyB.getVar().get_timer_vector(0);
 kEIwClvifdl6_vRudTY2Ff9.setParameter(5, -1); 
 kEIwClvifdl6_vRudTY2Ff9.resetInstant(0); 
 dKqt8L7ZvgyB.getVar("aniobj").clear_obj_vector(); 
 break;
 case 12: 
 RemoveAllAni(dKqt8L7ZvgyB); 
 local Xiy54ye7MQB = ["WhiteEnd_Dw_Boom.ani", "BlackEnd_Db_BoomBack.ani", "BoseEnd_Back.ani"];
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/mage/animation/lollipopcrush/", Xiy54ye7MQB[Sd1FMOlScP4]); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 break;
 case 132: 
 local XFcAI7XS43Vf = dKqt8L7ZvgyB.getVar("subType").get_vector(0); 
 switch(XFcAI7XS43Vf)
 {
 case 1: 
 switch(QME3kfKOCzou)
 {
 case 10: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/start/jackfrosticewaterstartback_03.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 local g5sBG1uqkblsrK_XFC7e5o2 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewaterstartfloortwister_01.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 local R2X8krKn2CD1 = sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewaterstartfloor_03.ani", ENUM_DRAWLAYER_BOTTOM, false); 
 dKqt8L7ZvgyB.getVar("aniobj").clear_obj_vector(); 
 dKqt8L7ZvgyB.getVar("aniobj").push_obj_vector(g5sBG1uqkblsrK_XFC7e5o2); 
 dKqt8L7ZvgyB.getVar("aniobj").push_obj_vector(R2X8krKn2CD1); 
 dKqt8L7ZvgyB.setTimeEvent(0, dKqt8L7ZvgyB.getVar().get_vector(1), 1, false); 
 
 dKqt8L7ZvgyB.getVar().clear_timer_vector();
 dKqt8L7ZvgyB.getVar().push_timer_vector();
 local kEIwClvifdl6_vRudTY2Ff9 = dKqt8L7ZvgyB.getVar().get_timer_vector(0);
 kEIwClvifdl6_vRudTY2Ff9.setParameter(dKqt8L7ZvgyB.getVar().get_vector(2), -1);
 kEIwClvifdl6_vRudTY2Ff9.resetInstant(0); 
 
 local heDN_uCkB17J9201rg = dKqt8L7ZvgyB.getXPos(); 
 local MRP4slDbuWo9SNG = dKqt8L7ZvgyB.getYPos(); 
 local oJ8oMWZ9bIm7AnU = dKqt8L7ZvgyB.getZPos(); 
 local mGhfDT2Non = 260; 
 local Ovf0xAmRD3mglok0Z = 120; 
 local DMmRanRx2EbFq0j7rT9 = 80; 
 local tgqVCNChB5aR9pmQC2eH = dKqt8L7ZvgyB.getObjectManager(); 
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < tgqVCNChB5aR9pmQC2eH.getCollisionObjectNumber(); dJtWGZD1GzN++)
 {
 local OOdRrbNiXTLlJrwkpp5Ir = tgqVCNChB5aR9pmQC2eH.getCollisionObject(dJtWGZD1GzN); 
 if(OOdRrbNiXTLlJrwkpp5Ir
 && OOdRrbNiXTLlJrwkpp5Ir.isObjectType(OBJECTTYPE_ACTIVE)
 && dKqt8L7ZvgyB.isEnemy(OOdRrbNiXTLlJrwkpp5Ir)
 && OOdRrbNiXTLlJrwkpp5Ir.isInDamagableState(dKqt8L7ZvgyB))
 {
 local B4dkE1vFVArFuaJr9lAUws = sq_GetCNRDObjectToActiveObject(OOdRrbNiXTLlJrwkpp5Ir); 
 if(B4dkE1vFVArFuaJr9lAUws && !B4dkE1vFVArFuaJr9lAUws.isDead()) 
 {
 
 if(sq_Abs(B4dkE1vFVArFuaJr9lAUws.getXPos() - heDN_uCkB17J9201rg) <= mGhfDT2Non
 && sq_Abs(B4dkE1vFVArFuaJr9lAUws.getYPos() - MRP4slDbuWo9SNG) <= Ovf0xAmRD3mglok0Z
 && sq_Abs(B4dkE1vFVArFuaJr9lAUws.getZPos() - oJ8oMWZ9bIm7AnU) <= DMmRanRx2EbFq0j7rT9)
 {
 if(sq_IsGrabable(dKqt8L7ZvgyB, B4dkE1vFVArFuaJr9lAUws) 
 && sq_IsHoldable(dKqt8L7ZvgyB, B4dkE1vFVArFuaJr9lAUws) 
 && !sq_IsFixture(B4dkE1vFVArFuaJr9lAUws) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(B4dkE1vFVArFuaJr9lAUws, "character/mage/jackfrosticewater/ap_jackfrosticewater.nut")) 
 {
 local y87ZfbCxTm = CNSquirrelAppendage.sq_AppendAppendage(B4dkE1vFVArFuaJr9lAUws, dKqt8L7ZvgyB, 132, true, "character/mage/jackfrosticewater/ap_jackfrosticewater.nut", true); 
 sq_HoldAndDelayDie(B4dkE1vFVArFuaJr9lAUws, dKqt8L7ZvgyB, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, y87ZfbCxTm); 
 sq_MoveToAppendage(B4dkE1vFVArFuaJr9lAUws, dKqt8L7ZvgyB, dKqt8L7ZvgyB, 0, 1, 0, 300, true, y87ZfbCxTm); 
 }
 }
 }
 }
 }
 break;
 case 11: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/loop/jackfrosticewaterloopback_01.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 12: 
 dKqt8L7ZvgyB.removeAllTimeEvent(); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/end/jackfrosticewaterendback_03.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 18); 
 local iXHGSUQMh6Hk8CQXP3V = dKqt8L7ZvgyB.getVar("aniobj"); 
 local UUaHkoJEYxKeD = iXHGSUQMh6Hk8CQXP3V.get_obj_vector_size(); 
 local Xiy54ye7MQB = [
 "character/mage/effect/animation/jackfrosticewater/end/jackfrosticewaterendfloortwister_01.ani", 
 "character/mage/effect/animation/jackfrosticewater/end/jackfrosticewaterendfloor_01.ani", 
 "character/mage/effect/animation/jackfrosticewater/end/jackfrosticewaterendfront_10.ani"]; 
 for(local dJtWGZD1GzN = 0; dJtWGZD1GzN < UUaHkoJEYxKeD; dJtWGZD1GzN++)
 {
 local UBvODlra6dvb70BE = iXHGSUQMh6Hk8CQXP3V.get_obj_vector(dJtWGZD1GzN); 
 if(UBvODlra6dvb70BE) 
 UBvODlra6dvb70BE.setCurrentAnimation(sq_CreateAnimation("", Xiy54ye7MQB[dJtWGZD1GzN])); 
 }
 break;
 }
 break;
 case 2: 
 switch(QME3kfKOCzou)
 {
 case 10: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/start/jackfrosticewaterstartparticle_08.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 11: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/loop/jackfrosticewaterloopparticle_01.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 12: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/jackfrosticewater/end/jackfrosticewaterendparticle_12.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 break;
 }
 break;
 case 135: 
 switch(QME3kfKOCzou)
 {
 case 10: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/moonshadow/moonshadow_start_ground_normal.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_CreateDrawOnlyObject(dKqt8L7ZvgyB, "character/mage/effect/animation/moonshadow/moonshadow_start_falling_normal.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 11: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/moonshadow/moonshadow_loop_ground_normal.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 dKqt8L7ZvgyB.setTimeEvent(0, dKqt8L7ZvgyB.getVar().get_vector(1), 0, false); 
 break;
 case 12: 
 dKqt8L7ZvgyB.stopTimeEvent(0); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/moonshadow/moonshadow_end_ground_normal.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 break;
 case 139: 
 local XFcAI7XS43Vf = dKqt8L7ZvgyB.getVar("subType").get_vector(0); 
 switch(XFcAI7XS43Vf)
 {
 case 1: 
 switch(QME3kfKOCzou)
 {
 case 10: 
 sq_ChangeDrawLayer(dKqt8L7ZvgyB, ENUM_DRAWLAYER_BOTTOM); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/targeting_start.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 11: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/targeting_move.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 12: 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/targeting_end01.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 case 13: 
 sq_setCurrentAxisPos(dKqt8L7ZvgyB, 2, 350); 
 sq_ChangeDrawLayer(dKqt8L7ZvgyB, ENUM_DRAWLAYER_NORMAL); 
 local cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/startmoon_28.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 break;
 case 3: 
 local cTnfR1MZO2GJgngLVmc = null;
 switch(QME3kfKOCzou)
 {
 case 10: 
 cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/absorb/gluttonyhand_01.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 local heDN_uCkB17J9201rg = dKqt8L7ZvgyB.getXPos(); 
 local yL21gHtRP14 = sq_GetDistancePos(heDN_uCkB17J9201rg, dKqt8L7ZvgyB.getDirection(), 150); 
 dKqt8L7ZvgyB.getVar("move").clear_vector(); 
 dKqt8L7ZvgyB.getVar("move").push_vector(heDN_uCkB17J9201rg); 
 dKqt8L7ZvgyB.getVar("move").push_vector(yL21gHtRP14); 
 dKqt8L7ZvgyB.setTimeEvent(1, dKqt8L7ZvgyB.getVar().get_vector(0), 0, false); 
 break;
 case 11: 
 dKqt8L7ZvgyB.stopTimeEvent(1); 
 cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/absorb/gluttonyhandattack_07.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 sq_SetCurrentAttackInfoFromCustomIndex(dKqt8L7ZvgyB, 22); 
 break;
 case 12: 
 cTnfR1MZO2GJgngLVmc = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/summonramos/absorb/gluttonysoulsuction_02.ani"); 
 dKqt8L7ZvgyB.setCurrentAnimation(cTnfR1MZO2GJgngLVmc); 
 break;
 }
 
 if(cTnfR1MZO2GJgngLVmc)
 {
 local dtmCKaqMvIx = 0.8; 
 cTnfR1MZO2GJgngLVmc.setImageRateFromOriginal(dtmCKaqMvIx, dtmCKaqMvIx); 
 cTnfR1MZO2GJgngLVmc.setAutoLayerWorkAnimationAddSizeRate(dtmCKaqMvIx); 
 sq_SetAttackBoundingBoxSizeRate(cTnfR1MZO2GJgngLVmc, dtmCKaqMvIx, dtmCKaqMvIx, dtmCKaqMvIx); 
 }
 break;
 }
 break;
 }
} ;
 
