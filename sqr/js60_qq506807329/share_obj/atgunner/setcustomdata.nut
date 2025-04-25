
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





 
 
function setCustomData_po_qq506807329new_atgunner_24376(hpgIy2nC_gifu0paZqLrdyS, nVZIEBZQMm)
{
 if(!hpgIy2nC_gifu0paZqLrdyS) return;
 
 
 hpgIy2nC_gifu0paZqLrdyS.getVar("isProc").setBool(0, false);
 local SGGE7j0NRIhvU1rraHQ = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("skill").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("skill").push_vector(SGGE7j0NRIhvU1rraHQ);
 switch(SGGE7j0NRIhvU1rraHQ) 
 {
 case 249: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 32), nVZIEBZQMm.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 33), nVZIEBZQMm.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 34), nVZIEBZQMm.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 35), nVZIEBZQMm.readDword());
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 local ToNmIC6_0JajI7S5 = nVZIEBZQMm.readDword(); 
 local oSh29ZNwCpNV0EAk6cuDt = (ToNmIC6_0JajI7S5 * 0.3).tointeger(); 
 local z1s3WLyOEGUWCKSfjjM = sq_GetDistancePos(hpgIy2nC_gifu0paZqLrdyS.getXPos(), hpgIy2nC_gifu0paZqLrdyS.getDirection(), ToNmIC6_0JajI7S5); 
 local HE93_rW_QExpmcf = hpgIy2nC_gifu0paZqLrdyS.getYPos(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(ToNmIC6_0JajI7S5); 
 FFdo8a4jeUgAmSg4Eq.push_vector(oSh29ZNwCpNV0EAk6cuDt); 
 FFdo8a4jeUgAmSg4Eq.push_vector(z1s3WLyOEGUWCKSfjjM); 
 FFdo8a4jeUgAmSg4Eq.push_vector(HE93_rW_QExpmcf); 
 local S5o6BrI9ujOXUA5 = (ToNmIC6_0JajI7S5 / 320.0 * 100.0).tointeger(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(S5o6BrI9ujOXUA5); 
 FFdo8a4jeUgAmSg4Eq.push_vector(75); 
 FFdo8a4jeUgAmSg4Eq.push_vector(100); 
 FFdo8a4jeUgAmSg4Eq.push_vector(3); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 36), nVZIEBZQMm.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 37), nVZIEBZQMm.readDword());
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 246: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 30), nVZIEBZQMm.readDword());
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 31), nVZIEBZQMm.readDword());
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 
 hpgIy2nC_gifu0paZqLrdyS.getVar("isHome").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("isHome").push_vector(1); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 local jr3Pxr9Xqty2D = nVZIEBZQMm.readDword(); 
 
 
 local VTiiSQNv3yFFt845zWgJl = (FFdo8a4jeUgAmSg4Eq.get_vector(0) * (jr3Pxr9Xqty2D / 500.0)).tointeger();
 if(VTiiSQNv3yFFt845zWgJl < 120)VTiiSQNv3yFFt845zWgJl = 120;
 FFdo8a4jeUgAmSg4Eq.set_vector(0, VTiiSQNv3yFFt845zWgJl); 
 FFdo8a4jeUgAmSg4Eq.push_vector(jr3Pxr9Xqty2D); 
 local LOJYSQsTsZvOFe1b5 = jr3Pxr9Xqty2D / 2; 
 local gF9GBOM0J4SYYV = (jr3Pxr9Xqty2D * 0.07).tointeger(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(LOJYSQsTsZvOFe1b5); 
 FFdo8a4jeUgAmSg4Eq.push_vector(gF9GBOM0J4SYYV); 
 
 hpgIy2nC_gifu0paZqLrdyS.getVar("isHome").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("isHome").push_vector(1); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 247: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1: 
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 hpgIy2nC_gifu0paZqLrdyS.setMapFollowParent(eBc5nUd2S8UAAuZUtmhfhl4); 
 hpgIy2nC_gifu0paZqLrdyS.setMapFollowType(1); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 local dUI8MzELvET3R8OIy4 = nVZIEBZQMm.readDword(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(dUI8MzELvET3R8OIy4); 
 FFdo8a4jeUgAmSg4Eq.push_vector(dUI8MzELvET3R8OIy4); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 
 hpgIy2nC_gifu0paZqLrdyS.getVar("home").setBool(0, true);
 hpgIy2nC_gifu0paZqLrdyS.getVar("home").clear_vector(); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 {
 local d4bYqFsTESmfuOeUfApUx = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(d4bYqFsTESmfuOeUfApUx); 
 sq_IntVectorPush(d4bYqFsTESmfuOeUfApUx, 1); 
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(nVZIEBZQMm.readDword(), d4bYqFsTESmfuOeUfApUx, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 2:
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 29); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 local CIjrC0x7gsh2 = hpgIy2nC_gifu0paZqLrdyS.getXPos();
 FFdo8a4jeUgAmSg4Eq.push_vector(CIjrC0x7gsh2); 
 FFdo8a4jeUgAmSg4Eq.push_vector(hpgIy2nC_gifu0paZqLrdyS.getZPos()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(sq_GetDistancePos(CIjrC0x7gsh2, hpgIy2nC_gifu0paZqLrdyS.getDirection(), 340)); 
 FFdo8a4jeUgAmSg4Eq.push_vector(0); 
 hpgIy2nC_gifu0paZqLrdyS.setCustomRotate(true, nVZIEBZQMm.readFloat()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 248: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 26); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(hpgIy2nC_gifu0paZqLrdyS.getXPos()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("aniobj").clear_obj_vector(); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 245: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 25); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(hpgIy2nC_gifu0paZqLrdyS.getXPos()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(hpgIy2nC_gifu0paZqLrdyS.getZPos()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 FFdo8a4jeUgAmSg4Eq.push_vector(nVZIEBZQMm.readDword()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 232: 
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 if(eBc5nUd2S8UAAuZUtmhfhl4)sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/plasmaboost/plasmaboostlaserloop_00.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 0); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.setTimeEvent(0, nVZIEBZQMm.readDword(), -1, false); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.sq_PlaySound("P_ICECANNON_SHOT"); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_obj_vector(); 
 break;
 case 233: 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 1); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 2), nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 234: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/PT-15_wind_eff_1_Powered.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 5); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 case 2:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/PT-15_wind_eff_1.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 4); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 case 3:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_explosion_glow.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 3); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 }
 break;
 case 235: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1: 
 sq_ChangeDrawLayer(hpgIy2nC_gifu0paZqLrdyS, ENUM_DRAWLAYER_BOTTOM); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/startbottom_01.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 sq_SetCurrentAttackInfoFromCustomIndex(hpgIy2nC_gifu0paZqLrdyS, 16); 
 break;
 case 2: 
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/workoperationattack3_01.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 13); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 case 3: 
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/workoperationattack2_01.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 12); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 case 4: 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/02_bullet_normal1.ani");
 DoaLArWxQXk9hbgon.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/03_bullet_dodge.ani"), true); 
 DoaLArWxQXk9hbgon.addLayerAnimation(-1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/01_bullet_normal1.ani"), true); 
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 15); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle("particle/atoperationrazeattack5.ptl", 0.0, 0.0); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atgunner/particle/atoperationrazeattack5_smoke.ptl", hpgIy2nC_gifu0paZqLrdyS, 0, 0, 0, true, 30, 0, 999); 
 break;
 case 5: 
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local Js2HuAjbPZtBcrD = hpgIy2nC_gifu0paZqLrdyS.getObjectManager(); 
 local ncLRAoBYhv7ZP2Mu = Js2HuAjbPZtBcrD.getCollisionObjectNumber(); 
 for(local rqrrHfCF3O = 0; rqrrHfCF3O < ncLRAoBYhv7ZP2Mu; rqrrHfCF3O++)
 {
 local Z8XZPFr_xaEvhgh = Js2HuAjbPZtBcrD.getCollisionObject(rqrrHfCF3O); 
 if(Z8XZPFr_xaEvhgh) sq_AddHitObject(hpgIy2nC_gifu0paZqLrdyS, Z8XZPFr_xaEvhgh); 
 }
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/attack6box.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 10); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 break;
 case 6: 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/missile01in_02.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(hpgIy2nC_gifu0paZqLrdyS.getXPos()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(hpgIy2nC_gifu0paZqLrdyS.getZPos()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().setBool(0, false); 
 sq_SetCustomRotate(hpgIy2nC_gifu0paZqLrdyS, sq_ToRadian(-45.0)); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("aniobj").clear_obj_vector(); 
 break;
 case 7: 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/missile01out_02.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 sq_SetCustomRotate(hpgIy2nC_gifu0paZqLrdyS, sq_ToRadian(-180.0)); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 8); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(hpgIy2nC_gifu0paZqLrdyS.getXPos()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(hpgIy2nC_gifu0paZqLrdyS.getZPos()); 
 break;
 case 8:
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/attack1box.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 11); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.setTimeEvent(1, nVZIEBZQMm.readDword(), -1, false); 
 break;
 case 9:
 local eBc5nUd2S8UAAuZUtmhfhl4 = hpgIy2nC_gifu0paZqLrdyS.getTopCharacter(); 
 sq_moveWithParent(eBc5nUd2S8UAAuZUtmhfhl4, hpgIy2nC_gifu0paZqLrdyS); 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/attack4box.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 14); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.setTimeEvent(1, nVZIEBZQMm.readDword(), -1, false); 
 break;
 }
 break;
 case 239: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atbloodnchain/endhit_30.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 17); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 local VTiiSQNv3yFFt845zWgJl = (nVZIEBZQMm.readDword()).tofloat() / 100.0; 
 DoaLArWxQXk9hbgon.setImageRateFromOriginal(VTiiSQNv3yFFt845zWgJl, VTiiSQNv3yFFt845zWgJl); 
 DoaLArWxQXk9hbgon.setAutoLayerWorkAnimationAddSizeRate(VTiiSQNv3yFFt845zWgJl); 
 sq_SetAttackBoundingBoxSizeRate(DoaLArWxQXk9hbgon, VTiiSQNv3yFFt845zWgJl, VTiiSQNv3yFFt845zWgJl, VTiiSQNv3yFFt845zWgJl); 
 break;
 }
 break;
 case 240: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 18), nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 19), nVZIEBZQMm.readDword()); 
 
 
 
 
 local ZwEDE1khGhrNrCNxxq = ""; 
 switch(nVZIEBZQMm.readDword())
 {
 case 1: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadecenter.ptl"; break;
 case 2: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadejump.ptl"; break;
 
 case 3: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadedown.ptl"; break;
 case 4: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadeup.ptl"; break;
 }
 if(ZwEDE1khGhrNrCNxxq != "") 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle(ZwEDE1khGhrNrCNxxq, 0.0, 0.0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 242: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomm1_c03.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 20); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 local wuBLB5hiTnSwT = nVZIEBZQMm.readDword(); 
 local JUk8hkOtuu34MlgP = DoaLArWxQXk9hbgon.getDelaySum(0, 20); 
 hpgIy2nC_gifu0paZqLrdyS.setTimeEvent(0, JUk8hkOtuu34MlgP / (wuBLB5hiTnSwT - 1), wuBLB5hiTnSwT - 1, false); 
 
 sq_CreateDrawOnlyObject(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomm2_f03.ani", ENUM_DRAWLAYER_BOTTOM, true);
 local nQMDGN_owDP4h = hpgIy2nC_gifu0paZqLrdyS.getYPos(); 
 
 local rmGPbYOZqxF_IGL7B = sq_CreateDrawOnlyObject(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomb1_a01.ani", ENUM_DRAWLAYER_NORMAL, true);
 local CopWUT0OlKtU_qKSMcwPK4n = sq_CreateDrawOnlyObject(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomb2_f01.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(rmGPbYOZqxF_IGL7B, 1, nQMDGN_owDP4h - 44); 
 sq_setCurrentAxisPos(CopWUT0OlKtU_qKSMcwPK4n, 1, nQMDGN_owDP4h - 44); 
 
 local cx_Hiej3GHq7exZ9PG = sq_CreateDrawOnlyObject(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomf1_a02.ani", ENUM_DRAWLAYER_NORMAL, true);
 local ZTccE9BHfBy2H = sq_CreateDrawOnlyObject(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atopenfire/atopenfireboomf2_f02.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_setCurrentAxisPos(cx_Hiej3GHq7exZ9PG, 1, nQMDGN_owDP4h + 58); 
 sq_setCurrentAxisPos(ZTccE9BHfBy2H, 1, nQMDGN_owDP4h + 58); 
 sq_SetShake(hpgIy2nC_gifu0paZqLrdyS, 8, DoaLArWxQXk9hbgon.getDelaySum(false)); 
 break;
 }
 break;
 case 243: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 22), nVZIEBZQMm.readDword()); 
 
 
 
 
 local V_fYaf37mFafzpIcbgNjxTp = nVZIEBZQMm.readDword(); 
 local ZwEDE1khGhrNrCNxxq = ""; 
 switch(V_fYaf37mFafzpIcbgNjxTp)
 {
 case 1: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadecenter.ptl"; break;
 case 2: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadejump.ptl"; break;
 
 
 case 3: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadedrop.ptl"; break;
 case 4: ZwEDE1khGhrNrCNxxq = "../../../character/gunner/particle/grenadeup.ptl"; break;
 }
 if(ZwEDE1khGhrNrCNxxq != "") 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle(ZwEDE1khGhrNrCNxxq, 0.0, 0.0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(V_fYaf37mFafzpIcbgNjxTp); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 241: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/bulletpistolcarbine.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 23); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 switch(nVZIEBZQMm.readDword()) 
 {
 case 1:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle("particle/pistolcarbineblackrosebulletrifle.ptl", 0.0, 0.0); 
 sq_SetSpeedToMoveParticle(hpgIy2nC_gifu0paZqLrdyS, 0, 1400); 
 break;
 case 2:
 sq_SetCustomRotate(hpgIy2nC_gifu0paZqLrdyS, sq_ToRadian(-45.0)); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle("particle/pistolcarbineblackrosebulletrifle.ptl", 0.0, -45.0); 
 break;
 }
 BRNSmjR8Rw1LYlI0.setElement(nVZIEBZQMm.readDword()); 
 break;
 }
 break;
 case 244: 
 local enftpqLp2vIhUdWb5 = nVZIEBZQMm.readDword(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("subType").push_vector(enftpqLp2vIhUdWb5);
 switch(enftpqLp2vIhUdWb5)
 {
 case 1:
 
 
 local V_fYaf37mFafzpIcbgNjxTp = nVZIEBZQMm.readDword(); 
 local ZwEDE1khGhrNrCNxxq = ""; 
 switch(V_fYaf37mFafzpIcbgNjxTp)
 {
 case 1: ZwEDE1khGhrNrCNxxq = "particle/ddayflare.ptl"; break;
 case 2: ZwEDE1khGhrNrCNxxq = "particle/ddayflarejump.ptl"; break;
 }
 if(ZwEDE1khGhrNrCNxxq != "") 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle(ZwEDE1khGhrNrCNxxq, 0.0, 0.0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atdday/ddayattackbox.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 local BRNSmjR8Rw1LYlI0 = sq_GetCustomAttackInfo(hpgIy2nC_gifu0paZqLrdyS, 24); 
 sq_SetCurrentAttackBonusRate(BRNSmjR8Rw1LYlI0, nVZIEBZQMm.readDword()); 
 sq_SetCurrentAttackInfo(hpgIy2nC_gifu0paZqLrdyS, BRNSmjR8Rw1LYlI0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 break;
 case 3: 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/DangerClose/DangerShell.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 sq_SetCustomRotate(hpgIy2nC_gifu0paZqLrdyS, sq_ToRadian(30.0)); 
 local CIjrC0x7gsh2 = hpgIy2nC_gifu0paZqLrdyS.getXPos(); 
 local uphUSdK_WSbuRlCjEjvuWDk = sq_GetDistancePos(CIjrC0x7gsh2, hpgIy2nC_gifu0paZqLrdyS.getDirection(), -300); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 FFdo8a4jeUgAmSg4Eq.push_vector(uphUSdK_WSbuRlCjEjvuWDk);
 FFdo8a4jeUgAmSg4Eq.push_vector(600);
 FFdo8a4jeUgAmSg4Eq.push_vector(CIjrC0x7gsh2);
 FFdo8a4jeUgAmSg4Eq.push_vector(0);
 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_timer_vector();
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_timer_vector();
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_timer_vector();
 
 local t8S2g7Lw7odK = hpgIy2nC_gifu0paZqLrdyS.getVar().get_timer_vector(0);
 t8S2g7Lw7odK.setParameter(90, -1); 
 t8S2g7Lw7odK.resetInstant(0); 
 
 local mHXEKZTDkEUGT1lKPhiG = hpgIy2nC_gifu0paZqLrdyS.getVar().get_timer_vector(1);
 mHXEKZTDkEUGT1lKPhiG.setParameter(20, -1); 
 mHXEKZTDkEUGT1lKPhiG.resetInstant(0); 
 hpgIy2nC_gifu0paZqLrdyS.getVar("aniobj").clear_obj_vector(); 
 break;
 case 4: 
 if(nVZIEBZQMm.readDword() == 1) 
 hpgIy2nC_gifu0paZqLrdyS.getVar("Play").setBool(0, true);
 sq_AddDrawOnlyAniFromParent(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/DDayPortal_Eff_A.ani", -35, 1, 0); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 5: 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(nVZIEBZQMm.readDword()); 
 sq_AddDrawOnlyAniFromParent(hpgIy2nC_gifu0paZqLrdyS, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bot/DDayPortal_Eff_A.ani", -50, 1, 0); 
 if(hpgIy2nC_gifu0paZqLrdyS.isMyControlObject())
 hpgIy2nC_gifu0paZqLrdyS.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 6: 
 local DoaLArWxQXk9hbgon = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/Bullet/HandGrenadeC_Normal.ani");
 hpgIy2nC_gifu0paZqLrdyS.setCurrentAnimation(DoaLArWxQXk9hbgon); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetMoveParticle("particle/ddaygrenade.ptl", 0.0, 0.0); 
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
