
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_priest_doomcrush_atk")
}



function drawAppend_appendage_priest_doomcrush_atk(TP_LozBm5vhsKNDibuRiIkf, OMdaBiW6uZ7eKoxJ, oDHH_l7q0Ac8oe7svra7ERGX, rNJQktDFpvUnTY, dqVb6MMI_Ka5qPdbB)
{
 if(!TP_LozBm5vhsKNDibuRiIkf) return;
 local WCcoQQvPsMUlFZnGZlOiHs5 = TP_LozBm5vhsKNDibuRiIkf.getParent(); 
 local LP78E3N_PT8S1 = TP_LozBm5vhsKNDibuRiIkf.getSource(); 
 if(!WCcoQQvPsMUlFZnGZlOiHs5 || !LP78E3N_PT8S1)
 {
 TP_LozBm5vhsKNDibuRiIkf.setValid(false);
 return;
 }
 if(!OMdaBiW6uZ7eKoxJ)return; 
 local Td0fR00n3lnfJXJU6wHtlLzf = TP_LozBm5vhsKNDibuRiIkf.getVar().GetAnimationMap("doomcrush_f_01attack", "character/priest/effect/animation/doomcrush/doomcrush_f_01attack.ani");
 sq_AnimationProc(Td0fR00n3lnfJXJU6wHtlLzf);
 sq_drawCurrentFrame(Td0fR00n3lnfJXJU6wHtlLzf, oDHH_l7q0Ac8oe7svra7ERGX, rNJQktDFpvUnTY - 15, dqVb6MMI_Ka5qPdbB);
} ;

