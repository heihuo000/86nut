
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function setState_po_qq506807329new_atgunner_24376(Gn6dn6Jej7mEAhPRbJl4, jLL6Hle8kwSiT6w0uu, shjp9CrxSePp)
{
 if(!Gn6dn6Jej7mEAhPRbJl4) return;
 
 
 Gn6dn6Jej7mEAhPRbJl4.getVar("isProc").setBool(0, false);
 local wqlItyAYT4MVGa6obEumoK = Gn6dn6Jej7mEAhPRbJl4.getVar("skill").get_vector(0);
 switch(wqlItyAYT4MVGa6obEumoK)
 {
 case 249: 
 local CnPwENkVPLZy = Gn6dn6Jej7mEAhPRbJl4.getVar(); 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local Gmq1n8v48Ie8u4V4 = CnPwENkVPLZy.get_vector(4); 
 local I2Ju1FoGkqfQcDtsu6p = CnPwENkVPLZy.get_vector(5); 
 local b6diVhHfrep = CnPwENkVPLZy.get_vector(6); 
 local WzmwSePFLt7M8cRC = CnPwENkVPLZy.get_vector(7); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atmecabolt/target/lockon02start_dodge01.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(8)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 local Z6JNRL8wkQPC = sq_CreatePooledObject(H0MEMebUmsRNCWyKB32e2W3f, false); 
 sq_SetCurrentDirection(Z6JNRL8wkQPC, Gn6dn6Jej7mEAhPRbJl4.getDirection()); 
 Z6JNRL8wkQPC.setCurrentPos(b6diVhHfrep, WzmwSePFLt7M8cRC, 0); 
 Z6JNRL8wkQPC = sq_SetEnumDrawLayer(Z6JNRL8wkQPC, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(Gn6dn6Jej7mEAhPRbJl4, Z6JNRL8wkQPC, OBJECTTYPE_DRAWONLY, false); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").clear_obj_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").push_obj_vector(Z6JNRL8wkQPC); 
 
 local NW5D_bokXK3c = Gn6dn6Jej7mEAhPRbJl4.getObjectManager(); 
 local ev9vFqbheiIu = NW5D_bokXK3c.getCollisionObjectNumber(); 
 local uyB0rwxtyAOFicrSNu = false;
 for(local bzHE2CFngFSahchh2cXTL = 0; bzHE2CFngFSahchh2cXTL < ev9vFqbheiIu; bzHE2CFngFSahchh2cXTL++)
 {
 local BGDkAvYpTy = NW5D_bokXK3c.getCollisionObject(bzHE2CFngFSahchh2cXTL); 
 if(BGDkAvYpTy
 && BGDkAvYpTy.isObjectType(OBJECTTYPE_ACTIVE)
 && Gn6dn6Jej7mEAhPRbJl4.isEnemy(BGDkAvYpTy)
 && BGDkAvYpTy.isInDamagableState(Gn6dn6Jej7mEAhPRbJl4))
 {
 local VH7aTX5jR5 = sq_GetXPos(BGDkAvYpTy); 
 local QjpiL6wu3RZhv0KW = sq_GetYPos(BGDkAvYpTy); 
 if(sq_Abs(b6diVhHfrep - VH7aTX5jR5) <= Gmq1n8v48Ie8u4V4
 && sq_Abs(WzmwSePFLt7M8cRC - QjpiL6wu3RZhv0KW) <= I2Ju1FoGkqfQcDtsu6p) 
 {
 if(uyB0rwxtyAOFicrSNu == false) uyB0rwxtyAOFicrSNu = true;
 
 CreateAniRate(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Target/LockOn_Dodge03.ani", ENUM_DRAWLAYER_NORMAL, VH7aTX5jR5, QjpiL6wu3RZhv0KW + 1, sq_GetZPos(BGDkAvYpTy) + sq_GetObjectHeight(BGDkAvYpTy) / 2, false, false);
 }
 }
 }
 if(uyB0rwxtyAOFicrSNu)
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_TARGETING"); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local gX58cpxUo5hW = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 gX58cpxUo5hW.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4));
 gX58cpxUo5hW.push_vector(200);
 gX58cpxUo5hW.push_vector(1000);
 gX58cpxUo5hW.push_vector(0);
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Land/Fall_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 break;
 case 12:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Land/Land_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Land/Land02_Dust01.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 4, 80); 
 sq_flashScreen(Gn6dn6Jej7mEAhPRbJl4, 20, 40, 80, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_LANDING"); 
 break;
 case 13:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack01/MissileShot_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 break;
 case 14:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/RifleReady_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_LOAD"); 
 break;
 case 15:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/RifleMove_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 local saeE2hyf6MzzQLSd9rC = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local kNGllfyHvvgFS0ue = Gn6dn6Jej7mEAhPRbJl4.getYPos(); 
 local AllE0DE0sZwNIHQWWiybS9U9 = CnPwENkVPLZy.get_vector(7); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local gX58cpxUo5hW = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 gX58cpxUo5hW.push_vector(saeE2hyf6MzzQLSd9rC);
 gX58cpxUo5hW.push_vector(kNGllfyHvvgFS0ue);
 gX58cpxUo5hW.push_vector(50);
 local yx4LJIHe9P1UtbDo = sq_GetVectorData(shjp9CrxSePp, 0); 
 if(yx4LJIHe9P1UtbDo > 0)
 {
 
 gX58cpxUo5hW.push_vector(sq_GetDistancePos(saeE2hyf6MzzQLSd9rC, Gn6dn6Jej7mEAhPRbJl4.getDirection(), CnPwENkVPLZy.get_vector(4) * 2));
 
 local iw1aRpQgpdH7 = CnPwENkVPLZy.get_vector(5); 
 gX58cpxUo5hW.push_vector(AllE0DE0sZwNIHQWWiybS9U9 + sq_getRandom(iw1aRpQgpdH7 / -1, iw1aRpQgpdH7));
 
 gX58cpxUo5hW.push_vector(50);
 }
 else
 {
 
 gX58cpxUo5hW.push_vector(sq_GetDistancePos(saeE2hyf6MzzQLSd9rC, Gn6dn6Jej7mEAhPRbJl4.getDirection(), CnPwENkVPLZy.get_vector(4) * 2));
 gX58cpxUo5hW.push_vector(AllE0DE0sZwNIHQWWiybS9U9);
 
 gX58cpxUo5hW.push_vector(0);
 }
 CnPwENkVPLZy.set_vector(11, yx4LJIHe9P1UtbDo - 1); 
 local N3sp2e5m2XDzmKQX9B_qWw = sq_GetVectorData(shjp9CrxSePp, 1); 
 if(N3sp2e5m2XDzmKQX9B_qWw == 1)
 {
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 32); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(2, CnPwENkVPLZy.get_vector(10), -1, true); 
 }
 break;
 case 16:
 Gn6dn6Jej7mEAhPRbJl4.setDirection(sq_GetOppositeDirection(Gn6dn6Jej7mEAhPRbJl4.getDirection())); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/RifleTurn_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 break;
 case 17:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/Rifle01_MX.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setSpeedRate(180.0); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local gX58cpxUo5hW = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 gX58cpxUo5hW.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4));
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("R_BOLT_MX_RIFLE"); 
 break;
 case 18:
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 33); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack03/Attack03_MXReady.ani"); 
 local OEy45OjcvKpl = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 local _jDQs90gBA8XaQKDF = (CnPwENkVPLZy.get_vector(8)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(OEy45OjcvKpl, OEy45OjcvKpl); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(OEy45OjcvKpl); 
 sq_SetAttackBoundingBoxSizeRate(H0MEMebUmsRNCWyKB32e2W3f, _jDQs90gBA8XaQKDF, _jDQs90gBA8XaQKDF, _jDQs90gBA8XaQKDF); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 RemoveAllAni(Gn6dn6Jej7mEAhPRbJl4); 
 local Tdh4LtDoYblkm = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Target/LockOn02End_Dodge01.ani"); 
 local GesZwnNC8GIZ7wD8QPPW = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(8)).tofloat() / 100.0; 
 Tdh4LtDoYblkm.setImageRateFromOriginal(GesZwnNC8GIZ7wD8QPPW, GesZwnNC8GIZ7wD8QPPW); 
 Tdh4LtDoYblkm.setAutoLayerWorkAnimationAddSizeRate(GesZwnNC8GIZ7wD8QPPW); 
 local y5CmbG3cxBvqk88tNWui = sq_CreatePooledObject(Tdh4LtDoYblkm, true); 
 sq_SetCurrentDirection(y5CmbG3cxBvqk88tNWui, Gn6dn6Jej7mEAhPRbJl4.getDirection()); 
 y5CmbG3cxBvqk88tNWui.setCurrentPos(Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(6), Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(7), 0); 
 y5CmbG3cxBvqk88tNWui = sq_SetEnumDrawLayer(y5CmbG3cxBvqk88tNWui, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(Gn6dn6Jej7mEAhPRbJl4, y5CmbG3cxBvqk88tNWui, OBJECTTYPE_DRAWONLY, false); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_LIGHT_SABER_STAB"); 
 break;
 case 19:
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 34); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack03/Attack03Finish_MXSet04.ani"); 
 local OEy45OjcvKpl = (CnPwENkVPLZy.get_vector(9)).tofloat() / 100.0 * 1.1; 
 local _jDQs90gBA8XaQKDF = (CnPwENkVPLZy.get_vector(8)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(OEy45OjcvKpl, OEy45OjcvKpl); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(OEy45OjcvKpl); 
 sq_SetAttackBoundingBoxSizeRate(H0MEMebUmsRNCWyKB32e2W3f, _jDQs90gBA8XaQKDF, _jDQs90gBA8XaQKDF, _jDQs90gBA8XaQKDF); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 break;
 case 20:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack04/MX_Bust_New.ani"); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local gX58cpxUo5hW = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 local zeRvbbIjZCP__Kl7FDt = Gn6dn6Jej7mEAhPRbJl4.sq_FindFirstTarget(0, CnPwENkVPLZy.get_vector(4) * 2, CnPwENkVPLZy.get_vector(5), 300); 
 if(zeRvbbIjZCP__Kl7FDt) 
 {
 gX58cpxUo5hW.push_vector(Gn6dn6Jej7mEAhPRbJl4.getXPos());
 gX58cpxUo5hW.push_vector(Gn6dn6Jej7mEAhPRbJl4.getYPos());
 gX58cpxUo5hW.push_vector(sq_GetXPos(zeRvbbIjZCP__Kl7FDt));
 gX58cpxUo5hW.push_vector(sq_GetYPos(zeRvbbIjZCP__Kl7FDt));
 }
 break;
 case 21:
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 35); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack04/Boom_Dodge01.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(8)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 sq_SetAttackBoundingBoxSizeRate(H0MEMebUmsRNCWyKB32e2W3f, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 2, 200); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_EXP"); 
 break;
 }
 break;
 case 2:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local Gmq1n8v48Ie8u4V4 = CnPwENkVPLZy.get_vector(2); 
 local I2Ju1FoGkqfQcDtsu6p = CnPwENkVPLZy.get_vector(3); 
 local lcTPrYuRcoD = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local iYuib__KTka = Gn6dn6Jej7mEAhPRbJl4.getYPos(); 
 local OyfkaAVW16tD = Gn6dn6Jej7mEAhPRbJl4.getDirection(); 
 local six8bWxV4q1hT3M = sq_GetDistancePos(lcTPrYuRcoD, OyfkaAVW16tD, Gmq1n8v48Ie8u4V4 * 2); 
 local iw1aRpQgpdH7 = iYuib__KTka; 
 local yJKyQ4d1IUBG9RpWB9pe = -1; 
 local dJ7S28WVSAii9d = -1; 
 local zeRvbbIjZCP__Kl7FDt = Gn6dn6Jej7mEAhPRbJl4.sq_FindFirstTarget(0, Gmq1n8v48Ie8u4V4 * 2, I2Ju1FoGkqfQcDtsu6p, 45); 
 if(zeRvbbIjZCP__Kl7FDt) 
 {
 yJKyQ4d1IUBG9RpWB9pe = sq_GetGroup(zeRvbbIjZCP__Kl7FDt); 
 dJ7S28WVSAii9d = sq_GetUniqueId(zeRvbbIjZCP__Kl7FDt); 
 }
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack01/Missile_Normal.ani"); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local gX58cpxUo5hW = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 gX58cpxUo5hW.push_vector(lcTPrYuRcoD);
 gX58cpxUo5hW.push_vector(iYuib__KTka);
 gX58cpxUo5hW.push_vector(six8bWxV4q1hT3M);
 gX58cpxUo5hW.push_vector(iw1aRpQgpdH7);
 gX58cpxUo5hW.push_vector(yJKyQ4d1IUBG9RpWB9pe);
 gX58cpxUo5hW.push_vector(dJ7S28WVSAii9d);
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_SHOULDER_MISSILE"); 
 break;
 case 11:
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 36); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(0, CnPwENkVPLZy.get_vector(0), -1, true);
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(1, CnPwENkVPLZy.get_vector(1), 1, false);
 break;
 case 12:
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack04/Boom01_Dodge.ani"); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 37); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("BOLT_MX_SHOULDER_MISSILE_HIT"); 
 break;
 }
 break;
 }
 break;
 case 246: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 local xGnuD9U2Pz8S = null; 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 
 if(Gn6dn6Jej7mEAhPRbJl4.isMyControlObject())
 {
 local OyfkaAVW16tD = sq_GetOppositeDirection(Gn6dn6Jej7mEAhPRbJl4.getDirection()); 
 local zSBwGnXquT6m7RAWndB = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(1); 
 local mva6kqAi5kLMyYtHvh = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2); 
 local sr_f8kFXhjesGnu2c = 150; 
 local S8KkJARHE4 = (170 * (160.0 / zSBwGnXquT6m7RAWndB)).tointeger(); 
 if(S8KkJARHE4 <= 120)S8KkJARHE4 = 120;
 else if(S8KkJARHE4 >= 200)S8KkJARHE4 = 200;
 
 local H8azgV586TnKb9RgARq1zl = [0, 135, 225]; 
 for(local bzHE2CFngFSahchh2cXTL = 0; bzHE2CFngFSahchh2cXTL < 3; bzHE2CFngFSahchh2cXTL++)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(246); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(sr_f8kFXhjesGnu2c); 
 sq_BinaryWriteDword(H8azgV586TnKb9RgARq1zl[bzHE2CFngFSahchh2cXTL]); 
 sq_BinaryWriteDword(S8KkJARHE4); 
 sq_BinaryWriteDword(mva6kqAi5kLMyYtHvh); 
 sq_SendCreatePassiveObjectPacket(Gn6dn6Jej7mEAhPRbJl4, 24376, 0, 0, 0, 0, OyfkaAVW16tD);
 }
 }
 break;
 case 11:
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/g4.ani"); 
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2)).tofloat() / 500.0; 
 sq_SetAttackBoundingBoxSizeRate(xGnuD9U2Pz8S, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 30); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(0, Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(1), -1, false); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(1, Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0), 1, false); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("R_G4_ROLL_LOOP", 9501); 
 break;
 case 12: 
 local Qq6ofAoUDCM1RqEfr = sq_GetVectorData(shjp9CrxSePp, 0); 
 
 Gn6dn6Jej7mEAhPRbJl4.getVar("isHome").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("isHome").push_vector(Qq6ofAoUDCM1RqEfr); 
 local saeE2hyf6MzzQLSd9rC = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local kNGllfyHvvgFS0ue = Gn6dn6Jej7mEAhPRbJl4.getYPos(); 
 if(Qq6ofAoUDCM1RqEfr == 1)
 {
 local N8DL7GQY6SFrslid = sq_GetVectorData(shjp9CrxSePp, 1); 
 local jt6nmYW1vz4BTvuP = Gn6dn6Jej7mEAhPRbJl4.getMyPassiveObjectCount(24376); 
 for(local bzHE2CFngFSahchh2cXTL = 0; bzHE2CFngFSahchh2cXTL < jt6nmYW1vz4BTvuP; bzHE2CFngFSahchh2cXTL++)
 {
 local TlD75vLXgxqJ = Gn6dn6Jej7mEAhPRbJl4.getMyPassiveObject(24376, bzHE2CFngFSahchh2cXTL); 
 if(!TlD75vLXgxqJ)continue;
 if(Gn6dn6Jej7mEAhPRbJl4.isMyControlObject())
 {
 local kcPztbz9J3s6f1OYSAu = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(kcPztbz9J3s6f1OYSAu); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, N8DL7GQY6SFrslid); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, saeE2hyf6MzzQLSd9rC); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, kNGllfyHvvgFS0ue); 
 TlD75vLXgxqJ.addSetStatePacket(14, kcPztbz9J3s6f1OYSAu, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 }
 else if(Qq6ofAoUDCM1RqEfr == 2)
 {
 local zXEqbjAZotAKxaLZqsIHQ_Ah = sq_GetVectorData(shjp9CrxSePp, 1); 
 local qPc9tTACXtkXnVGD = sq_GetVectorData(shjp9CrxSePp, 2); 
 local N8DL7GQY6SFrslid = sq_GetVectorData(shjp9CrxSePp, 3); 
 local jt6nmYW1vz4BTvuP = Gn6dn6Jej7mEAhPRbJl4.getMyPassiveObjectCount(24376); 
 for(local bzHE2CFngFSahchh2cXTL = 0; bzHE2CFngFSahchh2cXTL < jt6nmYW1vz4BTvuP; bzHE2CFngFSahchh2cXTL++)
 {
 local TlD75vLXgxqJ = Gn6dn6Jej7mEAhPRbJl4.getMyPassiveObject(24376, bzHE2CFngFSahchh2cXTL); 
 if(!TlD75vLXgxqJ)continue;
 if(Gn6dn6Jej7mEAhPRbJl4.isMyControlObject())
 {
 local kcPztbz9J3s6f1OYSAu = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(kcPztbz9J3s6f1OYSAu); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, N8DL7GQY6SFrslid); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, saeE2hyf6MzzQLSd9rC); 
 sq_IntVectorPush(kcPztbz9J3s6f1OYSAu, kNGllfyHvvgFS0ue); 
 TlD75vLXgxqJ.addSetStatePacket(14, kcPztbz9J3s6f1OYSAu, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local Xrv29EyE0i2RjzTN = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 Xrv29EyE0i2RjzTN.push_vector(saeE2hyf6MzzQLSd9rC); 
 Xrv29EyE0i2RjzTN.push_vector(kNGllfyHvvgFS0ue); 
 Xrv29EyE0i2RjzTN.push_vector(zXEqbjAZotAKxaLZqsIHQ_Ah); 
 Xrv29EyE0i2RjzTN.push_vector(qPc9tTACXtkXnVGD); 
 }
 break;
 case 13: 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local Xrv29EyE0i2RjzTN = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 Xrv29EyE0i2RjzTN.push_vector(1); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 break;
 case 14: 
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/g4Boom.ani"); 
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2)).tofloat() / 500.0; 
 sq_SetAttackBoundingBoxSizeRate(xGnuD9U2Pz8S, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 31); 
 Gn6dn6Jej7mEAhPRbJl4.stopSound(9501); 
 break;
 }
 break;
 case 2:
 local CnPwENkVPLZy = Gn6dn6Jej7mEAhPRbJl4.getVar(); 
 local xGnuD9U2Pz8S = null; 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/Transform/Tarns_Tarns.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 
 local RuL_TIaNiV = CnPwENkVPLZy.get_vector(4); 
 local H8azgV586TnKb9RgARq1zl = CnPwENkVPLZy.get_vector(1) * 100 % 36000; 
 local R05nniqkLg2s = (H8azgV586TnKb9RgARq1zl.tofloat() / 100.0);
 local p203dRtTmI3 = RuL_TIaNiV * sq_CosTable(R05nniqkLg2s.tointeger()); 
 local IVzk6jiH8gQJ1l6bzB8 = CnPwENkVPLZy.get_vector(5); 
 local rKqsnxCjXcM = RuL_TIaNiV * sq_SinTable(R05nniqkLg2s.tointeger()) * IVzk6jiH8gQJ1l6bzB8 / 100.0; 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").clear_vector(); 
 local Xrv29EyE0i2RjzTN = Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart");
 Xrv29EyE0i2RjzTN.push_vector(p203dRtTmI3.tointeger()); 
 Xrv29EyE0i2RjzTN.push_vector(rKqsnxCjXcM.tointeger()); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 break;
 case 11:
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/Start/Start_Body.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/start/start_dust.ani", 0, -1, 0); 
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/start/start_dust3.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/start/start_dust2.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/start/start_effect.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 1, 300); 
 break;
 case 12:
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/Turn/Body_Spin.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local LzwqsbCfZdl_XepfS5f8Q = sq_GetAniFrameNumber(xGnuD9U2Pz8S, 0); 
 xGnuD9U2Pz8S.setCurrentFrameWithChildLayer(sq_GetUniformVelocity(0, LzwqsbCfZdl_XepfS5f8Q, CnPwENkVPLZy.get_vector(1), 360));
 xGnuD9U2Pz8S.setSpeedRate((CnPwENkVPLZy.get_vector(2)).tofloat()); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").set_vector(2, sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 break;
 case 13:
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/Turn/Body_Spin.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 local LzwqsbCfZdl_XepfS5f8Q = sq_GetAniFrameNumber(xGnuD9U2Pz8S, 0); 
 xGnuD9U2Pz8S.setCurrentFrameWithChildLayer(sq_GetUniformVelocity(0, LzwqsbCfZdl_XepfS5f8Q, CnPwENkVPLZy.get_vector(1), 360));
 xGnuD9U2Pz8S.setSpeedRate((CnPwENkVPLZy.get_vector(2)).tofloat()); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().clear_timer_vector();
 Gn6dn6Jej7mEAhPRbJl4.getVar().push_timer_vector();
 local MbE8aWBdzdieaQ0VBCMg = Gn6dn6Jej7mEAhPRbJl4.getVar().get_timer_vector(0);
 MbE8aWBdzdieaQ0VBCMg.setParameter(xGnuD9U2Pz8S.getDelaySum(false) / 12, -1); 
 MbE8aWBdzdieaQ0VBCMg.resetInstant(0); 
 MbE8aWBdzdieaQ0VBCMg.setEventOnStart(true); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 break;
 case 14:
 local N8DL7GQY6SFrslid = sq_GetVectorData(shjp9CrxSePp, 0); 
 local OyfkaAVW16tD = Gn6dn6Jej7mEAhPRbJl4.getDirection(); 
 local gaRbPrnIot = -1; 
 if(OyfkaAVW16tD == ENUM_DIRECTION_RIGHT)
 {
 switch(N8DL7GQY6SFrslid)
 {
 case ENUM_DIRECTION_RIGHT: case ENUM_DIRECTION_UP: 
 gaRbPrnIot = 360 / 4 * 3; 
 break;
 case ENUM_DIRECTION_LEFT: case ENUM_DIRECTION_DOWN: 
 gaRbPrnIot = 360 / 4; 
 break;
 }
 }
 else if(OyfkaAVW16tD == ENUM_DIRECTION_LEFT)
 {
 switch(N8DL7GQY6SFrslid)
 {
 case ENUM_DIRECTION_RIGHT: case ENUM_DIRECTION_DOWN: 
 gaRbPrnIot = 360 / 4; 
 break;
 case ENUM_DIRECTION_LEFT: case ENUM_DIRECTION_UP: 
 gaRbPrnIot = 360 / 4 * 3; 
 break;
 }
 }
 local GD1g16cysv = Gn6dn6Jej7mEAhPRbJl4.getCurrentAnimation();
 local LLRTEfZI7TZbioop = sq_GetCurrentTime(GD1g16cysv); 
 local QvzB86rwSTDgxfrcHxSZ = GD1g16cysv.getDelaySum(false); 
 local H8azgV586TnKb9RgARq1zl = 36000 * LLRTEfZI7TZbioop / QvzB86rwSTDgxfrcHxSZ % 36000; 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").clear_vector(); 
 local LAJ3bIDjlKA6oRiU1zHnh = Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart"); 
 local saeE2hyf6MzzQLSd9rC = sq_GetVectorData(shjp9CrxSePp, 1); 
 local kNGllfyHvvgFS0ue = sq_GetVectorData(shjp9CrxSePp, 2); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(saeE2hyf6MzzQLSd9rC); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(kNGllfyHvvgFS0ue); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(gaRbPrnIot); 
 
 if(H8azgV586TnKb9RgARq1zl > gaRbPrnIot * 100)
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(1); 
 else 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(0); 
 break;
 case 15:
 local eIMToQw2mBB7 = Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").get_vector(2); 
 local GD1g16cysv = Gn6dn6Jej7mEAhPRbJl4.getCurrentAnimation();
 GD1g16cysv.SetPause(true); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart").clear_vector(); 
 local LAJ3bIDjlKA6oRiU1zHnh = Gn6dn6Jej7mEAhPRbJl4.getVar("moveStart"); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(Gn6dn6Jej7mEAhPRbJl4.getXPos()); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(Gn6dn6Jej7mEAhPRbJl4.getYPos()); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(sq_GetVectorData(shjp9CrxSePp, 0)); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(sq_GetVectorData(shjp9CrxSePp, 1)); 
 LAJ3bIDjlKA6oRiU1zHnh.push_vector(sq_GetVectorData(shjp9CrxSePp, 2)); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("G4_ROLL_START_SIGNAL"); 
 break;
 case 16:
 local eIMToQw2mBB7 = sq_GetVectorData(shjp9CrxSePp, 0); 
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/Turn/Body_Spin.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 local LzwqsbCfZdl_XepfS5f8Q = sq_GetAniFrameNumber(xGnuD9U2Pz8S, 0); 
 xGnuD9U2Pz8S.setCurrentFrameWithChildLayer(sq_GetUniformVelocity(0, LzwqsbCfZdl_XepfS5f8Q, eIMToQw2mBB7, 360));
 xGnuD9U2Pz8S.setSpeedRate((CnPwENkVPLZy.get_vector(2)).tofloat()); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentDirection(Gn6dn6Jej7mEAhPRbJl4, sq_GetOppositeDirection(Gn6dn6Jej7mEAhPRbJl4.getDirection())); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("G4_ROLL_MOVE"); 
 break;
 case 17:
 local RuL_TIaNiV = CnPwENkVPLZy.get_vector(4); 
 local OO0TPeCEngp = 0;
 switch(CnPwENkVPLZy.get_vector(1))
 {
 case 135:OO0TPeCEngp = 180; break;
 case 225:OO0TPeCEngp = 180 + 90; break;
 }
 local R05nniqkLg2s = (OO0TPeCEngp * 100 % 36000).tofloat() / 100.0; 
 local lcTPrYuRcoD = sq_GetDistancePos
 (
 sq_GetVectorData(shjp9CrxSePp, 0),
 Gn6dn6Jej7mEAhPRbJl4.getDirection(),
 (
 RuL_TIaNiV * sq_CosTable(R05nniqkLg2s.tointeger())
 ).tointeger()
 ); 
 local IVzk6jiH8gQJ1l6bzB8 = CnPwENkVPLZy.get_vector(5); 
 local iYuib__KTka =
 sq_GetVectorData(shjp9CrxSePp, 1) +
 (RuL_TIaNiV * sq_SinTable(R05nniqkLg2s.tointeger())
 * IVzk6jiH8gQJ1l6bzB8
 / 100.0).tointeger(); 
 xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/G4/End/End_Fire.ani"); 
 local sr_f8kFXhjesGnu2c = (CnPwENkVPLZy.get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_setCurrentAxisPos(Gn6dn6Jej7mEAhPRbJl4, 0, lcTPrYuRcoD); 
 sq_setCurrentAxisPos(Gn6dn6Jej7mEAhPRbJl4, 1, iYuib__KTka); 
 local NzYQHKUHsf = Gn6dn6Jej7mEAhPRbJl4.sq_var.GetparticleCreaterMap("g4_exp_left", "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/g4_exp_left.ptl", Gn6dn6Jej7mEAhPRbJl4); 
 NzYQHKUHsf.Restart(0); 
 NzYQHKUHsf.SetPos(lcTPrYuRcoD, iYuib__KTka, 0); 
 sq_AddParticleObject(Gn6dn6Jej7mEAhPRbJl4, NzYQHKUHsf); 
 local HMUhVycv65 = Gn6dn6Jej7mEAhPRbJl4.sq_var.GetparticleCreaterMap("g4_exp_right", "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/g4_exp_right.ptl", Gn6dn6Jej7mEAhPRbJl4); 
 HMUhVycv65.Restart(0); 
 HMUhVycv65.SetPos(lcTPrYuRcoD, iYuib__KTka, 0); 
 sq_AddParticleObject(Gn6dn6Jej7mEAhPRbJl4, HMUhVycv65); 
 break;
 }
 break;
 }
 break;
 case 247: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1: 
 RemoveAllAni(Gn6dn6Jej7mEAhPRbJl4); 
 local sMVHCxZ1yiwK = sq_GetVectorData(shjp9CrxSePp, 0); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("subStateType").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("subStateType").push_vector(sMVHCxZ1yiwK);
 local xGnuD9U2Pz8S = null; 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10: 
 switch(sMVHCxZ1yiwK)
 {
 case 1:
 local X5ibwix8KmzyPU = Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(); 
 if(X5ibwix8KmzyPU)
 Gn6dn6Jej7mEAhPRbJl4.setCurrentPos(sq_GetDistancePos(sq_GetXPos(X5ibwix8KmzyPU), sq_GetDirection(X5ibwix8KmzyPU), -100), sq_GetYPos(X5ibwix8KmzyPU) - 1, sq_GetZPos(X5ibwix8KmzyPU) + 150); 
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(true, sq_ToRadian(-20.0)); 
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("CoronaStart_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaStart_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 2:
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(true, sq_ToRadian(-20.0)); 
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("Corona_00", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/Corona_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 if(sq_GetVectorData(shjp9CrxSePp, 1) == 1) 
 SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(Gn6dn6Jej7mEAhPRbJl4, Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(), 1);
 break;
 case 3:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("CoronaCharging_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaCharging_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local Ru2PHy8q7Y9bNU5DVMX_xP = Gn6dn6Jej7mEAhPRbJl4.getZPos(); 
 local R05nniqkLg2s = sq_ToRadian(sq_ToDegree(sq_Atan2(Ru2PHy8q7Y9bNU5DVMX_xP.tofloat(), 340.0)) / -1); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().setFloat(0, R05nniqkLg2s); 
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(true, R05nniqkLg2s); 
 break;
 case 4:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("CoronaAttack_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaAttack_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 if(Gn6dn6Jej7mEAhPRbJl4.isMyControlObject())
 {
 local FV9Z1SvzDD = sq_GetCNRDObjectToSQRCharacter(Gn6dn6Jej7mEAhPRbJl4.getTopCharacter()); 
 if(FV9Z1SvzDD)
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(247); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(FV9Z1SvzDD.sq_GetBonusRateWithPassive(247, 247, 2, 1.0)); 
 sq_BinaryWriteDword(FV9Z1SvzDD.sq_GetLevelData(247, 3, sq_GetSkillLevel(FV9Z1SvzDD, 247))); 
 sq_BinaryWriteFloat(Gn6dn6Jej7mEAhPRbJl4.getVar().getFloat(0));
 sq_SendCreatePassiveObjectPacket(Gn6dn6Jej7mEAhPRbJl4, 24376, 0, 0, -1, 0, Gn6dn6Jej7mEAhPRbJl4.getDirection());
 }
 }
 break;
 case 5:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("CoronaReturn_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaReturn_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local gJIsJJA3Sb3PxQ6BKh = sq_GetVectorData(shjp9CrxSePp, 1); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").push_vector(gJIsJJA3Sb3PxQ6BKh);
 break;
 }
 break;
 case 11: 
 switch(sMVHCxZ1yiwK)
 {
 case 1:
 local X5ibwix8KmzyPU = Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(); 
 if(X5ibwix8KmzyPU)
 Gn6dn6Jej7mEAhPRbJl4.setCurrentPos(sq_GetDistancePos(sq_GetXPos(X5ibwix8KmzyPU), sq_GetDirection(X5ibwix8KmzyPU), -100), sq_GetYPos(X5ibwix8KmzyPU) - 1, sq_GetZPos(X5ibwix8KmzyPU) + 75); 
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(false, 0.0); 
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RollingThunderStart_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/RollingThunder/RollingThunderStart_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 2:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RollingThunder_00", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/RollingThunder/RollingThunder_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 if(sq_GetVectorData(shjp9CrxSePp, 1) == 1) 
 SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(Gn6dn6Jej7mEAhPRbJl4, Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(), 1);
 break;
 case 3:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RollingThunderAttack_05", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/RollingThunder/RollingThunderAttack_05.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local vOzbPvIeYpCGU2reeDMlS = sq_GetVectorData(shjp9CrxSePp, 1); 
 local gk8ruA4hDX24M = sq_GetCustomAttackInfo(Gn6dn6Jej7mEAhPRbJl4, 27); 
 sq_SetCurrentAttackBonusRate(gk8ruA4hDX24M, vOzbPvIeYpCGU2reeDMlS); 
 sq_SetCurrentAttackInfo(Gn6dn6Jej7mEAhPRbJl4, gk8ruA4hDX24M); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("count").clear_vector();
 Gn6dn6Jej7mEAhPRbJl4.getVar("count").push_vector(sq_GetVectorData(shjp9CrxSePp, 2)); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("count").push_vector(vOzbPvIeYpCGU2reeDMlS); 
 break;
 case 4:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RollingThunderReturn_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/RollingThunder/RollingThunderReturn_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local gJIsJJA3Sb3PxQ6BKh = sq_GetVectorData(shjp9CrxSePp, 1); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").push_vector(gJIsJJA3Sb3PxQ6BKh);
 break;
 }
 break;
 case 12: 
 switch(sMVHCxZ1yiwK)
 {
 case 1:
 local X5ibwix8KmzyPU = Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(); 
 if(X5ibwix8KmzyPU)
 Gn6dn6Jej7mEAhPRbJl4.setCurrentPos(sq_GetXPos(X5ibwix8KmzyPU), sq_GetYPos(X5ibwix8KmzyPU) - 1, sq_GetZPos(X5ibwix8KmzyPU) + 235); 
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(true, sq_ToRadian(-90.0)); 
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RapterStart_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterStart_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 2:
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(true, sq_ToRadian(-90.0)); 
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("Rapter_00", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/Rapter_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 if(sq_GetVectorData(shjp9CrxSePp, 1) == 1) 
 SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(Gn6dn6Jej7mEAhPRbJl4, Gn6dn6Jej7mEAhPRbJl4.getTopCharacter(), 1);
 break;
 case 3:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RapterCharging_01", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterCharging_01.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_vector(); 
 local Xrv29EyE0i2RjzTN = Gn6dn6Jej7mEAhPRbJl4.getVar("move"); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetVectorData(shjp9CrxSePp, 1)); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetVectorData(shjp9CrxSePp, 2)); 
 Xrv29EyE0i2RjzTN.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 Xrv29EyE0i2RjzTN.push_vector(Gn6dn6Jej7mEAhPRbJl4.getXPos()); 
 Xrv29EyE0i2RjzTN.push_vector(Gn6dn6Jej7mEAhPRbJl4.getYPos()); 
 Xrv29EyE0i2RjzTN.push_vector(Gn6dn6Jej7mEAhPRbJl4.getZPos()); 
 break;
 case 4:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RapterAttack_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterAttack_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local FV9Z1SvzDD = sq_GetCNRDObjectToSQRCharacter(Gn6dn6Jej7mEAhPRbJl4.getTopCharacter()); 
 if(FV9Z1SvzDD)
 {
 local Zh_gwwsvSGdenyN2MOv = sq_GetSkillLevel(FV9Z1SvzDD, 247); 
 local vOzbPvIeYpCGU2reeDMlS = FV9Z1SvzDD.sq_GetBonusRateWithPassive(247, 247, 6, 1.0); 
 local q505CyPCC09ACDabs5yke5pO = FV9Z1SvzDD.sq_GetLevelData(247, 7, Zh_gwwsvSGdenyN2MOv); 
 local zSBwGnXquT6m7RAWndB = FV9Z1SvzDD.sq_GetLevelData(247, 8, Zh_gwwsvSGdenyN2MOv); 
 local gk8ruA4hDX24M = sq_GetCustomAttackInfo(Gn6dn6Jej7mEAhPRbJl4, 28); 
 sq_SetCurrentAttackBonusRate(gk8ruA4hDX24M, vOzbPvIeYpCGU2reeDMlS); 
 sq_SetCurrentAttackInfo(Gn6dn6Jej7mEAhPRbJl4, gk8ruA4hDX24M); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").clear_timer_vector();
 Gn6dn6Jej7mEAhPRbJl4.getVar("move").push_timer_vector();
 local MbE8aWBdzdieaQ0VBCMg = Gn6dn6Jej7mEAhPRbJl4.getVar("move").get_timer_vector(0);
 MbE8aWBdzdieaQ0VBCMg.setParameter(zSBwGnXquT6m7RAWndB, q505CyPCC09ACDabs5yke5pO); 
 MbE8aWBdzdieaQ0VBCMg.resetInstant(0); 
 MbE8aWBdzdieaQ0VBCMg.setEventOnStart(true); 
 local lcTPrYuRcoD = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local iYuib__KTka = Gn6dn6Jej7mEAhPRbJl4.getYPos(); 
 local Ru2PHy8q7Y9bNU5DVMX_xP = Gn6dn6Jej7mEAhPRbJl4.getZPos(); 
 local OyfkaAVW16tD = Gn6dn6Jej7mEAhPRbJl4.getDirection(); 
 
 local bqck2pzxxSzDlX_wynD9o9hM = sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterLaserLoop_00.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local MSbaaYK69DTbqzgoitX = sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterLaserEnd_00.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local sIsxeG_ubToS = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atg5falcon/rapter/rapterlaserloop_04.ani"); 
 sIsxeG_ubToS.setImageRateFromOriginal(1.0, 0.86); 
 (bqck2pzxxSzDlX_wynD9o9hM.getCurrentAnimation()).addLayerAnimation(1, sIsxeG_ubToS, true); 
 
 sq_setCurrentAxisPos(MSbaaYK69DTbqzgoitX, 2, Ru2PHy8q7Y9bNU5DVMX_xP - 190); 
 
 sq_moveWithParent(Gn6dn6Jej7mEAhPRbJl4, bqck2pzxxSzDlX_wynD9o9hM); sq_moveWithParent(Gn6dn6Jej7mEAhPRbJl4, MSbaaYK69DTbqzgoitX);
 RemoveAllAni(Gn6dn6Jej7mEAhPRbJl4); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").push_obj_vector(bqck2pzxxSzDlX_wynD9o9hM);
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").push_obj_vector(MSbaaYK69DTbqzgoitX);
 }
 break;
 case 5:
 xGnuD9U2Pz8S = Gn6dn6Jej7mEAhPRbJl4.getVar().GetAnimationMap("RapterReturn_02", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Rapter/RapterReturn_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local gJIsJJA3Sb3PxQ6BKh = sq_GetVectorData(shjp9CrxSePp, 1); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endState").push_vector(gJIsJJA3Sb3PxQ6BKh);
 break;
 }
 break;
 }
 sq_Rewind(xGnuD9U2Pz8S); 
 break;
 case 2:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaBullet_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.setCustomRotate(false, 0.0); 
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATG5Falcon/Corona/CoronaAttackExplosion_04.ani");
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 sq_SetAttackBoundingBoxSizeRate(H0MEMebUmsRNCWyKB32e2W3f, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 29); 
 
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atg5falcon/corona/coronaattackexplosionground_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 }
 break;
 }
 break;
 case 248: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atmagneticfield/shellloop_05.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/ShellRise_05.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local Z6JNRL8wkQPC = sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/shellstopdust.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(Z6JNRL8wkQPC, 2, 0); 
 break;
 case 12:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/FieldStartMiddle_01.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldstarttop_03.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldstartbottom_00.ani", 0, -1, 0); 
 local Z6JNRL8wkQPC = sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldshockwave_02.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(Z6JNRL8wkQPC, 2, 0); 
 break;
 case 13:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/FieldLoopMiddle_04.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 26); 
 local q505CyPCC09ACDabs5yke5pO = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0); 
 local VFt18wCfnL8I = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(1); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(0, VFt18wCfnL8I / (q505CyPCC09ACDabs5yke5pO + 1), q505CyPCC09ACDabs5yke5pO - 1, false); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(1, VFt18wCfnL8I, 1, false); 
 local wLZsDYNqOOu3zA = sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldlooptop_65.ani", 0, 0, 0); 
 local HGyk6oqCufZt = sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldloopbottom_14.ani", 0, -1, 0); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").push_obj_vector(wLZsDYNqOOu3zA); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("aniobj").push_obj_vector(HGyk6oqCufZt); 
 break;
 case 14:
 RemoveAllAni(Gn6dn6Jej7mEAhPRbJl4); 
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/FieldEndMiddle_05.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldendtop_02.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "character/gunner/effect/animation/atmagneticfield/fieldendbottom_00.ani", 0, -1, 0); 
 break;
 case 15:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/ShellFallLoop_03.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().push_vector(Gn6dn6Jej7mEAhPRbJl4.getZPos()); 
 break;
 case 16:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMagneticField/ShellFallEnd_04.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 }
 break;
 }
 break;
 case 245: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "character/gunner/effect/animation/aths-12/hs-12move_01.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "character/gunner/effect/animation/aths-12/hs-12burst01_05.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 12:
 local H0MEMebUmsRNCWyKB32e2W3f = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/aths-12/hs-12burst02_00.ani");
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0)).tofloat() / 100.0; 
 H0MEMebUmsRNCWyKB32e2W3f.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 H0MEMebUmsRNCWyKB32e2W3f.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 sq_SetAttackBoundingBoxSizeRate(H0MEMebUmsRNCWyKB32e2W3f, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(H0MEMebUmsRNCWyKB32e2W3f); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 25); 
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 8, 200); 
 break;
 }
 break;
 }
 break;
 case 232: 
 if(jLL6Hle8kwSiT6w0uu == 10)
 {
 if(Gn6dn6Jej7mEAhPRbJl4.isExistTimeEvent(0)) Gn6dn6Jej7mEAhPRbJl4.stopTimeEvent(0); 
 sq_moveWithParent(Gn6dn6Jej7mEAhPRbJl4, Gn6dn6Jej7mEAhPRbJl4); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/plasmaboost/plasmaboostlaserend_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 }
 break;
 case 233: 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atfsc7/fscbullet_00.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 Gn6dn6Jej7mEAhPRbJl4.sq_SetMoveParticle("particle/atfsc7.ptl", 0.0, 0.0); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.sq_RemoveMoveParticle(); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentPos(sq_GetVectorData(shjp9CrxSePp, 0), sq_GetVectorData(shjp9CrxSePp, 1) + 1, sq_GetVectorData(shjp9CrxSePp, 2));
 sq_CreateDrawOnlyObject(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atfsc7/fsca_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atfsc7/fscfinish_25.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 2); 
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 5, 100); 
 break;
 }
 break;
 case 235: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 7:
 if(jLL6Hle8kwSiT6w0uu == 10)
 {
 sq_SetCustomRotate(Gn6dn6Jej7mEAhPRbJl4, 0.0); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/orboom02_15.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 8); 
 sq_SetMyShake(Gn6dn6Jej7mEAhPRbJl4, 10, 500);
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("OPERATION_RAZE_EXP"); 
 }
 break;
 }
 break;
 case 240: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.sq_RemoveMoveParticle(); 
 local oULO9Iw5b0UXfsw8ZLm5hllA = sq_GetVectorData(shjp9CrxSePp, 0); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");
 xGnuD9U2Pz8S.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/grenadegravity_grenade_dodge.ani"), true); 
 xGnuD9U2Pz8S.setFrameDelay(oULO9Iw5b0UXfsw8ZLm5hllA, 9999, true); 
 sq_Rewind(xGnuD9U2Pz8S); 
 xGnuD9U2Pz8S.setCurrentFrameWithChildLayer(oULO9Iw5b0UXfsw8ZLm5hllA); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 12:
 sq_ChangeDrawLayer(Gn6dn6Jej7mEAhPRbJl4, ENUM_DRAWLAYER_BOTTOM); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/01_start/grenadegravity_start_background.ani");
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 
 local GD1g16cysv = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/01_start/grenadegravity_start_front.ani"); 
 GD1g16cysv.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/01_start/grenadegravity_start_background01.ani"), true); 
 local Z6JNRL8wkQPC = sq_CreatePooledObject(GD1g16cysv, true); 
 sq_SetCurrentDirection(Z6JNRL8wkQPC, Gn6dn6Jej7mEAhPRbJl4.getDirection()); 
 Z6JNRL8wkQPC.setCurrentPos(Gn6dn6Jej7mEAhPRbJl4.getXPos(), Gn6dn6Jej7mEAhPRbJl4.getYPos(), Gn6dn6Jej7mEAhPRbJl4.getZPos()); 
 Z6JNRL8wkQPC = sq_SetEnumDrawLayer(Z6JNRL8wkQPC, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(Gn6dn6Jej7mEAhPRbJl4, Z6JNRL8wkQPC, OBJECTTYPE_DRAWONLY, false); 
 break;
 case 13:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/02_loop/grenadegravity_loop_background.ani");
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 sq_SetAttackBoundingBoxSizeRate(xGnuD9U2Pz8S, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 18); 
 local YHA1RitzG3vEb__GaKq = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0); 
 local zSBwGnXquT6m7RAWndB = Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(1); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(0, YHA1RitzG3vEb__GaKq, 1, false); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(1, zSBwGnXquT6m7RAWndB, -1, false); 
 break;
 case 14:
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 sq_ChangeDrawLayer(Gn6dn6Jej7mEAhPRbJl4, ENUM_DRAWLAYER_NORMAL); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/03_finish/grenadegravity_finish_front.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 19); 
 
 local GD1g16cysv = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/grenadegravity/03_finish/grenadegravity_finish_background.ani"); 
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(2)).tofloat() / 100.0; 
 GD1g16cysv.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 GD1g16cysv.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 local Z6JNRL8wkQPC = sq_CreatePooledObject(GD1g16cysv, true); 
 sq_SetCurrentDirection(Z6JNRL8wkQPC, Gn6dn6Jej7mEAhPRbJl4.getDirection()); 
 Z6JNRL8wkQPC.setCurrentPos(Gn6dn6Jej7mEAhPRbJl4.getXPos(), Gn6dn6Jej7mEAhPRbJl4.getYPos(), Gn6dn6Jej7mEAhPRbJl4.getZPos()); 
 Z6JNRL8wkQPC = sq_SetEnumDrawLayer(Z6JNRL8wkQPC, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(Gn6dn6Jej7mEAhPRbJl4, Z6JNRL8wkQPC, OBJECTTYPE_DRAWONLY, false); 
 break;
 }
 break;
 }
 break;
 case 243: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atthermobaricgranade/granadethermobaric_granade.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 21); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.sq_RemoveMoveParticle(); 
 
 
 local J9zAZ6S5Ry7 = sq_GetVectorData(shjp9CrxSePp, 0); 
 local O7ASwiLFjSFw3xn = "thermobaricgranade_boomb.ani"; 
 switch(J9zAZ6S5Ry7)
 {
 case 2: O7ASwiLFjSFw3xn = "thermobaricgranade2_boomb.ani"; break;
 }
 local xGnuD9U2Pz8S = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atthermobaricgranade/", O7ASwiLFjSFw3xn);
 local sr_f8kFXhjesGnu2c = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0)).tofloat() / 100.0; 
 xGnuD9U2Pz8S.setImageRateFromOriginal(sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 xGnuD9U2Pz8S.setAutoLayerWorkAnimationAddSizeRate(sr_f8kFXhjesGnu2c); 
 sq_SetAttackBoundingBoxSizeRate(xGnuD9U2Pz8S, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c, sr_f8kFXhjesGnu2c); 
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 sq_SetCurrentAttackInfoFromCustomIndex(Gn6dn6Jej7mEAhPRbJl4, 22); 
 Gn6dn6Jej7mEAhPRbJl4.sq_PlaySound("THERMOBARIC"); 
 break;
 case 12:
 Gn6dn6Jej7mEAhPRbJl4.sq_RemoveMoveParticle(); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atthermobaricgranade/granadethermobaric_granaderolling.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 Gn6dn6Jej7mEAhPRbJl4.sq_SetMoveParticle("particle/g96thermobaricgranade.ptl", 0.0, 0.0); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endTime").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("endTime").push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 break;
 }
 break;
 }
 break;
 case 244: 
 local OcF0bvmslgsW6erQ = Gn6dn6Jej7mEAhPRbJl4.getVar("subType").get_vector(0); 
 switch(OcF0bvmslgsW6erQ)
 {
 case 1:
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atdday/flare/handgrenadea_normal.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 Gn6dn6Jej7mEAhPRbJl4.sq_RemoveMoveParticle(); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atdday/flare/ddayready_hg_normal.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 if(Gn6dn6Jej7mEAhPRbJl4.isMyControlObject())
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0)); 
 sq_BinaryWriteDword(Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(1)); 
 sq_SendCreatePassiveObjectPacket(Gn6dn6Jej7mEAhPRbJl4, 24376, 0, 0, 0, 0, Gn6dn6Jej7mEAhPRbJl4.getDirection());
 }
 
 Gn6dn6Jej7mEAhPRbJl4.getVar("pos").clear_vector(); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("pos").push_vector(160); 
 Gn6dn6Jej7mEAhPRbJl4.getVar("pos").push_vector(90); 
 local xc4NGoJrkX_DEvKkw5bC = 4500; 
 local oZGhfMMTIwmMssNlcsww4IqW = 18; 
 local T97DaeeaItRinkpLQAOkFiq = 10; 
 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(1, xc4NGoJrkX_DEvKkw5bC / oZGhfMMTIwmMssNlcsww4IqW, oZGhfMMTIwmMssNlcsww4IqW, true);
 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(2, xc4NGoJrkX_DEvKkw5bC / T97DaeeaItRinkpLQAOkFiq, T97DaeeaItRinkpLQAOkFiq, true);
 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(3, 800, 1, false);
 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(4, 2000, 1, false);
 break;
 }
 break;
 case 4: 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Thrower01On_01.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 break;
 case 11:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Thrower02MoveShot_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local zO48T3bGPKxkkby1lcHW = Gn6dn6Jej7mEAhPRbJl4.getDirection(); 
 local Dnv5Zsk6Vid = sq_GetDistancePos(0, zO48T3bGPKxkkby1lcHW, 60); 
 local JQS6NYBPMCWd7a = sq_getRandom(100, 400); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/ddaygunbullet_1.ptl", Gn6dn6Jej7mEAhPRbJl4, Dnv5Zsk6Vid, 0, 80, true, JQS6NYBPMCWd7a, 0, 50); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/ddaygunbullet_2.ptl", Gn6dn6Jej7mEAhPRbJl4, Dnv5Zsk6Vid, 0, 80, true, JQS6NYBPMCWd7a * 2, 0, 50); 
 local lcTPrYuRcoD = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local SGQ79RBcVxJ = sq_GetDistancePos(lcTPrYuRcoD, zO48T3bGPKxkkby1lcHW, 350); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().clear_vector(); 
 local CnPwENkVPLZy = Gn6dn6Jej7mEAhPRbJl4.getVar(); 
 CnPwENkVPLZy.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 CnPwENkVPLZy.push_vector(lcTPrYuRcoD); 
 CnPwENkVPLZy.push_vector(SGQ79RBcVxJ); 
 CnPwENkVPLZy.push_vector(Gn6dn6Jej7mEAhPRbJl4.getYPos()); 
 CnPwENkVPLZy.push_vector(15); 
 CnPwENkVPLZy.push_vector(sq_getRandom(-1, 1)); 
 
 if(!Gn6dn6Jej7mEAhPRbJl4.getVar("Play").getBool(0)) break;
 Gn6dn6Jej7mEAhPRbJl4.getVar().clear_timer_vector();
 Gn6dn6Jej7mEAhPRbJl4.getVar().push_timer_vector();
 local MbE8aWBdzdieaQ0VBCMg = Gn6dn6Jej7mEAhPRbJl4.getVar().get_timer_vector(0);
 MbE8aWBdzdieaQ0VBCMg.setParameter(300, -1); 
 MbE8aWBdzdieaQ0VBCMg.resetInstant(0); 
 MbE8aWBdzdieaQ0VBCMg.setEventOnStart(true); 
 break;
 case 12:
 sq_RemoveParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/ddaygunbullet_1.ptl", Gn6dn6Jej7mEAhPRbJl4); 
 sq_RemoveParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/ddaygunbullet_2.ptl", Gn6dn6Jej7mEAhPRbJl4); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Thrower04DashLoop_02.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local lcTPrYuRcoD = Gn6dn6Jej7mEAhPRbJl4.getXPos(); 
 local SGQ79RBcVxJ = sq_GetDistancePos(lcTPrYuRcoD, Gn6dn6Jej7mEAhPRbJl4.getDirection(), 300); 
 Gn6dn6Jej7mEAhPRbJl4.getVar().clear_vector(); 
 local CnPwENkVPLZy = Gn6dn6Jej7mEAhPRbJl4.getVar(); 
 CnPwENkVPLZy.push_vector(sq_GetObjectTime(Gn6dn6Jej7mEAhPRbJl4)); 
 CnPwENkVPLZy.push_vector(lcTPrYuRcoD); 
 CnPwENkVPLZy.push_vector(SGQ79RBcVxJ); 
 break;
 case 13:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Thrower05Off_01.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local Z6JNRL8wkQPC = sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/DDayPortal_Eff_A.ani", 30, 1, 0); 
 sq_SetCurrentDirection(Z6JNRL8wkQPC, sq_GetOppositeDirection(Gn6dn6Jej7mEAhPRbJl4.getDirection())); 
 local KWgSnP0qal6Ca = sq_GetDistancePos(0, Gn6dn6Jej7mEAhPRbJl4.getDirection(), 50); 
 sq_SetVelocity(Gn6dn6Jej7mEAhPRbJl4, 0, KWgSnP0qal6Ca.tofloat());
 break;
 }
 break;
 case 5: 
 local O7ASwiLFjSFw3xn = (Gn6dn6Jej7mEAhPRbJl4.getVar().get_vector(0) == 1) ? "A" : "B"; 
 switch(jLL6Hle8kwSiT6w0uu)
 {
 case 10:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Dash" + O7ASwiLFjSFw3xn + "01On_Add_Body_" + O7ASwiLFjSFw3xn + "_Dod.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local KWgSnP0qal6Ca = sq_GetDistancePos(0, Gn6dn6Jej7mEAhPRbJl4.getDirection(), 280); 
 sq_SetVelocity(Gn6dn6Jej7mEAhPRbJl4, 0, KWgSnP0qal6Ca.tofloat());
 break;
 case 11:
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Dash" + O7ASwiLFjSFw3xn + "02Loop_Add_Body_" + O7ASwiLFjSFw3xn + "_Nor.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 
 local JQS6NYBPMCWd7a = sq_getRandom(400, 900); 
 Gn6dn6Jej7mEAhPRbJl4.setTimeEvent(5, JQS6NYBPMCWd7a, 5, true);
 break;
 case 12:
 Gn6dn6Jej7mEAhPRbJl4.removeAllTimeEvent(); 
 local xGnuD9U2Pz8S = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/Dash" + O7ASwiLFjSFw3xn + "03Off_Add_Body_" + O7ASwiLFjSFw3xn + "_Dod.ani");
 Gn6dn6Jej7mEAhPRbJl4.setCurrentAnimation(xGnuD9U2Pz8S); 
 local Z6JNRL8wkQPC = sq_AddDrawOnlyAniFromParent(Gn6dn6Jej7mEAhPRbJl4, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/DDayPortal_Eff_A.ani", 30, 1, 0); 
 sq_SetCurrentDirection(Z6JNRL8wkQPC, sq_GetOppositeDirection(Gn6dn6Jej7mEAhPRbJl4.getDirection())); 
 local KWgSnP0qal6Ca = sq_GetDistancePos(0, Gn6dn6Jej7mEAhPRbJl4.getDirection(), 50); 
 sq_SetVelocity(Gn6dn6Jej7mEAhPRbJl4, 0, KWgSnP0qal6Ca.tofloat());
 break;
 }
 break;
 }
 break;
 default:
 break;
 }
 
 Gn6dn6Jej7mEAhPRbJl4.getVar("isProc").setBool(0, true);
} ;
 
