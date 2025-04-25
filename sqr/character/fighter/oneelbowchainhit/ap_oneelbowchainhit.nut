
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_fighter_oneelbowchainhit") 
}


function proc_appendage_fighter_oneelbowchainhit(RQdLYUYtCiqp6q1)
{
 if(!RQdLYUYtCiqp6q1) return;
 local bTWsf9CtiUz2lc0WYnGqN5 = RQdLYUYtCiqp6q1.getParent(); 
 local CsRHV8N8jcAUL = RQdLYUYtCiqp6q1.getSource(); 
 if(!bTWsf9CtiUz2lc0WYnGqN5 || !CsRHV8N8jcAUL)
 {
 RQdLYUYtCiqp6q1.setValid(false);
 return;
 }
 if(RQdLYUYtCiqp6q1.getTimer().Get() > 100)
 {
 
 local Z0hY8QMeRDju = bTWsf9CtiUz2lc0WYnGqN5.getState(); 
 if(Z0hY8QMeRDju != STATE_DOWN && bTWsf9CtiUz2lc0WYnGqN5.getZPos() >= 0 
 || Z0hY8QMeRDju == STATE_DOWN && bTWsf9CtiUz2lc0WYnGqN5.getZPos() <= 0)
 if(bTWsf9CtiUz2lc0WYnGqN5.isMyControlObject())
 sq_sendSetActiveStatusPacket(bTWsf9CtiUz2lc0WYnGqN5, CsRHV8N8jcAUL, ACTIVESTATUS_SLOW, 100.0, 100, false, RQdLYUYtCiqp6q1.getVar().get_vector(0), RQdLYUYtCiqp6q1.getVar().get_vector(1), RQdLYUYtCiqp6q1.getVar().get_vector(1)); 
 RQdLYUYtCiqp6q1.setValid(false); 
 return;
 }
} ;
