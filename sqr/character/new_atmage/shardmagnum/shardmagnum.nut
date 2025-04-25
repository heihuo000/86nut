
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 

 
function checkExecutableSkill_atmage_shardmagnum(DN6B0AS7d2YJSMKsSL)
{
 
 
 
 
 
 
 if(!DN6B0AS7d2YJSMKsSL) return false; 
 local gMENAd0ViZvuhrYLdIpS5s = DN6B0AS7d2YJSMKsSL.sq_IsUseSkill(246); 
 if(gMENAd0ViZvuhrYLdIpS5s) 
 {
 DN6B0AS7d2YJSMKsSL.sq_IntVectClear();
 DN6B0AS7d2YJSMKsSL.sq_IntVectPush(0); 
 DN6B0AS7d2YJSMKsSL.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atmage_shardmagnum(DN6B0AS7d2YJSMKsSL)
{
 if(!DN6B0AS7d2YJSMKsSL) return false; 
return true; 
 local gMENAd0ViZvuhrYLdIpS5s = DN6B0AS7d2YJSMKsSL.sq_GetState(); 
 if(gMENAd0ViZvuhrYLdIpS5s == STATE_STAND) 
 return true; 
 if(gMENAd0ViZvuhrYLdIpS5s == STATE_ATTACK) 
 {
 return DN6B0AS7d2YJSMKsSL.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_atmage_shardmagnum(DN6B0AS7d2YJSMKsSL, gMENAd0ViZvuhrYLdIpS5s, fwOCOeFq9yr, Y70fQ_GxyKDyR67)
{
 if(!DN6B0AS7d2YJSMKsSL) return; 
 DN6B0AS7d2YJSMKsSL.sq_StopMove(); 
 local Ol8AVXsF1kpPcOd1w = DN6B0AS7d2YJSMKsSL.sq_GetVectorData(fwOCOeFq9yr, 0); 
 DN6B0AS7d2YJSMKsSL.setSkillSubState(Ol8AVXsF1kpPcOd1w); 
 switch(Ol8AVXsF1kpPcOd1w)
 {
 case 0:
 DN6B0AS7d2YJSMKsSL.getVar().clear_obj_vector(); 
 DN6B0AS7d2YJSMKsSL.sq_SetCurrentAnimation(104);
 DN6B0AS7d2YJSMKsSL.sq_SetCurrentAttackInfo(22);
 local rSdaPSiLJjhzoE5ovO6zjU = DN6B0AS7d2YJSMKsSL.sq_GetBonusRateWithPassive(246, 246, 0, 1.0); 
 DN6B0AS7d2YJSMKsSL.sq_SetCurrentAttackBonusRate(rSdaPSiLJjhzoE5ovO6zjU); 
 break;
 }
 local sd9I5MbxS3D2f7aPfz43C = DN6B0AS7d2YJSMKsSL.sq_GetDelaySum(); 
 DN6B0AS7d2YJSMKsSL.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local R8ITeeYCPkf_9Nm = DN6B0AS7d2YJSMKsSL.sq_GetDelaySum(); 
 DN6B0AS7d2YJSMKsSL.getVar("speedRate").setFloat(0, sd9I5MbxS3D2f7aPfz43C.tofloat() / R8ITeeYCPkf_9Nm.tofloat()); 
 DN6B0AS7d2YJSMKsSL.getVar("speedRate").setFloat(1, R8ITeeYCPkf_9Nm.tofloat() / sd9I5MbxS3D2f7aPfz43C.tofloat()); 
} ;

function onKeyFrameFlag_atmage_shardmagnum(ulpO7loMZ5f8mxrT, hRuY8re0Cr)
{
 if(!ulpO7loMZ5f8mxrT) return false;
 local N3rkQZvFCZuWvUN5 = ulpO7loMZ5f8mxrT.getSkillSubState(); 
 switch(N3rkQZvFCZuWvUN5)
 {
 case 0:
 switch(hRuY8re0Cr)
 {
 case 1:
 sq_myFlashScreen_qq506807329(ulpO7loMZ5f8mxrT, 0, 0, 200, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 sq_mySetShake_qq506807329(ulpO7loMZ5f8mxrT, 5, 50, false); 
 
 if(ulpO7loMZ5f8mxrT.sq_IsMyControlObject())
 {
 ulpO7loMZ5f8mxrT.sq_StartWrite();
 ulpO7loMZ5f8mxrT.sq_WriteDword(246); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(1); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(ulpO7loMZ5f8mxrT.sq_GetIntData(246, 1)); 
 ulpO7loMZ5f8mxrT.sq_SendCreatePassiveObjectPacket(24379, 0, 85, 0, 0);
 }
 break;
 case 2:
 sq_myFlashScreen_qq506807329(ulpO7loMZ5f8mxrT, 0, 80, 100, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 sq_mySetShake_qq506807329(ulpO7loMZ5f8mxrT, 10, 200, false); 
 
 local wBYSXC9udAMy6OrtL1JZVmY = sq_GetCNRDObjectToCollisionObject(ulpO7loMZ5f8mxrT.getVar().get_obj_vector(0)); 
 if(wBYSXC9udAMy6OrtL1JZVmY)
 {
 if(wBYSXC9udAMy6OrtL1JZVmY.isMyControlObject())
 {
 local vAw11S_w7iMNnY384qt9bnGq = sq_GetSkillLevel(ulpO7loMZ5f8mxrT, 246); 
 local zTT7r_ziIs = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(zTT7r_ziIs); 
 sq_IntVectorPush(zTT7r_ziIs, ulpO7loMZ5f8mxrT.sq_GetBonusRateWithPassive(246, 246, 1, 1.0)); 
 sq_IntVectorPush(zTT7r_ziIs, ulpO7loMZ5f8mxrT.sq_GetLevelData(246, 2, vAw11S_w7iMNnY384qt9bnGq)); 
 sq_IntVectorPush(zTT7r_ziIs, ulpO7loMZ5f8mxrT.sq_GetLevelData(246, 3, vAw11S_w7iMNnY384qt9bnGq)); 
 sq_IntVectorPush(zTT7r_ziIs, ulpO7loMZ5f8mxrT.sq_GetLevelData(246, 4, vAw11S_w7iMNnY384qt9bnGq)); 
 sq_IntVectorPush(zTT7r_ziIs, ulpO7loMZ5f8mxrT.sq_GetIntData(246, 0)); 
 sq_IntVectorPush(zTT7r_ziIs, sq_GetGroup(ulpO7loMZ5f8mxrT)); 
 sq_IntVectorPush(zTT7r_ziIs, sq_GetUniqueId(ulpO7loMZ5f8mxrT)); 
 wBYSXC9udAMy6OrtL1JZVmY.addSetStatePacket(10, zTT7r_ziIs, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atmage_shardmagnum(KTPV6RpNFZL8ZIefMPHgQ)
{
 if(!KTPV6RpNFZL8ZIefMPHgQ) return;
 if(!KTPV6RpNFZL8ZIefMPHgQ.sq_IsMyControlObject()) return;
 local JDoY8JKNkL_zr2HEdZNHDv = KTPV6RpNFZL8ZIefMPHgQ.getSkillSubState(); 
 switch(JDoY8JKNkL_zr2HEdZNHDv)
 {
 case 0:
 KTPV6RpNFZL8ZIefMPHgQ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


