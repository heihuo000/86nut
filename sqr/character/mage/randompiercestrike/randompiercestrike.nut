
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_mage_MageRandomPierceStrike(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW, T1mXUPoiXVSbfCu7AG, zyDQhAvDXP46IMEVkHF)
{
 if(!Dcju7DIrGgeVQRdU) return;
 local D7qbotV1XlcZ_uyoFl999 = Dcju7DIrGgeVQRdU.sq_GetVectorData(T1mXUPoiXVSbfCu7AG, 0); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Dcju7DIrGgeVQRdU, "character/mage/avatar/ap_avatar.nut"))
 {
 local xnJJ3nD_JpV2Bt5yiwHcZltw = null; 
 switch(D7qbotV1XlcZ_uyoFl999) 
 {
 case 0:
 xnJJ3nD_JpV2Bt5yiwHcZltw = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "RandomPierceStrikeTry",true);
 break;
 case 1:
 xnJJ3nD_JpV2Bt5yiwHcZltw = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "RandomPierceStrikeLoop",true);
 break;
 case 2:
 xnJJ3nD_JpV2Bt5yiwHcZltw = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "RandomPierceStrikeFinish",true);
 break;
 }
 if(xnJJ3nD_JpV2Bt5yiwHcZltw != null)
 Dcju7DIrGgeVQRdU.setCurrentAnimation(xnJJ3nD_JpV2Bt5yiwHcZltw); 
 }
} ;
