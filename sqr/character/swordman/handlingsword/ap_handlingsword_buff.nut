
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 

 
 




  
  
SKILL_SWORDMAN_HANDLINGSWORD_LOOP_EFF_ANI_PATH <-[
 "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Stand_Sword_normal_A.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Stand_Sword_normal_B.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Stand_Sword_normal_C.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Stand_Sword_normal_D.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Stand_Sword_normal_E.ani"
];
 
SKILL_SWORDMAN_HANDLINGSWORD_ONLOOP_EFF_ANI_PATH <-[
 "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Lifting_Sword_normal_B.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Lifting_Sword_normal_C.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Lifting_Sword_normal_D.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Lifting_Sword_normal_E.ani",
  "passiveobject/script_sqr_nut_qq506807329/swordman/animation/0.ani"
];

 
SKILL_SWORDMAN_HANDLINGSWORD_ADD_SPEED_RATE <-200.0;



function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_handlingsword_buff") 
  appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_swordman_handlingsword_buff") 
  appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_handlingsword_buff") 
  appendage.sq_AddFunctionName("onStartMap", "onStartMap_appendage_swordman_handlingsword_buff") 
  appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_handlingsword_buff")
  appendage.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_swordman_handlingsword_buff")
}



 
function onStart_appendage_swordman_handlingsword_buff(IBrsLswTbV)
{
 if(!IBrsLswTbV) return;
 
 IBrsLswTbV.getVar().clear_vector(); 
 IBrsLswTbV.getVar().push_vector(0); 
 
 IBrsLswTbV.getVar("home").clear_vector(); 
 
 IBrsLswTbV.getVar("wait").clear_vector(); 
 IBrsLswTbV.getVar("wait").push_vector(0); 
 IBrsLswTbV.getVar().setBool(0, false); 
 
 
 IBrsLswTbV.getVar().clear_timer_vector();
 IBrsLswTbV.getVar().push_timer_vector();
 local UU4hDcn0Ni5R8r5LiIRxhM = IBrsLswTbV.getVar().get_timer_vector(0);
 UU4hDcn0Ni5R8r5LiIRxhM.setParameter(20, -1); 
 UU4hDcn0Ni5R8r5LiIRxhM.resetInstant(0); 
 
 IBrsLswTbV.sq_DeleteEffectBack(); 
 for(local SW_cyH02Ruzv = 0; SW_cyH02Ruzv < 5; SW_cyH02Ruzv++)
 {
 IBrsLswTbV.sq_AddEffectBack("passiveobject/script_sqr_nut_qq506807329/swordman/animation/0.ani"); 
 local TutfjFcPna4 = IBrsLswTbV.sq_GetBackAnimation(SW_cyH02Ruzv); 
 if(TutfjFcPna4) 
 {
 local HzCNClhEcdGD = sq_getAniLayerListObject(TutfjFcPna4, 0); 
 if(HzCNClhEcdGD) 
 TutfjFcPna4.removeLayerAnimation(HzCNClhEcdGD); 
 
 TutfjFcPna4.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_LOOP_EFF_ANI_PATH[SW_cyH02Ruzv]), true); 
 }
 }
} ;

 
function onStartMap_appendage_swordman_handlingsword_buff(DEJsBtPxNF0X)
{
 if(!DEJsBtPxNF0X) return;
 
 onStart_appendage_swordman_handlingsword_buff(DEJsBtPxNF0X);
} ;

 
function drawAppend_appendage_swordman_handlingsword_buff(DEJsBtPxNF0X, GSGPg05Xalq9A4JY4YLD_3, uHKRED8ED4EEfH, N6Oph9Yer9XJX88, JPxICbgz7eKg)
{
 if(!DEJsBtPxNF0X) return;
 local izzHPIS4IT7 = DEJsBtPxNF0X.getParent();
 if(!izzHPIS4IT7)
 {
 DEJsBtPxNF0X.setValid(false);
 return;
 }
 if(GSGPg05Xalq9A4JY4YLD_3) return; 
 local UTzPBtxRVGZZ9kjO = DEJsBtPxNF0X.getVar("home"); 
 local prpu75Uk0wkg4 = UTzPBtxRVGZZ9kjO.size_vector(); 
 if(prpu75Uk0wkg4 <= 0)return;
 
 local rftoXCSwNfS = DEJsBtPxNF0X.getVar(); 
 local kWWUoi2JckGe = [
 rftoXCSwNfS.GetAnimationMap("ballhead", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/ballhead.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail1", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail1.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani"),
 rftoXCSwNfS.GetAnimationMap("balltail4", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail4.ani")
 
 ];
 local RFoV32yKIHcC9vGx0 = DEJsBtPxNF0X.getTimer().Get(); 
 local NcNA5KsZ9syER = izzHPIS4IT7.getObjectManager(); 
 N6Oph9Yer9XJX88 -= 45; 
 local wFs8lyXavpYD5S9Dts = 0; 
 for(local aLOnHIlQqZXE4wVZd = 0; aLOnHIlQqZXE4wVZd < prpu75Uk0wkg4; aLOnHIlQqZXE4wVZd += 4)
 {
 wFs8lyXavpYD5S9Dts++; 
 local P1SsRMY5aSWA = UTzPBtxRVGZZ9kjO.get_vector(aLOnHIlQqZXE4wVZd); 
 if(P1SsRMY5aSWA == 0) continue; 
 local uX7kOatbk0YPkEI = RFoV32yKIHcC9vGx0 - P1SsRMY5aSWA; 
 local Y9ZFWnaAKtPXPfI_kx = 800; 
 if(uX7kOatbk0YPkEI >= Y9ZFWnaAKtPXPfI_kx * 0.9) 
 {
 UTzPBtxRVGZZ9kjO.set_vector(aLOnHIlQqZXE4wVZd, 0); 
 DEJsBtPxNF0X.getVar("wait").set_vector(0, DEJsBtPxNF0X.getVar("wait").get_vector(0) + 1); 
 return;
 }
 else 
 {
 local SBSrn8Ty16EedNvAWPNGm = DEJsBtPxNF0X.getVar("draw" + wFs8lyXavpYD5S9Dts.tostring()); 
 
 if(!SBSrn8Ty16EedNvAWPNGm.get_ani_vector(0))
 {
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("ballhead", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/ballhead.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail1", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail1.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail2.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail3.ani")); 
 SBSrn8Ty16EedNvAWPNGm.push_ani_vector(SBSrn8Ty16EedNvAWPNGm.GetAnimationMap("balltail4", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/handlingsword/balltail4.ani")); 
 
 for(local xWzEsH4pUoBJMTKBaT = 1; xWzEsH4pUoBJMTKBaT < 9; xWzEsH4pUoBJMTKBaT++)
 {
 local joRt2dVeT5izIr8n9ABGHqOj = SBSrn8Ty16EedNvAWPNGm.get_ani_vector(xWzEsH4pUoBJMTKBaT); 
 if(joRt2dVeT5izIr8n9ABGHqOj)
 joRt2dVeT5izIr8n9ABGHqOj.setImageRateFromOriginal(1.0, -1.0); 
 }
 }
 
 local fbMZZYgpKuiSdj = UTzPBtxRVGZZ9kjO.get_vector(aLOnHIlQqZXE4wVZd + 1); 
 local cEkrgJyRJ5Ief = UTzPBtxRVGZZ9kjO.get_vector(aLOnHIlQqZXE4wVZd + 2); 
 fbMZZYgpKuiSdj = fbMZZYgpKuiSdj - (NcNA5KsZ9syER.getFieldXPos(fbMZZYgpKuiSdj, ENUM_DRAWLAYER_NORMAL) - fbMZZYgpKuiSdj); 
 cEkrgJyRJ5Ief = cEkrgJyRJ5Ief - (NcNA5KsZ9syER.getFieldYPos(cEkrgJyRJ5Ief, UTzPBtxRVGZZ9kjO.get_vector(aLOnHIlQqZXE4wVZd + 3), ENUM_DRAWLAYER_NORMAL) - cEkrgJyRJ5Ief); 
 local u8WeCFJNaSkZ9KBLFFpOgr = sq_Abs(fbMZZYgpKuiSdj - uHKRED8ED4EEfH); 
 local m2x0C8Gel0zP8InlThliY = sq_Abs(cEkrgJyRJ5Ief - N6Oph9Yer9XJX88); 
 local QUhUMoXZUlCg6qjFVHbnN = (fbMZZYgpKuiSdj < uHKRED8ED4EEfH) ? -1 : 1; 
 
 for(local xWzEsH4pUoBJMTKBaT = 8; xWzEsH4pUoBJMTKBaT >= 0; xWzEsH4pUoBJMTKBaT--)
 {
 local Tg2KxRS7GR_iKG3mrfvMa = uX7kOatbk0YPkEI - xWzEsH4pUoBJMTKBaT * 5; 
 if(Tg2KxRS7GR_iKG3mrfvMa < 0)continue; 
 local OEwIY1yhnUp5WKoH = sq_GetAccel(0, 90, Tg2KxRS7GR_iKG3mrfvMa, Y9ZFWnaAKtPXPfI_kx, true); 
 local kwBXXHagflAfNcJhwAkUGN = u8WeCFJNaSkZ9KBLFFpOgr * sq_CosTable(OEwIY1yhnUp5WKoH) / QUhUMoXZUlCg6qjFVHbnN; 
 local Xh5pNDeeufmwFfcSFKpi = m2x0C8Gel0zP8InlThliY - m2x0C8Gel0zP8InlThliY * sq_SinTable(OEwIY1yhnUp5WKoH); 
 local W2QwxUh7L90dz4cGvd = uHKRED8ED4EEfH + kwBXXHagflAfNcJhwAkUGN.tointeger(); 
 local puz_gp21U_THcI8ddc7 = N6Oph9Yer9XJX88 - Xh5pNDeeufmwFfcSFKpi.tointeger(); 
 sq_DrawSpecificFrame(SBSrn8Ty16EedNvAWPNGm.get_ani_vector(xWzEsH4pUoBJMTKBaT), W2QwxUh7L90dz4cGvd, puz_gp21U_THcI8ddc7, false, 0, false, 1.0); 
 
 if(xWzEsH4pUoBJMTKBaT != 0)
 {
 local tF5htmJap0BicI7a3 = sq_ToDegree(sq_Atan2(sq_Abs(puz_gp21U_THcI8ddc7 - N6Oph9Yer9XJX88).tofloat(), sq_Abs(W2QwxUh7L90dz4cGvd - uHKRED8ED4EEfH).tofloat())); 
 local aZlTA7tsvY = 0.0;
 if(tF5htmJap0BicI7a3 + 18.0 <= 90.0)aZlTA7tsvY = 18.0;
 
 if(QUhUMoXZUlCg6qjFVHbnN == 1) tF5htmJap0BicI7a3 = 180.0 - tF5htmJap0BicI7a3 - aZlTA7tsvY;
 else tF5htmJap0BicI7a3 += aZlTA7tsvY;
 sq_SetfRotateAngle(SBSrn8Ty16EedNvAWPNGm.get_ani_vector(xWzEsH4pUoBJMTKBaT), sq_ToRadian(tF5htmJap0BicI7a3)); 
 }
 }
 }
 }
} ;

 
function onAttackParent_appendage_swordman_handlingsword_buff(c_vFwykB3ZWKJuHsr, cIml7jnrbdarQ8XTzHorH, loivKWmHZdUGQPBBL5, MO5RKozBwG020, KsiqEmBTOzNbDmqOvBr_KZuY)
{
 if(!c_vFwykB3ZWKJuHsr
 || c_vFwykB3ZWKJuHsr.getVar().getBool(0) == true
 || KsiqEmBTOzNbDmqOvBr_KZuY
 || !loivKWmHZdUGQPBBL5
 || !loivKWmHZdUGQPBBL5.isObjectType(OBJECTTYPE_ACTIVE)) return;
 
 local sgYf1ZpUKSfUFyvi = c_vFwykB3ZWKJuHsr.getVar().get_timer_vector(0);
 if(!sgYf1ZpUKSfUFyvi.isOnEvent(c_vFwykB3ZWKJuHsr.getTimer().Get())) return;
 local _EYpvCDxi3J06B5 = c_vFwykB3ZWKJuHsr.getParent();
 if(!_EYpvCDxi3J06B5)
 {
 c_vFwykB3ZWKJuHsr.setValid(false);
 return;
 }
 if(cIml7jnrbdarQ8XTzHorH.isObjectType(OBJECTTYPE_PASSIVE)) 
 {
 local FgwoiIWTKVGF1AOIOvL = sq_GetCNRDObjectToCollisionObject(cIml7jnrbdarQ8XTzHorH); 
 if(!FgwoiIWTKVGF1AOIOvL) return; 
 switch(FgwoiIWTKVGF1AOIOvL.getCollisionObjectIndex()) 
 {
 case 20033:
 case 20034:
 case 20035:
 case 20036: 
 break;
 case 24370: 
 if(FgwoiIWTKVGF1AOIOvL.getVar("skill").get_vector(0) != 234) return; 
 break;
 default: 
 return;
 }
 }
 else if(!isSameObject(cIml7jnrbdarQ8XTzHorH, _EYpvCDxi3J06B5))return; 
 else 
 switch(_EYpvCDxi3J06B5.getState()) 
 {
 case 7: case 8: case 15: case 22: case 39: break; 
 case 62: case 63: case 64: break; 
 case 40: 
 case 234: 
 break;
 case 58: 
 break;
 default: 
 return;
 }
 local q7OxZZAHxYSGo42Ls_3 = c_vFwykB3ZWKJuHsr.getVar().get_vector(0); 
 if(q7OxZZAHxYSGo42Ls_3 <= 0) return; 
 local q0lW6Mznd8pW4j = getSwordCount_appendage_swordman_handlingsword_buff(c_vFwykB3ZWKJuHsr); 
 if(q0lW6Mznd8pW4j > 0) 
 {
 consumeConut_appendage_swordman_handlingsword_buff(c_vFwykB3ZWKJuHsr, q0lW6Mznd8pW4j - 1); 
 c_vFwykB3ZWKJuHsr.getVar().set_vector(0, q7OxZZAHxYSGo42Ls_3 - 1); 
 
 if(_EYpvCDxi3J06B5.isMyControlObject())
 {
 _EYpvCDxi3J06B5 = sq_GetCNRDObjectToSQRCharacter(_EYpvCDxi3J06B5); 
 if(_EYpvCDxi3J06B5)
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(246); 
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteDword(_EYpvCDxi3J06B5.sq_GetBonusRateWithPassive(246, 246, 1, 1.0)); 
 sq_BinaryWriteDword(sq_GetGroup(loivKWmHZdUGQPBBL5)); 
 sq_BinaryWriteDword(sq_GetUniqueId(loivKWmHZdUGQPBBL5)); 
 sq_BinaryWriteDword(loivKWmHZdUGQPBBL5.getXPos()); 
 sq_BinaryWriteDword(loivKWmHZdUGQPBBL5.getYPos()); 
 sq_BinaryWriteDword(loivKWmHZdUGQPBBL5.getZPos() + sq_GetHeightObject(loivKWmHZdUGQPBBL5) / 2); 
 sq_SendCreatePassiveObjectPacket(_EYpvCDxi3J06B5, 24370, 0, 0, 0, 0, _EYpvCDxi3J06B5.getDirection()); 
 }
 }
 }
} ;

 
 
function proc_appendage_swordman_handlingsword_buff(aJn_uo1Sgx)
{
 if(!aJn_uo1Sgx || !aJn_uo1Sgx.isValid()) return;
 local ooqw6d2EB5gn1D = aJn_uo1Sgx.getParent();
 if(!ooqw6d2EB5gn1D)
 {
 aJn_uo1Sgx.setValid(false);
 return;
 }
 
 
 
 if(recoverLoop_appendage_swordman_handlingsword_buff(aJn_uo1Sgx)) return;
 
 
 if(aJn_uo1Sgx.getVar().getBool(0) == false)
 {
 if(aJn_uo1Sgx.getTimer().Get() >= aJn_uo1Sgx.getAppendageInfo().getValidTime() * 0.95)
 aJn_uo1Sgx.getVar().setBool(0, true); 
 }
 else 
 return;
 
 
 if(recoverSword_appendage_swordman_handlingsword_buff(aJn_uo1Sgx)) return;
} ;

 
function onVaildTimeEnd_appendage_swordman_handlingsword_buff(aJn_uo1Sgx)
{
 if(!aJn_uo1Sgx)return;
 local ooqw6d2EB5gn1D = sq_GetCNRDObjectToSQRCharacter(aJn_uo1Sgx.getParent()); 
 if(!ooqw6d2EB5gn1D)
 {
 aJn_uo1Sgx.setValid(false);
 return;
 }
 
 onEndRangeAttack_appendage_swordman_handlingsword_buff(ooqw6d2EB5gn1D);
} ;

 
function recoverLoop_appendage_swordman_handlingsword_buff(YaADf1nEVn0z5YnhYljVDVD)
{
 if(!YaADf1nEVn0z5YnhYljVDVD) return;
 local vvBxy6C4lo9qnJ1wm = false; 
 local helIbZ5mRLe97YnysK43d = false; 
 local OB0GvfKJjtd0TQ2AM4hIx3 = null; 
 local jqxRpcq6vhzmvIAdOOGkMD = null; 
 for(local wNeEZ0YUsW4 = 0; wNeEZ0YUsW4 < 5; wNeEZ0YUsW4++)
 {
 local I1Anay7KEq1b3yOI_UEL = YaADf1nEVn0z5YnhYljVDVD.sq_GetBackAnimation(wNeEZ0YUsW4); 
 if(!I1Anay7KEq1b3yOI_UEL) continue; 
 local elU7Zo6KA8Mk_7sN9 = sq_getAniLayerListObject(I1Anay7KEq1b3yOI_UEL, 0); 
 if(!elU7Zo6KA8Mk_7sN9) continue; 
 local aKVvLBUmRoNUYMeq = sq_GetAniFrameNumber(elU7Zo6KA8Mk_7sN9, 0); 
 
 if(sq_IsEnd(elU7Zo6KA8Mk_7sN9) && aKVvLBUmRoNUYMeq != 1)
 {
 
 if(wNeEZ0YUsW4 == 0)
 {
 
 I1Anay7KEq1b3yOI_UEL.removeLayerAnimation(elU7Zo6KA8Mk_7sN9); 
 I1Anay7KEq1b3yOI_UEL.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_LOOP_EFF_ANI_PATH[wNeEZ0YUsW4]), true); 
 return true;
 }
 
 else
 {
 
 if(helIbZ5mRLe97YnysK43d == true)
 {
 
 I1Anay7KEq1b3yOI_UEL.removeLayerAnimation(elU7Zo6KA8Mk_7sN9); 
 I1Anay7KEq1b3yOI_UEL.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_LOOP_EFF_ANI_PATH[wNeEZ0YUsW4]), true); 
 return true;
 }
 
 else
 {
 
 if(!jqxRpcq6vhzmvIAdOOGkMD.isLoop() && sq_GetAniFrameNumber(jqxRpcq6vhzmvIAdOOGkMD, 0) == 1)
 {
 
 I1Anay7KEq1b3yOI_UEL.removeLayerAnimation(elU7Zo6KA8Mk_7sN9); 
 I1Anay7KEq1b3yOI_UEL.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_ONLOOP_EFF_ANI_PATH[4]), true); 
 
 OB0GvfKJjtd0TQ2AM4hIx3.removeLayerAnimation(jqxRpcq6vhzmvIAdOOGkMD); 
 OB0GvfKJjtd0TQ2AM4hIx3.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_ONLOOP_EFF_ANI_PATH[wNeEZ0YUsW4 - 1]), true); 
 sq_Rewind(OB0GvfKJjtd0TQ2AM4hIx3); 
 OB0GvfKJjtd0TQ2AM4hIx3.setSpeedRate(200.0); 
 return true;
 }
 }
 }
 }
 
 helIbZ5mRLe97YnysK43d = elU7Zo6KA8Mk_7sN9.isLoop(); 
 
 OB0GvfKJjtd0TQ2AM4hIx3 = I1Anay7KEq1b3yOI_UEL;
 jqxRpcq6vhzmvIAdOOGkMD = elU7Zo6KA8Mk_7sN9;
 }
 return false;
} ;

 
function consumeConut_appendage_swordman_handlingsword_buff(_IQrsdWQP7_zA3bLcaF, UsNT01Da1CsC)
{
 if(!_IQrsdWQP7_zA3bLcaF) return;
 for(local nnUdaeSz4C4RQ = 0; nnUdaeSz4C4RQ <= UsNT01Da1CsC; nnUdaeSz4C4RQ++)
 {
 local qpi27Pn_TP = _IQrsdWQP7_zA3bLcaF.sq_GetBackAnimation(nnUdaeSz4C4RQ); 
 if(!qpi27Pn_TP) continue;
 local spQinGF3rivKcw73PnjX0j_S = sq_getAniLayerListObject(qpi27Pn_TP, 0); 
 if(!spQinGF3rivKcw73PnjX0j_S)continue;
 if(spQinGF3rivKcw73PnjX0j_S.isLoop() 
 && sq_GetAniFrameNumber(spQinGF3rivKcw73PnjX0j_S, 0) == 12) 
 {
 if(nnUdaeSz4C4RQ < UsNT01Da1CsC)
 {
 qpi27Pn_TP.removeLayerAnimation(spQinGF3rivKcw73PnjX0j_S); 
 qpi27Pn_TP.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_ONLOOP_EFF_ANI_PATH[nnUdaeSz4C4RQ]), true); 
 sq_Rewind(qpi27Pn_TP); 
 qpi27Pn_TP.setSpeedRate(200.0); 
 }
 else if(nnUdaeSz4C4RQ == UsNT01Da1CsC)
 {
 qpi27Pn_TP.removeLayerAnimation(spQinGF3rivKcw73PnjX0j_S); 
 qpi27Pn_TP.addLayerAnimation(0, sq_CreateAnimation("", SKILL_SWORDMAN_HANDLINGSWORD_ONLOOP_EFF_ANI_PATH[4]), true); 
 }
 }
 }
 return false;
} ;

 
function recoverSword_appendage_swordman_handlingsword_buff(xwD_k47jywIFnmXq)
{
 if(!xwD_k47jywIFnmXq) return;
 local DEwoZe6YV4z6loNTOw6QZO = xwD_k47jywIFnmXq.getVar("wait").get_vector(0); 
 if(DEwoZe6YV4z6loNTOw6QZO <= 0)return;
 local IYE_KIuzo1G1D = xwD_k47jywIFnmXq.sq_GetBackAnimation(4); 
 if(IYE_KIuzo1G1D)
 {
 local ivMUsv0YaGZA9JfFQX = sq_getAniLayerListObject(IYE_KIuzo1G1D, 0); 
 if(ivMUsv0YaGZA9JfFQX
 && sq_GetAniFrameNumber(ivMUsv0YaGZA9JfFQX, 0) == 1)
 {
 IYE_KIuzo1G1D.removeLayerAnimation(ivMUsv0YaGZA9JfFQX); 
 IYE_KIuzo1G1D.addLayerAnimation(0, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/Animation/Handlingsword/Handlingsword_Returning_Sword_normal_E.ani"), true); 
 sq_Rewind(IYE_KIuzo1G1D); 
 xwD_k47jywIFnmXq.getVar("wait").set_vector(0, DEwoZe6YV4z6loNTOw6QZO - 1); 
 return true;
 }
 }
 return false;
} ;

 
function getSwordCount_appendage_swordman_handlingsword_buff(tderjy9h9NwFLDXXP9Gptm)
{
 if(!tderjy9h9NwFLDXXP9Gptm) return 0;
 local PBUMZ_dch2oZdxRGn4Gjj = 0; 
 for(local uv1hZ1T2SQcmvuSuujFzFAQL = 0; uv1hZ1T2SQcmvuSuujFzFAQL < 5; uv1hZ1T2SQcmvuSuujFzFAQL++)
 {
 local c6dutj9fAHqBx6sLd = tderjy9h9NwFLDXXP9Gptm.sq_GetBackAnimation(uv1hZ1T2SQcmvuSuujFzFAQL); 
 if(c6dutj9fAHqBx6sLd)
 {
 local SfFMd3iHgRN9gV = sq_getAniLayerListObject(c6dutj9fAHqBx6sLd, 0); 
 if(SfFMd3iHgRN9gV 
 && SfFMd3iHgRN9gV.isLoop() 
 && sq_GetAniFrameNumber(SfFMd3iHgRN9gV, 0) == 12) 
 {
 PBUMZ_dch2oZdxRGn4Gjj++; 
 }
 }
 }
 return PBUMZ_dch2oZdxRGn4Gjj;
} ;


