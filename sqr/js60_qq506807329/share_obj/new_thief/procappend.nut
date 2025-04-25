
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
function procAppend_po_qq506807329new_thief_24378(fPwkJpuAoD43Ps1XQvDrfZD5)
{
 if(!fPwkJpuAoD43Ps1XQvDrfZD5) return;
 local oXvTDV106lKRYCEivfZ9Nk = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("skill").get_vector(0); 
 local xgB4oGQfN5WUjS5bK23EXq = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("subType").get_vector(0); 
 local VEqBKvZBZP38uG = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("state").get_vector(0); 
 switch(oXvTDV106lKRYCEivfZ9Nk)
 {
 case 223: 
 switch(xgB4oGQfN5WUjS5bK23EXq)
 {
 case 1:
 if(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getBool(2) != true)return; 
 local Feb4Xb4tebjK16CHNr61l7 = fPwkJpuAoD43Ps1XQvDrfZD5.getParent(); 
 if(!Feb4Xb4tebjK16CHNr61l7)
 { 
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5);
 return;
 }
 if(Feb4Xb4tebjK16CHNr61l7.getState() == 10) 
 {
 if(Feb4Xb4tebjK16CHNr61l7.isCurrentAnimationIndex(22) == false) 
 {
 local DK49ONdEHO0pK5HiAKgMhkY = sq_GetCNRDObjectToCollisionObject(Feb4Xb4tebjK16CHNr61l7); 
 if(DK49ONdEHO0pK5HiAKgMhkY)
 {
 sq_SetVelocity(DK49ONdEHO0pK5HiAKgMhkY, 0, 0.0); 
 sq_moveWithParent(fPwkJpuAoD43Ps1XQvDrfZD5, DK49ONdEHO0pK5HiAKgMhkY); 
 
 setCurrentAnimationFromCutomIndex(DK49ONdEHO0pK5HiAKgMhkY, 22); 
 sq_SetCurrentAttackInfoFromCustomIndex(DK49ONdEHO0pK5HiAKgMhkY, 15); 
 local LMX6VqFgEsHtHgdiJVW81F = DK49ONdEHO0pK5HiAKgMhkY.getCurrentAnimation(); 
 sq_Rewind(LMX6VqFgEsHtHgdiJVW81F); 
 LMX6VqFgEsHtHgdiJVW81F.setSpeedRate(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getFloat(1)); 
 local F8Vdw49ziw = sq_GetCurrentAttackInfo(DK49ONdEHO0pK5HiAKgMhkY); 
 sq_SetCurrentAttackBonusRate(F8Vdw49ziw, fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getInt(0)); 
 }
 }
 else
 {
 local LMX6VqFgEsHtHgdiJVW81F = Feb4Xb4tebjK16CHNr61l7.getCurrentAnimation(); 
 if(sq_IsEnd(LMX6VqFgEsHtHgdiJVW81F)) 
 {
 sq_moveWithParent(fPwkJpuAoD43Ps1XQvDrfZD5, fPwkJpuAoD43Ps1XQvDrfZD5); 
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 sq_GetCNRDObjectToCollisionObject(Feb4Xb4tebjK16CHNr61l7).sendStateOnlyPacket(3); 
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5); 
 }
 return;
 }
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 {
 local Q68xJbH2X9N_GEp = sq_GetAnimationFrameIndex(LMX6VqFgEsHtHgdiJVW81F); 
 if(Q68xJbH2X9N_GEp >= 4 && fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getBool(3) == false)
 {
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar().setBool(3, true);
 sq_SetMyShake(fPwkJpuAoD43Ps1XQvDrfZD5, 3, 120);
 local Xb2Q4ErmyVrj6nzn = sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 100, 99990, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("flashobj").clear_obj_vector(); 
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("flashobj").push_obj_vector(Xb2Q4ErmyVrj6nzn); 
 }
 else if(Q68xJbH2X9N_GEp >= 16 && fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getBool(4) == false)
 {
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar().setBool(4, true);
 RemoveAllFlash(fPwkJpuAoD43Ps1XQvDrfZD5); 
 sq_SetMyShake(fPwkJpuAoD43Ps1XQvDrfZD5, 5, 240);
 sq_flashScreen(fPwkJpuAoD43Ps1XQvDrfZD5, 0, 60, 300, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 }
 }
 }
 }
 else if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5); 
 break;
 }
 break;
 case 224: 
 switch(xgB4oGQfN5WUjS5bK23EXq)
 {
 case 1:
 local qUN0MlYhiJXpULoot = sq_GetObjectTime(fPwkJpuAoD43Ps1XQvDrfZD5);
 local FnZoZZmyCpgBsIhbGBs = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("atkobj").get_obj_vector_size(); 
 if(FnZoZZmyCpgBsIhbGBs > 0)
 {
 if(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getBool(2) == false)
 {
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar().setBool(2, true); 
 }
 for(local C5gwGDpum3C8KCP0 = 0; C5gwGDpum3C8KCP0 < FnZoZZmyCpgBsIhbGBs; C5gwGDpum3C8KCP0++)
 {
 local SF5kAbs0sxrX94dBFA = sq_GetCNRDObjectToActiveObject(fPwkJpuAoD43Ps1XQvDrfZD5.getVar("atkobj").get_obj_vector(C5gwGDpum3C8KCP0)); 
 if(SF5kAbs0sxrX94dBFA)
 {
 local pOc7QpUKhu5kNhV59i0 = CNSquirrelAppendage.sq_GetAppendage(SF5kAbs0sxrX94dBFA, "character/new_thief/nicolasblackarachnia/ap_nicolasblackarachnia.nut");
 if(pOc7QpUKhu5kNhV59i0)
 {
 local E2qzi6fh_me3 = pOc7QpUKhu5kNhV59i0.getVar().get_timer_vector(0);
 if(!E2qzi6fh_me3)
 {
 pOc7QpUKhu5kNhV59i0.getVar().clear_timer_vector();
 pOc7QpUKhu5kNhV59i0.getVar().push_timer_vector();
 E2qzi6fh_me3 = pOc7QpUKhu5kNhV59i0.getVar().get_timer_vector(0);
 E2qzi6fh_me3.setParameter(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getInt(1), -1); 
 E2qzi6fh_me3.resetInstant(0); 
 }
 if(E2qzi6fh_me3.isOnEvent(qUN0MlYhiJXpULoot) == true && SF5kAbs0sxrX94dBFA.isDead() == false)
 {
 sq_SendHitObjectPacket(fPwkJpuAoD43Ps1XQvDrfZD5, SF5kAbs0sxrX94dBFA, 0, 0, sq_GetObjectHeight(SF5kAbs0sxrX94dBFA) / 2); 
 }
 }
 else 
 {
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("atkobj").remove_obj_vector(SF5kAbs0sxrX94dBFA);
 return;
 }
 }
 }
 }
 else 
 {
 if(fPwkJpuAoD43Ps1XQvDrfZD5.getVar().getBool(2) == false) 
 {
 local SF5kAbs0sxrX94dBFA = sq_GetCNRDObjectToActiveObject(fPwkJpuAoD43Ps1XQvDrfZD5.getParent()); 
 if(SF5kAbs0sxrX94dBFA.getState() != 8||SF5kAbs0sxrX94dBFA.getAttackIndex() != 8) 
 {
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5);
 }
 } 
 else
 {
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5);
 }
 }
 break;
 }
 break;
 case 225: 
 switch(xgB4oGQfN5WUjS5bK23EXq)
 {
 case 2:
 local LMX6VqFgEsHtHgdiJVW81F = fPwkJpuAoD43Ps1XQvDrfZD5.getCurrentAnimation();
 local Q68xJbH2X9N_GEp = sq_GetAnimationFrameIndex(LMX6VqFgEsHtHgdiJVW81F); 
 if(Q68xJbH2X9N_GEp >= 15 && Q68xJbH2X9N_GEp < 30) 
 {
 setRangeObjectPosEx(fPwkJpuAoD43Ps1XQvDrfZD5, 600, sq_GetDistancePos(0, fPwkJpuAoD43Ps1XQvDrfZD5.getDirection(), 220), 0, ENUM_DIRECTION_NEUTRAL, 0, 400, 300, 5); 
 }
 else if(Q68xJbH2X9N_GEp > 30 && Q68xJbH2X9N_GEp < 58)
 {
 local E2qzi6fh_me3 = fPwkJpuAoD43Ps1XQvDrfZD5.getVar().get_timer_vector(0);
 if(E2qzi6fh_me3.isOnEvent(sq_GetCurrentTime(LMX6VqFgEsHtHgdiJVW81F)) == true)
 {
 fPwkJpuAoD43Ps1XQvDrfZD5.resetHitObjectList(); 
 }
 }
 if(Q68xJbH2X9N_GEp < 26)
 {
 local RBOdqK1eGJ6ItD = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("aniobj").get_obj_vector(0); 
 if(!RBOdqK1eGJ6ItD.isCurrentAnimationIndex(0)) 
 {
 local Vw6SXCvu17JWR34 = RBOdqK1eGJ6ItD.getCurrentAnimation();
 if(sq_IsEnd(Vw6SXCvu17JWR34)) 
 setCurrentAnimationFromCutomIndex(RBOdqK1eGJ6ItD, 0); 
 else if(fPwkJpuAoD43Ps1XQvDrfZD5.getVar("aniobj").get_obj_vector_size()<2 && sq_GetAnimationFrameIndex(Vw6SXCvu17JWR34)>=11) 
 {
 local QbAONZUOEAUi1_AMkxB0XQ = sq_AddDrawOnlyAniFromParent(RBOdqK1eGJ6ItD, "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/ballacrebeadfocus/beadfocusa_05.ani", 0, 0, 0); 
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("aniobj").push_obj_vector(QbAONZUOEAUi1_AMkxB0XQ); 
 }
 }
 else
 {
 local Vw6SXCvu17JWR34 = RBOdqK1eGJ6ItD.getCurrentAnimation();
 if(sq_IsEnd(Vw6SXCvu17JWR34)) 
 sq_Rewind(Vw6SXCvu17JWR34); 
 }
 }
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject() && Q68xJbH2X9N_GEp < 56)
 {
 local RBOdqK1eGJ6ItD = fPwkJpuAoD43Ps1XQvDrfZD5.getVar("aniobj2").get_obj_vector(0); 
 if(RBOdqK1eGJ6ItD && !RBOdqK1eGJ6ItD.isCurrentAnimationIndex(0))
 {
 if(sq_IsEnd(RBOdqK1eGJ6ItD.getCurrentAnimation())) 
 setCurrentAnimationFromCutomIndex(RBOdqK1eGJ6ItD, 0); 
 }
 }
 break;
 }
 break;
 default:
 
 if(fPwkJpuAoD43Ps1XQvDrfZD5.getVar("isProc").getBool(0) == true)return;
 fPwkJpuAoD43Ps1XQvDrfZD5.getVar("isProc").setBool(0, true); 
 local Feb4Xb4tebjK16CHNr61l7 = fPwkJpuAoD43Ps1XQvDrfZD5.getParent(); 
 if(!Feb4Xb4tebjK16CHNr61l7.isObjectType(OBJECTTYPE_MONSTER))return; 
 local vTLc6u1U_Oy7j6K31DJOIw = fPwkJpuAoD43Ps1XQvDrfZD5.getTopCharacter(); 
 if(!vTLc6u1U_Oy7j6K31DJOIw || sq_getJob(vTLc6u1U_Oy7j6K31DJOIw) != ENUM_CHARACTERJOB_THIEF) 
 {
 if(Feb4Xb4tebjK16CHNr61l7.isMyControlObject())
 Feb4Xb4tebjK16CHNr61l7.sendDestroyPacket(true); 
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5); 
 return;
 }
 local JdF2rnzkkyJLmQLu4cL = fPwkJpuAoD43Ps1XQvDrfZD5.getZPos(); 
 switch(JdF2rnzkkyJLmQLu4cL)
 {
 case 10000 + 1111: 
 if(Feb4Xb4tebjK16CHNr61l7.getCollisionObjectIndex() == 61531) 
 if(vTLc6u1U_Oy7j6K31DJOIw.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetGroup(Feb4Xb4tebjK16CHNr61l7)); 
 sq_BinaryWriteDword(sq_GetUniqueId(Feb4Xb4tebjK16CHNr61l7)); 
 sq_SendChangeSkillEffectPacket(vTLc6u1U_Oy7j6K31DJOIw, 224); 
 }
 break;
 }
 if(fPwkJpuAoD43Ps1XQvDrfZD5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(fPwkJpuAoD43Ps1XQvDrfZD5); 
 break;
 }
} 
 
