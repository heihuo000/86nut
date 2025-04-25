
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_FighterSuplexCyclone(FCQKJlDXFBQVdmACZpEQQ, To9MZqggsbrexvrOkxm, LEA36zIBRBF, p7siILmEcgE2P9)
{
 if (!FCQKJlDXFBQVdmACZpEQQ) return;
 local sIwZ70xGNm6 = FCQKJlDXFBQVdmACZpEQQ.sq_GetVectorData(LEA36zIBRBF, 0); 
 FCQKJlDXFBQVdmACZpEQQ.setSkillSubState(sIwZ70xGNm6); 
} ;

function onProc_FighterSuplexCyclone(FCQKJlDXFBQVdmACZpEQQ)
{
 if(!FCQKJlDXFBQVdmACZpEQQ) return;
 if(!FCQKJlDXFBQVdmACZpEQQ.isMyControlObject()) return;
 local To9MZqggsbrexvrOkxm = FCQKJlDXFBQVdmACZpEQQ.getSkillSubState(); 
 if(To9MZqggsbrexvrOkxm==2)
 {
 
 if(!sq_GetSkill(FCQKJlDXFBQVdmACZpEQQ, 88).isInCoolTime()){ 
 FCQKJlDXFBQVdmACZpEQQ.setSkillCommandEnable(88,true); 
 if(FCQKJlDXFBQVdmACZpEQQ.sq_IsEnterSkill(88) != -1) 
 {
 FCQKJlDXFBQVdmACZpEQQ.startSkillCoolTime(88, sq_GetSkillLevel(FCQKJlDXFBQVdmACZpEQQ, 88), -1); 
 FCQKJlDXFBQVdmACZpEQQ.sq_IntVectClear();
 FCQKJlDXFBQVdmACZpEQQ.sq_IntVectPush(0);
 FCQKJlDXFBQVdmACZpEQQ.sq_AddSetStatePacket(58, STATE_PRIORITY_USER, true); 
 }
 }
 
 if(!sq_GetSkill(FCQKJlDXFBQVdmACZpEQQ, 62).isInCoolTime()){ 
 FCQKJlDXFBQVdmACZpEQQ.setSkillCommandEnable(62,true); 
 if(FCQKJlDXFBQVdmACZpEQQ.sq_IsEnterSkill(62) != -1) 
 {
 FCQKJlDXFBQVdmACZpEQQ.startSkillCoolTime(62, sq_GetSkillLevel(FCQKJlDXFBQVdmACZpEQQ, 62), -1); 
 FCQKJlDXFBQVdmACZpEQQ.sq_AddSetStatePacket(36, STATE_PRIORITY_USER, false); 
 }
 }
 }
} ;