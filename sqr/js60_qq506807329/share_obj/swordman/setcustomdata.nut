
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





 
 
function setCustomData_po_qq506807329new_swordman_24370(yUcAg6NoRn3cUn9sGur, MfZ6yGLQF2_1qoLisvE)
{
 if(!yUcAg6NoRn3cUn9sGur) return;
 local EPeWqG6pf79 = MfZ6yGLQF2_1qoLisvE.readDword();
 yUcAg6NoRn3cUn9sGur.getVar("skill").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("skill").push_vector(EPeWqG6pf79);
 switch(EPeWqG6pf79) 
 {
 case 229: 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 0); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 0); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(yUcAg6NoRn3cUn9sGur); 
 local XWgcW8xB11Z9tE38zPRx = (MfZ6yGLQF2_1qoLisvE.readDword()).tofloat() / 100.0; 
 AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx); 
 sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 
 if(MfZ6yGLQF2_1qoLisvE.readBool() == true)
 {
 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword()); 
 }
 break;
 case 231: 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 1); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 1); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local AZ0oT64ywiBlOme = yUcAg6NoRn3cUn9sGur.getCurrentAnimation(); 
 local XWgcW8xB11Z9tE38zPRx = (MfZ6yGLQF2_1qoLisvE.readDword()).tofloat() / 100.0; 
 AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx); 
 sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 break;
 case 230: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 if(QRN462W9pUj == 1)
 {
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 4), MfZ6yGLQF2_1qoLisvE.readDword()); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(0); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(0); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 local XWgcW8xB11Z9tE38zPRx = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("rate").clear_vector(); 
 local Ntlk8t_IOs7UzaUiIGpqaUZ = yUcAg6NoRn3cUn9sGur.getVar("rate"); 
 Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector(100); 
 Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector(XWgcW8xB11Z9tE38zPRx); 
 Ntlk8t_IOs7UzaUiIGpqaUZ.push_vector((XWgcW8xB11Z9tE38zPRx - 100) / 10); 
 yUcAg6NoRn3cUn9sGur.getVar().setBool(0, false); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(QRN462W9pUj == 2)
 {
 sq_ChangeDrawLayer(yUcAg6NoRn3cUn9sGur, ENUM_DRAWLAYER_BOTTOM); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 67); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 44); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 sq_SetMyShake(yUcAg6NoRn3cUn9sGur, 2, 100); 
 }
 break;
 case 232: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 if(QRN462W9pUj > 0)
 {
 sq_ChangeDrawLayer(yUcAg6NoRn3cUn9sGur, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 7); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 5 + QRN462W9pUj); 
 }
 else 
 {
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 6); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 5); 
 }
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 
 local s80Twh1qMM = sq_GetCurrentAnimation(yUcAg6NoRn3cUn9sGur); 
 s80Twh1qMM.setSpeedRate((MfZ6yGLQF2_1qoLisvE.readDword()).tofloat()); 
 break;
 case 233: 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 8); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 10); 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur), MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 case 234: 
 local i3Z003zQrTyBM = yUcAg6NoRn3cUn9sGur.getTopCharacter();
 if(i3Z003zQrTyBM && i3Z003zQrTyBM.getState() == 234)
 {
 i3Z003zQrTyBM.getVar().clear_obj_vector(); 
 i3Z003zQrTyBM.getVar().push_obj_vector(yUcAg6NoRn3cUn9sGur); 
 }
 local rmnfWlzKy8jbFD = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local cKlGYRNQIqig = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local mfMe0s6KxGgnFoGA = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local muIhHGF8aI7_Kep30d = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 9);
 local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 10);
 local zB9PvpsNIpM9JGUl = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 11);
 
 sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, mfMe0s6KxGgnFoGA);
 
 sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, muIhHGF8aI7_Kep30d);
 
 sq_SetCurrentAttackBonusRate(zB9PvpsNIpM9JGUl, muIhHGF8aI7_Kep30d);
 switch(rmnfWlzKy8jbFD)
 {
 case 2: 
 local nMD6gyyDPeINFG = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local aro2OX5D9GyEEr70s = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local YoA6dMOCNF6Y_XxcBRc = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc); 
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc); 
 sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_STUN, nMD6gyyDPeINFG, aro2OX5D9GyEEr70s, YoA6dMOCNF6Y_XxcBRc); 
 break;
 case 5: 
 local GgfeEo9RTnEwsswbA6K = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local lFVpYxHs86uccO = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local sVbx3H4uhqVaYPNDKSwoMl = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local E8xHcbo6UE = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl); 
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl); 
 sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_LIGHTNING, GgfeEo9RTnEwsswbA6K, lFVpYxHs86uccO, E8xHcbo6UE, sVbx3H4uhqVaYPNDKSwoMl); 
 break;
 case 1: 
 local MErEHcubb8Aq9Rqsj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local jjZSK_dm0QP74yIqAdntV = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local qlVVGMawaeLdfeErSrut = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local AGh4cz_ZHFeGRhkJC = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut); 
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut); 
 sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_BLEEDING, MErEHcubb8Aq9Rqsj, jjZSK_dm0QP74yIqAdntV, AGh4cz_ZHFeGRhkJC, qlVVGMawaeLdfeErSrut); 
 break;
 }
 yUcAg6NoRn3cUn9sGur.getVar().setBool(0, MfZ6yGLQF2_1qoLisvE.readBool()); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector();
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(rmnfWlzKy8jbFD); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(cKlGYRNQIqig); 
 break;
 case 235: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 switch(QRN462W9pUj)
 {
 case 1:
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 13); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 27); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 case 2:
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 12); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, sq_getRandom(20, 26)); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local Hp3XLXvP7Q9 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 if(Hp3XLXvP7Q9 == 1) 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword()); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(yUcAg6NoRn3cUn9sGur.getZPos()); 
 break;
 case 3:
 break;
 }
 break;
 case 236: 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 14), MfZ6yGLQF2_1qoLisvE.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 55), MfZ6yGLQF2_1qoLisvE.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 56), MfZ6yGLQF2_1qoLisvE.readDword());
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 237: 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 15); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 29); 
 local Sg8Fp5IcLgfc = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local ECBpNkloOg4D806qP8mr = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur), ECBpNkloOg4D806qP8mr); 
 local AZ0oT64ywiBlOme = yUcAg6NoRn3cUn9sGur.getCurrentAnimation();
 local XWgcW8xB11Z9tE38zPRx = Sg8Fp5IcLgfc.tofloat() / 100.0; 
 AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx); 
 sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 break;
 case 238: 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 16); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 30); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local sCU7EpNjvTi2 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local vM4HE588y147 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local RdKYxv_CFyhxPJogFn_Hbk = MfZ6yGLQF2_1qoLisvE.readDword(); 
 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(sCU7EpNjvTi2); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(vM4HE588y147); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(RdKYxv_CFyhxPJogFn_Hbk); 
 
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 break;
 case 239: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 switch(QRN462W9pUj)
 {
 case 1:
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 {
 
 local CHdGxM4IJVg = sq_flashScreen(yUcAg6NoRn3cUn9sGur, 500, 99990, 0, 110, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 yUcAg6NoRn3cUn9sGur.getVar("flashobj").clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("flashobj").push_obj_vector(CHdGxM4IJVg); 
 }
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 18), MfZ6yGLQF2_1qoLisvE.readDword());
 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3: 
 local cT4VkhYVdHdZKCw9Xb5J = MfZ6yGLQF2_1qoLisvE.readDword(); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 19), MfZ6yGLQF2_1qoLisvE.readDword());
 sq_SetAttackInfoForceHitStunTime(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 19), cT4VkhYVdHdZKCw9Xb5J); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 20), MfZ6yGLQF2_1qoLisvE.readDword());
 sq_SetAttackInfoForceHitStunTime(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 20), cT4VkhYVdHdZKCw9Xb5J); 
 local tok5bCM5RpNiHQjRCx = MfZ6yGLQF2_1qoLisvE.readDword(); 
 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(tok5bCM5RpNiHQjRCx); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 240: 
 local i3Z003zQrTyBM = yUcAg6NoRn3cUn9sGur.getTopCharacter(); 
 if(i3Z003zQrTyBM && yUcAg6NoRn3cUn9sGur.isMyControlObject())
 {
 local CHdGxM4IJVg = i3Z003zQrTyBM.getVar("flashobj").get_obj_vector(0); 
 yUcAg6NoRn3cUn9sGur.getVar("flashobj").clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("flashobj").push_obj_vector(CHdGxM4IJVg); 
 sq_flashScreen(yUcAg6NoRn3cUn9sGur, 0, 100, 50, 100, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_SetMyShake(yUcAg6NoRn3cUn9sGur, 8, 150); 
 }
 local aysTWUy4_4 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local QZM9zs40WedgVrgh91V = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local cbUTcqS_d5IbCkWh = MfZ6yGLQF2_1qoLisvE.readDword(); 
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 36); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 21); 
 local XWgcW8xB11Z9tE38zPRx = aysTWUy4_4.tofloat() / 100.0; 
 local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(yUcAg6NoRn3cUn9sGur); 
 AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx); 
 sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, QZM9zs40WedgVrgh91V); 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 22), cbUTcqS_d5IbCkWh); 
 break;
 case 241: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 if(QRN462W9pUj == 1) 
 {
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 40); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 26); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local EFiGcbc1FMINHJ = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local z_vMiazT8IJzaryISwcHDO = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local GS3c4gnowVjgRoKHM3886 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local rwGboVDp14TtArrJhyW = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_CURSE, EFiGcbc1FMINHJ, z_vMiazT8IJzaryISwcHDO, GS3c4gnowVjgRoKHM3886, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW, rwGboVDp14TtArrJhyW); 
 
 yUcAg6NoRn3cUn9sGur.setTimeEvent(0, MfZ6yGLQF2_1qoLisvE.readDword(), 0, false); 
 sq_SetMyShake(yUcAg6NoRn3cUn9sGur, 2, 3500); 
 }
 else if(QRN462W9pUj == 2) 
 {
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 23), MfZ6yGLQF2_1qoLisvE.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 24), MfZ6yGLQF2_1qoLisvE.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 25), MfZ6yGLQF2_1qoLisvE.readDword());
 local OnXJEgXfbSRQT6IL = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local E5EvZXsAgnRE9YXbO0vi = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local VX1hFil4WTba7L9_ZFYn5tKu = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local z5A2V6qWPEeQ76EXUGC6i = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(OnXJEgXfbSRQT6IL); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(E5EvZXsAgnRE9YXbO0vi); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(VX1hFil4WTba7L9_ZFYn5tKu); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(z5A2V6qWPEeQ76EXUGC6i); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 242: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 switch(QRN462W9pUj)
 {
 case 1:
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 27); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local zPnRnD73nH6l = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local yQ94ZPbnY4LnsG = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local h_EzDiQlVOStf3axSg = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local eyaEmz7QOYU5eNbSnrR = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, zPnRnD73nH6l, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR); 
 local _b7td7c9caQ79PDdMf30 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.setTimeEvent(0, _b7td7c9caQ79PDdMf30, 0, false); 
 local SLGyRmuKpFi7OTv75uj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.setTimeEvent(1, SLGyRmuKpFi7OTv75uj, 1, false); 
 local M5f4mBzwqDqqR1oYaMAmtpwb = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(zPnRnD73nH6l); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(yQ94ZPbnY4LnsG); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(h_EzDiQlVOStf3axSg); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(eyaEmz7QOYU5eNbSnrR); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(M5f4mBzwqDqqR1oYaMAmtpwb); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_obj_vector(); 
 
 local t5UbR7xIsLF7bLAYXJSm = yUcAg6NoRn3cUn9sGur.getXPos();
 local cVVZ2nWsI9Wi2z9RT = yUcAg6NoRn3cUn9sGur.getYPos();
 local avSAglDWSo1OYN7wI9SYQmZ = yUcAg6NoRn3cUn9sGur.getZPos();
 local OOeJxgW2yCm3SYb = 300; 
 local ylFppMxRqLF_Z_sRE = 90; 
 local tUyV6dO_lSh3j1E = 50; 
 local R7FQ2UtmUEEW9 = yUcAg6NoRn3cUn9sGur.getObjectManager(); 
 for(local TVkdQLtwdkEpv = 0; TVkdQLtwdkEpv < R7FQ2UtmUEEW9.getCollisionObjectNumber(); TVkdQLtwdkEpv++)
 {
 local s6kSfEkrK2dhlIuxS6Jeq = R7FQ2UtmUEEW9.getCollisionObject(TVkdQLtwdkEpv); 
 if(s6kSfEkrK2dhlIuxS6Jeq
 && s6kSfEkrK2dhlIuxS6Jeq.isObjectType(OBJECTTYPE_ACTIVE)
 && yUcAg6NoRn3cUn9sGur.isEnemy(s6kSfEkrK2dhlIuxS6Jeq)
 && s6kSfEkrK2dhlIuxS6Jeq.isInDamagableState(yUcAg6NoRn3cUn9sGur)
 && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getXPos() - t5UbR7xIsLF7bLAYXJSm) <= OOeJxgW2yCm3SYb
 && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getYPos() - cVVZ2nWsI9Wi2z9RT) <= ylFppMxRqLF_Z_sRE
 && sq_Abs(s6kSfEkrK2dhlIuxS6Jeq.getZPos() - avSAglDWSo1OYN7wI9SYQmZ) <= tUyV6dO_lSh3j1E)
 {
 local I4lS1fDsMA8xsQwLr = sq_GetCNRDObjectToActiveObject(s6kSfEkrK2dhlIuxS6Jeq); 
 
 if(I4lS1fDsMA8xsQwLr && !I4lS1fDsMA8xsQwLr.isDead())
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(I4lS1fDsMA8xsQwLr, "character/swordman/indaramang/ap_indaramang.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(I4lS1fDsMA8xsQwLr, "character/swordman/indaramang/ap_indaramang.nut");
 
 
 CNSquirrelAppendage.sq_AppendAppendage(I4lS1fDsMA8xsQwLr, yUcAg6NoRn3cUn9sGur, 242, true, "character/swordman/indaramang/ap_indaramang.nut", true);
 hT2CAcuI7GVEBkmiz1MRY7pd.push_obj_vector(I4lS1fDsMA8xsQwLr); 
 }
 }
 }
 yUcAg6NoRn3cUn9sGur.getVar().setBool(0, true); 
 break;
 case 2:
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 41); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 28); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword()); 
 local XWgcW8xB11Z9tE38zPRx = MfZ6yGLQF2_1qoLisvE.readFloat(); 
 local AZ0oT64ywiBlOme = sq_GetCurrentAnimation(yUcAg6NoRn3cUn9sGur); 
 AZ0oT64ywiBlOme.setImageRateFromOriginal(XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 AZ0oT64ywiBlOme.setAutoLayerWorkAnimationAddSizeRate(XWgcW8xB11Z9tE38zPRx); 
 sq_SetAttackBoundingBoxSizeRate(AZ0oT64ywiBlOme, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx, XWgcW8xB11Z9tE38zPRx); 
 break;
 }
 break;
 case 243: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 switch(QRN462W9pUj)
 {
 case 0:
 local lRLGXYfXptfLK5 = yUcAg6NoRn3cUn9sGur.getParent(); 
 yUcAg6NoRn3cUn9sGur.setMapFollowParent(lRLGXYfXptfLK5); 
 yUcAg6NoRn3cUn9sGur.setMapFollowType(1); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 yUcAg6NoRn3cUn9sGur.getVar("moveObj").clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("moveObj").push_obj_vector(lRLGXYfXptfLK5); 
 
 yUcAg6NoRn3cUn9sGur.getVar("moveObj").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("moveObj").push_vector(lRLGXYfXptfLK5.getXPos()); 
 yUcAg6NoRn3cUn9sGur.getVar("moveObj").push_vector(lRLGXYfXptfLK5.getYPos()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 1:
 yUcAg6NoRn3cUn9sGur.getVar("move").clear_vector(); 
 local utKcbpK8jSP3kfjT2zaJsC = yUcAg6NoRn3cUn9sGur.getVar("move"); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(yUcAg6NoRn3cUn9sGur.getXPos()); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(yUcAg6NoRn3cUn9sGur.getYPos()); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(yUcAg6NoRn3cUn9sGur.getZPos()); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 
 local lTYgGg9MSyTBbA0G_x = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local b3wEBbZQahvuxeIvJ = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local yQ94ZPbnY4LnsG = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local h_EzDiQlVOStf3axSg = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local eyaEmz7QOYU5eNbSnrR = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 29); 
 local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 30); 
 sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, lTYgGg9MSyTBbA0G_x);
 sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, lTYgGg9MSyTBbA0G_x);
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
 yUcAg6NoRn3cUn9sGur.setCustomRotate(true, MfZ6yGLQF2_1qoLisvE.readFloat()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local lTYgGg9MSyTBbA0G_x = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local VdYA6RfGv_yEfn7ze5sB85 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 
 local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 29); 
 local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 30); 
 sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local b3wEBbZQahvuxeIvJ = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local yQ94ZPbnY4LnsG = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local h_EzDiQlVOStf3axSg = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local eyaEmz7QOYU5eNbSnrR = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR);
 yUcAg6NoRn3cUn9sGur.getVar("move").clear_vector(); 
 local utKcbpK8jSP3kfjT2zaJsC = yUcAg6NoRn3cUn9sGur.getVar("move"); 
 utKcbpK8jSP3kfjT2zaJsC.push_vector(yUcAg6NoRn3cUn9sGur.getZPos()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3:
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 46); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 31); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 case 4:
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 47); 
 sq_SetCurrentAttackInfoFromCustomIndex(yUcAg6NoRn3cUn9sGur, 32); 
 local OUIPGgxWtgcQn1a = sq_GetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 }
 yUcAg6NoRn3cUn9sGur.getVar("addRate").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("addRate").push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 case 244: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 if(QRN462W9pUj == 1)
 {
 local otvlUaC33uZaqJ7I0O3Ume4 = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 33); 
 local O_LRW5cDVVQdNH15XSPK = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 34); 
 local zB9PvpsNIpM9JGUl = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 35); 
 local wAi7sx6xtRdV = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 36); 
 sq_SetCurrentAttackBonusRate(otvlUaC33uZaqJ7I0O3Ume4, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackBonusRate(O_LRW5cDVVQdNH15XSPK, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackBonusRate(zB9PvpsNIpM9JGUl, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackBonusRate(wAi7sx6xtRdV, MfZ6yGLQF2_1qoLisvE.readDword()); 
 local b3wEBbZQahvuxeIvJ = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local yQ94ZPbnY4LnsG = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local h_EzDiQlVOStf3axSg = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local eyaEmz7QOYU5eNbSnrR = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(otvlUaC33uZaqJ7I0O3Ume4, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR); 
 sq_SetChangeStatusIntoAttackInfo(O_LRW5cDVVQdNH15XSPK, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR); 
 sq_SetChangeStatusIntoAttackInfo(zB9PvpsNIpM9JGUl, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR); 
 sq_SetChangeStatusIntoAttackInfo(wAi7sx6xtRdV, 0, ACTIVESTATUS_LIGHTNING, b3wEBbZQahvuxeIvJ, yQ94ZPbnY4LnsG, h_EzDiQlVOStf3axSg, eyaEmz7QOYU5eNbSnrR); 
 yUcAg6NoRn3cUn9sGur.getVar("addRate").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("addRate").push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(QRN462W9pUj == 2)
 {
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(yUcAg6NoRn3cUn9sGur.getXPos()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(yUcAg6NoRn3cUn9sGur.getYPos()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 246: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 switch(QRN462W9pUj)
 {
 case 1:
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 37), MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 
 local lRLGXYfXptfLK5 = yUcAg6NoRn3cUn9sGur.getParent(); 
 if(lRLGXYfXptfLK5)
 if(CNSquirrelAppendage.sq_IsAppendAppendage(lRLGXYfXptfLK5, "character/swordman/handlingsword/ap_handlingsword_buff.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(lRLGXYfXptfLK5, "character/swordman/handlingsword/ap_handlingsword_buff.nut"); 
 local mfMe0s6KxGgnFoGA = MfZ6yGLQF2_1qoLisvE.readDword(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(mfMe0s6KxGgnFoGA); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 38), mfMe0s6KxGgnFoGA); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3:
 setCurrentAnimationFromCutomIndex(yUcAg6NoRn3cUn9sGur, 60); 
 local mfMe0s6KxGgnFoGA = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 39); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, mfMe0s6KxGgnFoGA); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 40), mfMe0s6KxGgnFoGA); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 41), MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 }
 break;
 case 47: 
 local Ai_AN40nj4 = MfZ6yGLQF2_1qoLisvE.readBool(); 
 local aYVzdFsTrz0D9kiq_eWuN = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local TZGRuH4ubPESkRW9cTXl9n = 42; 
 local QKpIC0sJHDd52YAbvmNC = 61 + aYVzdFsTrz0D9kiq_eWuN; 
 if(Ai_AN40nj4 == true) 
 {
 TZGRuH4ubPESkRW9cTXl9n = 43; 
 QKpIC0sJHDd52YAbvmNC = 64 + aYVzdFsTrz0D9kiq_eWuN; 
 }
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, TZGRuH4ubPESkRW9cTXl9n); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(QKpIC0sJHDd52YAbvmNC); 
 yUcAg6NoRn3cUn9sGur.setTimeEvent(0, 50, 1, false); 
 break;
 case 247: 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 local hT2CAcuI7GVEBkmiz1MRY7pd = yUcAg6NoRn3cUn9sGur.getVar(); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 hT2CAcuI7GVEBkmiz1MRY7pd.push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 45), MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 67: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 switch(QRN462W9pUj)
 {
 case 1:
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponcomboheavywind/ura_ls_wind_05.ani")); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 46); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 break;
 case 2:
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponshortswordsub/short_new_01_wave.ani")); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 47); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 break;
 case 3:
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/weaponshortswordsub/short_new_03_wave.ani")); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 47); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 break;
 }
 break;
 case 248: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 switch(QRN462W9pUj)
 {
 case 1: 
 local o0xK_yt7br = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_backstep_01.ani")); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 48); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 yUcAg6NoRn3cUn9sGur.sq_SetMoveParticle("particle/stateoflimit.ptl", 0.0, 0.0); 
 sq_SetSpeedToMoveParticle(yUcAg6NoRn3cUn9sGur, 0, 700); 
 break;
 case 2: 
 local o0xK_yt7br = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/state_of_limit_crash_05.ani")); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 49); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 break;
 case 3: 
 local o0xK_yt7br = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 50); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(yUcAg6NoRn3cUn9sGur.getXPos()); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(yUcAg6NoRn3cUn9sGur.getYPos()); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 if(yUcAg6NoRn3cUn9sGur.isMyControlObject())
 yUcAg6NoRn3cUn9sGur.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 4: 
 local o0xK_yt7br = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 51); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, o0xK_yt7br); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/illusionslash/state_of_limit_illusion_wind_meele_0" + sq_getRandom(0, 3).tostring() + ".ani")); 
 yUcAg6NoRn3cUn9sGur.sq_SetMoveParticle("particle/illusionslashmelee.ptl", 0.0, 0.0);
 break;
 case 5: 
 sq_ChangeDrawLayer(yUcAg6NoRn3cUn9sGur, ENUM_DRAWLAYER_BOTTOM); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 52); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 local hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/1_shockwave_dodge.ani");
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(hyftiJu8AwR); 
 sq_CreateDrawOnlyObject(yUcAg6NoRn3cUn9sGur, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/2_ground_dodge .ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_CreateDrawOnlyObject(yUcAg6NoRn3cUn9sGur, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/3_sword_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_CreateDrawOnlyObject(yUcAg6NoRn3cUn9sGur, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/4_attackt_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_CreateDrawOnlyObject(yUcAg6NoRn3cUn9sGur, "passiveobject/script_sqr_nut_qq506807329/swordman/animation/illusionslashsub/5_light_dodge.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/swordman/particle/illusionslashsub.ptl", yUcAg6NoRn3cUn9sGur, 0, 0, 10, true, 0, 0, 1);
 break;
 case 6: 
 local Hp3XLXvP7Q9 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local hL1pB4UFVXJbF = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar().clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(hL1pB4UFVXJbF); 
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(Hp3XLXvP7Q9); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 53); 
 switch(Hp3XLXvP7Q9)
 {
 case 0: 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_HOLD, MfZ6yGLQF2_1qoLisvE.readDword(), 85, MfZ6yGLQF2_1qoLisvE.readDword());
 break;
 case 1: 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_BLEEDING, MfZ6yGLQF2_1qoLisvE.readDword(), 85, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword());
 break;
 case 2: 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_STUN, MfZ6yGLQF2_1qoLisvE.readDword(), 85, MfZ6yGLQF2_1qoLisvE.readDword());
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 case 3: 
 break;
 case 5: 
 sq_SetChangeStatusIntoAttackInfo(OUIPGgxWtgcQn1a, 0, ACTIVESTATUS_LIGHTNING, MfZ6yGLQF2_1qoLisvE.readDword(), 85, MfZ6yGLQF2_1qoLisvE.readDword(), MfZ6yGLQF2_1qoLisvE.readDword());
 yUcAg6NoRn3cUn9sGur.getVar().push_vector(MfZ6yGLQF2_1qoLisvE.readDword()); 
 break;
 }
 local EC5wltFlOkQ26rRgfmqvxRHy = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local n040c2F_0bDOSlESdgYd_OP = MfZ6yGLQF2_1qoLisvE.readDword(); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, EC5wltFlOkQ26rRgfmqvxRHy); 
 sq_SetAttackInfoForceHitStunTime(OUIPGgxWtgcQn1a, n040c2F_0bDOSlESdgYd_OP); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 local hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/bigswordboom" + hL1pB4UFVXJbF.tostring() + "_sword_inner.ani");
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(hyftiJu8AwR); 
 yUcAg6NoRn3cUn9sGur.getVar().setBool(0, false); 
 break;
 case 7: 
 local Hp3XLXvP7Q9 = MfZ6yGLQF2_1qoLisvE.readDword(); 
 local OUIPGgxWtgcQn1a = sq_GetCustomAttackInfo(yUcAg6NoRn3cUn9sGur, 54); 
 sq_SetCurrentAttackBonusRate(OUIPGgxWtgcQn1a, MfZ6yGLQF2_1qoLisvE.readDword()); 
 sq_SetCurrentAttackInfo(yUcAg6NoRn3cUn9sGur, OUIPGgxWtgcQn1a); 
 local hyftiJu8AwR = null; 
 if(Hp3XLXvP7Q9 == 2) 
 hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/chargecrash/damage-back.ani");
 else if(Hp3XLXvP7Q9 == 5) 
 hyftiJu8AwR = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/stateoflimit/meteorsword/lightswordshockwave.ani");
 yUcAg6NoRn3cUn9sGur.setCurrentAnimation(hyftiJu8AwR); 
 break;
 }
 break;
 case 85: 
 local QRN462W9pUj = MfZ6yGLQF2_1qoLisvE.readDword(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").clear_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar("subType").push_vector(QRN462W9pUj); 
 switch(QRN462W9pUj)
 {
 case 1:
 local lRLGXYfXptfLK5 = yUcAg6NoRn3cUn9sGur.getParent(); 
 if(lRLGXYfXptfLK5)
 {
 yUcAg6NoRn3cUn9sGur.setCurrentPos(lRLGXYfXptfLK5.getXPos(), lRLGXYfXptfLK5.getYPos(), lRLGXYfXptfLK5.getZPos()); 
 sq_moveWithParent(lRLGXYfXptfLK5, yUcAg6NoRn3cUn9sGur); 
 }
 yUcAg6NoRn3cUn9sGur.getVar("aniobj").clear_obj_vector(); 
 yUcAg6NoRn3cUn9sGur.getVar().setBool(0, false); 
 break;
 }
 break;
 }
} ;

 
