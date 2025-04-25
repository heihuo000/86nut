
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_FighterDashAttack(OVYsFOhwZbcXk47jWfe9, YYJCeFCRuUkpf, Vyv18xkn5eJ1, U7vYZ9x3iJjQ)
{
 if(!OVYsFOhwZbcXk47jWfe9) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(OVYsFOhwZbcXk47jWfe9, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 OVYsFOhwZbcXk47jWfe9.getVar().clear_vector(); 
 local mnEK4W3Cew4d4YG2QR4qRoc = OVYsFOhwZbcXk47jWfe9.getVar(); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(OVYsFOhwZbcXk47jWfe9.getXPos()); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(155); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(OVYsFOhwZbcXk47jWfe9.getZPos()); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(10); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(-1); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(-1); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(0); 
 mnEK4W3Cew4d4YG2QR4qRoc.push_vector(1); 
 sq_CreateDrawOnlyObject(OVYsFOhwZbcXk47jWfe9, "character/fighter/effect/animation/poisonsnake/dash_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
} ;

function onProc_FighterDashAttack(ejL6XjV2hQretQxPZD)
{
 if(!ejL6XjV2hQretQxPZD) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ejL6XjV2hQretQxPZD, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 local iC7Xom653I = ejL6XjV2hQretQxPZD.getCurrentAnimation(); 
 local IzUEHsz5nTY1y_hBuREKim = sq_GetCurrentTime(iC7Xom653I); 
 local oTCvmnFsLaEBAbRD8uGydxZ = iC7Xom653I.getDelaySum(false); 
 local VZRJllKb4bbMXHCbSpFIT2Y = ejL6XjV2hQretQxPZD.getVar(); 
 local OLzWzaQYA2EUVNZj = VZRJllKb4bbMXHCbSpFIT2Y.get_vector(0); 
 if(OLzWzaQYA2EUVNZj != 0)
 {
 local rZe_TLpduc3OetLre = sq_GetDistancePos(OLzWzaQYA2EUVNZj,
 ejL6XjV2hQretQxPZD.getDirection(),
 sq_GetAccel(0, VZRJllKb4bbMXHCbSpFIT2Y.get_vector(1), IzUEHsz5nTY1y_hBuREKim, oTCvmnFsLaEBAbRD8uGydxZ, true)); 
 if(ejL6XjV2hQretQxPZD.isMovablePos(rZe_TLpduc3OetLre, ejL6XjV2hQretQxPZD.getYPos())) 
 sq_setCurrentAxisPos(ejL6XjV2hQretQxPZD, 0, rZe_TLpduc3OetLre); 
 else 
 VZRJllKb4bbMXHCbSpFIT2Y.set_vector(0, 0);
 }
 IzUEHsz5nTY1y_hBuREKim -= iC7Xom653I.getDelaySum(VZRJllKb4bbMXHCbSpFIT2Y.get_vector(4), VZRJllKb4bbMXHCbSpFIT2Y.get_vector(5)); 
 oTCvmnFsLaEBAbRD8uGydxZ = iC7Xom653I.getDelaySum(VZRJllKb4bbMXHCbSpFIT2Y.get_vector(6), VZRJllKb4bbMXHCbSpFIT2Y.get_vector(7)); 
 local YMu4ANLtKrtE = VZRJllKb4bbMXHCbSpFIT2Y.get_vector(2) + sq_GetUniformVelocity(0, VZRJllKb4bbMXHCbSpFIT2Y.get_vector(3), IzUEHsz5nTY1y_hBuREKim, oTCvmnFsLaEBAbRD8uGydxZ); 
 sq_setCurrentAxisPos(ejL6XjV2hQretQxPZD, 2, YMu4ANLtKrtE); 
 }
} ;

function onKeyFrameFlag_FighterDashAttack(vFInKSM_e9eeZN, pPTghDb5k9ECXxE3)
{
 if(!vFInKSM_e9eeZN) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vFInKSM_e9eeZN, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 switch(pPTghDb5k9ECXxE3)
 {
 case 3:
 local mFeKimOrnaLLWJS = vFInKSM_e9eeZN.getVar(); 
 mFeKimOrnaLLWJS.set_vector(2, vFInKSM_e9eeZN.getZPos()); 
 mFeKimOrnaLLWJS.set_vector(3, vFInKSM_e9eeZN.getZPos() / -1); 
 mFeKimOrnaLLWJS.set_vector(4, 0); 
 mFeKimOrnaLLWJS.set_vector(5, 1); 
 mFeKimOrnaLLWJS.set_vector(6, 2); 
 mFeKimOrnaLLWJS.set_vector(7, 3); 
 break;
 case 2:
 sq_CreateDrawOnlyObject(vFInKSM_e9eeZN, "character/fighter/effect/animation/poisonsnake/dashbody_effect.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 1:
 if(vFInKSM_e9eeZN.sq_IsMyControlObject())
 {
 sq_SetMyShake(vFInKSM_e9eeZN, 1, 100);
 sq_flashScreen(vFInKSM_e9eeZN, 0, 0, 200, 70, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 }
 }
 return true;
} ;

