
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atfighter_spiralemperorslap(czLI5Xh7ul9YfHA)
{
 if(!czLI5Xh7ul9YfHA) return false; 
 local nGVZuus_ExSHG = czLI5Xh7ul9YfHA.sq_IsUseSkill(220); 
 if(nGVZuus_ExSHG) 
 {
 czLI5Xh7ul9YfHA.sq_IntVectClear();
 czLI5Xh7ul9YfHA.sq_IntVectPush(0); 
 czLI5Xh7ul9YfHA.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_spiralemperorslap(yTiC44k6qtTYO1S_ft70w)
{
 if(!yTiC44k6qtTYO1S_ft70w) return false; 
 local BmCyUtO1E5JVz5jqGb0gPJwa = yTiC44k6qtTYO1S_ft70w.sq_GetState(); 
 if(BmCyUtO1E5JVz5jqGb0gPJwa == STATE_STAND) 
 return true; 
 if(BmCyUtO1E5JVz5jqGb0gPJwa == STATE_ATTACK) 
 {
 return yTiC44k6qtTYO1S_ft70w.sq_IsCommandEnable(220); 
 }
 return true; 
} ;

 
function onSetState_atfighter_spiralemperorslap(yTiC44k6qtTYO1S_ft70w, BmCyUtO1E5JVz5jqGb0gPJwa, fPSbwi_m8O, _Jheh8RnJDnYmrkW_Fy6)
{
 if(!yTiC44k6qtTYO1S_ft70w) return; 
 local TehcNcjGJdafPqB = yTiC44k6qtTYO1S_ft70w.sq_GetVectorData(fPSbwi_m8O, 0); 
 yTiC44k6qtTYO1S_ft70w.setSkillSubState(TehcNcjGJdafPqB); 
 switch(TehcNcjGJdafPqB)
 {
 case 0:
 yTiC44k6qtTYO1S_ft70w.sq_StopMove(); 
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAnimation(145);
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAttackInfo(87);
 yTiC44k6qtTYO1S_ft70w.getVar().clear_obj_vector(); 
 yTiC44k6qtTYO1S_ft70w.sq_PlaySound("R_MF_SPIRAL_EMPEROSLAP_READY"); 
 break;
 case 1:
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAnimation(146);
 if(yTiC44k6qtTYO1S_ft70w.sq_IsMyControlObject())
 sq_flashScreen(yTiC44k6qtTYO1S_ft70w, 0, 0, 160, 51, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAnimation(147);
 sq_SetMyShake(yTiC44k6qtTYO1S_ft70w, 5, 500); 
 if(yTiC44k6qtTYO1S_ft70w.sq_IsMyControlObject())
 sq_flashScreen(yTiC44k6qtTYO1S_ft70w, 0, 120, 240, 51, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 3:
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAnimation(148);
 local J_QeRciO3waA = sq_GetSkillLevel(yTiC44k6qtTYO1S_ft70w, 220); 
 
 local _DZEsjT_IkTeS_hroK2z = yTiC44k6qtTYO1S_ft70w.sq_GetLevelData(220, 0, J_QeRciO3waA);
 yTiC44k6qtTYO1S_ft70w.getVar().clear_vector(); 
 yTiC44k6qtTYO1S_ft70w.getVar().push_vector(_DZEsjT_IkTeS_hroK2z); 
 yTiC44k6qtTYO1S_ft70w.sq_PlaySound("SPIRAL_EMPEROSLAP_LOOP", 9701); 
 break;
 case 4:
 yTiC44k6qtTYO1S_ft70w.sq_SetCurrentAnimation(149);
 break;
 }
 yTiC44k6qtTYO1S_ft70w.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onAttack_atfighter_spiralemperorslap(Ccp7980CcLaN9X, FvcayOCdq8T, smf_M0sc0lrxE4i2EQaFJ, sOsLhWM98_csGd7ZsNHj5oo1)
{
 if(!Ccp7980CcLaN9X) return;
 local pkZSWHLBisUT7WSvLatM = Ccp7980CcLaN9X.getSkillSubState();
 if(pkZSWHLBisUT7WSvLatM == 0) 
 {
 if(Ccp7980CcLaN9X.getVar().get_obj_vector_size() <= 0) 
 {
 if(!FvcayOCdq8T.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(FvcayOCdq8T, "character/atfighter/spiralemperorslap/ap_spiralemperorslap.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(FvcayOCdq8T, "character/atfighter/spiralemperorslap/ap_spiralemperorslap.nut");
 
 local gVCAtdMkKCha9r = CNSquirrelAppendage.sq_AppendAppendage(FvcayOCdq8T, Ccp7980CcLaN9X, 220, false, "character/atfighter/spiralemperorslap/ap_spiralemperorslap.nut", true);
 if(sq_IsHoldable(Ccp7980CcLaN9X, FvcayOCdq8T)) 
 sq_HoldAndDelayDie(FvcayOCdq8T, Ccp7980CcLaN9X, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, gVCAtdMkKCha9r); 
 
 if(sq_IsGrabable(Ccp7980CcLaN9X, FvcayOCdq8T) && !sq_IsFixture(FvcayOCdq8T))
 sq_MoveToAppendageForce(FvcayOCdq8T, Ccp7980CcLaN9X, Ccp7980CcLaN9X, 100, 0, 0, 0, true, gVCAtdMkKCha9r); 
 Ccp7980CcLaN9X.getVar().push_obj_vector(FvcayOCdq8T); 
 }
 }
} ;

 
function onEndCurrentAni_atfighter_spiralemperorslap(YIPd8o2XhTHNx75zkBv)
{
 if(!YIPd8o2XhTHNx75zkBv) return;
 if(!YIPd8o2XhTHNx75zkBv.sq_IsMyControlObject()) return;
 local IEBAkhORkiejhVe = YIPd8o2XhTHNx75zkBv.getSkillSubState(); 
 if(IEBAkhORkiejhVe == 1 || IEBAkhORkiejhVe == 4)
 YIPd8o2XhTHNx75zkBv.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 else
 {
 if(IEBAkhORkiejhVe == 0)
 {
 if(YIPd8o2XhTHNx75zkBv.getVar().get_obj_vector_size() <= 0) 
 {
 YIPd8o2XhTHNx75zkBv.sq_IntVectClear();
 YIPd8o2XhTHNx75zkBv.sq_IntVectPush(1); 
 YIPd8o2XhTHNx75zkBv.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 }
 else 
 {
 YIPd8o2XhTHNx75zkBv.sq_IntVectClear();
 YIPd8o2XhTHNx75zkBv.sq_IntVectPush(2); 
 YIPd8o2XhTHNx75zkBv.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 }
 }
 else if(IEBAkhORkiejhVe == 2) 
 {
 YIPd8o2XhTHNx75zkBv.sq_IntVectClear();
 YIPd8o2XhTHNx75zkBv.sq_IntVectPush(3); 
 YIPd8o2XhTHNx75zkBv.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 }
 }
} ;

 
function onProcCon_atfighter_spiralemperorslap(_qV7y1mSVObiiEzFP)
{
 if(!_qV7y1mSVObiiEzFP) return;
 local kfa9we4p0FvH9lD = _qV7y1mSVObiiEzFP.getSkillSubState(); 
 if(kfa9we4p0FvH9lD == 3) 
 {
 local LIQb5jU1nNZK = _qV7y1mSVObiiEzFP.getVar().get_vector(0); 
 local X2HULqEwJ_P2V1 = sq_GetCurrentTime(_qV7y1mSVObiiEzFP.sq_GetCurrentAni());
 if(X2HULqEwJ_P2V1 >= LIQb5jU1nNZK) 
 {
 _qV7y1mSVObiiEzFP.sq_IntVectClear();
 _qV7y1mSVObiiEzFP.sq_IntVectPush(kfa9we4p0FvH9lD + 1); 
 _qV7y1mSVObiiEzFP.sq_AddSetStatePacket(220, STATE_PRIORITY_USER, true); 
 }
 }
} ;

 
function onKeyFrameFlag_atfighter_spiralemperorslap(AdssrwWAJx1iEHlcYFvcyJ, Gf3CehPfZwSnBxuqI7qdg)
{
 if(!AdssrwWAJx1iEHlcYFvcyJ) return false;
 local jvl9UXckHEJQmMqiga6785Ki = AdssrwWAJx1iEHlcYFvcyJ.getSkillSubState(); 
 if(jvl9UXckHEJQmMqiga6785Ki == 4 && Gf3CehPfZwSnBxuqI7qdg == 1)
 {
 deleteAllApVarObj_atfighter_spiralemperorslap(AdssrwWAJx1iEHlcYFvcyJ); 
 AdssrwWAJx1iEHlcYFvcyJ.stopSound(9701); 
 if(AdssrwWAJx1iEHlcYFvcyJ.sq_IsMyControlObject())
 {
 sq_flashScreen(AdssrwWAJx1iEHlcYFvcyJ, 80, 80, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 local qgEHf4cgG3bz2AJLk = AdssrwWAJx1iEHlcYFvcyJ.sq_GetBonusRateWithPassive(220, 220, 1, 1.0); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_StartWrite();
 AdssrwWAJx1iEHlcYFvcyJ.sq_WriteDword(220); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_WriteDword(qgEHf4cgG3bz2AJLk); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_SendCreatePassiveObjectPacket(24375, 0, 100, 1, 65); 
 }
 }
 else if(jvl9UXckHEJQmMqiga6785Ki == 3 && Gf3CehPfZwSnBxuqI7qdg == 1)
 sq_SetMyShake(AdssrwWAJx1iEHlcYFvcyJ, 1, 400); 
 return true;
} ;

 
function onEndState_atfighter_spiralemperorslap(tJb7aC7WdbAWhpHHNwax, x0y1NrsxuaCm_efOJIroS3o)
{
 if(!tJb7aC7WdbAWhpHHNwax) return;
 if(x0y1NrsxuaCm_efOJIroS3o != 220)
 tJb7aC7WdbAWhpHHNwax.stopSound(9701); 
} ;

 
function deleteAllApVarObj_atfighter_spiralemperorslap(tJb7aC7WdbAWhpHHNwax)
{
 local x0y1NrsxuaCm_efOJIroS3o = tJb7aC7WdbAWhpHHNwax.getVar().get_obj_vector_size(); 
 for(local vSC8jYhxHDIH = 0; vSC8jYhxHDIH < x0y1NrsxuaCm_efOJIroS3o; vSC8jYhxHDIH++)
 {
 local yfOD65rH1j7l67 = tJb7aC7WdbAWhpHHNwax.getVar().get_obj_vector(vSC8jYhxHDIH); 
 if(yfOD65rH1j7l67)
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(yfOD65rH1j7l67, "character/atfighter/spiralemperorslap/ap_spiralemperorslap.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(yfOD65rH1j7l67, "character/atfighter/spiralemperorslap/ap_spiralemperorslap.nut");
 }
 }
 tJb7aC7WdbAWhpHHNwax.getVar().clear_obj_vector(); 
} ;

