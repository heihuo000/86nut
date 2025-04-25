
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_doomcrush") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_doomcrush") 
}


function proc_appendage_priest_doomcrush(y_OzSO9V_V9kJ)
{
 if(!y_OzSO9V_V9kJ) return;
 local qOtnjR098xEyd1JK5 = y_OzSO9V_V9kJ.getParent(); 
 local tDMcco7njzex8Pzg3 = sq_GetCNRDObjectToSQRCharacter(y_OzSO9V_V9kJ.getSource()); 
 if(!qOtnjR098xEyd1JK5 || !tDMcco7njzex8Pzg3 || tDMcco7njzex8Pzg3.getState() != 137 || tDMcco7njzex8Pzg3.getSkillSubState() == 2)
 {
 y_OzSO9V_V9kJ.setValid(false);
 return;
 }
 sq_setCurrentAxisPos(qOtnjR098xEyd1JK5, 0, sq_GetDistancePos(tDMcco7njzex8Pzg3.getXPos(), sq_GetDirection(tDMcco7njzex8Pzg3), 125)); 
 sq_setCurrentAxisPos(qOtnjR098xEyd1JK5, 1, tDMcco7njzex8Pzg3.getYPos()); 
 sq_setCurrentAxisPos(qOtnjR098xEyd1JK5, 2, tDMcco7njzex8Pzg3.getZPos() + 20); 
} ;

function onEnd_appendage_priest_doomcrush(Y9vyNptEBH44D)
{
 if(!Y9vyNptEBH44D) return;
 local F2SGtAoVe_eGKAZJrMyH = Y9vyNptEBH44D.getParent(); 
 if(!F2SGtAoVe_eGKAZJrMyH)
 {
 Y9vyNptEBH44D.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(F2SGtAoVe_eGKAZJrMyH, 200); 
} ;

