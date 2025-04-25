
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_swordman_chargecrash(L5w8FiWJep7otq20, gGPS9rbMUSoJi6c, GUYNlmAB8px5bg_3Dwur5I, XY97bp_VrExlcg3CP3DW)
{
 if(!L5w8FiWJep7otq20) return;
 local DkloDt35JiA4MDpplrT9fi = L5w8FiWJep7otq20.sq_GetVectorData(GUYNlmAB8px5bg_3Dwur5I, 0); 
 local eVxUPin9p5LqrIHD4 = L5w8FiWJep7otq20.sq_GetVectorData(GUYNlmAB8px5bg_3Dwur5I, 1); 
 if(DkloDt35JiA4MDpplrT9fi == 1 && eVxUPin9p5LqrIHD4 == 0) 
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(L5w8FiWJep7otq20, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 if(L5w8FiWJep7otq20.sq_IsMyControlObject())
 {
 L5w8FiWJep7otq20.sq_StartWrite();
 L5w8FiWJep7otq20.sq_WriteDword(248); 
 L5w8FiWJep7otq20.sq_WriteDword(2); 
 L5w8FiWJep7otq20.sq_WriteDword(L5w8FiWJep7otq20.sq_GetBonusRateWithPassive(248, gGPS9rbMUSoJi6c, 2, 1.0)); 
 L5w8FiWJep7otq20.sq_SendCreatePassiveObjectPacket(24370, 0, 30, -1, 0); 
 }
 }
 }
} ;

