
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onAfterSetState_mage_MageHandStrike(Dcju7DIrGgeVQRdU, IQqclgIlljkktMlhHPREHVW, T1mXUPoiXVSbfCu7AG, zyDQhAvDXP46IMEVkHF)
{
 if(!Dcju7DIrGgeVQRdU) return;
 local D7qbotV1XlcZ_uyoFl999 = Dcju7DIrGgeVQRdU.sq_GetVectorData(T1mXUPoiXVSbfCu7AG, 0); 
 local xnJJ3nD_JpV2Bt5yiwHcZltw = Dcju7DIrGgeVQRdU.sq_GetVectorData(T1mXUPoiXVSbfCu7AG, 1); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Dcju7DIrGgeVQRdU, "character/mage/avatar/ap_avatar.nut")) 
 {
 if(D7qbotV1XlcZ_uyoFl999 == 0) 
 {
 Dcju7DIrGgeVQRdU.getVar().clear_vector(); 
 Dcju7DIrGgeVQRdU.getVar().push_vector(xnJJ3nD_JpV2Bt5yiwHcZltw); 
 }
 local bPp8MUTEDAW = null; 
 xnJJ3nD_JpV2Bt5yiwHcZltw = Dcju7DIrGgeVQRdU.getVar().get_vector(0); 
 switch(xnJJ3nD_JpV2Bt5yiwHcZltw)
 {
 case 14: 
 if(D7qbotV1XlcZ_uyoFl999 == 0)
 bPp8MUTEDAW = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "HandStrike",true);
 break;
 case 68: 
 switch(D7qbotV1XlcZ_uyoFl999)
 {
 case 0: 
 bPp8MUTEDAW = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "StrengthHandStrike",true);
 break;
 case 2: 
 bPp8MUTEDAW = setCurrentAnimation_avatar_eff(Dcju7DIrGgeVQRdU, "StrengthHandStrikeReturn",true);
 break;
 }
 break;
 }
 if(bPp8MUTEDAW != null)
 Dcju7DIrGgeVQRdU.setCurrentAnimation(bPp8MUTEDAW); 
 }
} ;






 

