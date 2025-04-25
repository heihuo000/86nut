
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function setState_po_qq506807329new_gunner_24371(H5t7YwkcS13cbWAi3otRrLnz, NUtnPns2GdWa, b7HADUMnBP)
{
 if(!H5t7YwkcS13cbWAi3otRrLnz) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("state").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("state").push_vector(NUtnPns2GdWa);
 local gPYY1SVnA_OceN2zOzAy9B = H5t7YwkcS13cbWAi3otRrLnz.getVar("skill").get_vector(0);
 switch(gPYY1SVnA_OceN2zOzAy9B)
 {
 case 234: 
 if(NUtnPns2GdWa == 10)
 {
 if(H5t7YwkcS13cbWAi3otRrLnz.isExistTimeEvent(0)) H5t7YwkcS13cbWAi3otRrLnz.stopTimeEvent(0); 
 sq_moveWithParent(H5t7YwkcS13cbWAi3otRrLnz, H5t7YwkcS13cbWAi3otRrLnz); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserend_00.ani");
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 }
 break;
 case 232: 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/missile_01.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().clear_obj_vector(); 
 break;
 case 11: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_RemoveMoveParticle(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("move").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("move").push_vector(H5t7YwkcS13cbWAi3otRrLnz.getXPos()); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("move").push_vector(sq_GetObjectTime(H5t7YwkcS13cbWAi3otRrLnz)); 
 break;
 case 12: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_RemoveMoveParticle(); 
 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/msc7/explosion_bottom.ani", ENUM_DRAWLAYER_BOTTOM, true), 2, 0); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/explosion_08.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0)).tofloat() / 100.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 sq_SetAttackBoundingBoxSizeRate(Z7Gz6LcQ1V, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 1); 
 break;
 }
 break;
 case 233: 
 local zUtcHlANs59GFWfsE23G = H5t7YwkcS13cbWAi3otRrLnz.getVar("subType").get_vector(0); 
 switch(zUtcHlANs59GFWfsE23G)
 {
 case 1:
 switch(NUtnPns2GdWa)
 {
 case 10: 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_BOTTOM); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_start.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 11: 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentPos(sq_GetVectorData(b7HADUMnBP, 0), sq_GetVectorData(b7HADUMnBP, 1), 0); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_end.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 12: 
 sq_setCurrentAxisPos(H5t7YwkcS13cbWAi3otRrLnz, 2, 1000); 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_NORMAL); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/drop/drop_seismicwave.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 2); 
 break;
 case 13: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/start/start_seismicwave.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 3); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 4, 300); 
 sq_flashScreen(H5t7YwkcS13cbWAi3otRrLnz, 0, 40, 200, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(233); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(3)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 0, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 break;
 case 14: 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().set_vector(4, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(4) - 1); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwave.ani"); 
 Z7Gz6LcQ1V.setSpeedRate((H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(5)).tofloat()); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 5, 180); 
 sq_flashScreen(H5t7YwkcS13cbWAi3otRrLnz, 0, 0, 120, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_BOTTOM); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(233); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(3)); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(6)); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(7)); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(8)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 0, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 break;
 case 15: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/end/end_exp_dodge.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 5); 
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 3, 300); 
 break;
 }
 break;
 }
 break;
 case 242: 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 11: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani"); 
 local kaSzGNd2aLDWQV4Y = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_dodge.ani"); 
 Z7Gz6LcQ1V.addLayerAnimation(-1, kaSzGNd2aLDWQV4Y, true); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(0, 50, 1, false); 
 break;
 case 12: 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_BOTTOM); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2)).tofloat() / 100.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 
 CreateAniRate(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_front.ani", ENUM_DRAWLAYER_NORMAL, H5t7YwkcS13cbWAi3otRrLnz.getXPos(), H5t7YwkcS13cbWAi3otRrLnz.getYPos(), H5t7YwkcS13cbWAi3otRrLnz.getZPos(), AmGI1Q1kUH6f27cw, false);
 CreateAniRate(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background01.ani", ENUM_DRAWLAYER_NORMAL, H5t7YwkcS13cbWAi3otRrLnz.getXPos(), H5t7YwkcS13cbWAi3otRrLnz.getYPos(), H5t7YwkcS13cbWAi3otRrLnz.getZPos(), AmGI1Q1kUH6f27cw, false);
 break;
 case 13: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/02_loop/grenadegravity_loop_background.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2)).tofloat() / 100.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 sq_SetAttackBoundingBoxSizeRate(Z7Gz6LcQ1V, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw, 1.0); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 15); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(1, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(1), 0, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(2, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0), 1, false); 
 break;
 case 14: 
 H5t7YwkcS13cbWAi3otRrLnz.removeAllTimeEvent(); 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_NORMAL); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_front.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2)).tofloat() / 100.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 sq_SetAttackBoundingBoxSizeRate(Z7Gz6LcQ1V, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 16); 
 
 CreateAniRate(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_background.ani", ENUM_DRAWLAYER_BOTTOM, H5t7YwkcS13cbWAi3otRrLnz.getXPos(), H5t7YwkcS13cbWAi3otRrLnz.getYPos(), H5t7YwkcS13cbWAi3otRrLnz.getZPos(), AmGI1Q1kUH6f27cw, false);
 break;
 }
 break;
 case 243: 
 local zUtcHlANs59GFWfsE23G = H5t7YwkcS13cbWAi3otRrLnz.getVar("subType").get_vector(0); 
 switch(zUtcHlANs59GFWfsE23G)
 {
 case 1:
 if(NUtnPns2GdWa == 10) 
 {
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "character/gunner/effect/animation/dangerclose/dangerclose.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 }
 }
 else if(NUtnPns2GdWa == 11) 
 {
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(null); 
 sq_setCurrentAxisPos(H5t7YwkcS13cbWAi3otRrLnz, 0, sq_GetVectorData(b7HADUMnBP, 0)); 
 sq_setCurrentAxisPos(H5t7YwkcS13cbWAi3otRrLnz, 1, sq_GetVectorData(b7HADUMnBP, 1)); 
 sq_SetCurrentDirection(H5t7YwkcS13cbWAi3otRrLnz, sq_GetVectorData(b7HADUMnBP, 2)); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().setInt(0, sq_GetVectorData(b7HADUMnBP, 3)); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(0, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2), 0, true); 
 }
 break;
 case 2:
 if(NUtnPns2GdWa == 10)
 {
 H5t7YwkcS13cbWAi3otRrLnz.removeAllTimeEvent(); 
 sq_SetCustomRotate(H5t7YwkcS13cbWAi3otRrLnz, 0.0); 
 local HObjTePwsiNv20Z4igY5mO = H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(4); 
 local oVSS199RG5wy = ""; 
 switch(HObjTePwsiNv20Z4igY5mO)
 {
 case 17: oVSS199RG5wy = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboom_01.ani"; break;
 case 18: oVSS199RG5wy = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomfire_01.ani"; break;
 case 19: oVSS199RG5wy = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomlight_01.ani"; break;
 case 20: oVSS199RG5wy = "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomice_01.ani"; break;
 }
 local Z7Gz6LcQ1V = sq_CreateAnimation("", oVSS199RG5wy); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 
 sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerground.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 3, 200); 
 }
 break;
 }
 break;
 case 244: 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_PlaySound("G_38ARG_THROW"); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argthrow.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(0, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0), 1, false); 
 break;
 case 11: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_RemoveMoveParticle(); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argmove.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().clear_obj_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(1, 200, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().setBool(1, false); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 
 local l_fYXYOe38bDkKOX = null; 
 local hYIYXjYCWrBWM8jPfInD = 0; 
 
 local aqxQSx_N8drux = H5t7YwkcS13cbWAi3otRrLnz.getObjectManager(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < aqxQSx_N8drux.getCollisionObjectNumber(); qIDlmOSolDW4_633998x5cr4++)
 {
 local BUBlLPsc8j1 = aqxQSx_N8drux.getCollisionObject(qIDlmOSolDW4_633998x5cr4); 
 
 if(!BUBlLPsc8j1
 || !H5t7YwkcS13cbWAi3otRrLnz.isEnemy(BUBlLPsc8j1)
 || !BUBlLPsc8j1.isObjectType(OBJECTTYPE_ACTIVE)
 || !BUBlLPsc8j1.isInDamagableState(H5t7YwkcS13cbWAi3otRrLnz)
 || CNSquirrelAppendage.sq_IsAppendAppendage(BUBlLPsc8j1, "character/gunner/g38arg/ap_g38arg.nut")) continue;
 BUBlLPsc8j1 = sq_GetCNRDObjectToActiveObject(BUBlLPsc8j1); 
 if(BUBlLPsc8j1.isDead() || BUBlLPsc8j1.getState == STATE_DIE) continue; 
 local dM4lXPPMIxZC5e38_Cc = BUBlLPsc8j1.getHp(); 
 if(dM4lXPPMIxZC5e38_Cc > hYIYXjYCWrBWM8jPfInD) 
 {
 hYIYXjYCWrBWM8jPfInD = dM4lXPPMIxZC5e38_Cc; 
 l_fYXYOe38bDkKOX = BUBlLPsc8j1; 
 }
 }
 if(l_fYXYOe38bDkKOX != null) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(sq_GetGroup(l_fYXYOe38bDkKOX));
 sq_BinaryWriteDword(sq_GetUniqueId(l_fYXYOe38bDkKOX));
 sq_BinaryWriteWord(
 (H5t7YwkcS13cbWAi3otRrLnz.getXPos() > l_fYXYOe38bDkKOX.getXPos()) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT 
 );
 sq_SendChangeSkillEffectPacket(H5t7YwkcS13cbWAi3otRrLnz, 244); 
 }
 else 
 {
 H5t7YwkcS13cbWAi3otRrLnz.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 H5t7YwkcS13cbWAi3otRrLnz.flushSetStatePacket(); 
 return;
 }
 }
 break;
 case 12: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argnonattack.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 local pDx5klG1fY = sq_GetVectorData(b7HADUMnBP, 0); 
 if(pDx5klG1fY != 1)return;
 local l_fYXYOe38bDkKOX = sq_GetCNRDObjectToActiveObject(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_obj_vector(0)); 
 if(l_fYXYOe38bDkKOX && !l_fYXYOe38bDkKOX.isDead())
 {
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentPos(l_fYXYOe38bDkKOX.getXPos(), l_fYXYOe38bDkKOX.getYPos(), l_fYXYOe38bDkKOX.getZPos() + sq_GetObjectHeight(l_fYXYOe38bDkKOX) / 2); 
 sq_moveWithParent(l_fYXYOe38bDkKOX, H5t7YwkcS13cbWAi3otRrLnz); 
 
 local X4NPA_WZwyDzVf = CNSquirrelAppendage.sq_GetAppendage(l_fYXYOe38bDkKOX, "character/gunner/g38arg/ap_g38arg.nut");
 if(X4NPA_WZwyDzVf)
 CNSquirrelAppendage.sq_RemoveAppendage(l_fYXYOe38bDkKOX, "character/gunner/g38arg/ap_g38arg.nut"); 
 X4NPA_WZwyDzVf = CNSquirrelAppendage.sq_AppendAppendage(l_fYXYOe38bDkKOX, H5t7YwkcS13cbWAi3otRrLnz, 244, true, "character/gunner/g38arg/ap_g38arg.nut", true); 
 if(X4NPA_WZwyDzVf)
 {
 X4NPA_WZwyDzVf.getVar().clear_vector(); 
 local tRGzb0J0g8 = H5t7YwkcS13cbWAi3otRrLnz.getVar(); 
 local KfaJE8AgF8bcqnp2qGL = X4NPA_WZwyDzVf.getVar(); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(1)); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(2)); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(3)); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(4)); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(5)); 
 KfaJE8AgF8bcqnp2qGL.push_vector(tRGzb0J0g8.get_vector(6)); 
 }
 }
 
 else if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 H5t7YwkcS13cbWAi3otRrLnz.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 H5t7YwkcS13cbWAi3otRrLnz.flushSetStatePacket(); 
 return;
 }
 break;
 case 13: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argattack.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 Z7Gz6LcQ1V.setSpeedRate(150.0); 
 break;
 case 14: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_RemoveMoveParticle(); 
 sq_moveWithParent(H5t7YwkcS13cbWAi3otRrLnz, H5t7YwkcS13cbWAi3otRrLnz); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/explosion_08.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 22); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 { 
 sq_flashScreen(H5t7YwkcS13cbWAi3otRrLnz, 0, 80, 0, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_DARK, ENUM_DRAWLAYER_BOTTOM);
 sq_flashScreen(H5t7YwkcS13cbWAi3otRrLnz, 0, 0, 300, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 }
 break;
 case 245: 
 local zUtcHlANs59GFWfsE23G = H5t7YwkcS13cbWAi3otRrLnz.getVar("subType").get_vector(0); 
 switch(zUtcHlANs59GFWfsE23G)
 {
 case 1:
 local Z7Gz6LcQ1V = null; 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/bomb_bomb.ani"); 
 
 H5t7YwkcS13cbWAi3otRrLnz.sq_SetMoveParticle("particle/supernova.ptl", 0.0, 0.0);
 break;
 case 11: 
 H5t7YwkcS13cbWAi3otRrLnz.sq_RemoveMoveParticle(); 
 Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/start/explosionstart_hemisphere01.ani"); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 23); 
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 2, 300); 
 break;
 case 12: 
 Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/loop/explosionloop_hemisphere01.ani"); 
 local sQn7xH2iUSJXH_ltPHa = H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(1); 
 local XKgObrsApDuHV = H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 24); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(0, sQn7xH2iUSJXH_ltPHa, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(1, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2), 0, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(2, sQn7xH2iUSJXH_ltPHa / 3 * 2, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().setInt(0, sQn7xH2iUSJXH_ltPHa / 3); 
 break;
 case 13: 
 H5t7YwkcS13cbWAi3otRrLnz.removeAllTimeEvent(); 
 Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/end/explosionend_hemisphere01.ani"); 
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 7, 200); 
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 8, 300); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(245); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 0, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 break;
 }
 if(NUtnPns2GdWa != 10) 
 {
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0)).tofloat() / 350.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 sq_SetAttackBoundingBoxSizeRate(Z7Gz6LcQ1V, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 }
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 2:
 switch(NUtnPns2GdWa)
 {
 case 10:
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorend/floorend_floornormal.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0)).tofloat() / 350.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 }
 break;
 }
 break;
 case 246: 
 local zUtcHlANs59GFWfsE23G = H5t7YwkcS13cbWAi3otRrLnz.getVar("subType").get_vector(0); 
 switch(zUtcHlANs59GFWfsE23G)
 {
 case 1: 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_BOTTOM); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetloop_00.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 }
 break;
 case 11: 
 sq_ChangeDrawLayer(H5t7YwkcS13cbWAi3otRrLnz, ENUM_DRAWLAYER_NORMAL); 
 sq_setCurrentAxisPos(H5t7YwkcS13cbWAi3otRrLnz, 0, sq_GetVectorData(b7HADUMnBP, 0)); 
 sq_setCurrentAxisPos(H5t7YwkcS13cbWAi3otRrLnz, 1, sq_GetVectorData(b7HADUMnBP, 1)); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerready_body.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 
 sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetend_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 case 12: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfire_body.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 local XcyNl7nSpQrUN2ulrKG = sq_GetVectorData(b7HADUMnBP, 0); 
 switch(XcyNl7nSpQrUN2ulrKG)
 {
 case 1:
 
 local n19cWR0u_pUrzTuMFzndkJAz = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetarea.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(n19cWR0u_pUrzTuMFzndkJAz, 0, sq_GetDistancePos(H5t7YwkcS13cbWAi3otRrLnz.getXPos(), H5t7YwkcS13cbWAi3otRrLnz.getDirection(), 120)); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(246); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 120, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 break;
 case 2:
 local cxwjTVbbVwKdSfJ7i = sq_GetVectorData(b7HADUMnBP, 1); 
 local qX0epDoUSplnToUMe8HKs = [19, 58, -27, -56]; 
 local iInzjR26Pt93Amv = [148, 125, 149, 127]; 
 
 local ph8Nqt4fnmUDq = [
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_a.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_b.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_c.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_d.ani"];
 
 local hkjRDaYKdUTYQthQn7lM = [
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirea_00.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfireb_00.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirec_00.ani"
 "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfired_00.ani"];
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < 4; qIDlmOSolDW4_633998x5cr4++) 
 {
 if(qIDlmOSolDW4_633998x5cr4 == cxwjTVbbVwKdSfJ7i) continue; 
 local OJNM0mawAZP2kLIzC = qX0epDoUSplnToUMe8HKs[qIDlmOSolDW4_633998x5cr4]; 
 local DgPnpIBlpylEfy3Ut = iInzjR26Pt93Amv[qIDlmOSolDW4_633998x5cr4]; 
 
 sq_AddDrawOnlyAniFromParent(H5t7YwkcS13cbWAi3otRrLnz, ph8Nqt4fnmUDq[qIDlmOSolDW4_633998x5cr4], 0, 0, 0);
 
 sq_AddDrawOnlyAniFromParent(H5t7YwkcS13cbWAi3otRrLnz, hkjRDaYKdUTYQthQn7lM[qIDlmOSolDW4_633998x5cr4], 0, -1, 0);
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(246); 
 sq_BinaryWriteDword(2); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, OJNM0mawAZP2kLIzC, 0, DgPnpIBlpylEfy3Ut, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 }
 H5t7YwkcS13cbWAi3otRrLnz.getVar().set_vector(1, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(1) - 1); 
 break;
 }
 break;
 case 13: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicideready_body.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 14: 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("move").clear_vector(); 
 local wny4A8vzMSRCuM = H5t7YwkcS13cbWAi3otRrLnz.getVar("move"); 
 wny4A8vzMSRCuM.push_vector(sq_GetVectorData(b7HADUMnBP, 0)); 
 wny4A8vzMSRCuM.push_vector(sq_GetVectorData(b7HADUMnBP, 1)); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicide_body.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 
 sq_AddDrawOnlyAniFromParent(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suicidedust_00.ani", 0, -1, 0);
 break;
 case 15: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosiona_body.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 break;
 case 16: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionb_04.ani"); 
 local AmGI1Q1kUH6f27cw = (H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(3)).tofloat() / 100.0; 
 Z7Gz6LcQ1V.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 Z7Gz6LcQ1V.setAutoLayerWorkAnimationAddSizeRate(AmGI1Q1kUH6f27cw); 
 sq_SetAttackBoundingBoxSizeRate(Z7Gz6LcQ1V, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 sq_SetCurrentAttackInfoFromCustomIndex(H5t7YwkcS13cbWAi3otRrLnz, 26); 
 
 local n19cWR0u_pUrzTuMFzndkJAz = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionground_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
 local F2GBcsceXLDnsCXDwF = n19cWR0u_pUrzTuMFzndkJAz.getCurrentAnimation(); 
 if(F2GBcsceXLDnsCXDwF)F2GBcsceXLDnsCXDwF.setImageRateFromOriginal(AmGI1Q1kUH6f27cw, AmGI1Q1kUH6f27cw); 
 
 sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhandeff_ground_normal.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 sq_AddDrawOnlyAniFromParent(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhand.ani", 0, -1, 0);
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 5, 320); 
 break;
 }
 break;
 case 2: 
 switch(NUtnPns2GdWa)
 {
 case 10: 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missile_01.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().clear_vector(); 
 local tRGzb0J0g8 = H5t7YwkcS13cbWAi3otRrLnz.getVar(); 
 tRGzb0J0g8.push_vector(1); 
 tRGzb0J0g8.push_vector(H5t7YwkcS13cbWAi3otRrLnz.getXPos()); 
 tRGzb0J0g8.push_vector(H5t7YwkcS13cbWAi3otRrLnz.getZPos()); 
 tRGzb0J0g8.push_vector(sq_GetVectorData(b7HADUMnBP, 0)); 
 tRGzb0J0g8.push_vector(sq_GetVectorData(b7HADUMnBP, 1)); 
 tRGzb0J0g8.push_vector(sq_GetVectorData(b7HADUMnBP, 2)); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(1, 70, 0, false); 
 break;
 case 11: 
 H5t7YwkcS13cbWAi3otRrLnz.removeAllTimeEvent(); 
 sq_SetCustomRotate(H5t7YwkcS13cbWAi3otRrLnz, 0.0); 
 local Z7Gz6LcQ1V = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosion_04.ani"); 
 H5t7YwkcS13cbWAi3otRrLnz.setCurrentAnimation(Z7Gz6LcQ1V); 
 
 sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosionground_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 3, 80); 
 local gBcTSrZzrhPlGPMxEPVc = sq_GetCNRDObjectToCollisionObject(H5t7YwkcS13cbWAi3otRrLnz.getParent()); 
 gBcTSrZzrhPlGPMxEPVc.getVar("atkcount").set_vector(0, gBcTSrZzrhPlGPMxEPVc.getVar("atkcount").get_vector(0) + 1); 
 break;
 }
 break;
 }
 break;
 case 247: 
 local zUtcHlANs59GFWfsE23G = H5t7YwkcS13cbWAi3otRrLnz.getVar("subType").get_vector(0); 
 if(zUtcHlANs59GFWfsE23G == 1)
 {
 switch(NUtnPns2GdWa)
 {
 case 10: 
 local u5BOkzD3tFl = H5t7YwkcS13cbWAi3otRrLnz.getXPos(); 
 local U1qkv3YhsplKyz1 = H5t7YwkcS13cbWAi3otRrLnz.getYPos(); 
 local ZHZfADccJY_6taCQhhgmYE9 = H5t7YwkcS13cbWAi3otRrLnz.getDirection(); 
 local GxDGT5lNkLwhX5WKvUEL4mq1 = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local ZkK5lyyUZWy_IKAr = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani", ENUM_DRAWLAYER_NORMAL, false); 
 GxDGT5lNkLwhX5WKvUEL4mq1.setCurrentPos(sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, -65), U1qkv3YhsplKyz1 - 110, 0); 
 ZkK5lyyUZWy_IKAr.setCurrentPos(sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, -75), U1qkv3YhsplKyz1 + 70, 0); 
 local Pf8cUaGn2N = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local hVraSgFYEL = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani", ENUM_DRAWLAYER_NORMAL, false); 
 Pf8cUaGn2N.setCurrentPos(sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, 845 + 65), U1qkv3YhsplKyz1 - 110, 0); 
 hVraSgFYEL.setCurrentPos(sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, 845 + 75), U1qkv3YhsplKyz1 + 70, 0); 
 sq_SetCurrentDirection(Pf8cUaGn2N, sq_GetOppositeDirection(ZHZfADccJY_6taCQhhgmYE9)); 
 sq_SetCurrentDirection(hVraSgFYEL, sq_GetOppositeDirection(ZHZfADccJY_6taCQhhgmYE9)); 
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj").clear_obj_vector(); 
 local UBP1xdKHHZT2XGXCw72bhiyf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj"); 
 UBP1xdKHHZT2XGXCw72bhiyf.push_obj_vector(GxDGT5lNkLwhX5WKvUEL4mq1); 
 UBP1xdKHHZT2XGXCw72bhiyf.push_obj_vector(ZkK5lyyUZWy_IKAr); 
 UBP1xdKHHZT2XGXCw72bhiyf.push_obj_vector(Pf8cUaGn2N); 
 UBP1xdKHHZT2XGXCw72bhiyf.push_obj_vector(hVraSgFYEL); 
 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/laser_electric02.ani", ENUM_DRAWLAYER_COVER, true), 1, U1qkv3YhsplKyz1 + 85); 
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(247); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(1)); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(2)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 0, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(0, 1040, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(1, 880, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(2, 1000, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(3, 1650, 1, false); 
 break;
 case 11: 
 local oVSS199RG5wy = [
 "character/gunner/effect/animation/hellmarch/gate/back/gateloop_dot4.ani", 
 "character/gunner/effect/animation/hellmarch/gate/front/gateloop_dot2.ani"]; 
 
 local UBP1xdKHHZT2XGXCw72bhiyf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj"); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < 4; qIDlmOSolDW4_633998x5cr4++)
 {
 local n19cWR0u_pUrzTuMFzndkJAz = UBP1xdKHHZT2XGXCw72bhiyf.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(n19cWR0u_pUrzTuMFzndkJAz) 
 n19cWR0u_pUrzTuMFzndkJAz.setCurrentAnimation(sq_CreateAnimation("", oVSS199RG5wy[qIDlmOSolDW4_633998x5cr4 % 2]));
 }
 
 local YM6xqd4yNcgtmR = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "character/gunner/effect/animation/hellmarch/gate/gateground_03.ani", ENUM_DRAWLAYER_BOTTOM, true);
 UBP1xdKHHZT2XGXCw72bhiyf.push_obj_vector(YM6xqd4yNcgtmR); 
 break;
 case 12: 
 
 local u5BOkzD3tFl = H5t7YwkcS13cbWAi3otRrLnz.getXPos(); 
 local ZHZfADccJY_6taCQhhgmYE9 = H5t7YwkcS13cbWAi3otRrLnz.getDirection(); 
 local ngo4oPqVFmI0J = sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, -100); 
 local y3WK_JMT7IgPXvSvB461yCMC = sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, 845 + 100); 
 local GxDGT5lNkLwhX5WKvUEL4mq1 = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_appear_leftfootmove1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local ZkK5lyyUZWy_IKAr = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_leftfootmove1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 
 (GxDGT5lNkLwhX5WKvUEL4mq1.getCurrentAnimation()).addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_leftfootmove.ani"), true);
 (ZkK5lyyUZWy_IKAr.getCurrentAnimation()).addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_leftfootmove.ani"), true);
 sq_setCurrentAxisPos(GxDGT5lNkLwhX5WKvUEL4mq1, 0, ngo4oPqVFmI0J); 
 sq_setCurrentAxisPos(ZkK5lyyUZWy_IKAr, 0, y3WK_JMT7IgPXvSvB461yCMC); 
 sq_SetCurrentDirection(ZkK5lyyUZWy_IKAr, sq_GetOppositeDirection(ZHZfADccJY_6taCQhhgmYE9)); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").clear_obj_vector(); 
 local V__P61FjTdyimJ5Y = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 V__P61FjTdyimJ5Y.push_obj_vector(GxDGT5lNkLwhX5WKvUEL4mq1); 
 V__P61FjTdyimJ5Y.push_obj_vector(ZkK5lyyUZWy_IKAr); 
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").push_vector(ngo4oPqVFmI0J); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").push_vector(y3WK_JMT7IgPXvSvB461yCMC); 
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("clarity").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("clarity").push_vector(0); 
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").push_vector(1); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").push_vector(1); 
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj2").clear_obj_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(4, 100, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().set_vector(0, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0) - 1); 
 break;
 case 13: 
 
 local u5BOkzD3tFl = H5t7YwkcS13cbWAi3otRrLnz.getXPos(); 
 local U1qkv3YhsplKyz1 = H5t7YwkcS13cbWAi3otRrLnz.getYPos(); 
 local ZHZfADccJY_6taCQhhgmYE9 = H5t7YwkcS13cbWAi3otRrLnz.getDirection(); 
 local GF4jXNllpeZ3muI4AuLqdSm = sq_GetOppositeDirection(ZHZfADccJY_6taCQhhgmYE9); 
 local _jq0tXjOU4FfRyQsY4l7f = sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, -100 + 30 * 3); 
 local RoIljK3rv0tojz = sq_GetDistancePos(u5BOkzD3tFl, ZHZfADccJY_6taCQhhgmYE9, 845 + 100 - 30 * 3); 
 local btjDqgxzakcUvcoolfPKL = U1qkv3YhsplKyz1 - 20 * 3; 
 local HxQYlmF9aJ6nrJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 local lrZ5Hf0Cqv = HxQYlmF9aJ6nrJ.get_obj_vector(0); 
 local sODVIRC7kVevVVIw6UmN = HxQYlmF9aJ6nrJ.get_obj_vector(1); 
 local nu6qKD3BDmh8Aa = H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").get_vector(0); 
 local zh8xR5h68OV = ""; 
 if(nu6qKD3BDmh8Aa == 1)
 {
 zh8xR5h68OV = "right"; 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").set_vector(0, 2); 
 }
 else if(nu6qKD3BDmh8Aa == 2)
 {
 zh8xR5h68OV = "left"; 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").set_vector(0, 1); 
 }
 local ieCyEmkDlYSJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").get_vector(1); 
 if(ieCyEmkDlYSJ >= 5)ieCyEmkDlYSJ = 1; 
 local XqYfGfeWEGIb4se29NzXEX = ""; 
 if(ieCyEmkDlYSJ == 1 || ieCyEmkDlYSJ == 4)
 XqYfGfeWEGIb4se29NzXEX = "1"; 
 else if(ieCyEmkDlYSJ == 2 || ieCyEmkDlYSJ == 3)
 XqYfGfeWEGIb4se29NzXEX = "2"; 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("direction").set_vector(1, ieCyEmkDlYSJ + 1); 
 if(lrZ5Hf0Cqv)
 {
 lrZ5Hf0Cqv.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/LeaderRed/leader_appear_" + zh8xR5h68OV + "footmove" + XqYfGfeWEGIb4se29NzXEX + ".ani")); 
 lrZ5Hf0Cqv.getCurrentAnimation().addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_" + zh8xR5h68OV + "footmove.ani"), true); 
 }
 if(sODVIRC7kVevVVIw6UmN)
 {
 sODVIRC7kVevVVIw6UmN.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_" + zh8xR5h68OV + "footmove" + XqYfGfeWEGIb4se29NzXEX + ".ani")); 
 sODVIRC7kVevVVIw6UmN.getCurrentAnimation().addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_" + zh8xR5h68OV + "footmove.ani"), true); 
 }
 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").clear_vector(); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").push_vector(lrZ5Hf0Cqv.getXPos()); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1").push_vector(sODVIRC7kVevVVIw6UmN.getXPos()); 
 local ZpFQomROYiRDCSAsaAmbf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj2"); 
 local SbttPoIoNyNjF = ZpFQomROYiRDCSAsaAmbf.get_obj_vector_size(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < SbttPoIoNyNjF; qIDlmOSolDW4_633998x5cr4++)
 {
 local hjR892gfTWud4H = ZpFQomROYiRDCSAsaAmbf.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(hjR892gfTWud4H)
 {
 hjR892gfTWud4H.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_" + zh8xR5h68OV + "footmove" + XqYfGfeWEGIb4se29NzXEX + ".ani")); 
 
 (hjR892gfTWud4H.getCurrentAnimation()).addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_" + zh8xR5h68OV + "footmove.ani"), true);
 }
 }
 
 if(SbttPoIoNyNjF < 6 * 2 * 3)
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < 7; qIDlmOSolDW4_633998x5cr4++)
 {
 if(qIDlmOSolDW4_633998x5cr4 == 3) continue; 
 local GxDGT5lNkLwhX5WKvUEL4mq1 = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_" + zh8xR5h68OV + "footmove" + XqYfGfeWEGIb4se29NzXEX + ".ani", ENUM_DRAWLAYER_NORMAL, false); 
 local ZkK5lyyUZWy_IKAr = sq_CreateDrawOnlyObject(H5t7YwkcS13cbWAi3otRrLnz, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_" + zh8xR5h68OV + "footmove" + XqYfGfeWEGIb4se29NzXEX + ".ani", ENUM_DRAWLAYER_NORMAL, false); 
 
 GxDGT5lNkLwhX5WKvUEL4mq1.getCurrentAnimation().addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_" + zh8xR5h68OV + "footmove.ani"), false);
 ZkK5lyyUZWy_IKAr.getCurrentAnimation().addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_" + zh8xR5h68OV + "footmove.ani"), false);
 local GiWpcK5x9qO6hkC = btjDqgxzakcUvcoolfPKL + 20 * qIDlmOSolDW4_633998x5cr4; 
 GxDGT5lNkLwhX5WKvUEL4mq1.setCurrentPos(sq_GetDistancePos(_jq0tXjOU4FfRyQsY4l7f, ZHZfADccJY_6taCQhhgmYE9, -30 * qIDlmOSolDW4_633998x5cr4), GiWpcK5x9qO6hkC, 0); 
 ZkK5lyyUZWy_IKAr.setCurrentPos(sq_GetDistancePos(RoIljK3rv0tojz, ZHZfADccJY_6taCQhhgmYE9, 30 * qIDlmOSolDW4_633998x5cr4), GiWpcK5x9qO6hkC, 0); 
 sq_SetCurrentDirection(ZkK5lyyUZWy_IKAr, GF4jXNllpeZ3muI4AuLqdSm); 
 sq_moveWithParent(lrZ5Hf0Cqv, GxDGT5lNkLwhX5WKvUEL4mq1); 
 sq_moveWithParent(sODVIRC7kVevVVIw6UmN, ZkK5lyyUZWy_IKAr); 
 ZpFQomROYiRDCSAsaAmbf.push_obj_vector(GxDGT5lNkLwhX5WKvUEL4mq1); 
 ZpFQomROYiRDCSAsaAmbf.push_obj_vector(ZkK5lyyUZWy_IKAr); 
 }
 
 local QwtzGeW50sLex = H5t7YwkcS13cbWAi3otRrLnz.getVar("clarity"); 
 local wZe57FmvOANUaQSAF = QwtzGeW50sLex.size_vector(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < wZe57FmvOANUaQSAF; qIDlmOSolDW4_633998x5cr4++)
 {
 local _T8HCaa8T_xcc8L1subT213 = QwtzGeW50sLex.get_vector(qIDlmOSolDW4_633998x5cr4); 
 QwtzGeW50sLex.set_vector(qIDlmOSolDW4_633998x5cr4, _T8HCaa8T_xcc8L1subT213 + H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(6)); 
 }
 if(wZe57FmvOANUaQSAF < 4) 
 QwtzGeW50sLex.push_vector(0); 
 H5t7YwkcS13cbWAi3otRrLnz.setTimeEvent(4, 100, 1, false); 
 H5t7YwkcS13cbWAi3otRrLnz.getVar().set_vector(0, H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(0) - 1); 
 break;
 case 14: 
 {
 local oVSS199RG5wy = [
 "character/gunner/effect/animation/hellmarch/gate/back/gateend_dot4.ani", 
 "character/gunner/effect/animation/hellmarch/gate/front/gateend_dot2.ani"]; 
 local BHxC0Jzg3GjIUw1E = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj"); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < 4; qIDlmOSolDW4_633998x5cr4++)
 {
 local n19cWR0u_pUrzTuMFzndkJAz = BHxC0Jzg3GjIUw1E.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(n19cWR0u_pUrzTuMFzndkJAz) 
 n19cWR0u_pUrzTuMFzndkJAz.setCurrentAnimation(sq_CreateAnimation("", oVSS199RG5wy[qIDlmOSolDW4_633998x5cr4 % 2]));
 }
 }
 local HxQYlmF9aJ6nrJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 local lrZ5Hf0Cqv = HxQYlmF9aJ6nrJ.get_obj_vector(0); 
 local sODVIRC7kVevVVIw6UmN = HxQYlmF9aJ6nrJ.get_obj_vector(1); 
 if(lrZ5Hf0Cqv)
 lrZ5Hf0Cqv.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_sir.ani")); 
 if(sODVIRC7kVevVVIw6UmN)
 sODVIRC7kVevVVIw6UmN.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_sir.ani")); 
 local ZpFQomROYiRDCSAsaAmbf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj2"); 
 local SbttPoIoNyNjF = ZpFQomROYiRDCSAsaAmbf.get_obj_vector_size(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < SbttPoIoNyNjF; qIDlmOSolDW4_633998x5cr4++)
 {
 local hjR892gfTWud4H = ZpFQomROYiRDCSAsaAmbf.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(hjR892gfTWud4H)
 hjR892gfTWud4H.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_sir.ani")); 
 }
 
 local QwtzGeW50sLex = H5t7YwkcS13cbWAi3otRrLnz.getVar("clarity"); 
 local wZe57FmvOANUaQSAF = QwtzGeW50sLex.size_vector(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < wZe57FmvOANUaQSAF; qIDlmOSolDW4_633998x5cr4++)
 {
 local _T8HCaa8T_xcc8L1subT213 = QwtzGeW50sLex.get_vector(qIDlmOSolDW4_633998x5cr4); 
 QwtzGeW50sLex.set_vector(qIDlmOSolDW4_633998x5cr4, _T8HCaa8T_xcc8L1subT213 + H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(6)); 
 }
 break;
 case 15: 
 local HxQYlmF9aJ6nrJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 local lrZ5Hf0Cqv = HxQYlmF9aJ6nrJ.get_obj_vector(0); 
 local sODVIRC7kVevVVIw6UmN = HxQYlmF9aJ6nrJ.get_obj_vector(1); 
 if(lrZ5Hf0Cqv)
 lrZ5Hf0Cqv.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_readytoexplosion.ani")); 
 if(sODVIRC7kVevVVIw6UmN)
 sODVIRC7kVevVVIw6UmN.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_readytoexplosion.ani")); 
 local ZpFQomROYiRDCSAsaAmbf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj2"); 
 local SbttPoIoNyNjF = ZpFQomROYiRDCSAsaAmbf.get_obj_vector_size(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < SbttPoIoNyNjF; qIDlmOSolDW4_633998x5cr4++)
 {
 local hjR892gfTWud4H = ZpFQomROYiRDCSAsaAmbf.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(hjR892gfTWud4H)
 hjR892gfTWud4H.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_readytoexplosion.ani")); 
 }
 break;
 case 16: 
 local ZpFQomROYiRDCSAsaAmbf = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj2"); 
 local SbttPoIoNyNjF = ZpFQomROYiRDCSAsaAmbf.get_obj_vector_size(); 
 for(local qIDlmOSolDW4_633998x5cr4 = 0; qIDlmOSolDW4_633998x5cr4 < SbttPoIoNyNjF; qIDlmOSolDW4_633998x5cr4++)
 {
 local hjR892gfTWud4H = ZpFQomROYiRDCSAsaAmbf.get_obj_vector(qIDlmOSolDW4_633998x5cr4); 
 if(hjR892gfTWud4H)
 hjR892gfTWud4H.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani")); 
 }
 
 local HxQYlmF9aJ6nrJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 local lrZ5Hf0Cqv = HxQYlmF9aJ6nrJ.get_obj_vector(0); 
 local sODVIRC7kVevVVIw6UmN = HxQYlmF9aJ6nrJ.get_obj_vector(1); 
 local JPS8tH2WcCoFlO = sq_GetDirection(lrZ5Hf0Cqv); 
 local ScDafhaIWqw_d4ThuzJpy3 = sq_GetDirection(sODVIRC7kVevVVIw6UmN); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", lrZ5Hf0Cqv, sq_GetDistancePos(0, JPS8tH2WcCoFlO, -100), -60, 120, false, 100, 0, 2);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", sODVIRC7kVevVVIw6UmN, sq_GetDistancePos(0, ScDafhaIWqw_d4ThuzJpy3, -100), -60, 120, false, 100, 0, 2);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", lrZ5Hf0Cqv, sq_GetDistancePos(0, JPS8tH2WcCoFlO, -180), 0, 120, false, 100, 0, 2);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", sODVIRC7kVevVVIw6UmN, sq_GetDistancePos(0, ScDafhaIWqw_d4ThuzJpy3, -180), 0, 120, false, 100, 0, 2);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", lrZ5Hf0Cqv, sq_GetDistancePos(0, JPS8tH2WcCoFlO, -280), 60, 120, false, 100, 0, 2);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl", sODVIRC7kVevVVIw6UmN, sq_GetDistancePos(0, ScDafhaIWqw_d4ThuzJpy3, -280), 60, 120, false, 100, 0, 2);
 if(H5t7YwkcS13cbWAi3otRrLnz.isMyControlObject())
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(247); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(3)); 
 sq_BinaryWriteDword(H5t7YwkcS13cbWAi3otRrLnz.getVar().get_vector(4)); 
 sq_SendCreatePassiveObjectPacket(H5t7YwkcS13cbWAi3otRrLnz, 24371, 0, 0, 0, 0, H5t7YwkcS13cbWAi3otRrLnz.getDirection()); 
 }
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 5, 300); 
 break;
 case 17: 
 local HxQYlmF9aJ6nrJ = H5t7YwkcS13cbWAi3otRrLnz.getVar("aniobj1"); 
 local lrZ5Hf0Cqv = HxQYlmF9aJ6nrJ.get_obj_vector(0); 
 local sODVIRC7kVevVVIw6UmN = HxQYlmF9aJ6nrJ.get_obj_vector(1); 
 if(lrZ5Hf0Cqv)
 lrZ5Hf0Cqv.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani")); 
 if(sODVIRC7kVevVVIw6UmN)
 sODVIRC7kVevVVIw6UmN.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani")); 
 sq_SetMyShake(H5t7YwkcS13cbWAi3otRrLnz, 5, 300); 
 break;
 }
 }
 break;
 }
} ;
 
