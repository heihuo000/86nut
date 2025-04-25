
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function onAfterSetState_mage_thrust(EUS09I5XEWSNJpMZ80wPDe, DM_j74uKMPtAxxSky4f7vva, ozWuUOO3aD, wquMHdADyE)
{
 if(!EUS09I5XEWSNJpMZ80wPDe) return;
 local QhgmVTg5drTBuTx0wi = EUS09I5XEWSNJpMZ80wPDe.sq_GetVectorData(ozWuUOO3aD, 0); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(EUS09I5XEWSNJpMZ80wPDe, "character/mage/avatar/ap_avatar.nut"))
 {
 local phIlPu_6nS = null; 
 switch(QhgmVTg5drTBuTx0wi) 
 {
 case 4:
 phIlPu_6nS = setCurrentAnimation_avatar_eff(EUS09I5XEWSNJpMZ80wPDe, "Thrust", true);
 break;
 }
 if(phIlPu_6nS != null)
 EUS09I5XEWSNJpMZ80wPDe.setCurrentAnimation(phIlPu_6nS); 
 }
} ;