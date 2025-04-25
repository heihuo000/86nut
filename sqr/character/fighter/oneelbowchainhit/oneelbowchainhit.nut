
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_oneelbowchainhit(tdTesEfBcnZ4RDWnG)
{
 if(!tdTesEfBcnZ4RDWnG) return false; 
 local _xw5JfTGXbV0IkscsISRQKmr = tdTesEfBcnZ4RDWnG.sq_IsUseSkill(229); 
 if(_xw5JfTGXbV0IkscsISRQKmr) 
 {
 tdTesEfBcnZ4RDWnG.sq_IntVectClear();
 tdTesEfBcnZ4RDWnG.sq_IntVectPush(0); 
 tdTesEfBcnZ4RDWnG.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_oneelbowchainhit(Hb3jaDhVgsf4BMWiPjeE6Fh)
{
 if(!Hb3jaDhVgsf4BMWiPjeE6Fh) return false; 
 local BnHBHCCLS52BYfY80fqUSZIq = Hb3jaDhVgsf4BMWiPjeE6Fh.sq_GetState(); 
 if(BnHBHCCLS52BYfY80fqUSZIq == STATE_STAND) 
 return true; 
 if(BnHBHCCLS52BYfY80fqUSZIq == STATE_ATTACK) 
 {
 return Hb3jaDhVgsf4BMWiPjeE6Fh.sq_IsCommandEnable(229); 
 }
 return true; 
} ;

 
function onSetState_fighter_oneelbowchainhit(a1uekcVFVg5fSzNQ1H0W, jYhWl65XlLX7aIdZBwTqV, YN_CTLd8jkRVLdKE_gJZxv, fkFWO5TdkJl4)
{
 if(!a1uekcVFVg5fSzNQ1H0W) return; 
 a1uekcVFVg5fSzNQ1H0W.sq_StopMove(); 
 local YbztbalzcgH01swu = a1uekcVFVg5fSzNQ1H0W.sq_GetVectorData(YN_CTLd8jkRVLdKE_gJZxv, 0); 
 a1uekcVFVg5fSzNQ1H0W.setSkillSubState(YbztbalzcgH01swu); 
 switch(YbztbalzcgH01swu)
 {
 case 0:
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAnimation(112); 
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAttackInfo(59); 
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAttackBonusRate(a1uekcVFVg5fSzNQ1H0W.sq_GetBonusRateWithPassive(229, 229, 0, 1.0)); 
 
 a1uekcVFVg5fSzNQ1H0W.getVar().clear_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar().push_vector(0); 
 a1uekcVFVg5fSzNQ1H0W.getVar().setBool(0, false); 
 
 a1uekcVFVg5fSzNQ1H0W.getVar("atkobj1").clear_obj_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar("atkobj2").clear_obj_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar("atkobj3").clear_obj_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar("passiveobj1").clear_obj_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar("passiveobj2").clear_obj_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar("passiveobj3").clear_obj_vector(); 
 if(a1uekcVFVg5fSzNQ1H0W.sq_IsMyControlObject()) 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && a1uekcVFVg5fSzNQ1H0W.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && a1uekcVFVg5fSzNQ1H0W.getDirection() == ENUM_DIRECTION_LEFT)
 {
 a1uekcVFVg5fSzNQ1H0W.sq_SetStaticMoveInfo(0, 100, 100, false);
 a1uekcVFVg5fSzNQ1H0W.sq_SetMoveDirection(a1uekcVFVg5fSzNQ1H0W.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 }
 break;
 case 1:
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAnimation(113); 
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAttackInfo(62); 
 a1uekcVFVg5fSzNQ1H0W.sq_SetCurrentAttackBonusRate(a1uekcVFVg5fSzNQ1H0W.sq_GetBonusRateWithPassive(229, 229, 3, 1.0)); 
 a1uekcVFVg5fSzNQ1H0W.getVar().clear_vector(); 
 a1uekcVFVg5fSzNQ1H0W.getVar().push_vector(3); 
 a1uekcVFVg5fSzNQ1H0W.getVar().setBool(0, false); 
 break;
 }
 a1uekcVFVg5fSzNQ1H0W.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_fighter_oneelbowchainhit(MLojvncWu1FIed, kq5eKpu40HLt4A)
{
 if(!MLojvncWu1FIed) return false;
 switch(kq5eKpu40HLt4A)
 {
 case 1:
 sq_SetMyShake(MLojvncWu1FIed, 3, 180); 
 break;
 case 2:
 MLojvncWu1FIed.getVar().clear_vector(); 
 MLojvncWu1FIed.getVar().push_vector(1); 
 MLojvncWu1FIed.getVar().setBool(0, false); 
 MLojvncWu1FIed.sq_SetCurrentAttackInfo(60); 
 MLojvncWu1FIed.sq_SetCurrentAttackBonusRate(MLojvncWu1FIed.sq_GetBonusRateWithPassive(229, 229, 1, 1.0)); 
 break;
 case 3:
 MLojvncWu1FIed.getVar().clear_vector(); 
 MLojvncWu1FIed.getVar().push_vector(2); 
 MLojvncWu1FIed.getVar().setBool(0, false); 
 MLojvncWu1FIed.sq_SetCurrentAttackInfo(61); 
 MLojvncWu1FIed.sq_SetCurrentAttackBonusRate(MLojvncWu1FIed.sq_GetBonusRateWithPassive(229, 229, 2, 1.0)); 
 break;
 case 4:
 if(MLojvncWu1FIed.sq_IsMyControlObject())
 {
 sq_SetMyShake(MLojvncWu1FIed, 6, 500); 
 sq_flashScreen(MLojvncWu1FIed, 0, 40, 180, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 return true;
} ;

function onAttack_fighter_oneelbowchainhit(tnCjEk3kIKM_a4Ud, BeMCcC3SvkRPyhu, R4M2ozbJQII, W8uqji6aynQRKY50jOk)
{
 if(!tnCjEk3kIKM_a4Ud) return;
 if(W8uqji6aynQRKY50jOk)return;
 
 local SCD0Oa5zU8sHehtd = tnCjEk3kIKM_a4Ud.getSkillSubState(); 
 if(SCD0Oa5zU8sHehtd == 0 
 && BeMCcC3SvkRPyhu.isObjectType(OBJECTTYPE_ACTIVE) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(BeMCcC3SvkRPyhu, "character/fighter/oneelbowchainhit/ap_oneelbowchainhit.nut")) 
 {
 local noNpBK0xswTf = CNSquirrelAppendage.sq_AppendAppendage(BeMCcC3SvkRPyhu, tnCjEk3kIKM_a4Ud, 229, true, "character/fighter/oneelbowchainhit/ap_oneelbowchainhit.nut", true); 
 local vLyuVEduz5eTY6eSk = sq_GetSkillLevel(tnCjEk3kIKM_a4Ud, 229); 
 local vPJNjx8F4Dvd9k59 = tnCjEk3kIKM_a4Ud.sq_GetLevelData(229, 7, vLyuVEduz5eTY6eSk); 
 local mQVzR0V_eDUiAGAXPrTU = tnCjEk3kIKM_a4Ud.sq_GetLevelData(229, 8, vLyuVEduz5eTY6eSk); 
 noNpBK0xswTf.getVar().clear_vector(); 
 noNpBK0xswTf.getVar().push_vector(vPJNjx8F4Dvd9k59); 
 noNpBK0xswTf.getVar().push_vector(mQVzR0V_eDUiAGAXPrTU); 
 }
 
 switch(tnCjEk3kIKM_a4Ud.getVar().get_vector(0))
 {
 case 1:
 tnCjEk3kIKM_a4Ud.getVar("atkobj1").push_obj_vector(BeMCcC3SvkRPyhu);
 local bS79bWA6BSncgPwc = sq_GetCNRDObjectToCollisionObject(tnCjEk3kIKM_a4Ud.getVar("passiveobj1").get_obj_vector(0)); 
 if(bS79bWA6BSncgPwc)sq_AddHitObject(bS79bWA6BSncgPwc, BeMCcC3SvkRPyhu); 
 if(tnCjEk3kIKM_a4Ud.sq_IsMyControlObject())
 if(tnCjEk3kIKM_a4Ud.getVar().getBool(0) == false)
 {
 tnCjEk3kIKM_a4Ud.getVar().setBool(0, true);
 tnCjEk3kIKM_a4Ud.sq_StartWrite();
 tnCjEk3kIKM_a4Ud.sq_WriteDword(229); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(1); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(tnCjEk3kIKM_a4Ud.sq_GetBonusRateWithPassive(229, 229, 4, 1.0)); 
 tnCjEk3kIKM_a4Ud.sq_SendCreatePassiveObjectPacket(24373, 0, 55, 0, 53);
 }
 break;
 case 2:
 tnCjEk3kIKM_a4Ud.getVar("atkobj2").push_obj_vector(BeMCcC3SvkRPyhu);
 local bS79bWA6BSncgPwc = sq_GetCNRDObjectToCollisionObject(tnCjEk3kIKM_a4Ud.getVar("passiveobj2").get_obj_vector(0)); 
 if(bS79bWA6BSncgPwc)sq_AddHitObject(bS79bWA6BSncgPwc, BeMCcC3SvkRPyhu); 
 if(tnCjEk3kIKM_a4Ud.sq_IsMyControlObject())
 if(tnCjEk3kIKM_a4Ud.getVar().getBool(0) == false)
 {
 tnCjEk3kIKM_a4Ud.getVar().setBool(0, true);
 tnCjEk3kIKM_a4Ud.sq_StartWrite();
 tnCjEk3kIKM_a4Ud.sq_WriteDword(229); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(2); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(tnCjEk3kIKM_a4Ud.sq_GetBonusRateWithPassive(229, 229, 5, 1.0)); 
 tnCjEk3kIKM_a4Ud.sq_SendCreatePassiveObjectPacket(24373, 0, 76, 0, 65);
 }
 break;
 case 3:
 tnCjEk3kIKM_a4Ud.getVar("atkobj3").push_obj_vector(BeMCcC3SvkRPyhu);
 local bS79bWA6BSncgPwc = sq_GetCNRDObjectToCollisionObject(tnCjEk3kIKM_a4Ud.getVar("passiveobj3").get_obj_vector(0)); 
 if(bS79bWA6BSncgPwc)sq_AddHitObject(bS79bWA6BSncgPwc, BeMCcC3SvkRPyhu); 
 if(tnCjEk3kIKM_a4Ud.sq_IsMyControlObject())
 if(tnCjEk3kIKM_a4Ud.getVar().getBool(0) == false)
 {
 tnCjEk3kIKM_a4Ud.getVar().setBool(0, true);
 tnCjEk3kIKM_a4Ud.sq_StartWrite();
 tnCjEk3kIKM_a4Ud.sq_WriteDword(229); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(3); 
 tnCjEk3kIKM_a4Ud.sq_WriteDword(tnCjEk3kIKM_a4Ud.sq_GetBonusRateWithPassive(229, 229, 6, 1.0)); 
 tnCjEk3kIKM_a4Ud.sq_SendCreatePassiveObjectPacket(24373, 0, 100, 0, 70);
 }
 break;
 }
} ;

 
function onEndCurrentAni_fighter_oneelbowchainhit(fSD5TJIeH3Ypkf0Qf4Fzo)
{
 if(!fSD5TJIeH3Ypkf0Qf4Fzo) return;
 if(!fSD5TJIeH3Ypkf0Qf4Fzo.sq_IsMyControlObject()) return;
 local QFmkglshr238xjLJawFDRd = fSD5TJIeH3Ypkf0Qf4Fzo.getSkillSubState(); 
 if(QFmkglshr238xjLJawFDRd != 1)
 {
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectClear();
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(QFmkglshr238xjLJawFDRd + 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_AddSetStatePacket(229, STATE_PRIORITY_USER, true); 
 }
 else
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


