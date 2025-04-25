
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_hurricanesupersuplex(ejL6XjV2hQretQxPZD)
{
 if(!ejL6XjV2hQretQxPZD) return false; 
 local iC7Xom653I = ejL6XjV2hQretQxPZD.sq_IsUseSkill(239); 
 if(iC7Xom653I) 
 {
 ejL6XjV2hQretQxPZD.sq_IntVectClear();
 ejL6XjV2hQretQxPZD.sq_IntVectPush(0); 
 ejL6XjV2hQretQxPZD.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_hurricanesupersuplex(ejL6XjV2hQretQxPZD)
{
 if(!ejL6XjV2hQretQxPZD) return false; 
 local iC7Xom653I = ejL6XjV2hQretQxPZD.sq_GetState(); 
 if(iC7Xom653I == STATE_STAND) 
 return true; 
 if(iC7Xom653I == STATE_ATTACK) 
 {
 return ejL6XjV2hQretQxPZD.sq_IsCommandEnable(239); 
 }
 return true; 
} ;

 
function onSetState_fighter_hurricanesupersuplex(FEiaZWB1pfOemFzlGreiKJx, ZK_zWOKX5ecWfHRV6w3kcf, pPPxeed4C7jz1WxjQ, J7diZ5_WiqUD3dzsG)
{
 if(!FEiaZWB1pfOemFzlGreiKJx) return; 
 FEiaZWB1pfOemFzlGreiKJx.sq_StopMove(); 
 FEiaZWB1pfOemFzlGreiKJx.sq_ZStop(); 
 local XtYOP8WxNsEaRSzCOu9CJ = FEiaZWB1pfOemFzlGreiKJx.sq_GetVectorData(pPPxeed4C7jz1WxjQ, 0); 
 FEiaZWB1pfOemFzlGreiKJx.setSkillSubState(XtYOP8WxNsEaRSzCOu9CJ); 
 switch(XtYOP8WxNsEaRSzCOu9CJ)
 {
 case 0:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(155); 
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAttackInfo(87); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().clear_vector(); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().clear_obj_vector(); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().setBool(0, false); 
 break;
 case 1:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(156); 
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAttackInfo(88); 
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAttackBonusRate(FEiaZWB1pfOemFzlGreiKJx.sq_GetBonusRateWithPassive(239, 239, 0, 1.0)); 
 break;
 case 2:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(157); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().clear_vector(); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().push_vector(FEiaZWB1pfOemFzlGreiKJx.getZPos()); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().push_vector(270); 
 if(FEiaZWB1pfOemFzlGreiKJx.sq_IsMyControlObject())
 {
 local QECwh8330UFPnfL5htY = FEiaZWB1pfOemFzlGreiKJx.getObjectManager(); 
 local uTMBnCp9YrwXCyP = QECwh8330UFPnfL5htY.getFieldXPos(800, ENUM_DRAWLAYER_NORMAL);
 local JbPlkCsVnZ = QECwh8330UFPnfL5htY.getFieldYPos(600, 0, ENUM_DRAWLAYER_NORMAL);
 local t2ELVylvKRMTx = sq_CreateAnimation("", "character/fighter/effect/animation/hurricanesupersuplex/background_back.ani"); 
 local CgGcXHoTJoLvrNep3gTOr7 = sq_CreatePooledObject(t2ELVylvKRMTx, false); 
 sq_SetCurrentDirection(CgGcXHoTJoLvrNep3gTOr7, ENUM_DIRECTION_RIGHT); 
 CgGcXHoTJoLvrNep3gTOr7.setCurrentPos(uTMBnCp9YrwXCyP, JbPlkCsVnZ, 0); 
 CgGcXHoTJoLvrNep3gTOr7 = sq_SetEnumDrawLayer(CgGcXHoTJoLvrNep3gTOr7, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(FEiaZWB1pfOemFzlGreiKJx, CgGcXHoTJoLvrNep3gTOr7, OBJECTTYPE_DRAWONLY, false); 
 local luYlPZjHXt = sq_CreateDrawOnlyObject(FEiaZWB1pfOemFzlGreiKJx, "character/fighter/effect/animation/hurricanesupersuplex/backline_down3.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 FEiaZWB1pfOemFzlGreiKJx.getVar("aniobj").clear_obj_vector(); 
 FEiaZWB1pfOemFzlGreiKJx.getVar("aniobj").push_obj_vector(CgGcXHoTJoLvrNep3gTOr7); 
 FEiaZWB1pfOemFzlGreiKJx.getVar("aniobj").push_obj_vector(luYlPZjHXt); 
 }
 break;
 case 3:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(158); 
 sq_SetCurrentAttackInfo(FEiaZWB1pfOemFzlGreiKJx, null); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().clear_vector(); 
 FEiaZWB1pfOemFzlGreiKJx.getVar().push_vector(FEiaZWB1pfOemFzlGreiKJx.getZPos()); 
 break;
 case 4:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(159); 
 local EbnjY5Clrp_j1cpnmWM = FEiaZWB1pfOemFzlGreiKJx.getVar().get_obj_vector_size(); 
 for(local IFalytdmShxMiWkUDTAmD = 0; IFalytdmShxMiWkUDTAmD < EbnjY5Clrp_j1cpnmWM; IFalytdmShxMiWkUDTAmD++)
 {
 local CAdJRNhaKrXk_Ar5wjPsI = FEiaZWB1pfOemFzlGreiKJx.getVar().get_obj_vector(IFalytdmShxMiWkUDTAmD); 
 if(!CAdJRNhaKrXk_Ar5wjPsI)continue;
 local L18j3TFVLk0LZQ6hEgqknu = CNSquirrelAppendage.sq_GetAppendage(CAdJRNhaKrXk_Ar5wjPsI, "character/fighter/hurricanesupersuplex/ap_hurricanesupersuplex.nut"); 
 if(L18j3TFVLk0LZQ6hEgqknu) L18j3TFVLk0LZQ6hEgqknu.setState(3, null); 
 }
 break;
 case 5:
 FEiaZWB1pfOemFzlGreiKJx.sq_SetCurrentAnimation(160); 
 if(FEiaZWB1pfOemFzlGreiKJx.sq_IsMyControlObject())
 {
 FEiaZWB1pfOemFzlGreiKJx.sq_StartWrite();
 FEiaZWB1pfOemFzlGreiKJx.sq_WriteDword(239); 
 FEiaZWB1pfOemFzlGreiKJx.sq_WriteDword(1); 
 FEiaZWB1pfOemFzlGreiKJx.sq_WriteDword(FEiaZWB1pfOemFzlGreiKJx.sq_GetBonusRateWithPassive(239, 239, 1, 1.0)); 
 FEiaZWB1pfOemFzlGreiKJx.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 break;
 }
 FEiaZWB1pfOemFzlGreiKJx.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onEndState_fighter_hurricanesupersuplex(jpsD1O6TNE, KzQwM5SWSXO)
{
 if(!jpsD1O6TNE) return;
 local tpUykohEOk1Qzk = jpsD1O6TNE.getSkillSubState(); 
 if(KzQwM5SWSXO != 239)
 {
 }
 else
 {
 switch(tpUykohEOk1Qzk)
 {
 case 3:
 RemoveAllAni(jpsD1O6TNE); 
 break;
 }
 }
} ;

function onAttack_fighter_hurricanesupersuplex(DGnn8kTccUG8u4nigqhSQy, RNmbQfBmAHutZYxvEf, xXxztJ7fEhhwizt_Qn, e7n74a0KYEXTGf2KU3csIl0)
{
 if(!DGnn8kTccUG8u4nigqhSQy) return;
 if(!RNmbQfBmAHutZYxvEf.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local isR_SYYCNOajKFj = DGnn8kTccUG8u4nigqhSQy.getSkillSubState(); 
 switch(isR_SYYCNOajKFj)
 {
 case 0: 
 case 1: 
 if(isR_SYYCNOajKFj == 0)
 {
 if(DGnn8kTccUG8u4nigqhSQy.getVar().getBool(0) == false)
 DGnn8kTccUG8u4nigqhSQy.getVar().setBool(0, true); 
 }
 local s_zDODWHtEnV = CNSquirrelAppendage.sq_GetAppendage(RNmbQfBmAHutZYxvEf, "character/fighter/hurricanesupersuplex/ap_hurricanesupersuplex.nut");
 if(!s_zDODWHtEnV) 
 {
 if(sq_IsGrabable(DGnn8kTccUG8u4nigqhSQy, RNmbQfBmAHutZYxvEf)
 && sq_IsHoldable(DGnn8kTccUG8u4nigqhSQy, RNmbQfBmAHutZYxvEf)
 && !sq_IsFixture(RNmbQfBmAHutZYxvEf)) 
 {
 DGnn8kTccUG8u4nigqhSQy.getVar().push_obj_vector(RNmbQfBmAHutZYxvEf); 
 local s_zDODWHtEnV = CNSquirrelAppendage.sq_AppendAppendage(RNmbQfBmAHutZYxvEf, DGnn8kTccUG8u4nigqhSQy, 239, true, "character/fighter/hurricanesupersuplex/ap_hurricanesupersuplex.nut", true); 
 sq_HoldAndDelayDie(RNmbQfBmAHutZYxvEf, DGnn8kTccUG8u4nigqhSQy, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, s_zDODWHtEnV); 
 if(isR_SYYCNOajKFj == 0)
 s_zDODWHtEnV.setState(1, null); 
 else
 s_zDODWHtEnV.setState(2, null); 
 }
 }
 else
 s_zDODWHtEnV.setState(2, null); 
 break;
 }
} ;

function onKeyFrameFlag_fighter_hurricanesupersuplex(yqf_5DIzoyF8CzbPt1, qkYSIn5dj9D_EEkEgzNIq)
{
 if(!yqf_5DIzoyF8CzbPt1) return false;
 local L1DUdPNd61UCW8 = yqf_5DIzoyF8CzbPt1.getSkillSubState(); 
 switch(L1DUdPNd61UCW8)
 {
 case 1:
 if(qkYSIn5dj9D_EEkEgzNIq == 3)
 sq_SetMyShake(yqf_5DIzoyF8CzbPt1, 15, 200);
 break;
 case 3:
 case 4:
 local cIl0hupbuwvxL8uu = -45; 
 local UAQTM0wdh43AaI1 = yqf_5DIzoyF8CzbPt1.getDirection(); 
 if(qkYSIn5dj9D_EEkEgzNIq == 2) cIl0hupbuwvxL8uu /= -1; 
 if(UAQTM0wdh43AaI1 == ENUM_DIRECTION_LEFT) cIl0hupbuwvxL8uu /= -1; 
 local oMDvUD0bxvxJy6 = sq_GetDistancePos(yqf_5DIzoyF8CzbPt1.getXPos(), UAQTM0wdh43AaI1, cIl0hupbuwvxL8uu);
 local LDaoLnGkUuY0e = yqf_5DIzoyF8CzbPt1.getYPos() - 1;
 local JBccwI9xAUKP3 = yqf_5DIzoyF8CzbPt1.getVar().get_obj_vector_size(); 
 for(local nbd7oKrN_gqP = 0; nbd7oKrN_gqP < JBccwI9xAUKP3; nbd7oKrN_gqP++)
 {
 local E6u1SGiUm_s3h4d = yqf_5DIzoyF8CzbPt1.getVar().get_obj_vector(nbd7oKrN_gqP); 
 if(!E6u1SGiUm_s3h4d)continue;
 sq_setCurrentAxisPos(E6u1SGiUm_s3h4d, 0, oMDvUD0bxvxJy6); 
 sq_setCurrentAxisPos(E6u1SGiUm_s3h4d, 1, LDaoLnGkUuY0e); 
 }
 break;
 }
 return true;
} ;

function onProc_fighter_hurricanesupersuplex(WTQDexrpJoclPMX1)
{
 if(!WTQDexrpJoclPMX1) return;
 local bW_7e_9eMYmtoBT_Y = WTQDexrpJoclPMX1.getSkillSubState(); 
 switch(bW_7e_9eMYmtoBT_Y)
 {
 case 2: 
 local KIbeIkkOUZlNja = WTQDexrpJoclPMX1.getCurrentAnimation(); 
 local HmMWoaYjmtJY5bdLl2O4sM = sq_GetCurrentTime(KIbeIkkOUZlNja); 
 local VmIxpiA1ttgvd = 500; 
 local cfBquNMKFswa10CPucF = WTQDexrpJoclPMX1.getVar(); 
 local r2EJs9JrEjI1_e3 = cfBquNMKFswa10CPucF.get_vector(1); 
 local GC41u3Dso_uP6cNXO2Ed = sq_GetAccel(0, r2EJs9JrEjI1_e3, HmMWoaYjmtJY5bdLl2O4sM, VmIxpiA1ttgvd, true); 
 sq_setCurrentAxisPos(WTQDexrpJoclPMX1, 2, GC41u3Dso_uP6cNXO2Ed); 
 
 local yH77DydYqaHByNsjD4_iu = sq_GetAccel(600, r2EJs9JrEjI1_e3, HmMWoaYjmtJY5bdLl2O4sM, VmIxpiA1ttgvd, true); 
 local lX766zGpNWICT6BXxG = sq_GetDistancePos(WTQDexrpJoclPMX1.getXPos(), WTQDexrpJoclPMX1.getDirection(), 50);
 local A8YkFLnRzVNE5xml = WTQDexrpJoclPMX1.getYPos(); 
 
 local qU9XKKftyapyz = cfBquNMKFswa10CPucF.get_obj_vector_size(); 
 for(local YwLQhIlatnKaf0_Wj4TPZHT = 0; YwLQhIlatnKaf0_Wj4TPZHT < qU9XKKftyapyz; YwLQhIlatnKaf0_Wj4TPZHT++)
 {
 local Liorbbtf_4djtXqDD = cfBquNMKFswa10CPucF.get_obj_vector(YwLQhIlatnKaf0_Wj4TPZHT); 
 if(Liorbbtf_4djtXqDD)Liorbbtf_4djtXqDD.setCurrentPos(lX766zGpNWICT6BXxG, A8YkFLnRzVNE5xml, yH77DydYqaHByNsjD4_iu); 
 }
 if(WTQDexrpJoclPMX1.sq_IsMyControlObject())
 if(HmMWoaYjmtJY5bdLl2O4sM >= VmIxpiA1ttgvd) 
 {
 WTQDexrpJoclPMX1.sq_IntVectClear();
 WTQDexrpJoclPMX1.sq_IntVectPush(4); 
 WTQDexrpJoclPMX1.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 break;
 case 3: 
 local HmMWoaYjmtJY5bdLl2O4sM = WTQDexrpJoclPMX1.sq_GetStateTimer(); 
 if(HmMWoaYjmtJY5bdLl2O4sM >= 100) 
 {
 HmMWoaYjmtJY5bdLl2O4sM -= 100; 
 local VmIxpiA1ttgvd = 800; 
 local cfBquNMKFswa10CPucF = WTQDexrpJoclPMX1.getVar(); 
 local GC41u3Dso_uP6cNXO2Ed = sq_GetUniformVelocity(WTQDexrpJoclPMX1.getVar().get_vector(0), 0, HmMWoaYjmtJY5bdLl2O4sM, VmIxpiA1ttgvd); 
 sq_setCurrentAxisPos(WTQDexrpJoclPMX1, 2, GC41u3Dso_uP6cNXO2Ed); 
 
 local qU9XKKftyapyz = cfBquNMKFswa10CPucF.get_obj_vector_size(); 
 for(local YwLQhIlatnKaf0_Wj4TPZHT = 0; YwLQhIlatnKaf0_Wj4TPZHT < qU9XKKftyapyz; YwLQhIlatnKaf0_Wj4TPZHT++)
 {
 local Liorbbtf_4djtXqDD = cfBquNMKFswa10CPucF.get_obj_vector(YwLQhIlatnKaf0_Wj4TPZHT); 
 if(Liorbbtf_4djtXqDD)sq_setCurrentAxisPos(Liorbbtf_4djtXqDD, 2, GC41u3Dso_uP6cNXO2Ed + sq_GetObjectHeight(Liorbbtf_4djtXqDD)); 
 }
 if(WTQDexrpJoclPMX1.sq_IsMyControlObject())
 if(HmMWoaYjmtJY5bdLl2O4sM >= VmIxpiA1ttgvd) 
 {
 WTQDexrpJoclPMX1.sq_IntVectClear();
 WTQDexrpJoclPMX1.sq_IntVectPush(5); 
 WTQDexrpJoclPMX1.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_fighter_hurricanesupersuplex(cqtMfksNWDg4)
{
 if(!cqtMfksNWDg4) return;
 local TEHZnGdyfyGd2M = cqtMfksNWDg4.getSkillSubState(); 
 switch(TEHZnGdyfyGd2M)
 {
 case 0:
 if(cqtMfksNWDg4.getVar().getBool(0) == true) 
 {
 cqtMfksNWDg4.sq_IntVectClear();
 cqtMfksNWDg4.sq_IntVectPush(1); 
 cqtMfksNWDg4.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 else
 cqtMfksNWDg4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 4:
 cqtMfksNWDg4.sq_IntVectClear();
 cqtMfksNWDg4.sq_IntVectPush(3); 
 cqtMfksNWDg4.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 break;
 case 5:
 cqtMfksNWDg4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 2:
 return;
 default:
 cqtMfksNWDg4.sq_IntVectClear();
 cqtMfksNWDg4.sq_IntVectPush(TEHZnGdyfyGd2M + 1); 
 cqtMfksNWDg4.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

