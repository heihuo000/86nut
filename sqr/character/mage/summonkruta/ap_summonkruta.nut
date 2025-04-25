
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_summonkruta") 
 appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_mage_summonkruta") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mage_summonkruta") 
}



function proc_appendage_mage_summonkruta(cZ6OdFhUXxFLE7jtj0MS)
{
 if(!cZ6OdFhUXxFLE7jtj0MS) return;
 local Y3BKCLM6fCPb = cZ6OdFhUXxFLE7jtj0MS.getParent(); 
 if(!Y3BKCLM6fCPb)
 {
 cZ6OdFhUXxFLE7jtj0MS.setValid(false);
 return;
 }
 local iqGtXmi5wzMeUcGj = cZ6OdFhUXxFLE7jtj0MS.getTimer().Get(); 
 if(iqGtXmi5wzMeUcGj < 500)return;
 local U_hnHJqKkCkmbm = cZ6OdFhUXxFLE7jtj0MS.getVar("sqrChr").get_obj_vector(0); 
 if(!U_hnHJqKkCkmbm || U_hnHJqKkCkmbm.getState() == STATE_DIE) 
 {
 cZ6OdFhUXxFLE7jtj0MS.setValid(false);
 return;
 }
 local j9Myje6hx5 = Y3BKCLM6fCPb.getState(); 
 switch(j9Myje6hx5)
 {
 case STATE_STAND:
 if(Y3BKCLM6fCPb.getSendState() > STATE_STAND)return;
 if((cZ6OdFhUXxFLE7jtj0MS.getVar("atkTime").get_timer_vector(0)).isOnEvent(iqGtXmi5wzMeUcGj) != true)return;
 U_hnHJqKkCkmbm = sq_GetCNRDObjectToSQRCharacter(U_hnHJqKkCkmbm); 
 local TMTtdqU6pP8XpsTd = sq_FindTarget(Y3BKCLM6fCPb, -40, 240, 40, 40); 
 if(TMTtdqU6pP8XpsTd)
 {
 if(sq_getRandom(0, 100) > 40)
 {
 local OKvTXCZvvn04cQCzh = cZ6OdFhUXxFLE7jtj0MS.getVar("sqrChrSkill").get_timer_vector(2); 
 if(OKvTXCZvvn04cQCzh && OKvTXCZvvn04cQCzh.isOnEvent(iqGtXmi5wzMeUcGj) == true) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 2); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 
 if(U_hnHJqKkCkmbm)
 {
 local LTSTmSI3SPJEU2G9rkC5k = sq_GetLevelData(U_hnHJqKkCkmbm, 136, 4, sq_GetSkillLevel(U_hnHJqKkCkmbm, 136)); 
 if(OKvTXCZvvn04cQCzh.getEventTerm() != LTSTmSI3SPJEU2G9rkC5k)OKvTXCZvvn04cQCzh.setEventTerm(LTSTmSI3SPJEU2G9rkC5k); 
 }
 return;
 }
 }
 else
 {
 local g6QRtRmIuKTr = cZ6OdFhUXxFLE7jtj0MS.getVar("sqrChrSkill").get_timer_vector(1); 
 if(g6QRtRmIuKTr && g6QRtRmIuKTr.isOnEvent(iqGtXmi5wzMeUcGj) == true) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 1); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 
 if(U_hnHJqKkCkmbm)
 {
 local pMJSHsUdY4Bb4x3k = sq_GetLevelData(U_hnHJqKkCkmbm, 136, 3, sq_GetSkillLevel(U_hnHJqKkCkmbm, 136)); 
 if(g6QRtRmIuKTr.getEventTerm() != pMJSHsUdY4Bb4x3k)g6QRtRmIuKTr.setEventTerm(pMJSHsUdY4Bb4x3k); 
 }
 return;
 }
 }
 }
 local MzGBaVvunpIGgChK9gPk6JLn = sq_FindTarget(Y3BKCLM6fCPb, -60, 240, 50, 50); 
 if(MzGBaVvunpIGgChK9gPk6JLn)
 {
 local oeN7xTg2PISWvL2px = cZ6OdFhUXxFLE7jtj0MS.getVar("sqrChrSkill").get_timer_vector(0); 
 if(oeN7xTg2PISWvL2px && oeN7xTg2PISWvL2px.isOnEvent(iqGtXmi5wzMeUcGj) == true) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 0); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 
 if(U_hnHJqKkCkmbm)
 {
 local bqAm93UpDYtYy = sq_GetLevelData(U_hnHJqKkCkmbm, 136, 2, sq_GetSkillLevel(U_hnHJqKkCkmbm, 136)); 
 if(oeN7xTg2PISWvL2px.getEventTerm() != bqAm93UpDYtYy)oeN7xTg2PISWvL2px.setEventTerm(bqAm93UpDYtYy); 
 }
 return;
 }
 }
 break;
 case STATE_ATTACK:
 local WU8EnJmBX2jjmb31Kn9 = Y3BKCLM6fCPb.getAttackIndex(); 
 switch(WU8EnJmBX2jjmb31Kn9)
 {
 case 1: 
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(Y3BKCLM6fCPb)) == 5) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 3); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 }
 break;
 case 3: 
 if(Y3BKCLM6fCPb.getStateTimer().Get() >= 3 * 90) 
 Y3BKCLM6fCPb.sendStateOnlyPacket(STATE_STAND);
 break;
 case 4: 
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(Y3BKCLM6fCPb)) == 12) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 5); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 }
 break;
 case 5: 
 if(Y3BKCLM6fCPb.getStateTimer().Get() >= 3 * 80) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 6); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 }
 break;
 case 8: 
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(Y3BKCLM6fCPb)) == 3) 
 {
 if(Y3BKCLM6fCPb.isMyControlObject())
 {
 local areniXjiswuYX = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(areniXjiswuYX); 
 sq_IntVectorPush(areniXjiswuYX, 9); 
 sq_AddSetStatePacketActiveObject(Y3BKCLM6fCPb, STATE_ATTACK, areniXjiswuYX, STATE_PRIORITY_USER);
 }
 }
 break;
 }
 break;
 }
} ;

function onSourceKeyFrameFlag_appendage_mage_summonkruta(HkedQN97XdLFMHz, LJQcSjpSb9tCYj3j4)
{
 if(!HkedQN97XdLFMHz) return false;
 local fMXfNHlS8G8qXikGH4PR = HkedQN97XdLFMHz.getParent(); 
 if(!fMXfNHlS8G8qXikGH4PR)
 {
 HkedQN97XdLFMHz.setValid(false);
 return true;
 }
 local z8kJjPtlzpkPimvWzLS = sq_GetCNRDObjectToSQRCharacter(HkedQN97XdLFMHz.getVar("sqrChr").get_obj_vector(0)); 
 if(!z8kJjPtlzpkPimvWzLS)return true;
 switch(LJQcSjpSb9tCYj3j4)
 {
 case 101: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 6, 1.0)); 
 break;
 case 102: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 7, 1.0)); 
 sq_SetVelocity(fMXfNHlS8G8qXikGH4PR, 0, sq_GetDistancePos(0, fMXfNHlS8G8qXikGH4PR.getDirection(), 600) * 1.0); 
 break;
 case 103: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 8, 1.0)); 
 break;
 case 104: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 9, 1.0)); 
 break;
 case 105: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 10, 1.0)); 
 break;
 case 106: 
 if(fMXfNHlS8G8qXikGH4PR.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(136); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 136, 136, 11, 1.0)); 
 sq_SendCreatePassiveObjectPacket(fMXfNHlS8G8qXikGH4PR, 24372, 0, 345, 0, 0, fMXfNHlS8G8qXikGH4PR.getDirection()); 
 }
 break;
 case 107: 
 HkedQN97XdLFMHz.getVar("axeCount").clear_vector(); 
 HkedQN97XdLFMHz.getVar("axeCount").push_vector(1); 
 break;
 case 108: 
 local qicEduNzKW = HkedQN97XdLFMHz.getVar("axeCount").get_vector(0); 
 if(qicEduNzKW < 4) 
 {
 HkedQN97XdLFMHz.getVar("axeCount").set_vector(0, qicEduNzKW + 1); 
 if(fMXfNHlS8G8qXikGH4PR.isMyControlObject())
 {
 local Sk4ZJlnb5toUcIlEOVesrNWE = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(Sk4ZJlnb5toUcIlEOVesrNWE); 
 sq_IntVectorPush(Sk4ZJlnb5toUcIlEOVesrNWE, 9); 
 sq_AddSetStatePacketActiveObject(fMXfNHlS8G8qXikGH4PR, 8, Sk4ZJlnb5toUcIlEOVesrNWE, STATE_PRIORITY_USER); 
 }
 }
 
 else if(fMXfNHlS8G8qXikGH4PR.isMyControlObject())
 {
 local Sk4ZJlnb5toUcIlEOVesrNWE = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(Sk4ZJlnb5toUcIlEOVesrNWE); 
 sq_IntVectorPush(Sk4ZJlnb5toUcIlEOVesrNWE, 10); 
 sq_AddSetStatePacketActiveObject(fMXfNHlS8G8qXikGH4PR, 8, Sk4ZJlnb5toUcIlEOVesrNWE, STATE_PRIORITY_USER); 
 }
 break;
 case 109: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 137, 137, 0, 1.0)); 
 break;
 case 110: 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(fMXfNHlS8G8qXikGH4PR), sq_GetBonusRateWithPassive(z8kJjPtlzpkPimvWzLS, 137, 137, 1, 1.0)); 
 break;
 case 111: 
 local AU9VaUHOE0VXT = (HkedQN97XdLFMHz.getVar("axeCount").get_vector(0)).tostring(); 
 local RTuSSKkGrR4fp = sq_GetDistancePos(fMXfNHlS8G8qXikGH4PR.getXPos(), fMXfNHlS8G8qXikGH4PR.getDirection(), 173);
 local AH9Bwh1u3jXiDVlRZ = fMXfNHlS8G8qXikGH4PR.getYPos();
 local WbeNWQ_kDLzbKNdd0G = fMXfNHlS8G8qXikGH4PR.getZPos();
 
 CreateAniRate(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/atkeffectbottom0" + AU9VaUHOE0VXT + "_crack.ani", ENUM_DRAWLAYER_BOTTOM, RTuSSKkGrR4fp, AH9Bwh1u3jXiDVlRZ, WbeNWQ_kDLzbKNdd0G, false, false); 
 CreateAniRate(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/atkeffecttop0" + AU9VaUHOE0VXT + "_crack.ani", ENUM_DRAWLAYER_NORMAL, RTuSSKkGrR4fp, AH9Bwh1u3jXiDVlRZ + 1, WbeNWQ_kDLzbKNdd0G, false, false); 
 CreateAniRate(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/atkeffectbottom0" + AU9VaUHOE0VXT + "_rock.ani", ENUM_DRAWLAYER_BOTTOM, RTuSSKkGrR4fp, AH9Bwh1u3jXiDVlRZ - 1, WbeNWQ_kDLzbKNdd0G, false, false); 
 break;
 case 112: 
 sq_AddDrawOnlyAniFromParent(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/atkaxeeffect_dust.ani", 190, 0, 0);
 break;
 case 113: 
 CreateAniRate(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/finisheffectbottom_crackb.ani", ENUM_DRAWLAYER_BOTTOM, sq_GetDistancePos(fMXfNHlS8G8qXikGH4PR.getXPos(), fMXfNHlS8G8qXikGH4PR.getDirection(), 353), fMXfNHlS8G8qXikGH4PR.getYPos(), fMXfNHlS8G8qXikGH4PR.getZPos(), false, false); 
 sq_AddDrawOnlyAniFromParent(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/finisheffecttop_cracka.ani", 353, 0, 0); 
 sq_AddDrawOnlyAniFromParent(fMXfNHlS8G8qXikGH4PR, "monster/character/mage/kruta/animation/finishaxeeffect_dust.ani", 420, 0, 0); 
 break;
 }
 return true;
} ;

function onEnd_appendage_mage_summonkruta(rk2sKRGRwZzPdCmQcsQLQ8GL)
{
 if(!rk2sKRGRwZzPdCmQcsQLQ8GL) return;
 local yKEmSnHhqi0ioDe = rk2sKRGRwZzPdCmQcsQLQ8GL.getParent(); 
 if(!yKEmSnHhqi0ioDe)
 {
 rk2sKRGRwZzPdCmQcsQLQ8GL.setValid(false);
 return;
 }
 yKEmSnHhqi0ioDe.sendDestroyPacket(true); 
} ;

 
function setStartInfo_appendage_mage_summonkruta(GRzQJGJW5YNPU6, jjDF_cJgkTLD1kUSyG)
{
 jjDF_cJgkTLD1kUSyG.getVar("sqrChrSkill").clear_timer_vector(); 
 local Muq2KcA7zi8uWVKzBoVzH = jjDF_cJgkTLD1kUSyG.getVar("sqrChrSkill"); 
 
 local d1VN1GqjXOCV8o8gVoyff7p = sq_GetSkillLevel(GRzQJGJW5YNPU6, 136); 
 
 Muq2KcA7zi8uWVKzBoVzH.push_timer_vector();
 local fKwMPzasV3196Zl = Muq2KcA7zi8uWVKzBoVzH.get_timer_vector(0);
 fKwMPzasV3196Zl.setParameter(sq_GetLevelData(GRzQJGJW5YNPU6, 136, 2, d1VN1GqjXOCV8o8gVoyff7p), -1); 
 fKwMPzasV3196Zl.resetInstant(0); 
 
 if(d1VN1GqjXOCV8o8gVoyff7p >= 5) 
 {
 Muq2KcA7zi8uWVKzBoVzH.push_timer_vector();
 local M3fjsUFnamfRrln8OnOwRwI = Muq2KcA7zi8uWVKzBoVzH.get_timer_vector(1);
 M3fjsUFnamfRrln8OnOwRwI.setParameter(sq_GetLevelData(GRzQJGJW5YNPU6, 136, 3, d1VN1GqjXOCV8o8gVoyff7p), -1); 
 M3fjsUFnamfRrln8OnOwRwI.resetInstant(0); 
 }
 
 if(d1VN1GqjXOCV8o8gVoyff7p >= 10) 
 {
 Muq2KcA7zi8uWVKzBoVzH.push_timer_vector();
 local xQ05i_i2HajaAX2Q = Muq2KcA7zi8uWVKzBoVzH.get_timer_vector(2);
 xQ05i_i2HajaAX2Q.setParameter(sq_GetLevelData(GRzQJGJW5YNPU6, 136, 4, d1VN1GqjXOCV8o8gVoyff7p), -1); 
 xQ05i_i2HajaAX2Q.resetInstant(0); 
 Muq2KcA7zi8uWVKzBoVzH.push_timer_vector();
 local ITq5I7xcZk = Muq2KcA7zi8uWVKzBoVzH.get_timer_vector(3);
 ITq5I7xcZk.setParameter(sq_GetLevelData(GRzQJGJW5YNPU6, 136, 5, d1VN1GqjXOCV8o8gVoyff7p), -1); 
 ITq5I7xcZk.resetInstant(0); 
 ITq5I7xcZk.setEventOnStart(true); 
 }
 
 jjDF_cJgkTLD1kUSyG.getVar("atkTime").clear_timer_vector();
 jjDF_cJgkTLD1kUSyG.getVar("atkTime").push_timer_vector();
 local pipDdV2DUIisisHX2t = jjDF_cJgkTLD1kUSyG.getVar("atkTime").get_timer_vector(0);
 pipDdV2DUIisisHX2t.setParameter(1200, -1);
 pipDdV2DUIisisHX2t.resetInstant(0);
 
 jjDF_cJgkTLD1kUSyG.getVar("sqrChr").clear_obj_vector(); 
 jjDF_cJgkTLD1kUSyG.getVar("sqrChr").push_obj_vector(GRzQJGJW5YNPU6); 
} ;


