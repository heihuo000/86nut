
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





function onProc_mage_MageDoubleSwing(njUgAYJ722)
{
 if(!njUgAYJ722) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(njUgAYJ722, "character/mage/avatar/ap_avatar.nut")) 
 {
 local xTaWE9IF3DlZr = njUgAYJ722.getSkillSubState();
 switch(xTaWE9IF3DlZr)
 {
 case 0: 
 if(njUgAYJ722.isCurrentCutomAniIndex(65))
 njUgAYJ722.setCurrentAnimation(setCurrentAnimation_avatar_eff(njUgAYJ722, "DoubleSwing1", true));
 break;
 case 1: 
 if(njUgAYJ722.isCurrentCutomAniIndex(66))
 njUgAYJ722.setCurrentAnimation(setCurrentAnimation_avatar_eff(njUgAYJ722, "DoubleSwing2", true));
 break;
 }
 }
} ;


