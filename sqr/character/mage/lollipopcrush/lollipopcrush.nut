
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_lollipopcrush(fiOEGOhVfUCI6tBfiN)
{
 if(!fiOEGOhVfUCI6tBfiN) return false; 
 local jogoJHmKVCPUo6Su9gdumD9m = fiOEGOhVfUCI6tBfiN.sq_IsUseSkill(133); 
 if(jogoJHmKVCPUo6Su9gdumD9m) 
 {
 fiOEGOhVfUCI6tBfiN.sq_IntVectClear();
 if(fiOEGOhVfUCI6tBfiN.getState() == 6) 
 fiOEGOhVfUCI6tBfiN.sq_IntVectPush(1); 
 else 
 fiOEGOhVfUCI6tBfiN.sq_IntVectPush(0); 
 fiOEGOhVfUCI6tBfiN.sq_AddSetStatePacket(133, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_lollipopcrush(Nz7JFZkCizhIjjV6ehwkt6L)
{
 if(!Nz7JFZkCizhIjjV6ehwkt6L) return false; 
 local yaSdGRXPcsNho6s = Nz7JFZkCizhIjjV6ehwkt6L.sq_GetState(); 
 if(yaSdGRXPcsNho6s == STATE_STAND) 
 return true; 
 if(yaSdGRXPcsNho6s == STATE_ATTACK) 
 {
 return Nz7JFZkCizhIjjV6ehwkt6L.sq_IsCommandEnable(133); 
 }
 return true; 
} ;

 
function onSetState_mage_lollipopcrush(Nz7JFZkCizhIjjV6ehwkt6L, yaSdGRXPcsNho6s, spfpvWi3YFRgA9ILQPPz74, OmUe5zbG63a)
{
 if(!Nz7JFZkCizhIjjV6ehwkt6L) return; 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_StopMove(); 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_ZStop(); 
 local VPmZv2OI10cMs = Nz7JFZkCizhIjjV6ehwkt6L.sq_GetVectorData(spfpvWi3YFRgA9ILQPPz74, 0); 
 Nz7JFZkCizhIjjV6ehwkt6L.setSkillSubState(VPmZv2OI10cMs); 
 switch(VPmZv2OI10cMs)
 {
 case 0:
 Nz7JFZkCizhIjjV6ehwkt6L.sq_SetCurrentAnimation(128); 
 break;
 case 1:
 Nz7JFZkCizhIjjV6ehwkt6L.sq_SetCurrentAnimation(129); 
 break;
 }
 Nz7JFZkCizhIjjV6ehwkt6L.sq_SetCurrentAttackInfo(49); 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_SetCurrentAttackBonusRate(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetBonusRateWithPassive(133, 133, 0, 1.0)); 
 local yHQfXP8eAAJheQ8Mvsh = sq_GetSkillLevel(Nz7JFZkCizhIjjV6ehwkt6L, 133); 
 Nz7JFZkCizhIjjV6ehwkt6L.getVar().clear_vector(); 
 local H80Jrjjg5R4OJkfOtPqE5OM = Nz7JFZkCizhIjjV6ehwkt6L.getVar(); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetBonusRateWithPassive(133, 133, 3, 1.0)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetBonusRateWithPassive(133, 133, 13, 1.0)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 1, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 4, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 5, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 6, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 7, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 8, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 9, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 10, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 11, yHQfXP8eAAJheQ8Mvsh)); 
 H80Jrjjg5R4OJkfOtPqE5OM.push_vector(Nz7JFZkCizhIjjV6ehwkt6L.sq_GetLevelData(133, 12, yHQfXP8eAAJheQ8Mvsh)); 
 
 Nz7JFZkCizhIjjV6ehwkt6L.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProc_mage_lollipopcrush(Fp93LB0PE55_ZaiLs)
{
 if(!Fp93LB0PE55_ZaiLs) return;
 local zUS2p0sAZsT_iRUS_sa9 = Fp93LB0PE55_ZaiLs.getSkillSubState(); 
 if(zUS2p0sAZsT_iRUS_sa9 == 0) 
 {
 local BieI5XW1TL = Fp93LB0PE55_ZaiLs.getCurrentAnimation(); 
 local JnanPO09O73U4 = sq_GetCurrentTime(BieI5XW1TL); 
 local Kza7aBbeTlhnsr6SPtl = BieI5XW1TL.getDelaySum(0, 1); 
 local pPp72oawkCLW84ij = sq_GetUniformVelocity(0, 50, JnanPO09O73U4, Kza7aBbeTlhnsr6SPtl); 
 sq_setCurrentAxisPos(Fp93LB0PE55_ZaiLs, 2, pPp72oawkCLW84ij); 
 }
} ;

function onAttack_mage_lollipopcrush(iGdJMYbQ88GpUH, oT5wUkQnz_RqxPvtY3M, GnPnkkFg06Iy6LMmlfn, TuZJsx3KEC9uIwXEVbAtYwb)
{
 if(!iGdJMYbQ88GpUH) return;
 if(!iGdJMYbQ88GpUH.sq_IsMyControlObject()) return;
 if(!oT5wUkQnz_RqxPvtY3M || TuZJsx3KEC9uIwXEVbAtYwb || !oT5wUkQnz_RqxPvtY3M.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local hf4RSNDix74cUZr = iGdJMYbQ88GpUH.getVar(); 
 local xVD5NkmVMfTCTargPvnNjk6T = hf4RSNDix74cUZr.get_vector(10); 
 if(xVD5NkmVMfTCTargPvnNjk6T <= 0)return; 
 local XDQ6gB2pFKPh = hf4RSNDix74cUZr.get_vector(0); 
 local cKH8TfpLTqXIF9su = -1; 
 local BJ7B5UMHQjWEKzcMu6 = hf4RSNDix74cUZr.get_vector(11); 
 if(BJ7B5UMHQjWEKzcMu6 > 0) 
 {
 local ioFPsitWIjWGO3yCZova = sq_GetCNRDObjectToActiveObject(oT5wUkQnz_RqxPvtY3M); 
 if(ioFPsitWIjWGO3yCZova)
 if(sq_IsNamed(ioFPsitWIjWGO3yCZova) || sq_IsBoss(ioFPsitWIjWGO3yCZova)) 
 {
 XDQ6gB2pFKPh = hf4RSNDix74cUZr.get_vector(1); 
 cKH8TfpLTqXIF9su = 3; 
 hf4RSNDix74cUZr.set_vector(11, BJ7B5UMHQjWEKzcMu6 - 1); 
 }
 }
 
 if(cKH8TfpLTqXIF9su == -1)
 if(sq_getRandom(0, 100) < 50) 
 cKH8TfpLTqXIF9su = 1; 
 else
 cKH8TfpLTqXIF9su = 2; 
 local Lp4NPyFIgOb2 = hf4RSNDix74cUZr.get_vector(2); 
 for(local uy96DUK4oh_RXmEmEIA = 0; uy96DUK4oh_RXmEmEIA < Lp4NPyFIgOb2; uy96DUK4oh_RXmEmEIA++)
 {
 iGdJMYbQ88GpUH.sq_StartWrite();
 iGdJMYbQ88GpUH.sq_WriteDword(133); 
 iGdJMYbQ88GpUH.sq_WriteDword(cKH8TfpLTqXIF9su); 
 iGdJMYbQ88GpUH.sq_WriteDword(XDQ6gB2pFKPh); 
 if(cKH8TfpLTqXIF9su == 1) 
 {
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(7)); 
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(8)); 
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(9)); 
 }
 
 else
 {
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(4)); 
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(3)); 
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(5)); 
 iGdJMYbQ88GpUH.sq_WriteDword(hf4RSNDix74cUZr.get_vector(6)); 
 }
 sq_SendCreatePassiveObjectPacketPos(iGdJMYbQ88GpUH,
 24372,
 0,
 sq_GetDistancePos(iGdJMYbQ88GpUH.getXPos(), iGdJMYbQ88GpUH.getDirection(), sq_getRandom(20, 280)),
 iGdJMYbQ88GpUH.getYPos() + sq_getRandom(-35, 35),
 oT5wUkQnz_RqxPvtY3M.getZPos() + 10);
 }
 hf4RSNDix74cUZr.set_vector(10, xVD5NkmVMfTCTargPvnNjk6T - 1); 
} ;

function onKeyFrameFlag_mage_lollipopcrush(BYg22P7gzDcR8P0VFdfCMv, tr2ozQZWnthUIQDybcUOFcIM)
{
 if(!BYg22P7gzDcR8P0VFdfCMv) return false;
 local rkSWBMXjIpJ0jYHWqBgP = BYg22P7gzDcR8P0VFdfCMv.getSkillSubState(); 
 switch(rkSWBMXjIpJ0jYHWqBgP)
 {
 case 0: 
 switch(tr2ozQZWnthUIQDybcUOFcIM)
 {
 case 5:
 if(BYg22P7gzDcR8P0VFdfCMv.sq_IsMyControlObject())
 sq_flashScreen(BYg22P7gzDcR8P0VFdfCMv, 20, 80, 10, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 6:
 sq_SetMyShake(BYg22P7gzDcR8P0VFdfCMv, 5, 700);
 break;
 case 2:
 
 if(sq_getRandom(0, 100) < 50)
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/mage/particle/lollipopcrushcandy.ptl", BYg22P7gzDcR8P0VFdfCMv, sq_GetDistancePos(0, BYg22P7gzDcR8P0VFdfCMv.getDirection(), 180), 0, 0, false, 5, 0, 15);
 else
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/mage/particle/lollipopcrushcandy2.ptl", BYg22P7gzDcR8P0VFdfCMv, sq_GetDistancePos(0, BYg22P7gzDcR8P0VFdfCMv.getDirection(), 180), 0, 0, false, 5, 0, 15);
 
 local js07KjoGwQ = sq_CreateDrawOnlyObject(BYg22P7gzDcR8P0VFdfCMv, "character/mage/effect/animation/lollipopcrush/lollipopcrushfloor_floor.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(js07KjoGwQ, 0, sq_GetDistancePos(BYg22P7gzDcR8P0VFdfCMv.getXPos(), BYg22P7gzDcR8P0VFdfCMv.getDirection(), 200)); 
 sq_setCurrentAxisPos(js07KjoGwQ, 2, 0); 
 break;
 }
 break;
 case 1: 
 switch(tr2ozQZWnthUIQDybcUOFcIM)
 {
 case 5: sq_SetMyShake(BYg22P7gzDcR8P0VFdfCMv, 1, 60); break;
 case 6: sq_SetMyShake(BYg22P7gzDcR8P0VFdfCMv, 1, 180); break;
 case 1:
 
 BYg22P7gzDcR8P0VFdfCMv.sq_AddStateLayerAnimation(1, BYg22P7gzDcR8P0VFdfCMv.sq_CreateCNRDAnimation("effect/animation/lollipopcrush/lollipopcrushairattack_04.ani"), 0, 0);
 break;
 case 2:
 sq_CreateDrawOnlyObject(BYg22P7gzDcR8P0VFdfCMv, "character/mage/effect/animation/lollipopcrush/lollipopcrushairattack_06.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_lollipopcrush(wa028EUtXW)
{
 if(!wa028EUtXW) return;
 if(!wa028EUtXW.sq_IsMyControlObject()) return;
 wa028EUtXW.sq_IntVectClear();
 wa028EUtXW.sq_IntVectPush(1);
 wa028EUtXW.sq_IntVectPush(0);
 wa028EUtXW.sq_IntVectPush(0);
 wa028EUtXW.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true); 
} ;


