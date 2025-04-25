
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atgunner_killpoint(QzdzqMM6YDQ3H6)
{
 if(!QzdzqMM6YDQ3H6) return false; 
 local TAXYMJpdhybSOSWcUFqEFDSX = -1; 
 local z7TKohD5HA = QzdzqMM6YDQ3H6.getDirection(); 
 local oywxe7BtTr = sq_GetXPos(QzdzqMM6YDQ3H6); 
 local l4iXuTxwG_MRW = []; 
 local Pc7JSYX0mskEUjUHviH6 = QzdzqMM6YDQ3H6.getObjectManager(); 
 local TQh98WRB2wRmDbEJhXmds = Pc7JSYX0mskEUjUHviH6.getCollisionObjectNumber(); 
 for(local BzTN4v_zOGcB5VPUE = 0; BzTN4v_zOGcB5VPUE < TQh98WRB2wRmDbEJhXmds; BzTN4v_zOGcB5VPUE++)
 {
 local g3b9G2CZ3N = Pc7JSYX0mskEUjUHviH6.getCollisionObject(BzTN4v_zOGcB5VPUE); 
 
 if(!QzdzqMM6YDQ3H6.isEnemy(g3b9G2CZ3N) || !g3b9G2CZ3N.isObjectType(OBJECTTYPE_ACTIVE)) continue;
 local xuAj4RVcqb7 = CNSquirrelAppendage.sq_GetAppendage(g3b9G2CZ3N, "character/atgunner/killpoint/ap_killpoint.nut");
 if(xuAj4RVcqb7 && isSameObject(QzdzqMM6YDQ3H6, xuAj4RVcqb7.getSource()) && xuAj4RVcqb7.isValid())
 {
 local RzH4HlI7Pic6oNFYE3el0dpb = (oywxe7BtTr > sq_GetXPos(g3b9G2CZ3N)) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT; 
 if(TAXYMJpdhybSOSWcUFqEFDSX == -1) 
 TAXYMJpdhybSOSWcUFqEFDSX = RzH4HlI7Pic6oNFYE3el0dpb; 
 
 if(TAXYMJpdhybSOSWcUFqEFDSX != -1 && TAXYMJpdhybSOSWcUFqEFDSX == RzH4HlI7Pic6oNFYE3el0dpb)
 l4iXuTxwG_MRW.push(1); 
 else 
 l4iXuTxwG_MRW.push(2); 
 l4iXuTxwG_MRW.push(sq_GetGroup(g3b9G2CZ3N)); 
 l4iXuTxwG_MRW.push(sq_GetUniqueId(g3b9G2CZ3N)); 
 }
 }
 if(l4iXuTxwG_MRW.len() > 0 && TAXYMJpdhybSOSWcUFqEFDSX != -1) 
 {
 QzdzqMM6YDQ3H6.sq_IntVectClear();
 QzdzqMM6YDQ3H6.sq_IntVectPush(1);
 QzdzqMM6YDQ3H6.sq_IntVectPush(sq_getRandom(0, 1)); 
 QzdzqMM6YDQ3H6.sq_IntVectPush(TAXYMJpdhybSOSWcUFqEFDSX); 
 QzdzqMM6YDQ3H6.sq_IntVectPush(l4iXuTxwG_MRW.len()); 
 foreach(val in l4iXuTxwG_MRW)
 QzdzqMM6YDQ3H6.sq_IntVectPush(val); 
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 local E0oFwkb85MIMM5kfLg7SR = QzdzqMM6YDQ3H6.sq_IsUseSkill(237); 
 if(E0oFwkb85MIMM5kfLg7SR) 
 {
 QzdzqMM6YDQ3H6.sq_IntVectClear();
 QzdzqMM6YDQ3H6.sq_IntVectPush(0); 
 QzdzqMM6YDQ3H6.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false;
} ;

 
function checkCommandEnable_atgunner_killpoint(Y8MzuLvB5EFfBGpWB)
{
 if(!Y8MzuLvB5EFfBGpWB) return false; 
 local P5knwlwwNiP2Y9m_NlX3v = Y8MzuLvB5EFfBGpWB.sq_GetState(); 
 if(P5knwlwwNiP2Y9m_NlX3v == STATE_STAND) 
 return true; 
 if(P5knwlwwNiP2Y9m_NlX3v == STATE_ATTACK) 
 {
 return Y8MzuLvB5EFfBGpWB.sq_IsCommandEnable(237); 
 }
 return true; 
} ;

 
function onSetState_atgunner_killpoint(hpgIy2nC_gifu0paZqLrdyS, nVZIEBZQMm, SGGE7j0NRIhvU1rraHQ, enftpqLp2vIhUdWb5)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!hpgIy2nC_gifu0paZqLrdyS) return; 
 hpgIy2nC_gifu0paZqLrdyS.sq_StopMove(); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().clear_vector(); 
 local FFdo8a4jeUgAmSg4Eq = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 0); 
 hpgIy2nC_gifu0paZqLrdyS.setSkillSubState(FFdo8a4jeUgAmSg4Eq); 
 switch(FFdo8a4jeUgAmSg4Eq)
 {
 case 0:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(121);
 local ToNmIC6_0JajI7S5 = sq_GetSkillLevel(hpgIy2nC_gifu0paZqLrdyS, 237); 
 hpgIy2nC_gifu0paZqLrdyS.getVar().push_vector(hpgIy2nC_gifu0paZqLrdyS.sq_GetLevelData(237, 0, ToNmIC6_0JajI7S5)); 
 break;
 case 1:
 
 
 
 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAnimation(122);
 hpgIy2nC_gifu0paZqLrdyS.setDirection(hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 2)); 
 local oSh29ZNwCpNV0EAk6cuDt = hpgIy2nC_gifu0paZqLrdyS.getVar(); 
 local z1s3WLyOEGUWCKSfjjM = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 3); 
 for(local HE93_rW_QExpmcf = 0; HE93_rW_QExpmcf < z1s3WLyOEGUWCKSfjjM; HE93_rW_QExpmcf += 3)
 {
 local S5o6BrI9ujOXUA5 = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 4 + HE93_rW_QExpmcf); 
 local HKZDZi4fiy8_ad1jlgUa8L = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 4 + HE93_rW_QExpmcf + 1); 
 local TC_GmvIaJbRbOEEx = hpgIy2nC_gifu0paZqLrdyS.sq_GetVectorData(SGGE7j0NRIhvU1rraHQ, 4 + HE93_rW_QExpmcf + 2); 
 local wCJO4OJXhoki4DPZ = sq_GetObject(hpgIy2nC_gifu0paZqLrdyS, HKZDZi4fiy8_ad1jlgUa8L, TC_GmvIaJbRbOEEx); 
 if(wCJO4OJXhoki4DPZ)
 {
 local kLXxcLQVozIJpHKZ = CNSquirrelAppendage.sq_GetAppendage(wCJO4OJXhoki4DPZ, "character/atgunner/killpoint/ap_killpoint.nut");
 if(kLXxcLQVozIJpHKZ && kLXxcLQVozIJpHKZ.isValid())
 {
 switch(S5o6BrI9ujOXUA5)
 {
 case 1: 
 if(kLXxcLQVozIJpHKZ.getVar().size_vector() > 0)
 {
 local jr3Pxr9Xqty2D = kLXxcLQVozIJpHKZ.getVar().get_vector(4); 
 if(jr3Pxr9Xqty2D > 0)
 kLXxcLQVozIJpHKZ.getVar().set_vector(4, 0); 
 }
 oSh29ZNwCpNV0EAk6cuDt.push_vector(HKZDZi4fiy8_ad1jlgUa8L); 
 oSh29ZNwCpNV0EAk6cuDt.push_vector(TC_GmvIaJbRbOEEx); 
 break;
 case 2: 
 kLXxcLQVozIJpHKZ.setValid(false);
 break;
 }
 }
 }
 }
 break;
 }
 local VTiiSQNv3yFFt845zWgJl = hpgIy2nC_gifu0paZqLrdyS.sq_GetDelaySum(); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local LOJYSQsTsZvOFe1b5 = hpgIy2nC_gifu0paZqLrdyS.sq_GetDelaySum(); 
 local gF9GBOM0J4SYYV = VTiiSQNv3yFFt845zWgJl.tofloat() / LOJYSQsTsZvOFe1b5.tofloat() * 100.0; 
 switch(FFdo8a4jeUgAmSg4Eq)
 {
 case 1:
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAttackInfo(31);
 local cGQl6JfqjCXubd = hpgIy2nC_gifu0paZqLrdyS.sq_GetBonusRateWithPassive(237, 237, 2, 1.0); 
 hpgIy2nC_gifu0paZqLrdyS.sq_SetCurrentAttackBonusRate(cGQl6JfqjCXubd); 
 CreateAniRate(hpgIy2nC_gifu0paZqLrdyS, "character/gunner/effect/animation/atkillpoint/finish/killpointfinishd_bullet_c.ani", ENUM_DRAWLAYER_NORMAL, hpgIy2nC_gifu0paZqLrdyS.getXPos(), hpgIy2nC_gifu0paZqLrdyS.getYPos(), hpgIy2nC_gifu0paZqLrdyS.getZPos(), false, gF9GBOM0J4SYYV); 
 break;
 }
} ;

function onKeyFrameFlag_atgunner_killpoint(mYRIjHYWK4U_v, wgaKLlmPk5syoHnH)
{
 if(!mYRIjHYWK4U_v) return false;
 local Wvts42jGPTzMp = mYRIjHYWK4U_v.getSkillSubState(); 
 switch(Wvts42jGPTzMp)
 {
 case 0:
 if(wgaKLlmPk5syoHnH == 1)
 {
 local QxArj9fl0IDtbs = mYRIjHYWK4U_v.getVar().get_vector(0); 
 local WJ31Lqzo3NsX = sq_GetSkillLevel(mYRIjHYWK4U_v, 237); 
 local iG5S6GKSnW = mYRIjHYWK4U_v.sq_GetLevelData(237, 1, WJ31Lqzo3NsX); 
 local AJ3vbQKv4Re = mYRIjHYWK4U_v.sq_GetLevelData(237, 4, WJ31Lqzo3NsX) / -1; 
 local vNl71eUu4yspeW07PxjMyC = mYRIjHYWK4U_v.sq_GetLevelData(237, 5, WJ31Lqzo3NsX); 
 local e6BSx7HJjB_UGYU = mYRIjHYWK4U_v.sq_GetLevelData(237, 6, WJ31Lqzo3NsX); 
 local RZs2kcSaBmAFWerQcRh05k = mYRIjHYWK4U_v.sq_GetLevelData(237, 7, WJ31Lqzo3NsX); 
 local iujCdeVrl2UK = mYRIjHYWK4U_v.sq_GetLevelData(237, 8, WJ31Lqzo3NsX); 
 local CZXndEHCf2t = mYRIjHYWK4U_v.getDirection(); 
 local DjqqyUA7UeF1m = mYRIjHYWK4U_v.getXPos(); 
 local u0diSVs7UEPLYzR = mYRIjHYWK4U_v.getYPos(); 
 local GtwORDD2rfBSjI = mYRIjHYWK4U_v.getZPos(); 
 local XNNxGm6ipLW = 450; 
 local Elf0uxhkmJLDdyp4g_WON = 100; 
 local LXO_HPYBLJ11rWJdU = 140; 
 local wub36w8mu1Xai = mYRIjHYWK4U_v.getObjectManager(); 
 local H1ExpuYIDRN1Sa1Py1paIOM = wub36w8mu1Xai.getCollisionObjectNumber(); 
 for(local JvLulR3bm7yeMd3jWscC5 = 0; JvLulR3bm7yeMd3jWscC5 < H1ExpuYIDRN1Sa1Py1paIOM; JvLulR3bm7yeMd3jWscC5++)
 {
 local bGnbFL1Br41 = wub36w8mu1Xai.getCollisionObject(JvLulR3bm7yeMd3jWscC5); 
 
 if(!mYRIjHYWK4U_v.isEnemy(bGnbFL1Br41) || !bGnbFL1Br41.isObjectType(OBJECTTYPE_ACTIVE) || !bGnbFL1Br41.isInDamagableState(mYRIjHYWK4U_v)
 || sq_GetCNRDObjectToActiveObject(bGnbFL1Br41).isDead()) continue;
 local PFhht8QkzR4HAXMXAse5OP = sq_GetXPos(bGnbFL1Br41); 
 
 if(CZXndEHCf2t == ENUM_DIRECTION_LEFT && PFhht8QkzR4HAXMXAse5OP > DjqqyUA7UeF1m
 || CZXndEHCf2t == ENUM_DIRECTION_RIGHT && PFhht8QkzR4HAXMXAse5OP < DjqqyUA7UeF1m)continue;
 local rOCKwvEXwq9 = sq_GetYPos(bGnbFL1Br41); 
 local g0e6fsTEHPPGXX8rLLB7 = sq_GetZPos(bGnbFL1Br41); 
 if(sq_Abs(DjqqyUA7UeF1m - PFhht8QkzR4HAXMXAse5OP) <= XNNxGm6ipLW
 && sq_Abs(u0diSVs7UEPLYzR - rOCKwvEXwq9) <= Elf0uxhkmJLDdyp4g_WON
 && sq_Abs(GtwORDD2rfBSjI - g0e6fsTEHPPGXX8rLLB7) <= LXO_HPYBLJ11rWJdU) 
 {
 if(QxArj9fl0IDtbs <= 0) break;
 else QxArj9fl0IDtbs -= 1; 
 local SsOpogCKAXYWrOZbyJS37uaN = CNSquirrelAppendage.sq_AppendAppendage(bGnbFL1Br41, mYRIjHYWK4U_v, 237, true, "character/atgunner/killpoint/ap_killpoint.nut", true);
 SsOpogCKAXYWrOZbyJS37uaN.getVar().clear_vector();
 local Nofh1at1PnY = SsOpogCKAXYWrOZbyJS37uaN.getVar(); 
 Nofh1at1PnY.push_vector(vNl71eUu4yspeW07PxjMyC);
 Nofh1at1PnY.push_vector(e6BSx7HJjB_UGYU);
 Nofh1at1PnY.push_vector(RZs2kcSaBmAFWerQcRh05k);
 Nofh1at1PnY.push_vector(iujCdeVrl2UK);
 Nofh1at1PnY.push_vector(iG5S6GKSnW); 
 if(sq_IsHoldable(mYRIjHYWK4U_v, bGnbFL1Br41))
 {
 sq_HoldAndDelayDie(bGnbFL1Br41, mYRIjHYWK4U_v, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, SsOpogCKAXYWrOZbyJS37uaN); 
 Nofh1at1PnY.setBool(0, true); 
 }
 else
 {
 sq_sendSetActiveStatusPacket(bGnbFL1Br41, mYRIjHYWK4U_v, ACTIVESTATUS_SLOW, 100.0, vNl71eUu4yspeW07PxjMyC, false, iG5S6GKSnW, 0, AJ3vbQKv4Re); 
 Nofh1at1PnY.setBool(0, false); 
 }
 }
 }
 }
 break;
 case 1:
 if(wgaKLlmPk5syoHnH == 2)
 {
 mYRIjHYWK4U_v.sq_SetCurrentAttackInfo(32);
 local J4BAS4J4eIwyUR1e3 = mYRIjHYWK4U_v.sq_GetBonusRateWithPassive(237, 237, 3, 1.0); 
 mYRIjHYWK4U_v.sq_SetCurrentAttackBonusRate(J4BAS4J4eIwyUR1e3); 
 }
 local QxArj9fl0IDtbs = mYRIjHYWK4U_v.getVar().size_vector(); 
 if(QxArj9fl0IDtbs > 0)
 {
 local VVu67Pgo1MX5TDEAJ = mYRIjHYWK4U_v.getVar(); 
 for(local JvLulR3bm7yeMd3jWscC5 = 0; JvLulR3bm7yeMd3jWscC5 < QxArj9fl0IDtbs; JvLulR3bm7yeMd3jWscC5 += 2)
 {
 local nibHu40jPpihWW4QiJ1B = sq_GetCNRDObjectToActiveObject(sq_GetObject(mYRIjHYWK4U_v, VVu67Pgo1MX5TDEAJ.get_vector(JvLulR3bm7yeMd3jWscC5), VVu67Pgo1MX5TDEAJ.get_vector(JvLulR3bm7yeMd3jWscC5 + 1))); 
 if(nibHu40jPpihWW4QiJ1B && !nibHu40jPpihWW4QiJ1B.isDead()) 
 {
 local eGtuo4455r1R = false; 
 local vH7NsYKDQ4_y2 = sq_GetHeightObject(nibHu40jPpihWW4QiJ1B); 
 switch(wgaKLlmPk5syoHnH)
 {
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(nibHu40jPpihWW4QiJ1B, "character/atgunner/killpoint/ap_killpoint.nut"))
 {
 vH7NsYKDQ4_y2 = vH7NsYKDQ4_y2 / 2 + sq_getRandom(0, (vH7NsYKDQ4_y2 * 0.25).tointeger()); 
 if(mYRIjHYWK4U_v.sq_IsMyControlObject())
 sq_SendHitObjectPacketWithNoStuck(mYRIjHYWK4U_v, nibHu40jPpihWW4QiJ1B, 0, 0, vH7NsYKDQ4_y2); 
 eGtuo4455r1R = true; 
 }
 break;
 case 2:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(nibHu40jPpihWW4QiJ1B, "character/atgunner/killpoint/ap_killpoint.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(nibHu40jPpihWW4QiJ1B, "character/atgunner/killpoint/ap_killpoint.nut"); 
 break;
 case 3:
 if(mYRIjHYWK4U_v.sq_IsMyControlObject())
 sq_SendHitObjectPacketWithNoStuck(mYRIjHYWK4U_v, nibHu40jPpihWW4QiJ1B, 0, 0, vH7NsYKDQ4_y2); 
 eGtuo4455r1R = true; 
 break;
 }
 if(!eGtuo4455r1R) continue; 
 sq_SetMyShake(mYRIjHYWK4U_v, 2, 100); 
 local MlddykWhzpnM0VaT6yS = sq_ToRadian(sq_getRandom(0, 360).tofloat());
 local oylpcd7fzAt1ul6 = sq_CreateAnimation("", "character/gunner/effect/animation/atkillpoint/hiteffect/killpointatkeff_b.ani"); 
 sq_SetfRotateAngle(oylpcd7fzAt1ul6, MlddykWhzpnM0VaT6yS); 
 local DLDeY1dHjfTCkBNAxIl = mYRIjHYWK4U_v.sq_GetAutoLayerWorkAnimation(oylpcd7fzAt1ul6, "A"); 
 if(DLDeY1dHjfTCkBNAxIl) sq_SetfRotateAngle(DLDeY1dHjfTCkBNAxIl, MlddykWhzpnM0VaT6yS); 
 oylpcd7fzAt1ul6.addLayerAnimation(1, sq_CreateAnimation("", "character/gunner/effect/animation/atkillpoint/hiteffect/hiteffect_1.ani"), true); 
 local _2LXatBP4vPnHOXyxmI8 = sq_getRandom(20, 100).tofloat() / 100.0;
 oylpcd7fzAt1ul6.setImageRateFromOriginal(_2LXatBP4vPnHOXyxmI8, _2LXatBP4vPnHOXyxmI8); 
 oylpcd7fzAt1ul6.setAutoLayerWorkAnimationAddSizeRate(_2LXatBP4vPnHOXyxmI8); 
 local OX7OeVbFcnm0gRI0ZLj5TAZ = sq_CreatePooledObject(oylpcd7fzAt1ul6, true); 
 sq_SetCurrentDirection(OX7OeVbFcnm0gRI0ZLj5TAZ, mYRIjHYWK4U_v.getDirection()); 
 OX7OeVbFcnm0gRI0ZLj5TAZ.setCurrentPos(sq_GetXPos(nibHu40jPpihWW4QiJ1B), sq_GetYPos(nibHu40jPpihWW4QiJ1B) + 1, sq_GetZPos(nibHu40jPpihWW4QiJ1B) + vH7NsYKDQ4_y2); 
 OX7OeVbFcnm0gRI0ZLj5TAZ = sq_SetEnumDrawLayer(OX7OeVbFcnm0gRI0ZLj5TAZ, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(mYRIjHYWK4U_v, OX7OeVbFcnm0gRI0ZLj5TAZ, OBJECTTYPE_DRAWONLY, false); 
 }
 }
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_killpoint(Rg8mRqj0SAyCeo)
{
 if(!Rg8mRqj0SAyCeo) return;
 if(!Rg8mRqj0SAyCeo.sq_IsMyControlObject()) return;
 Rg8mRqj0SAyCeo.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onEndState_atgunner_killpoint(NZssAZBLiFB, qGlINczpDGvBN)
{
 if(!NZssAZBLiFB) return;
 if(qGlINczpDGvBN != 237)
 {
 local Za3svUJoGnu = NZssAZBLiFB.getVar().size_vector(); 
 if(Za3svUJoGnu > 0)
 {
 local nDkZk0S0wnBhUfckdqdgfE1 = NZssAZBLiFB.getVar(); 
 for(local JBiigO0Xj52OZZdveNV = 0; JBiigO0Xj52OZZdveNV < Za3svUJoGnu; JBiigO0Xj52OZZdveNV += 2)
 {
 local zYY8wgVRwZcLAG = sq_GetObject(NZssAZBLiFB, nDkZk0S0wnBhUfckdqdgfE1.get_vector(JBiigO0Xj52OZZdveNV), nDkZk0S0wnBhUfckdqdgfE1.get_vector(JBiigO0Xj52OZZdveNV + 1)); 
 if(!zYY8wgVRwZcLAG) continue;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(zYY8wgVRwZcLAG, "character/atgunner/killpoint/ap_killpoint.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(zYY8wgVRwZcLAG, "character/atgunner/killpoint/ap_killpoint.nut"); 
 }
 }
 }
} ;


