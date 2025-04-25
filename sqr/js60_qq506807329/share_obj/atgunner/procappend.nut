
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function procAppend_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz)
{
 if(!x_0IaV6Sjtz) return;
 local xOUd60LsNxW3hW5yQg22 = x_0IaV6Sjtz.getVar("skill").get_vector(0);
 switch(xOUd60LsNxW3hW5yQg22)
 {
 case 249: 
 if(x_0IaV6Sjtz.getVar("isProc").getBool(0) != true)return;
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 local VgNiAKKw2ej = x_0IaV6Sjtz.getState(); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 if(VgNiAKKw2ej < 18)
 {
 local _Oik_GBot1R4lWf8SreCBo5 = x_0IaV6Sjtz.getVar("aniobj").get_obj_vector(0); 
 if(_Oik_GBot1R4lWf8SreCBo5) 
 {
 if(sq_IsEnd(_Oik_GBot1R4lWf8SreCBo5.getCurrentAnimation())) 
 {
 
 local MJz4wmkFm1 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Target/LockOn02Loop_Dodge01.ani"); 
 local qKgw2ecZZS = (x_0IaV6Sjtz.getVar().get_vector(8)).tofloat() / 100.0; 
 MJz4wmkFm1.setImageRateFromOriginal(qKgw2ecZZS, qKgw2ecZZS); 
 MJz4wmkFm1.setAutoLayerWorkAnimationAddSizeRate(qKgw2ecZZS); 
 local K9zPjH0vMIEizqsL7YQKvkm = sq_CreatePooledObject(MJz4wmkFm1, true); 
 sq_SetCurrentDirection(K9zPjH0vMIEizqsL7YQKvkm, x_0IaV6Sjtz.getDirection()); 
 K9zPjH0vMIEizqsL7YQKvkm.setCurrentPos(x_0IaV6Sjtz.getVar().get_vector(6), x_0IaV6Sjtz.getVar().get_vector(7), 0); 
 K9zPjH0vMIEizqsL7YQKvkm = sq_SetEnumDrawLayer(K9zPjH0vMIEizqsL7YQKvkm, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(x_0IaV6Sjtz, K9zPjH0vMIEizqsL7YQKvkm, OBJECTTYPE_DRAWONLY, false); 
 RemoveAllAni(x_0IaV6Sjtz); 
 x_0IaV6Sjtz.getVar("aniobj").push_obj_vector(K9zPjH0vMIEizqsL7YQKvkm); 
 }
 }
 }
 switch(VgNiAKKw2ej)
 {
 case 10:
 if(sq_GetObjectTime(x_0IaV6Sjtz) > 600)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 11:
 local hf19Oljey50pEz8 = x_0IaV6Sjtz.getVar("move"); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - hf19Oljey50pEz8.get_vector(0); 
 local JKGvuh1gq1 = hf19Oljey50pEz8.get_vector(1); 
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(2), hf19Oljey50pEz8.get_vector(3), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 14:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(0, 2); 
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(0, 50, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 break;
 case 15:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(false); 
 local hf19Oljey50pEz8 = x_0IaV6Sjtz.getVar("move"); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(0), hf19Oljey50pEz8.get_vector(3), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(1), hf19Oljey50pEz8.get_vector(4), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(2), hf19Oljey50pEz8.get_vector(5), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, BytRRuQIv2u2ro4JJvyi); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 break;
 case 17:
 if(!x_0IaV6Sjtz.isMyControlObject())return;
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - x_0IaV6Sjtz.getVar("move").get_vector(0); 
 local JKGvuh1gq1 = x_0IaV6Sjtz.getCurrentAnimation().getDelaySum(false); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 && x_0IaV6Sjtz.isMyControlObject())
 {
 local XlvMhaPk6feYMS2A2eNCW4zi = x_0IaV6Sjtz.getVar().get_vector(11); 
 if(XlvMhaPk6feYMS2A2eNCW4zi >= 0)
 {
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, XlvMhaPk6feYMS2A2eNCW4zi); 
 x_0IaV6Sjtz.addSetStatePacket(15, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 x_0IaV6Sjtz.addSetStatePacket(18, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 20:
 if(x_0IaV6Sjtz.getVar("move").size_vector() <= 0)return;
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(false); 
 local hf19Oljey50pEz8 = x_0IaV6Sjtz.getVar("move"); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(0), hf19Oljey50pEz8.get_vector(2), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(hf19Oljey50pEz8.get_vector(1), hf19Oljey50pEz8.get_vector(3), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, BytRRuQIv2u2ro4JJvyi); 
 break;
 }
 break;
 case 2:
 switch(VgNiAKKw2ej)
 {
 case 10:
 if(x_0IaV6Sjtz.getVar("move").size_vector() <= 0) return;
 local hf19Oljey50pEz8 = x_0IaV6Sjtz.getVar("move"); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz); 
 local JKGvuh1gq1 = 150; 
 local fvkOdY7h4SODJTNU4jV0uBd = hf19Oljey50pEz8.get_vector(0); 
 local BytRRuQIv2u2ro4JJvyi = hf19Oljey50pEz8.get_vector(1); 
 local IbM4zhyMPz0lf = 45; 
 local C5UB34KLllw5kkoyjmSd = sq_GetCNRDObjectToActiveObject(sq_GetObject(x_0IaV6Sjtz, hf19Oljey50pEz8.get_vector(4), hf19Oljey50pEz8.get_vector(5))); 
 if(C5UB34KLllw5kkoyjmSd && !C5UB34KLllw5kkoyjmSd.isDead())
 {
 fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(fvkOdY7h4SODJTNU4jV0uBd, sq_GetXPos(C5UB34KLllw5kkoyjmSd), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(BytRRuQIv2u2ro4JJvyi, sq_GetYPos(C5UB34KLllw5kkoyjmSd) - 1, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 IbM4zhyMPz0lf = sq_GetZPos(C5UB34KLllw5kkoyjmSd) + sq_GetHeightObject(C5UB34KLllw5kkoyjmSd) / 2;
 }
 else
 {
 fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(fvkOdY7h4SODJTNU4jV0uBd, hf19Oljey50pEz8.get_vector(2), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(BytRRuQIv2u2ro4JJvyi, hf19Oljey50pEz8.get_vector(3), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 }
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, BytRRuQIv2u2ro4JJvyi); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 11:
 if(x_0IaV6Sjtz.getVar("move").size_vector() <= 0) return;
 local hf19Oljey50pEz8 = x_0IaV6Sjtz.getVar("move"); 
 local C5UB34KLllw5kkoyjmSd = sq_GetCNRDObjectToActiveObject(sq_GetObject(x_0IaV6Sjtz, hf19Oljey50pEz8.get_vector(4), hf19Oljey50pEz8.get_vector(5))); 
 if(C5UB34KLllw5kkoyjmSd && !C5UB34KLllw5kkoyjmSd.isDead())
 {
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, sq_GetXPos(C5UB34KLllw5kkoyjmSd)); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, sq_GetYPos(C5UB34KLllw5kkoyjmSd) - 1); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, sq_GetZPos(C5UB34KLllw5kkoyjmSd) + sq_GetHeightObject(C5UB34KLllw5kkoyjmSd) / 2); 
 }
 else if(x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 }
 break;
 case 246: 
 if(x_0IaV6Sjtz.getVar("isProc").getBool(0) != true)return;
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local GB74aJfr_cWNOObbjRM51hzP = x_0IaV6Sjtz.getTopCharacter(); 
 if(!GB74aJfr_cWNOObbjRM51hzP)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 return;
 }
 local VgNiAKKw2ej = x_0IaV6Sjtz.getState(); 
 switch(VgNiAKKw2ej)
 {
 case 10:
 if(!x_0IaV6Sjtz.isMyControlObject())return;
 local wyRrygHt1aAO = 0; 
 local Z8VMdxfVHBTd8y1 = x_0IaV6Sjtz.getMyPassiveObjectCount(24376); 
 for(local tqkQiWAlGq4C = 0; tqkQiWAlGq4C < Z8VMdxfVHBTd8y1; tqkQiWAlGq4C++)
 {
 local Qm_8xgjKTwEWtrp_K68F3V9 = x_0IaV6Sjtz.getMyPassiveObject(24376, tqkQiWAlGq4C); 
 if(!Qm_8xgjKTwEWtrp_K68F3V9)continue;
 if(Qm_8xgjKTwEWtrp_K68F3V9.getState() > 12) wyRrygHt1aAO++; 
 }
 
 if(Z8VMdxfVHBTd8y1 == wyRrygHt1aAO && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 12:
 if(x_0IaV6Sjtz.getVar("move").size_vector() <= 0)break;
 local i6uhzqehl0agTt = x_0IaV6Sjtz.getVar("move"); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - i6uhzqehl0agTt.get_vector(0); 
 local JKGvuh1gq1 = 250; 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(
 i6uhzqehl0agTt.get_vector(1),
 i6uhzqehl0agTt.get_vector(3), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(
 i6uhzqehl0agTt.get_vector(2),
 i6uhzqehl0agTt.get_vector(4), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, BytRRuQIv2u2ro4JJvyi); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1) 
 x_0IaV6Sjtz.getVar("move").clear_vector(); 
 return;
 case 13:
 if(x_0IaV6Sjtz.getVar("move").size_vector() <= 0)break;
 local i6uhzqehl0agTt = x_0IaV6Sjtz.getVar("move"); 
 if(i6uhzqehl0agTt.get_vector(0) == 4 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(14, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 else
 {
 local Z8VMdxfVHBTd8y1 = x_0IaV6Sjtz.getMyPassiveObjectCount(24376); 
 for(local tqkQiWAlGq4C = 0; tqkQiWAlGq4C < Z8VMdxfVHBTd8y1; tqkQiWAlGq4C++)
 {
 local Qm_8xgjKTwEWtrp_K68F3V9 = x_0IaV6Sjtz.getMyPassiveObject(24376, tqkQiWAlGq4C); 
 if(!Qm_8xgjKTwEWtrp_K68F3V9)continue;
 local sCaORAc35HC = Qm_8xgjKTwEWtrp_K68F3V9.getCurrentAnimation(); 
 local BLU25pX_vUCgM3 = true; 
 
 
 
 switch(i6uhzqehl0agTt.get_vector(0))
 {
 case 1:
 if(sq_GetAnimationFrameIndex(sCaORAc35HC) <= 1)
 {
 i6uhzqehl0agTt.set_vector(0, 2);
 i6uhzqehl0agTt.set_vector(1, sq_GetObjectTime(x_0IaV6Sjtz));
 return;
 }
 BLU25pX_vUCgM3 = false;
 break;
 case 2:
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - i6uhzqehl0agTt.get_vector(1); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(false); 
 
 sCaORAc35HC.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true,
 sq_RGB(255, 255, 255),
 sq_ALPHA(sq_GetUniformVelocity(0, 180, H22agmC1OsgroCfgQ6j, JKGvuh1gq1)),
 true, true);
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1)
 {
 i6uhzqehl0agTt.set_vector(0, 3);
 i6uhzqehl0agTt.set_vector(1, sq_GetObjectTime(x_0IaV6Sjtz));
 return;
 }
 break;
 case 3:
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - i6uhzqehl0agTt.get_vector(1); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(false); 
 
 local wTiEwHDSvy3 = sq_GetUniformVelocity(255, 0, H22agmC1OsgroCfgQ6j, JKGvuh1gq1); 
 sCaORAc35HC.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true,
 sq_RGB(255, 255, 255),
 sq_ALPHA(sq_GetUniformVelocity(180, 0, H22agmC1OsgroCfgQ6j, JKGvuh1gq1)),
 true, true); 
 sCaORAc35HC.setRGBA(255, 255, 255, wTiEwHDSvy3); 
 sq_getAniLayerListObject(sCaORAc35HC, 0).setRGBA(255, 255, 255, wTiEwHDSvy3); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1)
 {
 if(Qm_8xgjKTwEWtrp_K68F3V9.isMyControlObject())
 {
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, x_0IaV6Sjtz.getXPos()); 
 sq_IntVectorPush(RnU4_ELjj21ufU, x_0IaV6Sjtz.getYPos()); 
 Qm_8xgjKTwEWtrp_K68F3V9.addSetStatePacket(17, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 if(tqkQiWAlGq4C + 1 == Z8VMdxfVHBTd8y1) 
 i6uhzqehl0agTt.set_vector(0, 4);
 }
 break;
 }
 if(BLU25pX_vUCgM3 == false)
 break;
 }
 }
 break;
 case 14:
 local Z8VMdxfVHBTd8y1 = x_0IaV6Sjtz.getMyPassiveObjectCount(24376); 
 if(Z8VMdxfVHBTd8y1 <= 0 && x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 return;
 }
 if(x_0IaV6Sjtz.getVar("isHome").get_vector(0) == 1) 
 {
 
 local Qu5xdLpSithM6X = x_0IaV6Sjtz.getXPos(); 
 local yqxbB_q2RjEN8bZCVu = x_0IaV6Sjtz.getYPos(); 
 local LttKza8klyz = sq_GetXPos(GB74aJfr_cWNOObbjRM51hzP); 
 local NCotKeXmoatz3 = sq_GetYPos(GB74aJfr_cWNOObbjRM51hzP); 
 local CwrgaxOM4aZa1rHmPF9rT = sq_Abs(Qu5xdLpSithM6X - LttKza8klyz); 
 local Lp1O1IJc0A = sq_Abs(yqxbB_q2RjEN8bZCVu - NCotKeXmoatz3); 
 if(CwrgaxOM4aZa1rHmPF9rT > 0) 
 {
 local SjNr3V_c_JNsbwISPEkpH = 1 + CwrgaxOM4aZa1rHmPF9rT / 15 + 1;
 while(SjNr3V_c_JNsbwISPEkpH > CwrgaxOM4aZa1rHmPF9rT)
 SjNr3V_c_JNsbwISPEkpH--;
 if(Qu5xdLpSithM6X > LttKza8klyz)SjNr3V_c_JNsbwISPEkpH /= -1;
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, Qu5xdLpSithM6X + SjNr3V_c_JNsbwISPEkpH); 
 }
 if(Lp1O1IJc0A > 0) 
 {
 local LsCfEl08ma7 = 1 + Lp1O1IJc0A / 30 + 1;
 while(LsCfEl08ma7 > CwrgaxOM4aZa1rHmPF9rT)
 LsCfEl08ma7--;
 if(yqxbB_q2RjEN8bZCVu > NCotKeXmoatz3)LsCfEl08ma7 /= -1;
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, yqxbB_q2RjEN8bZCVu + LsCfEl08ma7); 
 }
 }
 break;
 case 2:
 local GB74aJfr_cWNOObbjRM51hzP = x_0IaV6Sjtz.getTopCharacter(); 
 local TlNEWEpIpbxLuTt0ZXXfVQ8 = x_0IaV6Sjtz.getParent(); 
 if(!TlNEWEpIpbxLuTt0ZXXfVQ8 || !GB74aJfr_cWNOObbjRM51hzP)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 return;
 }
 local bEzBZ6741UA = sq_GetXPos(TlNEWEpIpbxLuTt0ZXXfVQ8); 
 local RIey2_nTyGNrAxTl3ANM = sq_GetYPos(TlNEWEpIpbxLuTt0ZXXfVQ8); 
 local VgNiAKKw2ej = x_0IaV6Sjtz.getState(); 
 switch(VgNiAKKw2ej)
 {
 case 10:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 if(sq_GetAnimationFrameIndex(sCaORAc35HC) < 2)return;
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC) - sCaORAc35HC.getDelaySum(0, 1); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(2, 3); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetDistancePos(bEzBZ6741UA, x_0IaV6Sjtz.getDirection(),
 sq_GetAccel(0,
 x_0IaV6Sjtz.getVar("moveStart").get_vector(0), H22agmC1OsgroCfgQ6j, JKGvuh1gq1, true)); 
 local BytRRuQIv2u2ro4JJvyi = RIey2_nTyGNrAxTl3ANM +
 sq_GetAccel(0,
 x_0IaV6Sjtz.getVar("moveStart").get_vector(1), H22agmC1OsgroCfgQ6j, JKGvuh1gq1, true); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, BytRRuQIv2u2ro4JJvyi); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1) 
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 11:
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0,
 sq_GetDistancePos(bEzBZ6741UA, x_0IaV6Sjtz.getDirection(), x_0IaV6Sjtz.getVar("moveStart").get_vector(0))
 ); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, RIey2_nTyGNrAxTl3ANM + x_0IaV6Sjtz.getVar("moveStart").get_vector(1)); 
 break;
 case 12:
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar();
 local rSJFIrsE1Tm = x_0IaV6Sjtz.getVar("moveStart"); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - rSJFIrsE1Tm.get_vector(2); 
 local JKGvuh1gq1 = x_0IaV6Sjtz.getCurrentAnimation().getDelaySum(false); 
 local SnUteAfbqt8N = x_0IaV6Sjtz.getDirection(); 
 local a3WDKmulI4Ipu9VQEL = sq_GetDistancePos(bEzBZ6741UA, SnUteAfbqt8N, rSJFIrsE1Tm.get_vector(0)); 
 local K4VejropgUP1iPokE6 = RIey2_nTyGNrAxTl3ANM + rSJFIrsE1Tm.get_vector(1); 
 local qK_I1z_CBQkBndb9z = sq_GetUniformVelocity(0, 360, H22agmC1OsgroCfgQ6j, JKGvuh1gq1); 
 local ZwnnuLFN3hWNPa = ne1iFiLDyobNH0B.get_vector(4); 
 local uLAJfCPjpsPNAqYAn = ne1iFiLDyobNH0B.get_vector(5); 
 local oSVBlQ8C3jWpMK6zjcGa6s = -1; 
 local GyrbC3FgY29 = -1; 
 local TnwhqOlLoH_fZKuAqV = ne1iFiLDyobNH0B.get_vector(1); 
 switch(TnwhqOlLoH_fZKuAqV)
 {
 case 0:
 GyrbC3FgY29 = K4VejropgUP1iPokE6
 +
 (ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger()) * uLAJfCPjpsPNAqYAn / 3 / 100).tointeger()
 -
 uLAJfCPjpsPNAqYAn;
 oSVBlQ8C3jWpMK6zjcGa6s = sq_GetDistancePos(
 a3WDKmulI4Ipu9VQEL,
 SnUteAfbqt8N,
 (ZwnnuLFN3hWNPa * 0.75 * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger() / 2)).tointeger() / -1);
 break;
 case 135:
 if(qK_I1z_CBQkBndb9z < 180)
 {
 ZwnnuLFN3hWNPa *= 0.5;
 GyrbC3FgY29 = K4VejropgUP1iPokE6
 -
 (ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger() / 2) * uLAJfCPjpsPNAqYAn / 2 / 100).tointeger();
 }
 else
 GyrbC3FgY29 = K4VejropgUP1iPokE6
 -
 (ZwnnuLFN3hWNPa * 0.5 * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger() - 90) * uLAJfCPjpsPNAqYAn / 2 / 100).tointeger();
 oSVBlQ8C3jWpMK6zjcGa6s = sq_GetDistancePos(
 a3WDKmulI4Ipu9VQEL,
 SnUteAfbqt8N,
 (ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger())).tointeger() / -1);
 break;
 case 225:
 if(qK_I1z_CBQkBndb9z < 180)
 {
 ZwnnuLFN3hWNPa *= 0.2;
 GyrbC3FgY29 = K4VejropgUP1iPokE6
 -
 (ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger() / 2) * uLAJfCPjpsPNAqYAn / 2 / 100).tointeger();
 oSVBlQ8C3jWpMK6zjcGa6s = sq_GetDistancePos(
 a3WDKmulI4Ipu9VQEL,
 SnUteAfbqt8N,
 (ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger())).tointeger() / -1);
 }
 else
 {
 GyrbC3FgY29 = K4VejropgUP1iPokE6
 -
 (ZwnnuLFN3hWNPa * 0.2 * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger()) * uLAJfCPjpsPNAqYAn / 100).tointeger();
 ZwnnuLFN3hWNPa *= 0.4;
 oSVBlQ8C3jWpMK6zjcGa6s = sq_GetDistancePos(
 a3WDKmulI4Ipu9VQEL,
 SnUteAfbqt8N,
 (ZwnnuLFN3hWNPa * sq_SinTable(
 sq_GetUniformVelocity(0, 360, (qK_I1z_CBQkBndb9z - 180).tointeger(), 180)
 )).tointeger());
 }
 break;
 }
 if(oSVBlQ8C3jWpMK6zjcGa6s != -1 && GyrbC3FgY29 != -1)
 {
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, oSVBlQ8C3jWpMK6zjcGa6s); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, GyrbC3FgY29); 
 }
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1) 
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 13:
 case 14:
 case 15:
 case 16:
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local SnUteAfbqt8N = x_0IaV6Sjtz.getDirection(); 
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation();
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local R4no5Skbqhwdj8w3AOacflT = sCaORAc35HC.getDelaySum(false); 
 local ZwnnuLFN3hWNPa = ne1iFiLDyobNH0B.get_vector(4); 
 local jhTITJo28zd = bEzBZ6741UA; 
 local aHHnb6ja942RD3EOs_X2 = RIey2_nTyGNrAxTl3ANM - 20; 
 local IgCLIHHV7Luk = 36000 * H22agmC1OsgroCfgQ6j / R4no5Skbqhwdj8w3AOacflT % 36000;
 
 local VNUzX9OQNy = ne1iFiLDyobNH0B.get_timer_vector(0);
 if(VNUzX9OQNy)
 if(VNUzX9OQNy.isOnEvent(sq_GetObjectTime(x_0IaV6Sjtz)) == true)
 {
 
 local qCQrWI9manQjXUH = sq_GetUniformVelocity(0, 11, IgCLIHHV7Luk.tointeger(), 36000).tostring();
 local Ug2eFwO9Y2L6Aa = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/turn/dust_back_", qCQrWI9manQjXUH + ".ani"); 
 Ug2eFwO9Y2L6Aa.addLayerAnimation(1, sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/turn/dust_front_", qCQrWI9manQjXUH + ".ani"), true); 
 local P9bKFyEajPI8vanDF3 = (ne1iFiLDyobNH0B.get_vector(0)).tofloat() / 100.0; 
 Ug2eFwO9Y2L6Aa.setImageRateFromOriginal(P9bKFyEajPI8vanDF3, P9bKFyEajPI8vanDF3); 
 Ug2eFwO9Y2L6Aa.setAutoLayerWorkAnimationAddSizeRate(P9bKFyEajPI8vanDF3); 
 local _Oik_GBot1R4lWf8SreCBo5 = sq_CreatePooledObject(Ug2eFwO9Y2L6Aa, true); 
 sq_SetCurrentDirection(_Oik_GBot1R4lWf8SreCBo5, SnUteAfbqt8N); 
 _Oik_GBot1R4lWf8SreCBo5.setCurrentPos(x_0IaV6Sjtz.getXPos(), x_0IaV6Sjtz.getYPos(), 0); 
 _Oik_GBot1R4lWf8SreCBo5 = sq_SetEnumDrawLayer(_Oik_GBot1R4lWf8SreCBo5, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(x_0IaV6Sjtz, _Oik_GBot1R4lWf8SreCBo5, OBJECTTYPE_DRAWONLY, false); 
 
 if(sq_getRandom(0, 100) < 50) 
 {
 local m53eH7u42ZrgD6B1QG2 = ""; 
 m53eH7u42ZrgD6B1QG2 = (IgCLIHHV7Luk < 36000 / 2)
 ? "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/g4_down.ptl"
 : "passiveobject/script_sqr_nut_qq506807329/atgunner/particle/g4_up.ptl";
 if(m53eH7u42ZrgD6B1QG2 != "")
 sq_CreateParticle(m53eH7u42ZrgD6B1QG2, x_0IaV6Sjtz, 0, 0, 0, false, 0, 0, 1); 
 }
 }
 switch(VgNiAKKw2ej)
 {
 case 14:
 local rSJFIrsE1Tm = x_0IaV6Sjtz.getVar("moveStart"); 
 local qBDQ8qjGztNo2GyCTgKK6 = rSJFIrsE1Tm.get_vector(2) * 100; 
 if(IgCLIHHV7Luk >= qBDQ8qjGztNo2GyCTgKK6) 
 {
 if(rSJFIrsE1Tm.get_vector(3) == 0)
 {
 qBDQ8qjGztNo2GyCTgKK6 = (qBDQ8qjGztNo2GyCTgKK6 == 9000) ? 36000 - 9000 : 9000; 
 qBDQ8qjGztNo2GyCTgKK6 = qBDQ8qjGztNo2GyCTgKK6.tofloat() / 100.0; 
 
 local e6ixbkyQwW = sq_GetDistancePos(bEzBZ6741UA, sq_GetDirection(x_0IaV6Sjtz),
 (ZwnnuLFN3hWNPa * sq_CosTable(qBDQ8qjGztNo2GyCTgKK6.tointeger())).tointeger());
 
 local KYCfMo6_qbW9HyDuK = RIey2_nTyGNrAxTl3ANM - 20 +
 (ZwnnuLFN3hWNPa * sq_SinTable(qBDQ8qjGztNo2GyCTgKK6.tointeger()) * ne1iFiLDyobNH0B.get_vector(5) / 100).tointeger();
 if(x_0IaV6Sjtz.isMyControlObject())
 {
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, e6ixbkyQwW); 
 sq_IntVectorPush(RnU4_ELjj21ufU, KYCfMo6_qbW9HyDuK); 
 sq_IntVectorPush(RnU4_ELjj21ufU, qBDQ8qjGztNo2GyCTgKK6.tointeger()); 
 x_0IaV6Sjtz.addSetStatePacket(15, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 return;
 }
 }
 else if(rSJFIrsE1Tm.get_vector(3) == 1)
 rSJFIrsE1Tm.set_vector(3, 0); 
 jhTITJo28zd = rSJFIrsE1Tm.get_vector(0); 
 aHHnb6ja942RD3EOs_X2 = rSJFIrsE1Tm.get_vector(1) - 20; 
 break;
 case 15:
 local rSJFIrsE1Tm = x_0IaV6Sjtz.getVar("moveStart"); 
 local qOUYz1ETnG_1RVaO9LWO = sq_GetObjectTime(x_0IaV6Sjtz) - rSJFIrsE1Tm.get_vector(0); 
 local bOKhLGqU6dG2zaJMj = 130; 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0,
 sq_GetAccel(
 rSJFIrsE1Tm.get_vector(1),
 rSJFIrsE1Tm.get_vector(3), qOUYz1ETnG_1RVaO9LWO, bOKhLGqU6dG2zaJMj, true)); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1,
 sq_GetAccel(
 rSJFIrsE1Tm.get_vector(2),
 rSJFIrsE1Tm.get_vector(4), qOUYz1ETnG_1RVaO9LWO, bOKhLGqU6dG2zaJMj, true)); 
 if(qOUYz1ETnG_1RVaO9LWO >= bOKhLGqU6dG2zaJMj && x_0IaV6Sjtz.isMyControlObject()) 
 {
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, rSJFIrsE1Tm.get_vector(5)); 
 x_0IaV6Sjtz.addSetStatePacket(16, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 return;
 }
 local qK_I1z_CBQkBndb9z = (IgCLIHHV7Luk.tofloat() / 100.0);
 local DPWDfRnbhwPm6qptf = ZwnnuLFN3hWNPa * sq_CosTable(qK_I1z_CBQkBndb9z.tointeger());
 local oSVBlQ8C3jWpMK6zjcGa6s = sq_GetDistancePos(jhTITJo28zd, SnUteAfbqt8N, DPWDfRnbhwPm6qptf.tointeger());
 local uLAJfCPjpsPNAqYAn = ne1iFiLDyobNH0B.get_vector(5); 
 local RV8cA4G8VPVbgyUPvO = ZwnnuLFN3hWNPa * sq_SinTable(qK_I1z_CBQkBndb9z.tointeger()) * uLAJfCPjpsPNAqYAn / 100;
 local GyrbC3FgY29 = aHHnb6ja942RD3EOs_X2 + RV8cA4G8VPVbgyUPvO.tointeger();
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, oSVBlQ8C3jWpMK6zjcGa6s);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, GyrbC3FgY29);
 break;
 }
 break;
 }
 break;
 case 247: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1: 
 local GB74aJfr_cWNOObbjRM51hzP = x_0IaV6Sjtz.getTopCharacter(); 
 if(!GB74aJfr_cWNOObbjRM51hzP || GB74aJfr_cWNOObbjRM51hzP.getState() == STATE_DIE)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 return;
 }
 else
 {
 local z__AEg2kgRewfW4QQwy9lZVi = x_0IaV6Sjtz.getVar().get_ct_vector(0); 
 local VNUzX9OQNy = x_0IaV6Sjtz.getVar().get_timer_vector(0);
 if(VNUzX9OQNy && z__AEg2kgRewfW4QQwy9lZVi)
 if(VNUzX9OQNy.isOnEvent(z__AEg2kgRewfW4QQwy9lZVi.Get()) == true)
 {
 local HITHpUTsLK = x_0IaV6Sjtz.getVar().get_vector(0); 
 if(HITHpUTsLK < x_0IaV6Sjtz.getVar().get_vector(1)) 
 x_0IaV6Sjtz.getVar().set_vector(0, HITHpUTsLK + 1); 
 else
 {
 x_0IaV6Sjtz.getVar().clear_ct_vector(); 
 x_0IaV6Sjtz.getVar().clear_timer_vector(); 
 }
 }
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 local EXbheZ3i0M = x_0IaV6Sjtz.getVar("subStateType").get_vector(0); 
 if(Snhibx3Ox0 == 12)
 switch(EXbheZ3i0M)
 {
 case 3:
 case 4:
 local i6uhzqehl0agTt = x_0IaV6Sjtz.getVar("move"); 
 if(i6uhzqehl0agTt.size_vector() <= 0)return;
 local PQ1DH1ZX0F9P = false; 
 local CxSiQL2bgBHPjj = sq_GetObject(x_0IaV6Sjtz, i6uhzqehl0agTt.get_vector(0), i6uhzqehl0agTt.get_vector(1)); 
 if(CxSiQL2bgBHPjj)
 {
 CxSiQL2bgBHPjj = sq_GetCNRDObjectToActiveObject(CxSiQL2bgBHPjj); 
 if(CxSiQL2bgBHPjj.getState() == STATE_DIE || CxSiQL2bgBHPjj.isDead())
 PQ1DH1ZX0F9P = true; 
 }
 else
 PQ1DH1ZX0F9P = true; 
 if(PQ1DH1ZX0F9P == true) 
 {
 if(!x_0IaV6Sjtz.isMyControlObject()) return;
 
 if(SKILL_ATGUNNER_GSPFALCON_isTeleport_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz)) return;
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 2); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 1); 
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - i6uhzqehl0agTt.get_vector(2); 
 local JKGvuh1gq1 = 200; 
 local OIM1Dm5ZFz_Tt4gayXh = 300; 
 local SZQuB_HCms = sq_GetUniformVelocity(i6uhzqehl0agTt.get_vector(3), sq_GetXPos(CxSiQL2bgBHPjj), H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local zOjSXG0xOw = sq_GetUniformVelocity(i6uhzqehl0agTt.get_vector(4), sq_GetYPos(CxSiQL2bgBHPjj) + 1, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local uUZuD3cW0sLzBD7O4 = sq_GetUniformVelocity(i6uhzqehl0agTt.get_vector(5), sq_GetZPos(CxSiQL2bgBHPjj) + sq_GetObjectHeight(CxSiQL2bgBHPjj) / 2 + 190, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 x_0IaV6Sjtz.setCurrentPos(SZQuB_HCms, zOjSXG0xOw, uUZuD3cW0sLzBD7O4); 
 switch(EXbheZ3i0M)
 {
 case 3:
 if(H22agmC1OsgroCfgQ6j >= OIM1Dm5ZFz_Tt4gayXh) 
 {
 if(!x_0IaV6Sjtz.isMyControlObject()) return;
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 4); 
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 4:
 local cMsOctx_F6VOB0wItyaNA = x_0IaV6Sjtz.getVar("move").get_timer_vector(0);
 if(cMsOctx_F6VOB0wItyaNA)
 {
 if(cMsOctx_F6VOB0wItyaNA.isEnd()) 
 {
 x_0IaV6Sjtz.getVar("move").clear_timer_vector();
 if(!x_0IaV6Sjtz.isMyControlObject()) return;
 
 if(SKILL_ATGUNNER_GSPFALCON_isTeleport_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz)) return;
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 2); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 1); 
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 if(cMsOctx_F6VOB0wItyaNA.isOnEvent(H22agmC1OsgroCfgQ6j - OIM1Dm5ZFz_Tt4gayXh) == true)
 if(CxSiQL2bgBHPjj.getState() != STATE_DIE && !CxSiQL2bgBHPjj.isDead())
 sq_SendHitObjectPacketWithNoStuck(x_0IaV6Sjtz, CxSiQL2bgBHPjj, 0, 0, sq_GetHeightObject(CxSiQL2bgBHPjj) / 2); 
 }
 local L14U8su1jXQFsWS_QFv8B = x_0IaV6Sjtz.getVar("aniobj").get_obj_vector_size(); 
 if(L14U8su1jXQFsWS_QFv8B > 0)
 {
 local _Oik_GBot1R4lWf8SreCBo5 = x_0IaV6Sjtz.getVar("aniobj").get_obj_vector(0);
 if(_Oik_GBot1R4lWf8SreCBo5)
 {
 local Vvw3oMdlcBD7Qs8TGQFW = _Oik_GBot1R4lWf8SreCBo5.getCurrentAnimation();
 if(Vvw3oMdlcBD7Qs8TGQFW && sq_IsEnd(Vvw3oMdlcBD7Qs8TGQFW))
 {
 sq_Rewind(Vvw3oMdlcBD7Qs8TGQFW); 
 local mw0PTW8y9QVF = x_0IaV6Sjtz.getVar("aniobj").get_obj_vector(1);
 if(mw0PTW8y9QVF)
 {
 local r3EzJ_Zg6b = mw0PTW8y9QVF.getCurrentAnimation();
 if(r3EzJ_Zg6b) sq_Rewind(r3EzJ_Zg6b); 
 }
 }
 }
 }
 break;
 }
 return;
 }
 local Q2590TRRecksqaT = sq_GetXPos(GB74aJfr_cWNOObbjRM51hzP); 
 local sedfKavi42aAGPG = sq_GetYPos(GB74aJfr_cWNOObbjRM51hzP) - 1; 
 local ITtWvMycBpEmRPk = sq_GetZPos(GB74aJfr_cWNOObbjRM51hzP); 
 local SnUteAfbqt8N = sq_GetDirection(GB74aJfr_cWNOObbjRM51hzP); 
 local XHzI4Ov63LyNKj = sq_GetDirection(x_0IaV6Sjtz); 
 local SNTsEeme4RRl934IXi = 0; 
 local rx9Ln1C27Ahr = 0; 
 switch(Snhibx3Ox0)
 {
 case 10:
 SNTsEeme4RRl934IXi = -100; 
 rx9Ln1C27Ahr = 150; 
 break;
 case 11:
 SNTsEeme4RRl934IXi = -100; 
 rx9Ln1C27Ahr = 75; 
 break;
 case 12:
 rx9Ln1C27Ahr = 235; 
 sedfKavi42aAGPG += 2;
 break;
 }
 local FNzmqAd7aEg4kyf3_wsUYd3 = x_0IaV6Sjtz.getVar("home").getBool(0); 
 if(FNzmqAd7aEg4kyf3_wsUYd3 == true)
 {
 local y6aI9klUhPOwQvvqV4 = false; 
 switch(Snhibx3Ox0)
 {
 case 10:
 switch(EXbheZ3i0M)
 {
 case 1: case 2:
 y6aI9klUhPOwQvvqV4 = true; 
 x_0IaV6Sjtz.setCustomRotate(true, sq_ToRadian(-20.0)); 
 break;
 }
 break;
 case 11:
 switch(EXbheZ3i0M)
 {
 case 1: case 2: y6aI9klUhPOwQvvqV4 = true; break;
 } 
 break;
 case 12:
 switch(EXbheZ3i0M)
 {
 case 1: case 2:
 y6aI9klUhPOwQvvqV4 = true; 
 x_0IaV6Sjtz.setCustomRotate(true, sq_ToRadian(-90.0)); 
 break;
 }
 break;
 }
 if(y6aI9klUhPOwQvvqV4 == true) 
 {
 
 if(SKILL_ATGUNNER_GSPFALCON_UseSkill_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz, GB74aJfr_cWNOObbjRM51hzP, Snhibx3Ox0))
 return;
 if(SnUteAfbqt8N != XHzI4Ov63LyNKj)
 {
 
 SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz, GB74aJfr_cWNOObbjRM51hzP, 1);
 return;
 }
 Q2590TRRecksqaT = sq_GetDistancePos(Q2590TRRecksqaT, SnUteAfbqt8N, SNTsEeme4RRl934IXi); 
 ITtWvMycBpEmRPk = ITtWvMycBpEmRPk + rx9Ln1C27Ahr; 
 x_0IaV6Sjtz.setCurrentPos(Q2590TRRecksqaT, sedfKavi42aAGPG, ITtWvMycBpEmRPk); 
 }
 }
 else
 {
 local XSG7Db_8m3nyhXXl4hYNZ = false; 
 switch(Snhibx3Ox0)
 {
 case 10:
 case 11:
 case 12:
 switch(EXbheZ3i0M) 
 {
 case 2:XSG7Db_8m3nyhXXl4hYNZ = true; break;
 }
 break;
 }
 if(XSG7Db_8m3nyhXXl4hYNZ == true) 
 {
 
 if(SKILL_ATGUNNER_GSPFALCON_UseSkill_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz, GB74aJfr_cWNOObbjRM51hzP, Snhibx3Ox0))
 return;
 if(SnUteAfbqt8N != XHzI4Ov63LyNKj)
 {
 
 SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(x_0IaV6Sjtz, GB74aJfr_cWNOObbjRM51hzP, 1);
 return;
 }
 local DYPnwzzYwSQE = x_0IaV6Sjtz.getVar("home"); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - DYPnwzzYwSQE.get_vector(0); 
 local JKGvuh1gq1 = DYPnwzzYwSQE.get_vector(1); 
 local VLGYFI595KvFWi6GttXD = DYPnwzzYwSQE.get_vector(2); 
 local akxzDcD9QsGYRNA3 = DYPnwzzYwSQE.get_vector(3); 
 local WWEXfCAayjVsq_zAuPkpw0 = DYPnwzzYwSQE.get_vector(4); 
 local j_cvP8NpfAjOi = sq_GetDistancePos(Q2590TRRecksqaT, SnUteAfbqt8N, SNTsEeme4RRl934IXi); 
 local QJvA9b4KHjsa = ITtWvMycBpEmRPk + rx9Ln1C27Ahr; 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(VLGYFI595KvFWi6GttXD, j_cvP8NpfAjOi, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local BytRRuQIv2u2ro4JJvyi = sq_GetUniformVelocity(akxzDcD9QsGYRNA3, sedfKavi42aAGPG, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(WWEXfCAayjVsq_zAuPkpw0, QJvA9b4KHjsa, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 x_0IaV6Sjtz.setCurrentPos(fvkOdY7h4SODJTNU4jV0uBd, BytRRuQIv2u2ro4JJvyi, IbM4zhyMPz0lf); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1) 
 {
 x_0IaV6Sjtz.getVar("home").setBool(0, true); 
 return;
 }
 }
 }
 }
 break;
 case 2:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 10:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = 200; 
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(1); 
 local WWEXfCAayjVsq_zAuPkpw0 = ne1iFiLDyobNH0B.get_vector(2); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(3); 
 local wP4PQxfoyBJN0CSCco = ne1iFiLDyobNH0B.get_vector(4); 
 local SZQuB_HCms = sq_GetUniformVelocity(VLGYFI595KvFWi6GttXD, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local uUZuD3cW0sLzBD7O4 = sq_GetUniformVelocity(WWEXfCAayjVsq_zAuPkpw0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, SZQuB_HCms); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, uUZuD3cW0sLzBD7O4); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0 + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 }
 break;
 }
 break;
 case 248: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 10:
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz); 
 local JKGvuh1gq1 = 350; 
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(2); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(3); 
 local aDRodBpfl1ALA5JrE = sq_GetAccel(0, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1, true);
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetDistancePos(VLGYFI595KvFWi6GttXD, x_0IaV6Sjtz.getDirection(), aDRodBpfl1ALA5JrE); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0 + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 case 15:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(0, 0); 
 local WWEXfCAayjVsq_zAuPkpw0 = x_0IaV6Sjtz.getVar().get_vector(0); 
 local wP4PQxfoyBJN0CSCco = 0; 
 local uUZuD3cW0sLzBD7O4 = sq_GetUniformVelocity(WWEXfCAayjVsq_zAuPkpw0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, uUZuD3cW0sLzBD7O4); 
 break;
 }
 break;
 }
 break;
 case 245: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 10:
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local H22agmC1OsgroCfgQ6j = sq_GetCurrentTime(sCaORAc35HC); 
 local JKGvuh1gq1 = sCaORAc35HC.getDelaySum(false); 
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(1); 
 local WWEXfCAayjVsq_zAuPkpw0 = ne1iFiLDyobNH0B.get_vector(2); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(3); 
 local wP4PQxfoyBJN0CSCco = ne1iFiLDyobNH0B.get_vector(4); 
 local SZQuB_HCms = sq_GetAccel(VLGYFI595KvFWi6GttXD, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1, true);
 local uUZuD3cW0sLzBD7O4 = sq_GetAccel(WWEXfCAayjVsq_zAuPkpw0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1, true);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, SZQuB_HCms); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, uUZuD3cW0sLzBD7O4); 
 
 local O_VxTt_UL_re0zL66SlWOKY5 = sq_GetUniformVelocity(0, 255, H22agmC1OsgroCfgQ6j, JKGvuh1gq1 / 5); 
 sCaORAc35HC.setRGBA(255, 255, 255, O_VxTt_UL_re0zL66SlWOKY5);
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0 + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 }
 break;
 case 244: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 10:
 local uKN54CjA2PskyCFqEg1ru = x_0IaV6Sjtz.getZPos(); 
 if(uKN54CjA2PskyCFqEg1ru <= 0 && x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 11:
 for(local tqkQiWAlGq4C = 1; tqkQiWAlGq4C <= 4; tqkQiWAlGq4C++)
 if(x_0IaV6Sjtz.isExistTimeEvent(tqkQiWAlGq4C)) return; 
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 break;
 }
 break;
 case 3: 
 if(x_0IaV6Sjtz.getVar().size_vector() > 0)
 {
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz); 
 local JKGvuh1gq1 = 300; 
 if(H22agmC1OsgroCfgQ6j >= JKGvuh1gq1) 
 {
 if(!x_0IaV6Sjtz.getVar().getBool(0))
 {
 x_0IaV6Sjtz.getVar().setBool(0, true);
 local gD5v3XBMw9MuUWSqBGRPDe3 = x_0IaV6Sjtz.getXPos(); 
 local mQYfAsTYlenD6OpVjPu = x_0IaV6Sjtz.getYPos(); 
 CreateAniRate(x_0IaV6Sjtz, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/BombBard/DDayMissileAtk_01.ani", ENUM_DRAWLAYER_NORMAL, gD5v3XBMw9MuUWSqBGRPDe3, mQYfAsTYlenD6OpVjPu, 0, false, false); 
 CreateAniRate(x_0IaV6Sjtz, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/BombBard/DDayMissileAtkFloor_DangerGroundNormal.ani", ENUM_DRAWLAYER_BOTTOM, gD5v3XBMw9MuUWSqBGRPDe3, mQYfAsTYlenD6OpVjPu, 0, false, false); 
 x_0IaV6Sjtz.sq_PlaySound("R_D_DAY_SHELL"); 
 }
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 return;
 }
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local dKcaGz2_4yxIp2BbLW = x_0IaV6Sjtz.getXPos(); 
 local cXb3pp05z3UUKOJxj0x4or = x_0IaV6Sjtz.getYPos(); 
 local i1KY848wmjYJIOFe1 = x_0IaV6Sjtz.getZPos(); 
 local xmBhmT_zmbbgbvwhg2lTK = ne1iFiLDyobNH0B.get_timer_vector(0); 
 if(xmBhmT_zmbbgbvwhg2lTK && xmBhmT_zmbbgbvwhg2lTK.isOnEvent(H22agmC1OsgroCfgQ6j) == true)
 {
 local lL6uwZ9DTG = CreateAniRate(x_0IaV6Sjtz, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/dangerclose/dangersmoke.ani", ENUM_DRAWLAYER_NORMAL, dKcaGz2_4yxIp2BbLW, cXb3pp05z3UUKOJxj0x4or, i1KY848wmjYJIOFe1, false, false); 
 if(lL6uwZ9DTG)
 {
 sq_SetCustomRotate(lL6uwZ9DTG, sq_ToRadian(-45.0)); 
 x_0IaV6Sjtz.getVar("aniobj").push_obj_vector(lL6uwZ9DTG); 
 }
 }
 local gCYnAzrUUvEYwX9T = ne1iFiLDyobNH0B.get_timer_vector(1); 
 if(gCYnAzrUUvEYwX9T && gCYnAzrUUvEYwX9T.isOnEvent(H22agmC1OsgroCfgQ6j) == true)
 {
 local jASgVfr4opz7aD = ["1.ani", "2.ani", "3.ani"];
 local SVuWvLYmyNecAeCf2tLzX44 = CreateAniRate(x_0IaV6Sjtz, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/dangerclose/missilesmoke" + jASgVfr4opz7aD[sq_getRandom(0, 2)], ENUM_DRAWLAYER_NORMAL, dKcaGz2_4yxIp2BbLW, cXb3pp05z3UUKOJxj0x4or - 1, i1KY848wmjYJIOFe1, false, false); 
 if(SVuWvLYmyNecAeCf2tLzX44)
 x_0IaV6Sjtz.getVar("aniobj").push_obj_vector(SVuWvLYmyNecAeCf2tLzX44); 
 }
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(0); 
 local WWEXfCAayjVsq_zAuPkpw0 = ne1iFiLDyobNH0B.get_vector(1); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(2); 
 local wP4PQxfoyBJN0CSCco = ne1iFiLDyobNH0B.get_vector(3); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(VLGYFI595KvFWi6GttXD, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(WWEXfCAayjVsq_zAuPkpw0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 }
 break;
 case 4: 
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 11:
 if(x_0IaV6Sjtz.getVar().size_vector() <= 0) break;
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - ne1iFiLDyobNH0B.get_vector(0); 
 local znvEJEGF9GX5 = 2500; 
 if(H22agmC1OsgroCfgQ6j >= znvEJEGF9GX5 && x_0IaV6Sjtz.isMyControlObject()) 
 {
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0 + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 local VNUzX9OQNy = x_0IaV6Sjtz.getVar().get_timer_vector(0);
 if(VNUzX9OQNy && VNUzX9OQNy.isOnEvent(H22agmC1OsgroCfgQ6j) == true)
 x_0IaV6Sjtz.sq_PlaySound("R_D_DAY_BULLET"); 
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(1); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(2); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(VLGYFI595KvFWi6GttXD, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, znvEJEGF9GX5);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 local MR8Tc4PkJ6 = znvEJEGF9GX5 / 4; 
 local akxzDcD9QsGYRNA3 = ne1iFiLDyobNH0B.get_vector(3); 
 local kUGXA0QXYRWdTPdh3KEE8nH = ne1iFiLDyobNH0B.get_vector(4); 
 local a8v1oPEngFtpFOjwjV1Wk5dg = H22agmC1OsgroCfgQ6j / MR8Tc4PkJ6; 
 local xNMY7SDKKIW = H22agmC1OsgroCfgQ6j - MR8Tc4PkJ6 * a8v1oPEngFtpFOjwjV1Wk5dg; 
 local zOjSXG0xOw = sq_GetUniformVelocity(0, kUGXA0QXYRWdTPdh3KEE8nH, xNMY7SDKKIW, MR8Tc4PkJ6);
 zOjSXG0xOw = (a8v1oPEngFtpFOjwjV1Wk5dg % 2 == 0) ? zOjSXG0xOw : kUGXA0QXYRWdTPdh3KEE8nH - zOjSXG0xOw; 
 zOjSXG0xOw = (a8v1oPEngFtpFOjwjV1Wk5dg % 4 < 2) ? zOjSXG0xOw : zOjSXG0xOw / -1; 
 zOjSXG0xOw *= ne1iFiLDyobNH0B.get_vector(5); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 1, akxzDcD9QsGYRNA3 + zOjSXG0xOw); 
 break;
 case 12:
 if(x_0IaV6Sjtz.getVar().size_vector() <= 0) break;
 local ne1iFiLDyobNH0B = x_0IaV6Sjtz.getVar(); 
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz) - ne1iFiLDyobNH0B.get_vector(0); 
 local znvEJEGF9GX5 = 1000; 
 if(H22agmC1OsgroCfgQ6j >= znvEJEGF9GX5 && x_0IaV6Sjtz.isMyControlObject()) 
 {
 x_0IaV6Sjtz.addSetStatePacket(Snhibx3Ox0 + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 local VLGYFI595KvFWi6GttXD = ne1iFiLDyobNH0B.get_vector(1); 
 local L8oR3P4AW_YbpgD = ne1iFiLDyobNH0B.get_vector(2); 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetUniformVelocity(VLGYFI595KvFWi6GttXD, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, znvEJEGF9GX5);
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 break;
 }
 break;
 case 5: 
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 11:
 if(sq_GetObjectTime(x_0IaV6Sjtz) >= 2500 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 case 6: 
 if(x_0IaV6Sjtz.getZPos() <= 0)
 {
 if(!x_0IaV6Sjtz.getVar().getBool(0))
 {
 x_0IaV6Sjtz.getVar().setBool(0, true);
 CreateAniRate(x_0IaV6Sjtz, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bullet/DDayHandGrenade_Normal.ani", ENUM_DRAWLAYER_NORMAL, x_0IaV6Sjtz.getXPos(), x_0IaV6Sjtz.getYPos(), 0, 2.0, false); 
 }
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 }
 break;
 }
 break;
 case 232: 
 if(!x_0IaV6Sjtz.isMyControlObject()) break;
 local GB74aJfr_cWNOObbjRM51hzP = x_0IaV6Sjtz.getTopCharacter(); 
 if(x_0IaV6Sjtz.getState() != 10) 
 if(!GB74aJfr_cWNOObbjRM51hzP || GB74aJfr_cWNOObbjRM51hzP.getState() != 232 || x_0IaV6Sjtz.sq_GetParentSkillSubState() > 1) 
 {
 x_0IaV6Sjtz.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 234: 
 if(x_0IaV6Sjtz.getVar("subType").get_vector(0) == 3)
 {
 local flf1XFzx6tpWvjH = sq_GetCurrentFrameIndex(x_0IaV6Sjtz);
 if(flf1XFzx6tpWvjH >= 2 && flf1XFzx6tpWvjH < 7) setRangeObjectXPos(x_0IaV6Sjtz, 240, ENUM_DIRECTION_NEUTRAL, 0, 270, 100, 3);
 }
 break;
 case 235: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 5:
 case 8:
 case 9:
 if(x_0IaV6Sjtz.isMyControlObject())
 {
 local KmgLmDElxFEXutrJR9WHubml = sq_GetMoveParent(x_0IaV6Sjtz); 
 if(!KmgLmDElxFEXutrJR9WHubml || KmgLmDElxFEXutrJR9WHubml.getState() != 235)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 }
 }
 break;
 case 6:
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz); 
 local JKGvuh1gq1 = 1000; 
 local VLGYFI595KvFWi6GttXD = x_0IaV6Sjtz.getVar().get_vector(0); 
 local WWEXfCAayjVsq_zAuPkpw0 = x_0IaV6Sjtz.getVar().get_vector(1); 
 local L8oR3P4AW_YbpgD = 450; 
 local wP4PQxfoyBJN0CSCco = 600; 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetDistancePos(VLGYFI595KvFWi6GttXD, x_0IaV6Sjtz.getDirection(), sq_GetUniformVelocity(0, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1)); 
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, WWEXfCAayjVsq_zAuPkpw0 + IbM4zhyMPz0lf); 
 local HITHpUTsLK = x_0IaV6Sjtz.getVar("aniobj").get_obj_vector_size(); 
 if(HITHpUTsLK > 0)
 {
 local Wtejd4eZMwKBMUqE = x_0IaV6Sjtz.getVar("aniobj"); 
 for(local tqkQiWAlGq4C = 0; tqkQiWAlGq4C < HITHpUTsLK; tqkQiWAlGq4C++)
 {
 local _Oik_GBot1R4lWf8SreCBo5 = Wtejd4eZMwKBMUqE.get_obj_vector(tqkQiWAlGq4C); 
 if(_Oik_GBot1R4lWf8SreCBo5 && sq_GetZPos(_Oik_GBot1R4lWf8SreCBo5) <= 0 && (_Oik_GBot1R4lWf8SreCBo5.getCurrentAnimation()).isLoop())
 {
 sq_SetVelocity(_Oik_GBot1R4lWf8SreCBo5, 0, 0.0); 
 sq_SetVelocity(_Oik_GBot1R4lWf8SreCBo5, 2, 0.0); 
 local vScKo206RlFsB1I = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/orboom01_01.ani"); 
 local P9bKFyEajPI8vanDF3 = sq_getRandom(130, 180).tofloat() / 100.0; 
 vScKo206RlFsB1I.setImageRateFromOriginal(P9bKFyEajPI8vanDF3, P9bKFyEajPI8vanDF3); 
 vScKo206RlFsB1I.setAutoLayerWorkAnimationAddSizeRate(P9bKFyEajPI8vanDF3); 
 _Oik_GBot1R4lWf8SreCBo5.setCurrentAnimation(vScKo206RlFsB1I); 
 local UHdPqPFPl_nZ6QklfGoOC = x_0IaV6Sjtz.getParent(); 
 UHdPqPFPl_nZ6QklfGoOC.resetHitObjectList(); 
 sq_SetShake(x_0IaV6Sjtz, 6, 200); 
 x_0IaV6Sjtz.sq_PlaySound("R_OPERATION_RAZE"); 
 }
 }
 }
 local aL7ZB8CoRGsOqvQpbnGM8RNh = x_0IaV6Sjtz.getVar().getBool(0);
 if(aL7ZB8CoRGsOqvQpbnGM8RNh == false && H22agmC1OsgroCfgQ6j >= JKGvuh1gq1 / 5)
 {
 x_0IaV6Sjtz.getVar().setBool(0, true); 
 x_0IaV6Sjtz.setTimeEvent(0, 30, 12, true); 
 }
 else if(!x_0IaV6Sjtz.isExistTimeEvent(0) && HITHpUTsLK <= 0 && aL7ZB8CoRGsOqvQpbnGM8RNh)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(x_0IaV6Sjtz); 
 }
 break;
 case 7:
 local H22agmC1OsgroCfgQ6j = sq_GetObjectTime(x_0IaV6Sjtz); 
 if(x_0IaV6Sjtz.getZPos() <= 0 && x_0IaV6Sjtz.getState() != 10)
 {
 if(x_0IaV6Sjtz.isMyControlObject())
 x_0IaV6Sjtz.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(H22agmC1OsgroCfgQ6j >= 700)
 {
 H22agmC1OsgroCfgQ6j -= 700; 
 local JKGvuh1gq1 = 500; 
 local VLGYFI595KvFWi6GttXD = x_0IaV6Sjtz.getVar().get_vector(0); 
 local WWEXfCAayjVsq_zAuPkpw0 = x_0IaV6Sjtz.getVar().get_vector(1); 
 local L8oR3P4AW_YbpgD = -40; 
 local wP4PQxfoyBJN0CSCco = 0; 
 local fvkOdY7h4SODJTNU4jV0uBd = sq_GetDistancePos(VLGYFI595KvFWi6GttXD, x_0IaV6Sjtz.getDirection(), sq_GetUniformVelocity(0, L8oR3P4AW_YbpgD, H22agmC1OsgroCfgQ6j, JKGvuh1gq1)); 
 local IbM4zhyMPz0lf = sq_GetUniformVelocity(WWEXfCAayjVsq_zAuPkpw0, wP4PQxfoyBJN0CSCco, H22agmC1OsgroCfgQ6j, JKGvuh1gq1); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 0, fvkOdY7h4SODJTNU4jV0uBd); 
 sq_setCurrentAxisPos(x_0IaV6Sjtz, 2, IbM4zhyMPz0lf); 
 }
 break;
 }
 break;
 case 240: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 if(sq_IsMyControlObject(x_0IaV6Sjtz))
 {
 switch(Snhibx3Ox0)
 {
 case 10:
 if(x_0IaV6Sjtz.getZPos() <= 0 && x_0IaV6Sjtz.isMyControlObject()) 
 {
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, sq_GetCurrentFrameIndex(x_0IaV6Sjtz)); 
 x_0IaV6Sjtz.addSetStatePacket(11, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 11:
 local vScKo206RlFsB1I = x_0IaV6Sjtz.getCurrentAnimation();
 if(sq_GetCurrentTime(vScKo206RlFsB1I) > 50 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 }
 if(Snhibx3Ox0 == 13) 
 setRangeObjectXPos(x_0IaV6Sjtz, 230, ENUM_DIRECTION_NEUTRAL, 0, 120, 70, 2);
 break;
 }
 break;
 case 243: 
 local c_gC6rV2AzM_B_O7HwK8F = x_0IaV6Sjtz.getVar("subType").get_vector(0); 
 switch(c_gC6rV2AzM_B_O7HwK8F)
 {
 case 1:
 local Snhibx3Ox0 = x_0IaV6Sjtz.getState(); 
 switch(Snhibx3Ox0)
 {
 case 10:
 local CvLiEstjvO = sq_GetObjectTime(x_0IaV6Sjtz); 
 if(CvLiEstjvO > 200)
 {
 local sCaORAc35HC = x_0IaV6Sjtz.getCurrentAnimation(); 
 local cHB2CZPtPgT0pWzjGnz = sq_RGB(255, 0, 0); 
 local LTFj48JRJ0QV50 = sq_ALPHA(150); 
 sCaORAc35HC.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, cHB2CZPtPgT0pWzjGnz, LTFj48JRJ0QV50, true, false); 
 }
 
 
 
 
 local uKN54CjA2PskyCFqEg1ru = x_0IaV6Sjtz.getZPos();
 local vo7dHD1vND3 = x_0IaV6Sjtz.getVar().get_vector(1); 
 switch(vo7dHD1vND3)
 {
 case 1:
 if(uKN54CjA2PskyCFqEg1ru <= 0 && x_0IaV6Sjtz.isMyControlObject())
 {
 
 
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 2); 
 x_0IaV6Sjtz.addSetStatePacket(11, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 4:
 if(CvLiEstjvO > 400 && x_0IaV6Sjtz.isMyControlObject())
 {
 
 
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 1); 
 x_0IaV6Sjtz.addSetStatePacket(11, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 2:
 case 3:
 if(uKN54CjA2PskyCFqEg1ru <= 0 && x_0IaV6Sjtz.isMyControlObject())
 {
 x_0IaV6Sjtz.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 case 12:
 local NLc7H27c7mJ = x_0IaV6Sjtz.getVar("endTime").get_vector(0); 
 if(sq_GetObjectTime(x_0IaV6Sjtz) - NLc7H27c7mJ > 250 && x_0IaV6Sjtz.isMyControlObject())
 {
 
 
 local RnU4_ELjj21ufU = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(RnU4_ELjj21ufU); 
 sq_IntVectorPush(RnU4_ELjj21ufU, 2); 
 x_0IaV6Sjtz.addSetStatePacket(11, RnU4_ELjj21ufU, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 }
 break;
 }
} ;
 
