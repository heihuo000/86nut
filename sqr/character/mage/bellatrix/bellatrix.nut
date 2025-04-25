
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function onAfterSetState_mage_MageBellatrix(PQTqYWyoPjv4ektK, vQHyclEdSW, a1CxAVeoauXhYfVpTwmp7_2k, urq71HC_i5Ic2au)
{
 if(!PQTqYWyoPjv4ektK) return;
 local NbAbwqLQ8Mweo = PQTqYWyoPjv4ektK.sq_GetVectorData(a1CxAVeoauXhYfVpTwmp7_2k, 0); 
 PQTqYWyoPjv4ektK.setSkillSubState(NbAbwqLQ8Mweo); 
 switch(NbAbwqLQ8Mweo)
 {
 case 0:
 break;
 case 1:
 if(PQTqYWyoPjv4ektK.sq_IsMyControlObject())
 {
 PQTqYWyoPjv4ektK.sq_IntVectClear();
 PQTqYWyoPjv4ektK.sq_IntVectPush(1);
 PQTqYWyoPjv4ektK.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 PQTqYWyoPjv4ektK.flushSetStatePacket(); 
 return;
 }
 break;
 case 2: 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(PQTqYWyoPjv4ektK, "character/mage/appendage/ap_bellatrix.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(PQTqYWyoPjv4ektK, "character/mage/appendage/ap_bellatrix.nut");
 local sMz9RP1qpl_hfitHEKo4wz = sq_GetSkillLevel(PQTqYWyoPjv4ektK, 83); 
 local V9NdWM3ROIkZO1 = sq_GetLevelData(PQTqYWyoPjv4ektK, 83, 0, sMz9RP1qpl_hfitHEKo4wz); 
 local SnrFtonDFQsafsCtUAUm0Yd = CNSquirrelAppendage.sq_AppendAppendage(PQTqYWyoPjv4ektK, PQTqYWyoPjv4ektK, 83, true, "character/mage/appendage/ap_bellatrix.nut", true); 
 SnrFtonDFQsafsCtUAUm0Yd.sq_SetValidTime(V9NdWM3ROIkZO1); 
 if(PQTqYWyoPjv4ektK.sq_IsMyControlObject())
 {
 PQTqYWyoPjv4ektK.sq_IntVectClear();
 PQTqYWyoPjv4ektK.sq_IntVectPush(0);
 PQTqYWyoPjv4ektK.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true); 
 PQTqYWyoPjv4ektK.flushSetStatePacket(); 
 }
 break;
 }
} ;
