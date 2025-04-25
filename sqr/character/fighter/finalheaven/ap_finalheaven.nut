
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_fighter_finalheaven")
}


function drawAppend_appendage_fighter_finalheaven(DGnn8kTccUG8u4nigqhSQy, RNmbQfBmAHutZYxvEf, xXxztJ7fEhhwizt_Qn, e7n74a0KYEXTGf2KU3csIl0, isR_SYYCNOajKFj)
{
 if(!DGnn8kTccUG8u4nigqhSQy) return;
 local s_zDODWHtEnV = DGnn8kTccUG8u4nigqhSQy.getParent();
 local seW7rMPI15M = DGnn8kTccUG8u4nigqhSQy.getSource(); 
 if(!s_zDODWHtEnV || !seW7rMPI15M)
 {
 DGnn8kTccUG8u4nigqhSQy.setValid(false);
 return;
 }
 if(!RNmbQfBmAHutZYxvEf) 
 {
 if(seW7rMPI15M.getState() == 232 && sq_GetCNRDObjectToSQRCharacter(seW7rMPI15M).getSkillSubState() < 2)
 {
 local _I52R0ZTs8O_tRgAHS96PHAc = DGnn8kTccUG8u4nigqhSQy.getVar().GetAnimationMap("hitghostloop", "character/fighter/effect/animation/finalheaven/start/hitghostloop.ani");
 sq_AnimationProc(_I52R0ZTs8O_tRgAHS96PHAc);
 sq_drawCurrentFrame(_I52R0ZTs8O_tRgAHS96PHAc, xXxztJ7fEhhwizt_Qn, e7n74a0KYEXTGf2KU3csIl0 - sq_GetObjectHeight(s_zDODWHtEnV) / 2, isR_SYYCNOajKFj);
 }
 else
 DGnn8kTccUG8u4nigqhSQy.setValid(false);
 }
} ;
