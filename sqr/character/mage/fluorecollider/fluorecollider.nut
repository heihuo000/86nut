
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onProcCon_mage_MageFluorecollider(R6ogHnfBxZjID)
{
 if(!R6ogHnfBxZjID) return;
 sq_SetKeyxEnable(R6ogHnfBxZjID, E_JUMP_COMMAND, true);
 if(sq_IsEnterCommand(R6ogHnfBxZjID, E_JUMP_COMMAND))
 {
 R6ogHnfBxZjID.sq_IntVectClear();
 R6ogHnfBxZjID.sq_IntVectPush(4);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(0);
 R6ogHnfBxZjID.sq_IntVectPush(20);
 R6ogHnfBxZjID.sq_AddSetStatePacket(4, STATE_PRIORITY_USER, true);
 }
} ;