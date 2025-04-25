
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_priest_dashattack(UNy1Ozn8ScM84f, sqK1unc7p55pR6Wc8vS, jmcswVj4iTixt, KmAlcD7JBVEqV1q0JRo8)
{
 if(!UNy1Ozn8ScM84f) return;
} ;

function onProc_priest_dashattack(UNy1Ozn8ScM84f)
{
 if(!UNy1Ozn8ScM84f) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(UNy1Ozn8ScM84f, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 if(!sq_GetCurrentAttackInfo(UNy1Ozn8ScM84f).isValidElement(ENUM_ELEMENT_LIGHT))
 UNy1Ozn8ScM84f.sq_SetCurrentAttackInfo(119);
 }
} ;


function onKeyFrameFlag_priest_dashattack(SRL1Ff6Nwswke51uf, wf9ABd2Avw42UEoWQ_IG)
{
 if(!SRL1Ff6Nwswke51uf) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(SRL1Ff6Nwswke51uf, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 if(wf9ABd2Avw42UEoWQ_IG == 0 && SRL1Ff6Nwswke51uf.sq_IsMyControlObject())
 {
 SRL1Ff6Nwswke51uf.sq_StartWrite();
 SRL1Ff6Nwswke51uf.sq_WriteDword(250); 
 SRL1Ff6Nwswke51uf.sq_WriteDword(3); 
 SRL1Ff6Nwswke51uf.sq_WriteDword(SRL1Ff6Nwswke51uf.sq_GetBonusRateWithPassive(250, 15, 5, 1.0)); 
 SRL1Ff6Nwswke51uf.sq_SendCreatePassiveObjectPacket(24374, 0, 150, 0, 0);
 }
 }
 return true;
} ;

