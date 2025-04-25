
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_swordman_bloodriven(geKzgaSOsSRAE4u)
{
 if(!geKzgaSOsSRAE4u) return false; 
 local QFeSBJoRj9MrsaRLPZLc = geKzgaSOsSRAE4u.sq_IsUseSkill(231); 
 if(QFeSBJoRj9MrsaRLPZLc) 
 {
 
 geKzgaSOsSRAE4u.sq_IntVectClear();
 geKzgaSOsSRAE4u.sq_IntVectPush(0); 
 geKzgaSOsSRAE4u.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 
 return true; 
 }
 return false; 
} ;


 
function checkCommandEnable_swordman_bloodriven(geKzgaSOsSRAE4u)
{
 if(!geKzgaSOsSRAE4u) return false; 
 local QFeSBJoRj9MrsaRLPZLc = geKzgaSOsSRAE4u.sq_GetState(); 
 if(QFeSBJoRj9MrsaRLPZLc == STATE_STAND) 
 return true; 
 if(QFeSBJoRj9MrsaRLPZLc == STATE_ATTACK) 
 {
 return geKzgaSOsSRAE4u.sq_IsCommandEnable(231); 
 }
 return true; 
} ;


 
function onSetState_swordman_bloodriven(geKzgaSOsSRAE4u, QFeSBJoRj9MrsaRLPZLc, AoXn_slpze9twIALklk, s3ydbf17S1AeD4HxpeNcJaV)
{
 if(!geKzgaSOsSRAE4u) return; 
 local K_9RX0okkWgR3n0RpamlzBz7 = geKzgaSOsSRAE4u.sq_GetVectorData(AoXn_slpze9twIALklk, 0); 
 geKzgaSOsSRAE4u.setSkillSubState(K_9RX0okkWgR3n0RpamlzBz7); 
 geKzgaSOsSRAE4u.sq_StopMove(); 
 geKzgaSOsSRAE4u.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 switch(K_9RX0okkWgR3n0RpamlzBz7)
 {
 case 0:
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(123); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackInfo(87); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackBonusRate(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(231, 231, 5, 1.0)); 
 geKzgaSOsSRAE4u.sq_PlaySound("SM_BLOODRIVEN_01"); 
 geKzgaSOsSRAE4u.getVar().clear_vector(); 
 geKzgaSOsSRAE4u.sq_IsEnterSkillLastKeyUnits(231); 
 sq_SetMyShake(geKzgaSOsSRAE4u, 1, geKzgaSOsSRAE4u.sq_GetDelaySum()); 
 break;
 case 1:
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(124); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackInfo(87); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackBonusRate(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(231, 231, 5, 1.0)); 
 sq_SetMyShake(geKzgaSOsSRAE4u, 2, geKzgaSOsSRAE4u.sq_GetDelaySum()); 
 if(geKzgaSOsSRAE4u.getVar().size_vector() <= 0)
 {
 local fmtcB4X7onnrgtSPoDqUwkS = geKzgaSOsSRAE4u.sq_GetIntData(231, 0); 
 geKzgaSOsSRAE4u.getVar().push_vector(sq_GetObjectTime(geKzgaSOsSRAE4u)); 
 geKzgaSOsSRAE4u.getVar().push_vector(fmtcB4X7onnrgtSPoDqUwkS); 
 }
 break;
 case 2:
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(125); 
 geKzgaSOsSRAE4u.sq_PlaySound("SM_BLOODRIVEN_02"); 
 sq_SetMyShake(geKzgaSOsSRAE4u, 4, 300); 
 local kwcSczLb2ATk = geKzgaSOsSRAE4u.sq_GetVectorData(AoXn_slpze9twIALklk, 1); 
 local fmtcB4X7onnrgtSPoDqUwkS = geKzgaSOsSRAE4u.sq_GetVectorData(AoXn_slpze9twIALklk, 2); 
 geKzgaSOsSRAE4u.getVar().clear_vector(); 
 local JPqqokOHG2q = geKzgaSOsSRAE4u.getVar(); 
 JPqqokOHG2q.push_vector(sq_GetUniformVelocity(100, geKzgaSOsSRAE4u.sq_GetIntData(231, 1), kwcSczLb2ATk, fmtcB4X7onnrgtSPoDqUwkS)); 
 JPqqokOHG2q.push_vector(sq_GetUniformVelocity(300, geKzgaSOsSRAE4u.sq_GetIntData(231, 2), kwcSczLb2ATk, fmtcB4X7onnrgtSPoDqUwkS)); 
 JPqqokOHG2q.push_vector(sq_GetUniformVelocity(120, geKzgaSOsSRAE4u.sq_GetIntData(231, 3), kwcSczLb2ATk, fmtcB4X7onnrgtSPoDqUwkS)); 
 break;
 case 3:
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(126); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackInfo(88); 
 geKzgaSOsSRAE4u.sq_SetCurrentAttackBonusRate(geKzgaSOsSRAE4u.sq_GetBonusRateWithPassive(231, 231, 0, 1.0)); 
 geKzgaSOsSRAE4u.getVar("move").clear_vector(); 
 geKzgaSOsSRAE4u.getVar("move").push_vector(geKzgaSOsSRAE4u.getXPos()); 
 local T8EJU1wTQoUdiTwYUDPCu = geKzgaSOsSRAE4u.sq_GetDelaySum(); 
 local NDpItW2HY0DANdXC = geKzgaSOsSRAE4u.sq_GetLevelData(231, 1, sq_GetSkillLevel(geKzgaSOsSRAE4u, 231)) - 1; 
 geKzgaSOsSRAE4u.setTimeEvent(0, T8EJU1wTQoUdiTwYUDPCu / NDpItW2HY0DANdXC, NDpItW2HY0DANdXC, false);
 break;
 case 4:
 geKzgaSOsSRAE4u.sq_SetCurrentAnimation(127); 
 break;
 }
} ;



 
 
function onProc_swordman_bloodriven(nb5zm6Lgrk2dLz_ABzr_9)
{
 if(!nb5zm6Lgrk2dLz_ABzr_9) return;
 local NOolgsirNGibmK = nb5zm6Lgrk2dLz_ABzr_9.getSkillSubState(); 
 switch(NOolgsirNGibmK)
 {
 case 3:
 if(nb5zm6Lgrk2dLz_ABzr_9.getVar("move").size_vector() <= 0)return;
 local jccDzd9CmqrjgTGxKR9Qfq = nb5zm6Lgrk2dLz_ABzr_9.sq_GetCurrentAni(); 
 local Dv6_zt5sC8L = sq_GetCurrentTime(jccDzd9CmqrjgTGxKR9Qfq); 
 local NOrINGGAiqCZQqpkXhi = jccDzd9CmqrjgTGxKR9Qfq.getDelaySum(false); 
 local igDuddUIxJoov0JFR = nb5zm6Lgrk2dLz_ABzr_9.getVar("move").get_vector(0); 
 local aFQkKnWrjpCYkvKgcQBNaE86 = nb5zm6Lgrk2dLz_ABzr_9.getVar().get_vector(1); 
 local bZRfmabFNrcCU = sq_GetDistancePos(igDuddUIxJoov0JFR, nb5zm6Lgrk2dLz_ABzr_9.getDirection(),
 sq_GetUniformVelocity(0, aFQkKnWrjpCYkvKgcQBNaE86, Dv6_zt5sC8L, NOrINGGAiqCZQqpkXhi)
 ); 
 if(nb5zm6Lgrk2dLz_ABzr_9.isMovablePos(bZRfmabFNrcCU, nb5zm6Lgrk2dLz_ABzr_9.getYPos())) 
 sq_setCurrentAxisPos(nb5zm6Lgrk2dLz_ABzr_9, 0, bZRfmabFNrcCU); 
 else
 {
 local sY8BfDHhFk7cuKUEQT = sq_Abs(bZRfmabFNrcCU - nb5zm6Lgrk2dLz_ABzr_9.getXPos());
 if(sY8BfDHhFk7cuKUEQT != 0)
 nb5zm6Lgrk2dLz_ABzr_9.getVar().set_vector(1, (aFQkKnWrjpCYkvKgcQBNaE86 > 0) ? aFQkKnWrjpCYkvKgcQBNaE86 - sY8BfDHhFk7cuKUEQT : aFQkKnWrjpCYkvKgcQBNaE86 + sY8BfDHhFk7cuKUEQT);
 }
 break;
 }
} ;

 
 
function onProcCon_swordman_bloodriven(ReOzY_hrTitU_wdDqor6DnFA)
{
 if(!ReOzY_hrTitU_wdDqor6DnFA) return;
 local yWXyY8u3dXn_E = ReOzY_hrTitU_wdDqor6DnFA.getSkillSubState(); 
 switch(yWXyY8u3dXn_E)
 {
 case 0:
 local hgeLxr7YyvM = ReOzY_hrTitU_wdDqor6DnFA.getCurrentAnimation(); 
 if(sq_IsEnd(hgeLxr7YyvM)) 
 {
 if(ReOzY_hrTitU_wdDqor6DnFA.isDownSkillLastKey()) 
 {
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectClear(); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(1); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 }
 else 
 {
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectClear(); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(2); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(0); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(1); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 case 1:
 
 if(ReOzY_hrTitU_wdDqor6DnFA.getVar().size_vector() > 0)
 {
 
 
 local kG3r0jNtmhvMM9NRTiG = sq_GetObjectTime(ReOzY_hrTitU_wdDqor6DnFA) - ReOzY_hrTitU_wdDqor6DnFA.getVar().get_vector(0);
 local EeCPmIob7kdgy3Gz_8X72 = ReOzY_hrTitU_wdDqor6DnFA.getVar().get_vector(1); 
 
 if(kG3r0jNtmhvMM9NRTiG >= EeCPmIob7kdgy3Gz_8X72 || !ReOzY_hrTitU_wdDqor6DnFA.isDownSkillLastKey())
 {
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectClear(); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(2); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(kG3r0jNtmhvMM9NRTiG); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(EeCPmIob7kdgy3Gz_8X72); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 local hgeLxr7YyvM = ReOzY_hrTitU_wdDqor6DnFA.getCurrentAnimation(); 
 if(sq_IsEnd(hgeLxr7YyvM)) 
 {
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectClear(); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_IntVectPush(1); 
 ReOzY_hrTitU_wdDqor6DnFA.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;


 
function onEndCurrentAni_swordman_bloodriven(NQbCRszwkKrUTQst0qWd)
{
 if(!NQbCRszwkKrUTQst0qWd) return; 
 if(!NQbCRszwkKrUTQst0qWd.sq_IsMyControlObject()) return; 
 local NNZHEjA0zm8Lbo3G6iK = NQbCRszwkKrUTQst0qWd.getSkillSubState(); 
 
 switch(NNZHEjA0zm8Lbo3G6iK)
 {
 case 2: 
 case 3:
 NQbCRszwkKrUTQst0qWd.sq_IntVectClear(); 
 NQbCRszwkKrUTQst0qWd.sq_IntVectPush(NNZHEjA0zm8Lbo3G6iK + 1); 
 NQbCRszwkKrUTQst0qWd.sq_AddSetStatePacket(231, STATE_PRIORITY_USER, true); 
 break;
 case 4:
 NQbCRszwkKrUTQst0qWd.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

 
function onKeyFrameFlag_swordman_bloodriven(NQbCRszwkKrUTQst0qWd, NNZHEjA0zm8Lbo3G6iK)
{
 if(!NQbCRszwkKrUTQst0qWd) return false;
 local Wxdg_qfSO2Qaz5 = NQbCRszwkKrUTQst0qWd.getSkillSubState(); 
 switch(Wxdg_qfSO2Qaz5)
 {
 case 2:
 
 if(NNZHEjA0zm8Lbo3G6iK == 1 && NQbCRszwkKrUTQst0qWd.sq_IsMyControlObject())
 {
 local UT60CPqNo5H7iojCXA56xWxG = sq_GetSkillLevel(NQbCRszwkKrUTQst0qWd, 231); 
 local e_pkMGgkok90uBns = NQbCRszwkKrUTQst0qWd.sq_GetLevelData(231, 8, UT60CPqNo5H7iojCXA56xWxG); 
 local rpw25zi8IQgMv0qin = NQbCRszwkKrUTQst0qWd.sq_GetLevelData(231, 7, UT60CPqNo5H7iojCXA56xWxG); 
 local DLbpijU_KiXRGbSNbwRhMb = NQbCRszwkKrUTQst0qWd.sq_GetLevelData(231, 6, UT60CPqNo5H7iojCXA56xWxG); 
 local jot0zFj_PO = NQbCRszwkKrUTQst0qWd.getXPos(); 
 local Kx_S2Sf5E0r = NQbCRszwkKrUTQst0qWd.getYPos(); 
 local HLtnxMT9Ze = NQbCRszwkKrUTQst0qWd.getZPos(); 
 local s13hrekiwCOOuMD8L2ZV05 = NQbCRszwkKrUTQst0qWd.getVar().get_vector(2); 
 local v9tyV04meRTDP = NQbCRszwkKrUTQst0qWd.getObjectManager(); 
 for(local lqZwP2849NmPKD60iJ7GEuMB = 0; lqZwP2849NmPKD60iJ7GEuMB < v9tyV04meRTDP.getCollisionObjectNumber(); lqZwP2849NmPKD60iJ7GEuMB++)
 {
 local g6dv4Ee29vZ_Ai25s = v9tyV04meRTDP.getCollisionObject(lqZwP2849NmPKD60iJ7GEuMB); 
 if(g6dv4Ee29vZ_Ai25s 
 && g6dv4Ee29vZ_Ai25s.isObjectType(OBJECTTYPE_ACTIVE) 
 && NQbCRszwkKrUTQst0qWd.isEnemy(g6dv4Ee29vZ_Ai25s) 
 && g6dv4Ee29vZ_Ai25s.isInDamagableState(NQbCRszwkKrUTQst0qWd) 
 && sq_GetDistance(jot0zFj_PO, Kx_S2Sf5E0r, g6dv4Ee29vZ_Ai25s.getXPos(), g6dv4Ee29vZ_Ai25s.getYPos(), true) <= s13hrekiwCOOuMD8L2ZV05 
 && sq_Abs(g6dv4Ee29vZ_Ai25s.getZPos() - HLtnxMT9Ze) <= 300) 
 {
 local gUrqpzwdHTBf5wVUlVFm5ddY = sq_GetCNRDObjectToActiveObject(g6dv4Ee29vZ_Ai25s); 
 if(gUrqpzwdHTBf5wVUlVFm5ddY && !gUrqpzwdHTBf5wVUlVFm5ddY.isDead()) 
 sq_sendSetActiveStatusPacket(gUrqpzwdHTBf5wVUlVFm5ddY, NQbCRszwkKrUTQst0qWd, ACTIVESTATUS_STUN, e_pkMGgkok90uBns.tofloat(), rpw25zi8IQgMv0qin, false, DLbpijU_KiXRGbSNbwRhMb); 
 }
 }
 }
 break;
 case 4:
 if(NNZHEjA0zm8Lbo3G6iK == 1)
 {
 if(NQbCRszwkKrUTQst0qWd.isMyControlObject()) 
 {
 sq_SetMyShake(NQbCRszwkKrUTQst0qWd, 8, 800); 
 local fr0bn5OuuOii7GZaOGn6 = (NQbCRszwkKrUTQst0qWd.sq_GetCurrentAni()).getDelaySum(1, 9); 
 sq_flashScreen(NQbCRszwkKrUTQst0qWd, 50, fr0bn5OuuOii7GZaOGn6, 600, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 NQbCRszwkKrUTQst0qWd.sq_StartWrite();
 NQbCRszwkKrUTQst0qWd.sq_WriteDword(231); 
 NQbCRszwkKrUTQst0qWd.sq_WriteDword(NQbCRszwkKrUTQst0qWd.sq_GetBonusRateWithPassive(231, 231, 2, 1.0)); 
 NQbCRszwkKrUTQst0qWd.sq_WriteDword(NQbCRszwkKrUTQst0qWd.getVar().get_vector(0)); 
 NQbCRszwkKrUTQst0qWd.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 }
 break;
 }
 return true; 
} ;


 
function onTimeEvent_swordman_bloodriven(iCDXG7mKpbE, CM3okKEWJkRNIC, XBdX4jwMh3Pxlc_c3_58jV)
{
 if(!iCDXG7mKpbE) return false;
 
 switch(CM3okKEWJkRNIC)
 {
 case 0: 
 iCDXG7mKpbE.resetHitObjectList(); 
 break;
 }
 return false;
} ;



