
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function onSetState_mage_dragondance(jrxOuXKJzTQnxj3ee, MYmsrXCuYh8C, fDRFcUCoDUsY7UYezOHo4, aNN_QG_tlObXaFKRmvoK)
{
 if(!jrxOuXKJzTQnxj3ee) return; 
 local _rU6ty4wOpRUm = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 0); 
 jrxOuXKJzTQnxj3ee.setSkillSubState(_rU6ty4wOpRUm); 
 jrxOuXKJzTQnxj3ee.sq_StopMove(); 
 jrxOuXKJzTQnxj3ee.getVar().clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar().setBool(0, false); 
 switch(_rU6ty4wOpRUm)
 {
 case 0: 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAnimation(99);
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(45);
 
 local PJc57pbrT8rsLsK8p0 = jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(69, 29, 6, 1.0); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 jrxOuXKJzTQnxj3ee.sq_PlaySound("R_WZ_DRAGONDANCE");
 break;
 case 1: 
 local nrSiXdnV3SgCt = setCurrentAnimation_avatar_eff(jrxOuXKJzTQnxj3ee, "dragonspearnew_body",false); 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(nrSiXdnV3SgCt);
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(45);
 
 local PJc57pbrT8rsLsK8p0 = jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(69, 29, 6, 1.0); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 jrxOuXKJzTQnxj3ee.sq_PlaySound("R_WZ_DRAGONDANCE");
 break;
 case 2: 
 local VnEAmgxzur_WT93 = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 1); 
 jrxOuXKJzTQnxj3ee.getVar("type").clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar("type").push_vector(VnEAmgxzur_WT93); 
 switch(VnEAmgxzur_WT93)
 {
 case 1: 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/redragonspearstart_body.ani"));
 break;
 case 2: 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/redragonspearmid_body.ani"));
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(45);
 
 local PJc57pbrT8rsLsK8p0 = jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(69, 29, 6, 1.0); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 break;
 case 3: 
 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/redragonspearfinish_body.ani"));
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(46);
 
 local PJc57pbrT8rsLsK8p0 = jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(69, 29, 7, 1.0); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 jrxOuXKJzTQnxj3ee.getVar().setBool(0, true); 
 if(jrxOuXKJzTQnxj3ee.sq_IsMyControlObject())
 {
 sq_SetMyShake(jrxOuXKJzTQnxj3ee, 10, 250); 
 sq_flashScreen(jrxOuXKJzTQnxj3ee, 0, 80, 200, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 local Q8FHpZPHWuheDo = jrxOuXKJzTQnxj3ee.getDirection(); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && Q8FHpZPHWuheDo == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && Q8FHpZPHWuheDo == ENUM_DIRECTION_RIGHT)
 {
 }
 else
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteWord(160); 
 sq_BinaryWriteWord(0); 
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(jrxOuXKJzTQnxj3ee, 248); 
 }
 }
 break;
 }
 break;
 case 3: 
 local VnEAmgxzur_WT93 = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 1); 
 jrxOuXKJzTQnxj3ee.getVar("type").clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar("type").push_vector(VnEAmgxzur_WT93); 
 switch(VnEAmgxzur_WT93)
 {
 case 1: 
 jrxOuXKJzTQnxj3ee.sq_IsEnterSkillLastKeyUnits(68); 
 local nrSiXdnV3SgCt = sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixstrengthhandstrikestart.ani"); 
 
 local mZNmdIOKjz5NQsWRkuRS = sq_CreateAnimation("", "character/mage/effect/animation/strengthhandstrike/start_back.ani");
 local zAA1xewl0lJzVNF = sq_CreateAnimation("", "character/mage/effect/animation/strengthhandstrike/start_front.ani");
 
 nrSiXdnV3SgCt.addLayerAnimation(-1, mZNmdIOKjz5NQsWRkuRS, true);
 nrSiXdnV3SgCt.addLayerAnimation(1, zAA1xewl0lJzVNF, true);
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(nrSiXdnV3SgCt);
 
 jrxOuXKJzTQnxj3ee.getVar().clear_ani_vector(); 
 jrxOuXKJzTQnxj3ee.getVar().push_ani_vector(mZNmdIOKjz5NQsWRkuRS); 
 jrxOuXKJzTQnxj3ee.getVar().push_ani_vector(zAA1xewl0lJzVNF); 
 jrxOuXKJzTQnxj3ee.getVar().clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(sq_GetIntData(jrxOuXKJzTQnxj3ee, 68, 2)); 
 jrxOuXKJzTQnxj3ee.getVar().setBool(0, false); 
 jrxOuXKJzTQnxj3ee.getVar().setBool(1, false); 
 jrxOuXKJzTQnxj3ee.sq_PlaySound("RAIDP_CHARGE_LOOP", 9002); 
 break;
 case 2: 
 local nrSiXdnV3SgCt = sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixstrengthhandstrikestart.ani");
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(nrSiXdnV3SgCt);
 nrSiXdnV3SgCt.Proc();
 for(local Ded69rnZxbgh1uxT = 0; Ded69rnZxbgh1uxT < 3; Ded69rnZxbgh1uxT++)
 sq_SetFrameDelayTime(nrSiXdnV3SgCt, Ded69rnZxbgh1uxT, 0); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(14); 
 jrxOuXKJzTQnxj3ee.sq_AddStateLayerAnimation(1, jrxOuXKJzTQnxj3ee.sq_CreateCNRDAnimation("effect/animation/strengthhandstrike/attack_short.ani"), 110, -30);
 jrxOuXKJzTQnxj3ee.sq_AddStateLayerAnimation(1, jrxOuXKJzTQnxj3ee.sq_CreateCNRDAnimation("effect/animation/strengthhandstrike/attack_long.ani"), 110, -30);
 local JdxYMxRdshD48FY = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 2); 
 local w6imLY4hP9 = sq_GetIntData(jrxOuXKJzTQnxj3ee, 68, 2); 
 local jEf4SSIWkzSAPPAGHDGdA = sq_GetUniformVelocity(jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(68, 25, 0, 1.2),
 jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(68, 25, 1, 1.2),
 JdxYMxRdshD48FY, w6imLY4hP9); 
 local l_9r5v8i5VJApSMa0pkw = sq_GetSkillLevel(jrxOuXKJzTQnxj3ee, 68); 
 local TifnJ8LyRVF_Q = sq_GetUniformVelocity(jrxOuXKJzTQnxj3ee.sq_GetLevelData(68, 2, l_9r5v8i5VJApSMa0pkw),
 jrxOuXKJzTQnxj3ee.sq_GetLevelData(68, 3, l_9r5v8i5VJApSMa0pkw), JdxYMxRdshD48FY, w6imLY4hP9); 
 local xCbUql9gJCMjN = sq_GetCurrentAttackInfo(jrxOuXKJzTQnxj3ee); 
 sq_SetCurrentAttackBonusRate(xCbUql9gJCMjN, jEf4SSIWkzSAPPAGHDGdA); 
 sq_SetCurrentAttacknUpForce(xCbUql9gJCMjN, TifnJ8LyRVF_Q); 
 jrxOuXKJzTQnxj3ee.getVar().clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(jrxOuXKJzTQnxj3ee.getXPos()); 
 jrxOuXKJzTQnxj3ee.getVar().setBool(2, false); 
 
 jrxOuXKJzTQnxj3ee.sq_PlaySound("RAIDP_ATK");
 jrxOuXKJzTQnxj3ee.sq_PlaySound("WZ_TEANA_DASHATK_02");
 break;
 case 3: 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixstrengthhandstrikereturna.ani"));
 sq_CreateDrawOnlyObject(jrxOuXKJzTQnxj3ee, "character/mage/effect/animation/avatar/03_strengthhandstrike/addstrengthhandstrikereturna_eff_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 4: 
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixstrengthhandstrikereturnb.ani"));
 local mDcCQcDOFUugi1l02APcWh = jrxOuXKJzTQnxj3ee.sq_findNearLinearMovableXPos(sq_GetDistancePos(jrxOuXKJzTQnxj3ee.getXPos(), jrxOuXKJzTQnxj3ee.getDirection(), -300),
 jrxOuXKJzTQnxj3ee.getYPos(), jrxOuXKJzTQnxj3ee.getXPos(), jrxOuXKJzTQnxj3ee.getYPos(), 10); 
 sq_setCurrentAxisPos(jrxOuXKJzTQnxj3ee, 0, mDcCQcDOFUugi1l02APcWh); 
 break;
 }
 break;
 case 4: 
 local VnEAmgxzur_WT93 = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 1); 
 jrxOuXKJzTQnxj3ee.getVar("type").clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar("type").push_vector(VnEAmgxzur_WT93); 
 switch(VnEAmgxzur_WT93)
 {
 case 1:
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixrandompiercestrikeloop.ani"));
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(47);
 
 local PJc57pbrT8rsLsK8p0 = jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(66, 27, 0, 1.2); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 local l_9r5v8i5VJApSMa0pkw = sq_GetSkillLevel(jrxOuXKJzTQnxj3ee, 66); 
 local mnBiRWsPIGOmn = sq_GetIntData(jrxOuXKJzTQnxj3ee, 66, 0); 
 local TUXhGDQnBLatI = sq_GetIntData(jrxOuXKJzTQnxj3ee, 66, 3)-1; 
 local tkaFIRqoxoRPS6mkm11BSB8 = sq_GetIntData(jrxOuXKJzTQnxj3ee, 66, 4)-1; 
 jrxOuXKJzTQnxj3ee.getVar().clear_vector(); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(TUXhGDQnBLatI); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(tkaFIRqoxoRPS6mkm11BSB8); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(mnBiRWsPIGOmn); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(mnBiRWsPIGOmn/2); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(100); 
 jrxOuXKJzTQnxj3ee.getVar().push_vector(150); 
 
 jrxOuXKJzTQnxj3ee.getVar().clear_timer_vector();
 jrxOuXKJzTQnxj3ee.getVar().push_timer_vector();
 local QJYBE5BhXjYyxVLV3 = jrxOuXKJzTQnxj3ee.getVar().get_timer_vector(0);
 QJYBE5BhXjYyxVLV3.setParameter(mnBiRWsPIGOmn, TUXhGDQnBLatI); 
 QJYBE5BhXjYyxVLV3.resetInstant(0); 
 jrxOuXKJzTQnxj3ee.sq_PlaySound("WZ_TEANA_ATK_FIN_02");
 break;
 case 2:
 jrxOuXKJzTQnxj3ee.setCurrentAnimation(sq_CreateAnimation("", "character/mage/animation/bellatrix/bellatrixrandompiercestrikeend.ani"));
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackInfo(48);
 local aED40zMcpprSq8 = jrxOuXKJzTQnxj3ee.sq_GetVectorData(fDRFcUCoDUsY7UYezOHo4, 2); 
 local TUXhGDQnBLatI = sq_GetIntData(jrxOuXKJzTQnxj3ee, 66, 3); 
 local tkaFIRqoxoRPS6mkm11BSB8 = sq_GetIntData(jrxOuXKJzTQnxj3ee, 66, 4); 
 local PJc57pbrT8rsLsK8p0 = sq_GetUniformVelocity(jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(66, 27, 1, 1.2),
 jrxOuXKJzTQnxj3ee.sq_GetBonusRateWithPassive(66, 27, 2, 1.2),
 aED40zMcpprSq8 - TUXhGDQnBLatI, tkaFIRqoxoRPS6mkm11BSB8- TUXhGDQnBLatI); 
 jrxOuXKJzTQnxj3ee.sq_SetCurrentAttackBonusRate(PJc57pbrT8rsLsK8p0); 
 break;
 }
 break;
 }
 jrxOuXKJzTQnxj3ee.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onEndState_mage_dragondance(GRzQJGJW5YNPU6, jjDF_cJgkTLD1kUSyG)
{
 if(!GRzQJGJW5YNPU6) return;
 if(jjDF_cJgkTLD1kUSyG != 248)
 {
 local Muq2KcA7zi8uWVKzBoVzH = GRzQJGJW5YNPU6.getVar().get_obj_vector(0); 
 if(Muq2KcA7zi8uWVKzBoVzH) Muq2KcA7zi8uWVKzBoVzH.setValid(false); 
 if(GRzQJGJW5YNPU6.getSkillSubState() == 3)
 GRzQJGJW5YNPU6.stopSound(9002); 
 }
} ;

function onAttack_mage_dragondance(nHZGGNKQ_llP0pn2srM7, EM0VEIkaQMIrsYv4, BDwiiOrOKxNa9VwUuCJLK, ghyhxDvYT2Nm)
{
 if(!nHZGGNKQ_llP0pn2srM7) return;
 local aV9uuFtDex_j3c = nHZGGNKQ_llP0pn2srM7.getSkillSubState(); 
 switch(aV9uuFtDex_j3c)
 {
 case 0:
 case 1:
 case 2:
 if(ghyhxDvYT2Nm || !EM0VEIkaQMIrsYv4.isObjectType(OBJECTTYPE_ACTIVE))return;
 if(nHZGGNKQ_llP0pn2srM7.getVar().getBool(0) == true 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(EM0VEIkaQMIrsYv4, "character/mage/dragondance/ap_dragondance.nut") 
 && sq_IsGrabable(nHZGGNKQ_llP0pn2srM7, EM0VEIkaQMIrsYv4) 
 && sq_IsHoldable(nHZGGNKQ_llP0pn2srM7, EM0VEIkaQMIrsYv4) 
 && !sq_IsFixture(EM0VEIkaQMIrsYv4)) 
 {
 CNSquirrelAppendage.sq_AppendAppendage(EM0VEIkaQMIrsYv4, nHZGGNKQ_llP0pn2srM7, 69, true, "character/mage/dragondance/ap_dragondance.nut", true); 
 }
 break;
 case 3: 
 if(!ghyhxDvYT2Nm && nHZGGNKQ_llP0pn2srM7.getVar().getBool(2) == false) 
 {
 sq_SetMyShake(nHZGGNKQ_llP0pn2srM7, 8, 200); 
 nHZGGNKQ_llP0pn2srM7.getVar().setBool(2, true); 
 }
 break;
 }
} ;

function onKeyFrameFlag_mage_dragondance(Zo4mCIfkvcq2GHCsR, H664rxQvMQh7VPQQpBo)
{
 if(!Zo4mCIfkvcq2GHCsR) return false;
 local nodLMEkG5NB4CHt = Zo4mCIfkvcq2GHCsR.getSkillSubState(); 
 switch(nodLMEkG5NB4CHt)
 {
 case 0: 
 case 1: 
 switch(H664rxQvMQh7VPQQpBo)
 {
 case 1:case 2:case 3:case 4:case 5:
 Zo4mCIfkvcq2GHCsR.resetHitObjectList(); 
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 sq_flashScreen(Zo4mCIfkvcq2GHCsR, 0, 30, 30, 7, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 6:
 Zo4mCIfkvcq2GHCsR.sq_SetCurrentAttackInfo(46);
 
 
 local vF5W_hOG1hQlltcM2oqx = Zo4mCIfkvcq2GHCsR.sq_GetBonusRateWithPassive(69, 29, 7, 1.0); 
 Zo4mCIfkvcq2GHCsR.sq_SetCurrentAttackBonusRate(vF5W_hOG1hQlltcM2oqx); 
 Zo4mCIfkvcq2GHCsR.resetHitObjectList(); 
 Zo4mCIfkvcq2GHCsR.getVar().setBool(0, true); 
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 sq_flashScreen(Zo4mCIfkvcq2GHCsR, 0, 80, 100, 51, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 switch(H664rxQvMQh7VPQQpBo)
 {
 case 2:case 3:case 4: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 4, 80); break;
 case 1: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 4, 100); break;
 case 5: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 5, 100); break;
 case 6: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 15, 180); break;
 }
 
 switch(H664rxQvMQh7VPQQpBo)
 {
 case 2:
 case 3:
 case 10:
 case 11:
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 {
 
 local f6W3Dk1Tse6xCqbLOd3Qn = Zo4mCIfkvcq2GHCsR.getDirection(); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && f6W3Dk1Tse6xCqbLOd3Qn == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && f6W3Dk1Tse6xCqbLOd3Qn == ENUM_DIRECTION_RIGHT)
 return true;
 local T2MdKlM1EYACqUxnrMI9Ie = [0, 0, 40, 35, 0, 0, 0, 0, 0, 0, 35, 120]; 
 local Mb4N7sB6Cejbm4jQn = [0, 0, 8, 10, 0, 0, 0, 0, 0, 0, 12, 17]; 
 local jQkA__Lf984Xh8dm0HFx = [0, 0, 9, 11, 0, 0, 0, 0, 0, 0, 14, 18]; 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteWord(T2MdKlM1EYACqUxnrMI9Ie [H664rxQvMQh7VPQQpBo]); 
 sq_BinaryWriteWord(Mb4N7sB6Cejbm4jQn[H664rxQvMQh7VPQQpBo]); 
 sq_BinaryWriteWord(jQkA__Lf984Xh8dm0HFx[H664rxQvMQh7VPQQpBo]); 
 sq_SendChangeSkillEffectPacket(Zo4mCIfkvcq2GHCsR, 248); 
 }
 break;
 }
 break;
 case 2: 
 local AUnJPS9VxGg8xgR2tn56Ae = Zo4mCIfkvcq2GHCsR.getVar("type").get_vector(0); 
 switch(AUnJPS9VxGg8xgR2tn56Ae)
 {
 case 1:
 if(H664rxQvMQh7VPQQpBo == 1)
 {
 local w1Giq_3WG3HRXZXiyPlYsU = sq_AddDrawOnlyAniFromParent(Zo4mCIfkvcq2GHCsR, "character/mage/effect/animation/avatar/05_redragonspear/add_dragonspear_lance.ani", 34, 0, 106);
 Zo4mCIfkvcq2GHCsR.getVar().clear_obj_vector(); 
 Zo4mCIfkvcq2GHCsR.getVar().push_obj_vector(w1Giq_3WG3HRXZXiyPlYsU); 
 }
 break;
 case 2:
 switch(H664rxQvMQh7VPQQpBo)
 {
 case 1: case 3: case 4: case 5: case 6:
 Zo4mCIfkvcq2GHCsR.resetHitObjectList(); 
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 sq_flashScreen(Zo4mCIfkvcq2GHCsR, 0, 30, 30, 20, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 switch(H664rxQvMQh7VPQQpBo)
 {
 case 1: case 3: case 4: case 5: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 3, 80); break;
 case 6: sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 4, 100); break;
 case 2:
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 {
 
 local f6W3Dk1Tse6xCqbLOd3Qn = Zo4mCIfkvcq2GHCsR.getDirection(); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && f6W3Dk1Tse6xCqbLOd3Qn == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && f6W3Dk1Tse6xCqbLOd3Qn == ENUM_DIRECTION_RIGHT)
 return true;
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteWord(45); 
 sq_BinaryWriteWord(5); 
 sq_BinaryWriteWord(6); 
 sq_SendChangeSkillEffectPacket(Zo4mCIfkvcq2GHCsR, 248); 
 }
 break;
 }
 break;
 case 3:
 if(H664rxQvMQh7VPQQpBo == 1)
 {
 local w1Giq_3WG3HRXZXiyPlYsU = sq_AddDrawOnlyAniFromParent(Zo4mCIfkvcq2GHCsR, "character/mage/effect/animation/avatar/05_redragonspear/add_dragonspear_lance.ani", 18, 0, 800);
 Zo4mCIfkvcq2GHCsR.getVar().clear_obj_vector(); 
 Zo4mCIfkvcq2GHCsR.getVar().push_obj_vector(w1Giq_3WG3HRXZXiyPlYsU); 
 }
 break;
 }
 break;
 case 4: 
 local AUnJPS9VxGg8xgR2tn56Ae = Zo4mCIfkvcq2GHCsR.getVar("type").get_vector(0); 
 if(AUnJPS9VxGg8xgR2tn56Ae == 2 && H664rxQvMQh7VPQQpBo == 1)
 {
 sq_SetMyShake(Zo4mCIfkvcq2GHCsR, 5, 160);
 if(Zo4mCIfkvcq2GHCsR.sq_IsMyControlObject())
 sq_flashScreen(Zo4mCIfkvcq2GHCsR, 0, 20, 80, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 }
 return true;
} ;

function onProc_mage_dragondance(uwmt2Mm24n2Y2GEQKWfP5UTu)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return;
 local t8M_PXBs_53uwX = uwmt2Mm24n2Y2GEQKWfP5UTu.getSkillSubState(); 
 switch(t8M_PXBs_53uwX)
 {
 case 0:
 case 1:
 case 2:
 
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().size_vector() > 0)
 {
 local VGjEotGOxKcDTOXznoXNH = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar(); 
 local edT5p3PnaYUTHoy1N6 = uwmt2Mm24n2Y2GEQKWfP5UTu.getCurrentAnimation(); 
 local vx9t8oT5EvNiNZ = sq_GetCurrentTime(edT5p3PnaYUTHoy1N6) - VGjEotGOxKcDTOXznoXNH.get_vector(0); 
 local F4MrCSMVbJ50ZW = edT5p3PnaYUTHoy1N6.getDelaySum(VGjEotGOxKcDTOXznoXNH.get_vector(3), VGjEotGOxKcDTOXznoXNH.get_vector(4)); 
 local WsGUh6X8vFYN6 = VGjEotGOxKcDTOXznoXNH.get_vector(1); 
 local lfPAcnw3Sw = VGjEotGOxKcDTOXznoXNH.get_vector(2); 
 local nmEg2oSxh0RxiceKC = sq_GetDistancePos(WsGUh6X8vFYN6,
 uwmt2Mm24n2Y2GEQKWfP5UTu.getDirection(),
 sq_GetUniformVelocity(0, lfPAcnw3Sw, vx9t8oT5EvNiNZ, F4MrCSMVbJ50ZW)); 
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.isMovablePos(nmEg2oSxh0RxiceKC, uwmt2Mm24n2Y2GEQKWfP5UTu.getYPos())) 
 sq_setCurrentAxisPos(uwmt2Mm24n2Y2GEQKWfP5UTu, 0, nmEg2oSxh0RxiceKC); 
 else 
 uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().clear_vector(); 
 }
 if(t8M_PXBs_53uwX == 2) 
 {
 local vuGLXwldug22lWR9 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_obj_vector(0); 
 if(vuGLXwldug22lWR9)
 {
 local edT5p3PnaYUTHoy1N6 = vuGLXwldug22lWR9.getCurrentAnimation(); 
 local vx9t8oT5EvNiNZ = sq_GetCurrentTime(edT5p3PnaYUTHoy1N6); 
 local F4MrCSMVbJ50ZW = 0; 
 local eWjQgkHMgD0u = 0; 
 local RIFqIwDOhrk = 0; 
 local jGfScWpleSuJ72V4Zh0zuX = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar("type").get_vector(0); 
 switch(jGfScWpleSuJ72V4Zh0zuX)
 {
 case 1:
 case 2:
 eWjQgkHMgD0u = 106;
 RIFqIwDOhrk = 800;
 F4MrCSMVbJ50ZW = edT5p3PnaYUTHoy1N6.getDelaySum(false); 
 break;
 case 3:
 eWjQgkHMgD0u = 600;
 RIFqIwDOhrk = 106;
 local HCXRbLkTfMD5RkrXqIHCG = uwmt2Mm24n2Y2GEQKWfP5UTu.getCurrentAnimation(); 
 F4MrCSMVbJ50ZW = HCXRbLkTfMD5RkrXqIHCG.getDelaySum(3, 5); 
 break;
 }
 
 local N2YyOJ0eMng0QKEN = sq_GetUniformVelocity(eWjQgkHMgD0u, RIFqIwDOhrk, vx9t8oT5EvNiNZ, F4MrCSMVbJ50ZW);
 sq_setCurrentAxisPos(vuGLXwldug22lWR9, 2, N2YyOJ0eMng0QKEN); 
 local YS6ZLsBoRYvKFl0MdNKNi = sq_GetUniformVelocity(0, 540, vx9t8oT5EvNiNZ, F4MrCSMVbJ50ZW);
 sq_SetfRotateAngle(edT5p3PnaYUTHoy1N6, sq_ToRadian(YS6ZLsBoRYvKFl0MdNKNi.tofloat()));
 if(vx9t8oT5EvNiNZ >= F4MrCSMVbJ50ZW) 
 vuGLXwldug22lWR9.setValid(false);
 }
 }
 break;
 case 3: 
 local jGfScWpleSuJ72V4Zh0zuX = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar("type").get_vector(0); 
 switch(jGfScWpleSuJ72V4Zh0zuX)
 {
 case 1:
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IsMyControlObject())return;
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.isDownSkillLastKey()) 
 {
 local HCXRbLkTfMD5RkrXqIHCG = uwmt2Mm24n2Y2GEQKWfP5UTu.getCurrentAnimation();
 local etZS0xj8zOK7yIS = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(0); 
 
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().getBool(0) == false && uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetStateTimer() >= etZS0xj8zOK7yIS)
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().setBool(0, true);
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(uwmt2Mm24n2Y2GEQKWfP5UTu, 248); 
 }
 
 if(uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().getBool(1) == false)
 {
 local sTLrKuGZ9ys5k9 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_ani_vector(0); 
 if(sq_IsEnd(sTLrKuGZ9ys5k9)) 
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().setBool(1, true); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_BinaryWriteWord(2); 
 sq_SendChangeSkillEffectPacket(uwmt2Mm24n2Y2GEQKWfP5UTu, 248); 
 }
 }
 }
 else 
 {
 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectClear();
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(3); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(2); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetStateTimer()); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 }
 break;
 case 2:
 local edT5p3PnaYUTHoy1N6 = uwmt2Mm24n2Y2GEQKWfP5UTu.getCurrentAnimation(); 
 local vx9t8oT5EvNiNZ = sq_GetCurrentTime(edT5p3PnaYUTHoy1N6); 
 local F4MrCSMVbJ50ZW = edT5p3PnaYUTHoy1N6.getDelaySum(3, 4); 
 local WsGUh6X8vFYN6 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(0); 
 local lfPAcnw3Sw = 300; 
 local nmEg2oSxh0RxiceKC = sq_GetDistancePos(WsGUh6X8vFYN6,
 uwmt2Mm24n2Y2GEQKWfP5UTu.getDirection(),
 sq_GetUniformVelocity(0, lfPAcnw3Sw, vx9t8oT5EvNiNZ, F4MrCSMVbJ50ZW)); 
 sq_setCurrentAxisPos(uwmt2Mm24n2Y2GEQKWfP5UTu, 0, nmEg2oSxh0RxiceKC); 
 break;
 }
 break;
 case 4: 
 local jGfScWpleSuJ72V4Zh0zuX = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar("type").get_vector(0); 
 if(jGfScWpleSuJ72V4Zh0zuX == 1) 
 {
 local bZ3D8NI6MN01a8qVQB_s = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IsMyControlObject();
 local ZJ9F6aInQLqCiauGU5 = uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_timer_vector(0);
 if(ZJ9F6aInQLqCiauGU5)
 {
 if(ZJ9F6aInQLqCiauGU5.isOnEvent(uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetStateTimer()) == true)
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.resetHitObjectList(); 
 return;
 }
 if(ZJ9F6aInQLqCiauGU5.isEnd() && bZ3D8NI6MN01a8qVQB_s) 
 {
 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectClear();
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(4); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(2); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(ZJ9F6aInQLqCiauGU5.getEventMaxCount()); 
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 return;
 }
 }
 if(bZ3D8NI6MN01a8qVQB_s)
 {
 sq_SetKeyxEnable(uwmt2Mm24n2Y2GEQKWfP5UTu, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(uwmt2Mm24n2Y2GEQKWfP5UTu, E_JUMP_COMMAND)) 
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 sq_SetKeyxEnable(uwmt2Mm24n2Y2GEQKWfP5UTu, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(uwmt2Mm24n2Y2GEQKWfP5UTu, E_ATTACK_COMMAND)) 
 {
 if(ZJ9F6aInQLqCiauGU5.getEventMaxCount() < uwmt2Mm24n2Y2GEQKWfP5UTu.getVar().get_vector(1)) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(3); 
 sq_SendChangeSkillEffectPacket(uwmt2Mm24n2Y2GEQKWfP5UTu, 248); 
 return;
 }
 }
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_mage_dragondance(jO3kxWde8bnr_c)
{
 if(!jO3kxWde8bnr_c) return;
 if(!jO3kxWde8bnr_c.sq_IsMyControlObject()) return;
 local nLtWk2mg1p65eOKV = jO3kxWde8bnr_c.getSkillSubState(); 
 switch(nLtWk2mg1p65eOKV)
 {
 case 2: 
 local IIcOGz00jRDDXhxh5Pm2 = jO3kxWde8bnr_c.getVar("type").get_vector(0); 
 switch(IIcOGz00jRDDXhxh5Pm2)
 {
 case 1:
 case 2:
 jO3kxWde8bnr_c.sq_IntVectClear(); jO3kxWde8bnr_c.sq_IntVectPush(2); jO3kxWde8bnr_c.sq_IntVectPush(IIcOGz00jRDDXhxh5Pm2+1);
 jO3kxWde8bnr_c.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 break;
 case 3:
 jO3kxWde8bnr_c.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
 break;
 case 3: 
 local IIcOGz00jRDDXhxh5Pm2 = jO3kxWde8bnr_c.getVar("type").get_vector(0); 
 switch(IIcOGz00jRDDXhxh5Pm2)
 {
 case 2:
 case 3:
 jO3kxWde8bnr_c.sq_IntVectClear(); jO3kxWde8bnr_c.sq_IntVectPush(3); jO3kxWde8bnr_c.sq_IntVectPush(IIcOGz00jRDDXhxh5Pm2+1);
 jO3kxWde8bnr_c.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true);
 break;
 case 4:
 jO3kxWde8bnr_c.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 }
 break;
 case 4: 
 local IIcOGz00jRDDXhxh5Pm2 = jO3kxWde8bnr_c.getVar("type").get_vector(0); 
 if(IIcOGz00jRDDXhxh5Pm2 == 2)
 jO3kxWde8bnr_c.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 break;
 default: 
 jO3kxWde8bnr_c.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onChangeSkillEffect_mage_dragondance(A4ZZlVhqV6, aTXgCO5MIXMm9XRC2, PfQkLZrEBwQpBgT4o)
{
 if(!A4ZZlVhqV6) return;
 if(aTXgCO5MIXMm9XRC2 != 248)return; 
 local Epk_o0s9PvA_J0fUiPBDF1wo = A4ZZlVhqV6.getSkillSubState(); 
 local VhgNQC5WRfP3U4Q5P9IZB = PfQkLZrEBwQpBgT4o.readWord(); 
 switch(VhgNQC5WRfP3U4Q5P9IZB)
 {
 case 1: 
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getCurrentAnimation(); 
 A4ZZlVhqV6.getVar().clear_vector(); 
 local iWTgeRTRWYfU = A4ZZlVhqV6.getVar(); 
 iWTgeRTRWYfU.push_vector(sq_GetCurrentTime(TBu7C7vrv88tgEB)); 
 iWTgeRTRWYfU.push_vector(A4ZZlVhqV6.getXPos()); 
 iWTgeRTRWYfU.push_vector(PfQkLZrEBwQpBgT4o.readWord()); 
 iWTgeRTRWYfU.push_vector(PfQkLZrEBwQpBgT4o.readWord()); 
 iWTgeRTRWYfU.push_vector(PfQkLZrEBwQpBgT4o.readWord()); 
 break;
 case 2: 
 if(Epk_o0s9PvA_J0fUiPBDF1wo != 3) return;
 local ZxkGmJlIl0 = A4ZZlVhqV6.getVar("type").get_vector(0); 
 switch(ZxkGmJlIl0)
 {
 case 1: 
 local tjLWVlIM8b15tm9VpTbuSJ9T = PfQkLZrEBwQpBgT4o.readWord(); 
 switch(tjLWVlIM8b15tm9VpTbuSJ9T)
 {
 case 1: 
 local SkJDvcUWIpDD2O9Mhmv = sq_CreateDrawOnlyObject(A4ZZlVhqV6, "character/mage/effect/animation/strengthhandstrike/fullcharge_back.ani", ENUM_DRAWLAYER_NORMAL, true);
 local xethX82VAryurBt1LeE2sx = SkJDvcUWIpDD2O9Mhmv.getCurrentAnimation(); 
 xethX82VAryurBt1LeE2sx.addLayerAnimation(1, sq_CreateAnimation("", "character/mage/effect/animation/strengthhandstrike/fullcharge_front.ani"), true); 
 xethX82VAryurBt1LeE2sx.setSpeedRate(150.0); 
 A4ZZlVhqV6.sq_PlaySound("RAIDP_FULL"); 
 A4ZZlVhqV6.getVar().setBool(0, true); 
 break;
 case 2: 
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getCurrentAnimation(); 
 TBu7C7vrv88tgEB.removeLayerAnimation(A4ZZlVhqV6.getVar().get_ani_vector(0)); 
 TBu7C7vrv88tgEB.removeLayerAnimation(A4ZZlVhqV6.getVar().get_ani_vector(1)); 
 
 TBu7C7vrv88tgEB.addLayerAnimation(-1, sq_CreateAnimation("", "character/mage/effect/animation/strengthhandstrike/loop_back.ani"), true);
 TBu7C7vrv88tgEB.addLayerAnimation(1, sq_CreateAnimation("", "character/mage/effect/animation/strengthhandstrike/loop_front.ani"), true);
 A4ZZlVhqV6.getVar().setBool(1, true); 
 break;
 }
 break;
 }
 break;
 case 3: 
 local ZxkGmJlIl0 = A4ZZlVhqV6.getVar("type").get_vector(0); 
 switch(ZxkGmJlIl0)
 {
 case 1: 
 local ZNRjUPHkayQQT3eL = A4ZZlVhqV6.getVar().get_timer_vector(0);
 if(!ZNRjUPHkayQQT3eL)return; 
 local izuw9s9odJyh8xsrhR5 = ZNRjUPHkayQQT3eL.getEventMaxCount() + 1; 
 local ujSaULOXVuES86ATiuORx7p = A4ZZlVhqV6.getVar().get_vector(0); 
 local T1eStdtk60cPOBciTyd6rxu = A4ZZlVhqV6.getVar().get_vector(1); 
 local FIB8Vzg_7J = sq_GetUniformVelocity(A4ZZlVhqV6.getVar().get_vector(2),
 A4ZZlVhqV6.getVar().get_vector(3),
 izuw9s9odJyh8xsrhR5 - ujSaULOXVuES86ATiuORx7p, T1eStdtk60cPOBciTyd6rxu - ujSaULOXVuES86ATiuORx7p); 
 local OUBYm2wY7E1BsSj_tDrU5 = sq_GetUniformVelocity(A4ZZlVhqV6.getVar().get_vector(4),
 A4ZZlVhqV6.getVar().get_vector(5),
 izuw9s9odJyh8xsrhR5 - ujSaULOXVuES86ATiuORx7p, T1eStdtk60cPOBciTyd6rxu - ujSaULOXVuES86ATiuORx7p)/100.0; 
 ZNRjUPHkayQQT3eL.setEventMaxCount(izuw9s9odJyh8xsrhR5); 
 ZNRjUPHkayQQT3eL.setEventTerm(FIB8Vzg_7J); 
 A4ZZlVhqV6.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, OUBYm2wY7E1BsSj_tDrU5, OUBYm2wY7E1BsSj_tDrU5); 
 break;
 }
 break;
 }
} ;

