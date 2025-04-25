
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_mage_avatardance")
}


function proc_appendage_mage_avatardance(zS3gTSiiEr04vRtWVLFBqe)
{
 if(!zS3gTSiiEr04vRtWVLFBqe) return;
 local pYvvg5V8V8 = zS3gTSiiEr04vRtWVLFBqe.getParent();
 local Xnt0MU6bASPRGLyKy = zS3gTSiiEr04vRtWVLFBqe.getSource(); 
 if(!pYvvg5V8V8
 || !Xnt0MU6bASPRGLyKy
 || Xnt0MU6bASPRGLyKy.getState() != 243
 || sq_GetCNRDObjectToSQRCharacter(Xnt0MU6bASPRGLyKy).getSkillSubState() >= 5)
 {
 zS3gTSiiEr04vRtWVLFBqe.setValid(false);
 return;
 }
} ;