
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_inviteofdevil(dFdDmEJ9O28n4Um)
{
 dFdDmEJ9O28n4Um = sq_GetCNRDObjectToSQRCharacter(dFdDmEJ9O28n4Um);
 if(!dFdDmEJ9O28n4Um) return false; 
 local NnRQEDNiApCqHA2 = dFdDmEJ9O28n4Um.sq_IsUseSkill(132); 
 if(NnRQEDNiApCqHA2) 
 {
 dFdDmEJ9O28n4Um.sq_IntVectClear();
 if(isAvengerAwakenning(dFdDmEJ9O28n4Um)) 
 dFdDmEJ9O28n4Um.sq_IntVectPush(1); 
 else
 dFdDmEJ9O28n4Um.sq_IntVectPush(0); 
 dFdDmEJ9O28n4Um.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_inviteofdevil(klMDTcg_8LaLefVhqf)
{
 klMDTcg_8LaLefVhqf = sq_GetCNRDObjectToSQRCharacter(klMDTcg_8LaLefVhqf);
 if(!klMDTcg_8LaLefVhqf) return false; 
 local Ar0GpIN7PFwee2dCcp7 = klMDTcg_8LaLefVhqf.sq_GetState(); 
 if(Ar0GpIN7PFwee2dCcp7 == STATE_STAND) 
 return true; 
 if(Ar0GpIN7PFwee2dCcp7 == STATE_ATTACK) 
 {
 return klMDTcg_8LaLefVhqf.sq_IsCommandEnable(132); 
 }
 return true; 
} ;

 
function onSetState_priest_inviteofdevil(v7WDAgBHmObqa4ikgrRG, fRdRRaoARfUHwyqkkKJlt9, gBG6CcZTRHCwc, i74T4VsLs8H7M)
{
 v7WDAgBHmObqa4ikgrRG = sq_GetCNRDObjectToSQRCharacter(v7WDAgBHmObqa4ikgrRG);
 if(!v7WDAgBHmObqa4ikgrRG) return; 
 v7WDAgBHmObqa4ikgrRG.sq_StopMove(); 
 local zFdQ5g5IHrgyAP20i4UeoPDF = v7WDAgBHmObqa4ikgrRG.sq_GetVectorData(gBG6CcZTRHCwc, 0); 
 v7WDAgBHmObqa4ikgrRG.setSkillSubState(zFdQ5g5IHrgyAP20i4UeoPDF); 
 switch(zFdQ5g5IHrgyAP20i4UeoPDF)
 {
 case 0:
 v7WDAgBHmObqa4ikgrRG.sq_SetCurrentAnimation(243);
 break;
 case 1:
 local sXhWYoGvBiJl = v7WDAgBHmObqa4ikgrRG.getVar().GetAnimationMap("priest_avenger_inviteofdevil", "character/priest/animation/avengerawakening/inviteofdevil/inviteofdevil.ani");
 v7WDAgBHmObqa4ikgrRG.setCurrentAnimation(sXhWYoGvBiJl);
 break;
 }
 local t79zoKuJeRHsLP = v7WDAgBHmObqa4ikgrRG.sq_GetDelaySum(); 
 v7WDAgBHmObqa4ikgrRG.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local HYT1mjLcI5qVWPGk = v7WDAgBHmObqa4ikgrRG.sq_GetDelaySum(); 
 local EN_m3JjVna1iQ = t79zoKuJeRHsLP.tofloat() / HYT1mjLcI5qVWPGk.tofloat() * 100.0; 
 v7WDAgBHmObqa4ikgrRG.getVar("speedRate").setFloat(0, EN_m3JjVna1iQ); 
} ;

function onKeyFrameFlag_priest_inviteofdevil(jTyMCs4zawjFCY_tA, KwNjZ_FUYJmjC2)
{
 jTyMCs4zawjFCY_tA = sq_GetCNRDObjectToSQRCharacter(jTyMCs4zawjFCY_tA);
 if(!jTyMCs4zawjFCY_tA) return false;
 local vRFWG8P7LMdNx1Prm2svk = jTyMCs4zawjFCY_tA.getSkillSubState(); 
 if(jTyMCs4zawjFCY_tA.sq_IsMyControlObject())
 switch(vRFWG8P7LMdNx1Prm2svk)
 {
 case 0:
 if(KwNjZ_FUYJmjC2 == 0) 
 {
 jTyMCs4zawjFCY_tA.sq_StartWrite();
 jTyMCs4zawjFCY_tA.sq_WriteDword(132); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(1); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(1); 
 jTyMCs4zawjFCY_tA.sq_WriteFloat(jTyMCs4zawjFCY_tA.getVar("speedRate").getFloat(0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 0, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 else if(KwNjZ_FUYJmjC2 == 1) 
 {
 jTyMCs4zawjFCY_tA.sq_StartWrite();
 jTyMCs4zawjFCY_tA.sq_WriteDword(132); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(2); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(1); 
 jTyMCs4zawjFCY_tA.sq_WriteFloat(jTyMCs4zawjFCY_tA.getVar("speedRate").getFloat(0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 0, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 1, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_SendCreatePassiveObjectPacket(24374, 0, 0, -10, 0);
 }
 break;
 case 1:
 if(KwNjZ_FUYJmjC2 == 0) 
 {
 jTyMCs4zawjFCY_tA.sq_StartWrite();
 jTyMCs4zawjFCY_tA.sq_WriteDword(132); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(1); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(2); 
 jTyMCs4zawjFCY_tA.sq_WriteFloat(jTyMCs4zawjFCY_tA.getVar("speedRate").getFloat(0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 2, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 else if(KwNjZ_FUYJmjC2 == 1) 
 {
 jTyMCs4zawjFCY_tA.sq_StartWrite();
 jTyMCs4zawjFCY_tA.sq_WriteDword(132); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(2); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(2); 
 jTyMCs4zawjFCY_tA.sq_WriteFloat(jTyMCs4zawjFCY_tA.getVar("speedRate").getFloat(0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 2, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_WriteDword(jTyMCs4zawjFCY_tA.sq_GetBonusRateWithPassive(132, 132, 3, 1.0)); 
 jTyMCs4zawjFCY_tA.sq_SendCreatePassiveObjectPacket(24374, 0, 0, -10, 0);
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_priest_inviteofdevil(HLNTrhdSSXO2g3h)
{
 HLNTrhdSSXO2g3h = sq_GetCNRDObjectToSQRCharacter(HLNTrhdSSXO2g3h);
 if(!HLNTrhdSSXO2g3h) return;
 if(HLNTrhdSSXO2g3h.sq_IsMyControlObject())
 HLNTrhdSSXO2g3h.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


