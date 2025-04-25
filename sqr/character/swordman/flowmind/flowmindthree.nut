
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_swordman_flowmindthree(dQgXX07IAfHE1Y, jYIEPkUl_RQ2kCG3, a0a5w15u7P0goTEl2, Nqi5Km8guaNIDVpoh)
{
 if(!dQgXX07IAfHE1Y) return;
 local la8TEdWOU3 = dQgXX07IAfHE1Y.sq_GetVectorData(a0a5w15u7P0goTEl2, 0);
 switch(la8TEdWOU3)
 {
 case 0:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(dQgXX07IAfHE1Y, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 dQgXX07IAfHE1Y.sq_SetSuperArmorUntilTime(dQgXX07IAfHE1Y, dQgXX07IAfHE1Y.sq_GetLevelData(248, 1, sq_GetSkillLevel(dQgXX07IAfHE1Y, 248))); 
 }
 local _NWggLZu69SNGSSojN45 = dQgXX07IAfHE1Y.sq_GetVectorData(a0a5w15u7P0goTEl2, 1); 
 if(_NWggLZu69SNGSSojN45 == 0 && dQgXX07IAfHE1Y.sq_IsMyControlObject())
 {
 
 dQgXX07IAfHE1Y.sq_IntVectClear();
 dQgXX07IAfHE1Y.sq_IntVectPush(1); 
 dQgXX07IAfHE1Y.sq_AddSetStatePacket(64, STATE_PRIORITY_USER, true);
 dQgXX07IAfHE1Y.flushSetStatePacket(); 
 }
 break;
 }
} ;

