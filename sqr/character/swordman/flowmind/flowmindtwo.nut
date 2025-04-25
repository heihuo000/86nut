
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




function onAfterSetState_swordman_flowmindtwo(dQgXX07IAfHE1Y, jYIEPkUl_RQ2kCG3, a0a5w15u7P0goTEl2, Nqi5Km8guaNIDVpoh)
{
 if(!dQgXX07IAfHE1Y) return;
 local la8TEdWOU3 = dQgXX07IAfHE1Y.sq_GetVectorData(a0a5w15u7P0goTEl2, 0);
 if(la8TEdWOU3 == 0)
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(dQgXX07IAfHE1Y, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 dQgXX07IAfHE1Y.sq_SetSuperArmorUntilTime(dQgXX07IAfHE1Y, dQgXX07IAfHE1Y.sq_GetLevelData(248, 1, sq_GetSkillLevel(dQgXX07IAfHE1Y, 248))); 
 }
 }
} ;

function onProcCon_swordman_flowmindtwo(dQgXX07IAfHE1Y)
{
 if(!dQgXX07IAfHE1Y) return;
 local jYIEPkUl_RQ2kCG3 = dQgXX07IAfHE1Y.getSkillSubState(); 
 switch(jYIEPkUl_RQ2kCG3)
 {
 case 0:
 case 1:
 sq_SetKeyxEnable(dQgXX07IAfHE1Y, E_SKILL_COMMAND, true); 
 if(sq_IsEnterCommand(dQgXX07IAfHE1Y, E_SKILL_COMMAND)) 
 {
 local a0a5w15u7P0goTEl2 = dQgXX07IAfHE1Y.sq_IsUseSkill(109); 
 if(a0a5w15u7P0goTEl2)
 {
 
 dQgXX07IAfHE1Y.sq_IntVectClear();
 dQgXX07IAfHE1Y.sq_IntVectPush(0); 
 dQgXX07IAfHE1Y.sq_IntVectPush(0); 
 dQgXX07IAfHE1Y.sq_AddSetStatePacket(64, STATE_PRIORITY_USER, true);
 }
 }
 break;
 }
} ;
