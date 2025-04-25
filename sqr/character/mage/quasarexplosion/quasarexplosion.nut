
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function checkExecutableSkill_mage_quasarexplosion(Pu96OD5T8hR8dezAi2wwTgTH)
{
 if(!Pu96OD5T8hR8dezAi2wwTgTH) return false; 
 local kl9uC5hqVW = Pu96OD5T8hR8dezAi2wwTgTH.sq_IsUseSkill(247); 
 if(kl9uC5hqVW) 
 {
 local CE4uWpP73fIwP67vr = 0; 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Pu96OD5T8hR8dezAi2wwTgTH, "character/mage/appendage/ap_bellatrix.nut")) 
 CE4uWpP73fIwP67vr = 1;
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(Pu96OD5T8hR8dezAi2wwTgTH, "character/mage/avatar/ap_avatar.nut")) 
 CE4uWpP73fIwP67vr = 2;
 Pu96OD5T8hR8dezAi2wwTgTH.sq_IntVectClear();
 Pu96OD5T8hR8dezAi2wwTgTH.sq_IntVectPush(CE4uWpP73fIwP67vr);
 Pu96OD5T8hR8dezAi2wwTgTH.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_quasarexplosion(zlmaIV7R1e78Uhl)
{
 if(!zlmaIV7R1e78Uhl) return false; 
 local azfpm6tho5fm9HoJ = zlmaIV7R1e78Uhl.sq_GetState(); 
 if(azfpm6tho5fm9HoJ == STATE_STAND) 
 return true; 
 if(azfpm6tho5fm9HoJ == STATE_ATTACK) 
 {
 return zlmaIV7R1e78Uhl.sq_IsCommandEnable(247); 
 }
 return true; 
} ;

 
function onSetState_mage_quasarexplosion(zlmaIV7R1e78Uhl, azfpm6tho5fm9HoJ, WoSGd9n2lbn9HBSJNa, nfFitq1Wmnzr)
{
 if(!zlmaIV7R1e78Uhl) return; 
 local gmq6IYKaJu6mUuz9RAex9fw = zlmaIV7R1e78Uhl.sq_GetVectorData(WoSGd9n2lbn9HBSJNa, 0); 
 zlmaIV7R1e78Uhl.setSkillSubState(gmq6IYKaJu6mUuz9RAex9fw); 
 zlmaIV7R1e78Uhl.sq_StopMove(); 
 switch(gmq6IYKaJu6mUuz9RAex9fw)
 {
 case 0: 
 zlmaIV7R1e78Uhl.sq_SetCurrentAnimation(98);
 break;
 case 1: 
 local wbRamMx_aYZyFT8ozHR6Y = zlmaIV7R1e78Uhl.getVar().GetAnimationMap("mage_bellatrix_qcabody_body", "character/mage/animation/bellatrix/qcabody_body.ani"); 
 zlmaIV7R1e78Uhl.setCurrentAnimation(wbRamMx_aYZyFT8ozHR6Y); 
 break;
 case 2: 
 local wbRamMx_aYZyFT8ozHR6Y = setCurrentAnimation_avatar_eff(zlmaIV7R1e78Uhl, "qcbbody_body",false); 
 zlmaIV7R1e78Uhl.setCurrentAnimation(wbRamMx_aYZyFT8ozHR6Y); 
 zlmaIV7R1e78Uhl.sq_PlaySound("WZ_QUASAR_EXPLOSION_READY");
 break;
 }
 local wfrdMWX0aA53p = zlmaIV7R1e78Uhl.getCurrentAnimation(); 
 local DD71UPWC_LdmMuB4Damzvbs5 = wfrdMWX0aA53p.getDelaySum(false); 
 zlmaIV7R1e78Uhl.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 0.9, 0.9); 
 local sfPh9ofDwpSTK7gT6gs0hRT3 = wfrdMWX0aA53p.getDelaySum(false); 
 local MScJzek12ldZcH = DD71UPWC_LdmMuB4Damzvbs5.tofloat() / sfPh9ofDwpSTK7gT6gs0hRT3.tofloat() * 100.0; 
 local _GFNejVrqJh9_4mWPT = sq_CreateDrawOnlyObject(zlmaIV7R1e78Uhl, "character/mage/effect/animation/quasarexplosion/nnfloormagiccircle.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 local pbLVO7pRGY2S = sq_CreateDrawOnlyObject(zlmaIV7R1e78Uhl, "character/mage/effect/animation/quasarexplosion/qcexpb_exp_14.ani", ENUM_DRAWLAYER_NORMAL, true); 
 _GFNejVrqJh9_4mWPT.getCurrentAnimation().setSpeedRate(MScJzek12ldZcH); 
 pbLVO7pRGY2S.getCurrentAnimation().setSpeedRate(MScJzek12ldZcH); 
 sq_setCurrentAxisPos(pbLVO7pRGY2S, 2, 380); 
} ;

function onKeyFrameFlag_mage_quasarexplosion(opWbS_IkdHGl8oGrsAQn52T, Wcxn0qUAAC)
{
 if(!opWbS_IkdHGl8oGrsAQn52T)return false;
 local AJhJR5dLabHUs2 = opWbS_IkdHGl8oGrsAQn52T.getSkillSubState(); 
 switch(Wcxn0qUAAC)
 {
 case 1:
 sq_SetMyShake(opWbS_IkdHGl8oGrsAQn52T, 1, 240);
 break;
 case 2:
 sq_SetMyShake(opWbS_IkdHGl8oGrsAQn52T, 1, 900);
 break;
 case 3:
 if(opWbS_IkdHGl8oGrsAQn52T.sq_IsMyControlObject())
 sq_flashScreen(opWbS_IkdHGl8oGrsAQn52T, 0, 60, 480, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 switch(AJhJR5dLabHUs2)
 {
 case 0:
 opWbS_IkdHGl8oGrsAQn52T.sq_PlaySound("R_WZ_TEANA_QUASAR_EXPLOSION_FIN");
 sq_SetMyShake(opWbS_IkdHGl8oGrsAQn52T, 5, 420);
 break;
 case 1:
 opWbS_IkdHGl8oGrsAQn52T.sq_PlaySound("R_WZ_TEANA_QUASAR_EXPLOSION_FIN");
 sq_SetMyShake(opWbS_IkdHGl8oGrsAQn52T, 6, 800);
 break;
 case 2:
 opWbS_IkdHGl8oGrsAQn52T.sq_PlaySound("R_WZ_QUASAR_EXPLOSION_FIN");
 sq_SetMyShake(opWbS_IkdHGl8oGrsAQn52T, 6, 500);
 break;
 }
 break;
 case 100:
 if(opWbS_IkdHGl8oGrsAQn52T.sq_IsMyControlObject())
 {
 opWbS_IkdHGl8oGrsAQn52T.sq_StartWrite();
 opWbS_IkdHGl8oGrsAQn52T.sq_WriteDword(247); 
 opWbS_IkdHGl8oGrsAQn52T.sq_WriteDword(opWbS_IkdHGl8oGrsAQn52T.sq_GetBonusRateWithPassive(247, 247, 0, 1.0)); 
 opWbS_IkdHGl8oGrsAQn52T.sq_SendCreatePassiveObjectPacket(24372, 0, 0, 0, 380);
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_quasarexplosion(RFGpLPtoXLvSVGqvT9gnD)
{
 if(!RFGpLPtoXLvSVGqvT9gnD) return;
 if(RFGpLPtoXLvSVGqvT9gnD.sq_IsMyControlObject())
 RFGpLPtoXLvSVGqvT9gnD.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;
