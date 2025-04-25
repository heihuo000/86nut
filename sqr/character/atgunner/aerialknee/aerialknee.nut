
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_atgunner_aerialknee(r3fEW4_s2SeZEjzlv, ZTXHwLcVT5lKxU, ek0uRfaosKIJGfTU6fB0X, dLv6UkXZwiv8mMlwXVb)
{
 if (!r3fEW4_s2SeZEjzlv) return;
 local RMx2Im0jsxbIJje = r3fEW4_s2SeZEjzlv.sq_GetVectorData(ek0uRfaosKIJGfTU6fB0X, 0); 
 r3fEW4_s2SeZEjzlv.getVar().clear_vector(); 
 r3fEW4_s2SeZEjzlv.getVar().push_vector(RMx2Im0jsxbIJje); 
} ;



function onProcCon_atgunner_aerialknee(nbQfOGveQGCejCH)
{
 if (!nbQfOGveQGCejCH) return;
 local KOYRmdjs9JBtbgjP7o5kx = nbQfOGveQGCejCH.getVar().get_vector(0);
 if (KOYRmdjs9JBtbgjP7o5kx == 4) 
 onProcIsSub_My_atgunner_stylish(nbQfOGveQGCejCH)
} ;