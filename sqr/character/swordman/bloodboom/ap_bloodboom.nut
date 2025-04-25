
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_swordman_bloodboom")
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_bloodboom")
}


function getImmuneTypeDamageRate_appendage_swordman_bloodboom(YJq29a2yyU2, TQe80hG8iORg1UvIUwOEWt, NjiaBHxwntByBOUd)
{
 if(!YJq29a2yyU2) return TQe80hG8iORg1UvIUwOEWt;
 local xhHZeF1zGdQ4Nkrs8yOP4Lp = YJq29a2yyU2.getParent(); 
 local W494kQM0HHrwjmSTuK8zX7 = YJq29a2yyU2.getSource(); 
 if(!W494kQM0HHrwjmSTuK8zX7 || !xhHZeF1zGdQ4Nkrs8yOP4Lp || !isSameObject(W494kQM0HHrwjmSTuK8zX7, NjiaBHxwntByBOUd)) return TQe80hG8iORg1UvIUwOEWt;
 local JPXHzNTHb50f8TB2tf = TQe80hG8iORg1UvIUwOEWt;
 JPXHzNTHb50f8TB2tf += W494kQM0HHrwjmSTuK8zX7.getVar().get_vector(1); 
 
 if(sq_IsValidActiveStatus(xhHZeF1zGdQ4Nkrs8yOP4Lp, ACTIVESTATUS_BLEEDING))
 JPXHzNTHb50f8TB2tf += W494kQM0HHrwjmSTuK8zX7.getVar().get_vector(0); 
 return JPXHzNTHb50f8TB2tf;
} ;


 
function proc_appendage_swordman_bloodboom(qpfHu2m6FPS7g5QkpGE8NyK)
{
 if(!qpfHu2m6FPS7g5QkpGE8NyK) return;
 local PmHJSPYTNz6gTKJl_3Zzk2 = qpfHu2m6FPS7g5QkpGE8NyK.getParent(); 
 local cIh7FlhNSlv9ItAd4 = qpfHu2m6FPS7g5QkpGE8NyK.getSource(); 
 if(!cIh7FlhNSlv9ItAd4 || !PmHJSPYTNz6gTKJl_3Zzk2)
 {
 qpfHu2m6FPS7g5QkpGE8NyK.setValid(false); 
 return;
 }
} ;

