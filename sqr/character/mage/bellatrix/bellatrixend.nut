
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function onAfterSetState_mage_MageBellatrixEnd(rBzERVpuv_c4, KrpKoM45CRSBujGMJsdn6m, iA3NnInwH43kdPzOKb59p, PdcciUT9bAyjq6t0bhdk)
{
 if(!rBzERVpuv_c4) return;
 
 local Xr_lufTc01jxj4Oz3hLbUbpw = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 0); 
 local EfzK_UFLFG9c21p0TvPJBS1 = rBzERVpuv_c4.sq_GetVectorData(iA3NnInwH43kdPzOKb59p, 1); 
 
 if(Xr_lufTc01jxj4Oz3hLbUbpw == 0)
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rBzERVpuv_c4, "character/mage/appendage/ap_bellatrix.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(rBzERVpuv_c4, "character/mage/appendage/ap_bellatrix.nut");
 if(EfzK_UFLFG9c21p0TvPJBS1 == 0)
 {
 
 if(rBzERVpuv_c4.sq_IsMyControlObject())
 {
 rBzERVpuv_c4.sq_IntVectClear();
 rBzERVpuv_c4.sq_IntVectPush(2); 
 rBzERVpuv_c4.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 rBzERVpuv_c4.flushSetStatePacket(); 
 }
 }
 }
} ;

