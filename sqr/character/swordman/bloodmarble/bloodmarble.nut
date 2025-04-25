
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_swordman_bloodmarble(CJ11j_OSnwTANUitYCHx)
{
 if(!CJ11j_OSnwTANUitYCHx) return false; 
 local v7cJR8fQve0 = CJ11j_OSnwTANUitYCHx.getMyPassiveObjectCount(24370); 
 for(local Sx_Gr8sYIOQ8QO1_zixs1Ql = 0; Sx_Gr8sYIOQ8QO1_zixs1Ql < v7cJR8fQve0; Sx_Gr8sYIOQ8QO1_zixs1Ql++)
 {
 local WeFKaw2MTHueojlFxJhO = CJ11j_OSnwTANUitYCHx.getMyPassiveObject(24370, Sx_Gr8sYIOQ8QO1_zixs1Ql); 
 if(!WeFKaw2MTHueojlFxJhO) continue; 
 if(WeFKaw2MTHueojlFxJhO.getVar("skill").get_vector(0) != 230) continue; 
 if(WeFKaw2MTHueojlFxJhO.getVar("subType").get_vector(0) != 1) continue; 
 if(WeFKaw2MTHueojlFxJhO.getVar().getBool(0) == true) continue; 
 if(WeFKaw2MTHueojlFxJhO.getVar("state").get_vector(0) != 11) continue; 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_SendChangeSkillEffectPacket(WeFKaw2MTHueojlFxJhO, 230); 
 }
 local zyV7f6yPYX71ii1sz = CJ11j_OSnwTANUitYCHx.sq_IsUseSkill(230); 
 if(zyV7f6yPYX71ii1sz) 
 {
 CJ11j_OSnwTANUitYCHx.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;



 
function checkCommandEnable_swordman_bloodmarble(T0kyhqPAlN)
{
 if(!T0kyhqPAlN) return false; 
 local FoZiNQd0R18I = T0kyhqPAlN.sq_GetState(); 
 if(FoZiNQd0R18I == STATE_STAND) 
 return true; 
 if(FoZiNQd0R18I == STATE_ATTACK) 
 {
 return T0kyhqPAlN.sq_IsCommandEnable(230); 
 }
 return true; 
} ;


 
function onSetState_swordman_bloodmarble(geKzgaSOsSRAE4u, QFeSBJoRj9MrsaRLPZLc, AoXn_slpze9twIALklk, s3ydbf17S1AeD4HxpeNcJaV)
{
 if(!geKzgaSOsSRAE4u) return; 
 
 geKzgaSOsSRAE4u.sq_StopMove(); 
 geKzgaSOsSRAE4u.sq_PlaySound("SM_BLOODMARBLE");
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(128); 
 geKzgaSOsSRAE4u.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


 
function onEndCurrentAni_swordman_bloodmarble(geKzgaSOsSRAE4u)
{
 if(!geKzgaSOsSRAE4u) retrun;
 if(geKzgaSOsSRAE4u.sq_IsMyControlObject())
 {
 geKzgaSOsSRAE4u.sq_StartWrite();
 geKzgaSOsSRAE4u.sq_WriteDword(230); 
 geKzgaSOsSRAE4u.sq_WriteDword(1); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(230, 230, 1, 1.0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetIntData(230, 0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(230, 230, 0, 1.0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(230, 230, 2, 1.0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(230, 230, 3, 1.0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(230, 230, 4, 1.0)); 
 geKzgaSOsSRAE4u.sq_WriteDword(geKzgaSOsSRAE4u.sq_GetIntData(230, 1)); 
 geKzgaSOsSRAE4u.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 300); 
 geKzgaSOsSRAE4u.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 }
} ;

