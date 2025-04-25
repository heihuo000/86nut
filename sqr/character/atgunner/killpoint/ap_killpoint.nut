
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_atgunner_killpoint")
    appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_killpoint")
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_atgunner_killpoint")
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_atgunner_killpoint")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atgunner_killpoint")
}




function onStart_appendage_atgunner_killpoint(Dj32J5OG8JFHTCb_1UuymV)
{
 if(!Dj32J5OG8JFHTCb_1UuymV) return;
 local uXh5R70hBZILml2si1K_WX = Dj32J5OG8JFHTCb_1UuymV.getParent();
 local kKeRPFzBuFmB8kM = Dj32J5OG8JFHTCb_1UuymV.getSource();
 if(!kKeRPFzBuFmB8kM || !uXh5R70hBZILml2si1K_WX)
 {
 Dj32J5OG8JFHTCb_1UuymV.setValid(false);
 return;
 }
 Dj32J5OG8JFHTCb_1UuymV.getVar("state").clear_vector(); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("state").push_vector(0); 
 local A8kJVN3Mn_a = sq_GetDirection(kKeRPFzBuFmB8kM); 
 local sONyem4yjxoExBk4_vXCoBqK = sq_GetXPos(kKeRPFzBuFmB8kM); 
 local thfGr5PlxPmJ = sq_GetYPos(kKeRPFzBuFmB8kM); 
 local DQdAYeKHd_v__1 = sq_GetZPos(kKeRPFzBuFmB8kM) + 83; 
 
 local vUib658qIlr = sq_CreateAnimation("", "character/gunner/effect/animation/atkillpoint/anionly_killpoint_spinchain.ani"); 
 local Rq_rLtUDanniM0s = sq_CreatePooledObject(vUib658qIlr, true); 
 sq_SetCurrentDirection(Rq_rLtUDanniM0s, A8kJVN3Mn_a); 
 Rq_rLtUDanniM0s.setCurrentPos(sONyem4yjxoExBk4_vXCoBqK, thfGr5PlxPmJ, DQdAYeKHd_v__1); 
 Rq_rLtUDanniM0s = sq_SetEnumDrawLayer(Rq_rLtUDanniM0s, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(kKeRPFzBuFmB8kM, Rq_rLtUDanniM0s, OBJECTTYPE_DRAWONLY, false); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("aniobj").clear_obj_vector(); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("aniobj").push_obj_vector(Rq_rLtUDanniM0s); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("direction").clear_vector(); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("direction").push_vector(A8kJVN3Mn_a); 
 Dj32J5OG8JFHTCb_1UuymV.getVar("move").clear_vector(); 
 local cLGt3T1Gk2AtEhUolGoT = Dj32J5OG8JFHTCb_1UuymV.getVar("move"); 
 cLGt3T1Gk2AtEhUolGoT.push_vector(sONyem4yjxoExBk4_vXCoBqK); 
 cLGt3T1Gk2AtEhUolGoT.push_vector(thfGr5PlxPmJ); 
 cLGt3T1Gk2AtEhUolGoT.push_vector(DQdAYeKHd_v__1); 
} ;

function proc_appendage_atgunner_killpoint(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return;
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.getParent();
 local TsB5TWcBrZHZi = K5U2VMuTmU.getSource();
 if(!TsB5TWcBrZHZi || !uFEX1yvudqwU9K3ow5lmjYve)
 {
 K5U2VMuTmU.setValid(false);
 return;
 }
 if(K5U2VMuTmU.getVar().size_vector() > 0)
 {
 local ApF9KThveZU4n = K5U2VMuTmU.getVar().get_vector(4); 
 if(ApF9KThveZU4n > 0 && K5U2VMuTmU.getTimer().Get() >= ApF9KThveZU4n)
 {
 K5U2VMuTmU.setValid(false);
 return;
 }
 }
 local yQzuhYlXQwO = K5U2VMuTmU.getVar("state").get_vector(0); 
 switch(yQzuhYlXQwO)
 {
 case 0:
 local AABNtjXKSyRvUnJ394 = K5U2VMuTmU.getVar("aniobj").get_obj_vector(0); 
 if(!AABNtjXKSyRvUnJ394) break; 
 local R2fJTjmzRFFAWjoB = K5U2VMuTmU.getVar("move"); 
 local TyTywOdKBNWLJgScDqbp = sq_GetObjectTime(AABNtjXKSyRvUnJ394); 
 local jnUNu4Mv25fQ9xCkqfs1MOl = 100; 
 local UGh2tJuSYDiINoVRgsCLriUX = R2fJTjmzRFFAWjoB.get_vector(0); 
 local rWFwoVW5OslUVieJRVgrrz = R2fJTjmzRFFAWjoB.get_vector(1); 
 local bORRGWDs8xeqtzQfKUEuBzB = sq_GetXPos(uFEX1yvudqwU9K3ow5lmjYve); 
 local rO2QsiORWPszYoGx = sq_GetYPos(uFEX1yvudqwU9K3ow5lmjYve); 
 local qpwA6Md3mnbWrVMSqm5nw_LF = sq_GetUniformVelocity(UGh2tJuSYDiINoVRgsCLriUX, bORRGWDs8xeqtzQfKUEuBzB, TyTywOdKBNWLJgScDqbp, jnUNu4Mv25fQ9xCkqfs1MOl);
 local Rc86OmL7aBqFPNPUbD = sq_GetUniformVelocity(rWFwoVW5OslUVieJRVgrrz, rO2QsiORWPszYoGx, TyTywOdKBNWLJgScDqbp, jnUNu4Mv25fQ9xCkqfs1MOl);
 sq_setCurrentAxisPos(AABNtjXKSyRvUnJ394, 0, qpwA6Md3mnbWrVMSqm5nw_LF); 
 sq_setCurrentAxisPos(AABNtjXKSyRvUnJ394, 1, Rc86OmL7aBqFPNPUbD); 
 if(TyTywOdKBNWLJgScDqbp >= 100)
 {
 AABNtjXKSyRvUnJ394.setValid(false); 
 sq_setCurrentAxisPos(uFEX1yvudqwU9K3ow5lmjYve, 2, 0); 
 
 sq_sendSetActiveStatusPacket(uFEX1yvudqwU9K3ow5lmjYve, TsB5TWcBrZHZi, ACTIVESTATUS_BLEEDING, (K5U2VMuTmU.getVar().get_vector(3)).tofloat(), K5U2VMuTmU.getVar().get_vector(0), false, K5U2VMuTmU.getVar().get_vector(1), K5U2VMuTmU.getVar().get_vector(2));
 local o1gGdPcPOBS0lgqnztBLN = Rc86OmL7aBqFPNPUbD;
 if(rWFwoVW5OslUVieJRVgrrz < o1gGdPcPOBS0lgqnztBLN) o1gGdPcPOBS0lgqnztBLN -= 10;
 else o1gGdPcPOBS0lgqnztBLN += 10;
 local mX_HMkEfZTe7RnwODfeH = sq_GetDistancePos(qpwA6Md3mnbWrVMSqm5nw_LF, K5U2VMuTmU.getVar("direction").get_vector(0), 20);
 K5U2VMuTmU.getVar("move").clear_vector();
 K5U2VMuTmU.getVar("move").push_vector(qpwA6Md3mnbWrVMSqm5nw_LF);
 K5U2VMuTmU.getVar("move").push_vector(Rc86OmL7aBqFPNPUbD);
 K5U2VMuTmU.getVar("move").push_vector(mX_HMkEfZTe7RnwODfeH);
 K5U2VMuTmU.getVar("move").push_vector(o1gGdPcPOBS0lgqnztBLN);
 
 sq_SetMyShake(TsB5TWcBrZHZi, 2, 100);
 K5U2VMuTmU.getVar("state").set_vector(0, 1); 
 }
 break;
 case 1:
 break;
 }
} ;

function onDamageParent_appendage_atgunner_killpoint(UBOu01JlXpIktcyFgD, UI76D4zjqBGBpJVt, UgRqIxHPEZnz, ALzdmZcKBwbEUv6dd)
{
 if(!UBOu01JlXpIktcyFgD) return;
 local hi4q_qoCrpfqeCNYyC = UBOu01JlXpIktcyFgD.getParent();
 local Ni3AaYr5m1MPftiue = UBOu01JlXpIktcyFgD.getSource();
 if(!Ni3AaYr5m1MPftiue || !hi4q_qoCrpfqeCNYyC)
 {
 UBOu01JlXpIktcyFgD.setValid(false);
 return;
 }
 if(UBOu01JlXpIktcyFgD.getVar().size_vector() > 0)
 {
 local WZp3TUwzF_RY0iqL = UBOu01JlXpIktcyFgD.getVar().get_vector(4); 
 if(WZp3TUwzF_RY0iqL > 0 && isSameObject(Ni3AaYr5m1MPftiue, UI76D4zjqBGBpJVt) && UI76D4zjqBGBpJVt.getState() == 237)
 {
 UBOu01JlXpIktcyFgD.getVar().set_vector(4, 0); 
 }
 }
} ;


function drawAppend_appendage_atgunner_killpoint(j77xMeLkG5wknOtcptYAEJU, zrsQHOqStvVjv8, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h, MiR38zrk_P0BQK)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return;
 local Eti7DuGmCQ = j77xMeLkG5wknOtcptYAEJU.getParent();
 local oaoC94smpszLoPHa = j77xMeLkG5wknOtcptYAEJU.getSource();
 if(!oaoC94smpszLoPHa || !Eti7DuGmCQ)
 {
 j77xMeLkG5wknOtcptYAEJU.setValid(false);
 return;
 }
 if(!zrsQHOqStvVjv8)return;
 local g9mRABUofVT3qPOzPpZ95m = j77xMeLkG5wknOtcptYAEJU.getVar().getBool(0); 
 local Y1nI4dMhBVMiS2FkgEEF9Oc9 = j77xMeLkG5wknOtcptYAEJU.getVar("state").get_vector(0); 
 switch(Y1nI4dMhBVMiS2FkgEEF9Oc9)
 {
 case 1:
 if(g9mRABUofVT3qPOzPpZ95m)
 {
 local GhmjBwAOrNWeuEVgbI7 = j77xMeLkG5wknOtcptYAEJU.getVar().GetAnimationMap("killpointchaina_chain", "character/gunner/effect/animation/atkillpoint/killpointchaina_chain.ani");
 local vNkBZcnzFFXv = sq_GetCurrentTime(GhmjBwAOrNWeuEVgbI7); 
 local rpNjM_AtQn5wy70 = 100; 
 if(vNkBZcnzFFXv >= GhmjBwAOrNWeuEVgbI7.getDelaySum(false))
 {
 j77xMeLkG5wknOtcptYAEJU.getVar("state").set_vector(0, 2); 
 return;
 }
 local cR0gNwGNEnlTiVj34Gwo = j77xMeLkG5wknOtcptYAEJU.getVar("move"); 
 local MnOgNLjdDRfbGfqX8kZc0Gkb = cR0gNwGNEnlTiVj34Gwo.get_vector(0); 
 local NT716lBOOj4 = cR0gNwGNEnlTiVj34Gwo.get_vector(1); 
 local q0agEKC56znuqV = cR0gNwGNEnlTiVj34Gwo.get_vector(2); 
 local jGNw69i_roaYwjG = cR0gNwGNEnlTiVj34Gwo.get_vector(3); 
 local N5Q8kn6gBbl = sq_GetUniformVelocity(MnOgNLjdDRfbGfqX8kZc0Gkb, q0agEKC56znuqV, vNkBZcnzFFXv, rpNjM_AtQn5wy70);
 local m5KLq5TCAy = sq_GetUniformVelocity(NT716lBOOj4, jGNw69i_roaYwjG, vNkBZcnzFFXv, rpNjM_AtQn5wy70);
 if(Eti7DuGmCQ.isMovablePos(N5Q8kn6gBbl, m5KLq5TCAy))
 {
 sq_setCurrentAxisPos(Eti7DuGmCQ, 0, N5Q8kn6gBbl); 
 sq_setCurrentAxisPos(Eti7DuGmCQ, 1, m5KLq5TCAy); 
 }
 else if(Eti7DuGmCQ.isMovablePos(N5Q8kn6gBbl, NT716lBOOj4))
 sq_setCurrentAxisPos(Eti7DuGmCQ, 0, N5Q8kn6gBbl); 
 else if(Eti7DuGmCQ.isMovablePos(MnOgNLjdDRfbGfqX8kZc0Gkb, m5KLq5TCAy))
 sq_setCurrentAxisPos(Eti7DuGmCQ, 1, m5KLq5TCAy); 
 if(sq_GetDirection(Eti7DuGmCQ) == ENUM_DIRECTION_RIGHT)
 GhmjBwAOrNWeuEVgbI7.setImageRateFromOriginal(-1.0, 1.0);
 else
 GhmjBwAOrNWeuEVgbI7.setImageRateFromOriginal(1.0, 1.0);
 sq_AnimationProc(GhmjBwAOrNWeuEVgbI7);
 sq_drawCurrentFrame(GhmjBwAOrNWeuEVgbI7, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h, false);
 }
 else
 {
 local oP065iwPYigWqQGVSIQtQIuc = j77xMeLkG5wknOtcptYAEJU.getVar().GetAnimationMap("killpointchainnoholda_chain", "character/gunner/effect/animation/atkillpoint/killpointchainnoholda_chain.ani");
 if(sq_IsEnd(oP065iwPYigWqQGVSIQtQIuc))
 {
 j77xMeLkG5wknOtcptYAEJU.getVar("state").set_vector(0, 2); 
 return;
 }
 local bzc6FCsP7kh = j77xMeLkG5wknOtcptYAEJU.getVar().GetAnimationMap("killpointchainnoholda_hit_eff_b", "character/gunner/effect/animation/atkillpoint/killpointchainnoholda_hit_eff_b.ani");
 if(sq_GetDirection(Eti7DuGmCQ) == ENUM_DIRECTION_RIGHT)
 {
 oP065iwPYigWqQGVSIQtQIuc.setImageRateFromOriginal(-1.0, 1.0);
 bzc6FCsP7kh.setImageRateFromOriginal(-1.0, 1.0);
 }
 sq_AnimationProc(oP065iwPYigWqQGVSIQtQIuc);
 sq_drawCurrentFrame(oP065iwPYigWqQGVSIQtQIuc, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h - 14, false);
 sq_AnimationProc(bzc6FCsP7kh);
 sq_drawCurrentFrame(bzc6FCsP7kh, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h - sq_GetHeightObject(Eti7DuGmCQ) / 2, false);
 }
 break;
 case 2:
 local GhmjBwAOrNWeuEVgbI7 = (g9mRABUofVT3qPOzPpZ95m)
 ? j77xMeLkG5wknOtcptYAEJU.getVar().GetAnimationMap("killpointchainb_chain", "character/gunner/effect/animation/atkillpoint/killpointchainb_chain.ani")
 : j77xMeLkG5wknOtcptYAEJU.getVar().GetAnimationMap("killpointchainnoholdb_chain", "character/gunner/effect/animation/atkillpoint/killpointchainnoholdb_chain.ani");
 if(GhmjBwAOrNWeuEVgbI7)
 {
 if(sq_GetDirection(Eti7DuGmCQ) == ENUM_DIRECTION_RIGHT)
 GhmjBwAOrNWeuEVgbI7.setImageRateFromOriginal(-1.0, 1.0);
 else
 GhmjBwAOrNWeuEVgbI7.setImageRateFromOriginal(1.0, 1.0);
 sq_AnimationProc(GhmjBwAOrNWeuEVgbI7);
 sq_drawCurrentFrame(GhmjBwAOrNWeuEVgbI7, b8TRqIaG2En56ESpxkF7, ZiE5Vje2DH_qvrWMebT2h, false);
 }
 break;
 }
} ;

function onEnd_appendage_atgunner_killpoint(QzdzqMM6YDQ3H6)
{
 if(!QzdzqMM6YDQ3H6) return;
 local TAXYMJpdhybSOSWcUFqEFDSX = QzdzqMM6YDQ3H6.getParent();
 local z7TKohD5HA = QzdzqMM6YDQ3H6.getSource();
 if(!z7TKohD5HA || !TAXYMJpdhybSOSWcUFqEFDSX)
 {
 QzdzqMM6YDQ3H6.setValid(false);
 return;
 }
 local oywxe7BtTr = QzdzqMM6YDQ3H6.getVar("aniobj").get_obj_vector(0); 
 if(oywxe7BtTr) oywxe7BtTr.setValid(false); 
 local l4iXuTxwG_MRW = QzdzqMM6YDQ3H6.getVar("state").get_vector(0); 
 switch(l4iXuTxwG_MRW)
 {
 case 2: 
 local Pc7JSYX0mskEUjUHviH6 = sq_GetDirection(TAXYMJpdhybSOSWcUFqEFDSX); 
 local TQh98WRB2wRmDbEJhXmds = (QzdzqMM6YDQ3H6.getVar().getBool(0))
 ? sq_CreateAnimation("", "character/gunner/effect/animation/atkillpoint/killpointchainc_chain.ani")
 : sq_CreateAnimation("", "character/gunner/effect/animation/atkillpoint/killpointchainnoholdc_chain.ani"); 
 local BzTN4v_zOGcB5VPUE = sq_CreatePooledObject(TQh98WRB2wRmDbEJhXmds, true); 
 sq_SetCurrentDirection(BzTN4v_zOGcB5VPUE, sq_GetOppositeDirection(Pc7JSYX0mskEUjUHviH6)); 
 BzTN4v_zOGcB5VPUE.setCurrentPos(sq_GetXPos(TAXYMJpdhybSOSWcUFqEFDSX), sq_GetYPos(TAXYMJpdhybSOSWcUFqEFDSX), sq_GetZPos(TAXYMJpdhybSOSWcUFqEFDSX)); 
 BzTN4v_zOGcB5VPUE = sq_SetEnumDrawLayer(BzTN4v_zOGcB5VPUE, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(z7TKohD5HA, BzTN4v_zOGcB5VPUE, OBJECTTYPE_DRAWONLY, false); 
 break;
 }
} ;


