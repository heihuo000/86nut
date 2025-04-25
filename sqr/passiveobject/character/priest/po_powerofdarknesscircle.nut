
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_PowerOfDarknessCircle(G8AREDQiw97wQYqNGFkW5WQ, b1aM3GkG6n2w)
{
 if(!G8AREDQiw97wQYqNGFkW5WQ) return;
 G8AREDQiw97wQYqNGFkW5WQ.getVar().clear_vector(); 
 local Mr10jwXUIJG8vZDgLFqnb = G8AREDQiw97wQYqNGFkW5WQ.getVar(); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 Mr10jwXUIJG8vZDgLFqnb.push_vector(b1aM3GkG6n2w.readDword()); 
 local TlWrgOp42EMw = sq_AddDrawOnlyAniFromParent(G8AREDQiw97wQYqNGFkW5WQ, "PassiveObject/Character/Priest/Animation/PowerOfDarkness/circle_back.ani", 0, -2, 0);
 sq_moveWithParent(G8AREDQiw97wQYqNGFkW5WQ, TlWrgOp42EMw); 
 G8AREDQiw97wQYqNGFkW5WQ.getVar("aniobj").clear_obj_vector(); 
 G8AREDQiw97wQYqNGFkW5WQ.getVar("aniobj").push_obj_vector(TlWrgOp42EMw); 
} ;

function destroy_po_PowerOfDarknessCircle(NxMRFnUB2HvGJ3)
{
 if(!NxMRFnUB2HvGJ3) return;
 RemoveAllAni(NxMRFnUB2HvGJ3); 
} ;

function procAppend_po_PowerOfDarknessCircle(OYgKDPOVBE0G9uZSqXR)
{
 if(!OYgKDPOVBE0G9uZSqXR) return;
 if(OYgKDPOVBE0G9uZSqXR.getState() == 0)
 {
 local dDKJR5TbZWMq3FjGVavXU301 = OYgKDPOVBE0G9uZSqXR.isMyControlObject();
 local s3kkQ2zixhLHntU = OYgKDPOVBE0G9uZSqXR.getTopCharacter();
 if(!s3kkQ2zixhLHntU && dDKJR5TbZWMq3FjGVavXU301)
 {
 OYgKDPOVBE0G9uZSqXR.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
 return;
 }
 if(s3kkQ2zixhLHntU.getState() != 71 && dDKJR5TbZWMq3FjGVavXU301)
 {
 OYgKDPOVBE0G9uZSqXR.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
 return;
 }
 }
} ;

function onEndCurrentAni_po_PowerOfDarknessCircle(bvj3JDiAitO6)
{
 if(!bvj3JDiAitO6) return;
 local otvpqJeSPulKcDvPBd4 = bvj3JDiAitO6.getState();
 if(otvpqJeSPulKcDvPBd4 == 13 && bvj3JDiAitO6.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(bvj3JDiAitO6);
} ;

function setState_po_PowerOfDarknessCircle(Ew23VYJQO4CjALQ, W0KadN5xF9M4Igbb00, v5UGDsUJ93Si3STe9w50Q5)
{
 if(!Ew23VYJQO4CjALQ) return;
 if(W0KadN5xF9M4Igbb00 == 10)
 {
 local gFIDZpnfhP3wlKr4MU = Ew23VYJQO4CjALQ.getXPos(); 
 local Bj1LVa3efdC = Ew23VYJQO4CjALQ.getZPos(); 
 local danh05QGvW = sq_Abs(173 - Ew23VYJQO4CjALQ.getVar().get_vector(0)); 
 local lm_QedB67al97yCSkH7q = sq_Abs(93 - Ew23VYJQO4CjALQ.getVar().get_vector(1)); 
 local mPHKCkeMgZ = Ew23VYJQO4CjALQ.getVar().get_vector(2); 
 local kAUpVALKkyGUDqjq6a = Ew23VYJQO4CjALQ.getVar("atkobj"); 
 local MhkULJqPiCS8 = kAUpVALKkyGUDqjq6a.get_obj_vector_size(); 
 local bKHgmEHONiADU22Ucu6R = null;
 for(local VeC4GzS0QVI74 = 0; VeC4GzS0QVI74 < MhkULJqPiCS8; VeC4GzS0QVI74++)
 {
 local Vd1Exvk08ICeF = kAUpVALKkyGUDqjq6a.get_obj_vector(VeC4GzS0QVI74); 
 if(Vd1Exvk08ICeF)
 {
 bKHgmEHONiADU22Ucu6R = Vd1Exvk08ICeF;
 local eFYYxzvYXaS = CNSquirrelAppendage.sq_GetAppendage(bKHgmEHONiADU22Ucu6R, "Appendage/Character/ap_PowerOfDarkness.nut");
 if(eFYYxzvYXaS)
 sq_AccelMoveToAppendageForce(bKHgmEHONiADU22Ucu6R, Ew23VYJQO4CjALQ, Ew23VYJQO4CjALQ, danh05QGvW, 0, lm_QedB67al97yCSkH7q - sq_GetObjectHeight(bKHgmEHONiADU22Ucu6R) / 2, mPHKCkeMgZ, true, eFYYxzvYXaS, true);
 }
 }
 if(bKHgmEHONiADU22Ucu6R != null)
 {
 sq_setCurrentAxisPos(Ew23VYJQO4CjALQ, 1, sq_GetYPos(bKHgmEHONiADU22Ucu6R) + 1); 
 sq_moveWithParent(bKHgmEHONiADU22Ucu6R, Ew23VYJQO4CjALQ); 
 }
 sq_SetMyShake(Ew23VYJQO4CjALQ, 5, 160); 
 Ew23VYJQO4CjALQ.setTimeEvent(3, mPHKCkeMgZ, 1, false); 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(Ew23VYJQO4CjALQ, "Character/Priest/Effect/Animation/PowerOfDarkness/guard_attack_none.ani", ENUM_DRAWLAYER_NORMAL, true), 2, 0); 
 sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(Ew23VYJQO4CjALQ, "Character/Priest/Effect/Animation/PowerOfDarkness/guard_attack_none_r.ani", ENUM_DRAWLAYER_NORMAL, true), 2, 0); 
 }
 else if(W0KadN5xF9M4Igbb00 == 11)
 {
 local rIfs3TWG7azT = Ew23VYJQO4CjALQ.getVar().get_vector(3); 
 Ew23VYJQO4CjALQ.setTimeEvent(0, rIfs3TWG7azT, 0, true);
 }
 else if(W0KadN5xF9M4Igbb00 == 12)
 {
 local iHX3r9EURNFu2REPulI = Ew23VYJQO4CjALQ.getVar().get_vector(4); 
 Ew23VYJQO4CjALQ.setTimeEvent(1, iHX3r9EURNFu2REPulI, 1, false);
 Ew23VYJQO4CjALQ.stopSound(92716);
 }
 else if(W0KadN5xF9M4Igbb00 == 13)
 {
 Ew23VYJQO4CjALQ.removeAllTimeEvent(); 
 setCurrentAnimationFromCutomIndex(Ew23VYJQO4CjALQ, 0); 
 RemoveAllAni(Ew23VYJQO4CjALQ); 
 local klSTFTuW_0Pa_2dYREIq9z = sq_AddDrawOnlyAniFromParent(Ew23VYJQO4CjALQ, "PassiveObject/Character/Priest/Animation/PowerOfDarkness/circle_back_last.ani", 0, -2, 0);
 sq_moveWithParent(Ew23VYJQO4CjALQ, klSTFTuW_0Pa_2dYREIq9z); 
 Ew23VYJQO4CjALQ.getVar("aniobj").clear_obj_vector(); 
 Ew23VYJQO4CjALQ.getVar("aniobj").push_obj_vector(klSTFTuW_0Pa_2dYREIq9z); 
 }
} ;

function onTimeEvent_po_PowerOfDarknessCircle(qhSPyA7K8GwYr, qKqYkwm1wsj1n, sXJOa4uXp8lH85pJbi)
{
 if(!qhSPyA7K8GwYr) return false;
 switch(qKqYkwm1wsj1n)
 {
 case 0:
 if(qhSPyA7K8GwYr.isMyControlObject())
 {
 local ZxRP9rbUMthorwnTyNxs9_7v = getArrowCreateAngle(sXJOa4uXp8lH85pJbi); 
 local aR2zPsH83I = qhSPyA7K8GwYr.getVar().get_vector(6); 
 sq_BinaryStartWrite();
 sq_BinaryWriteFloat(ZxRP9rbUMthorwnTyNxs9_7v.tofloat());
 sq_BinaryWriteDword(aR2zPsH83I);
 sq_SendCreatePassiveObjectPacket(qhSPyA7K8GwYr, 24108, 0, 0, sq_getRandom(-1, 2), 0, qhSPyA7K8GwYr.getDirection());
 }
 local YwUxGhoYXJy = qhSPyA7K8GwYr.getVar().get_vector(7); 
 if(sXJOa4uXp8lH85pJbi >= YwUxGhoYXJy && qhSPyA7K8GwYr.isMyControlObject()) 
 {
 qhSPyA7K8GwYr.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 return true;
 }
 break;
 case 1:
 local Yl3Z2BJLf5IBWxeyZW9 = qhSPyA7K8GwYr.getVar().get_vector(5); 
 local aR2zPsH83I = qhSPyA7K8GwYr.getVar().get_vector(6); 
 for(local _l1YzDerJPcxAXpe2DpU5q8h = 0; _l1YzDerJPcxAXpe2DpU5q8h < Yl3Z2BJLf5IBWxeyZW9; _l1YzDerJPcxAXpe2DpU5q8h++)
 {
 local ZxRP9rbUMthorwnTyNxs9_7v = 360 / Yl3Z2BJLf5IBWxeyZW9 * _l1YzDerJPcxAXpe2DpU5q8h;
 ZxRP9rbUMthorwnTyNxs9_7v = ZxRP9rbUMthorwnTyNxs9_7v * 0.0174532;
 if(qhSPyA7K8GwYr.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteFloat(ZxRP9rbUMthorwnTyNxs9_7v.tofloat());
 sq_BinaryWriteDword(aR2zPsH83I);
 sq_SendCreatePassiveObjectPacket(qhSPyA7K8GwYr, 24108, 0, 0, sq_getRandom(-1, 2), 0, qhSPyA7K8GwYr.getDirection());
 }
 }
 qhSPyA7K8GwYr.sq_PlaySound("PR_DARKPOWER");
 qhSPyA7K8GwYr.setTimeEvent(2, 900, 1, false);
 return true;
 case 2:
 sq_flashScreen(qhSPyA7K8GwYr, 160, 0, 0, 150, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 if(qhSPyA7K8GwYr.isMyControlObject())
 qhSPyA7K8GwYr.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
 break;
 case 3:
 if(qhSPyA7K8GwYr.isMyControlObject())
 qhSPyA7K8GwYr.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 return false;
} ;

 
 
 
 
 
function getArrowCreateAngle(Gl29mRg9YPMXflkjZZKXH)
{
 Gl29mRg9YPMXflkjZZKXH = Gl29mRg9YPMXflkjZZKXH % 6;
 local PRS9rUKxVkyn17E = 0;
 local wQzsN5Cdj56A1b_DXgDjgh = 0;
 if(Gl29mRg9YPMXflkjZZKXH == 0) 
 PRS9rUKxVkyn17E = 250, wQzsN5Cdj56A1b_DXgDjgh = 310;
 else if(Gl29mRg9YPMXflkjZZKXH == 1) 
 PRS9rUKxVkyn17E = 10, wQzsN5Cdj56A1b_DXgDjgh = 70;
 else if(Gl29mRg9YPMXflkjZZKXH == 2) 
 PRS9rUKxVkyn17E = 70, wQzsN5Cdj56A1b_DXgDjgh = 130;
 else if(Gl29mRg9YPMXflkjZZKXH == 3) 
 PRS9rUKxVkyn17E = 190, wQzsN5Cdj56A1b_DXgDjgh = 250;
 else if(Gl29mRg9YPMXflkjZZKXH == 4) 
 PRS9rUKxVkyn17E = 310, wQzsN5Cdj56A1b_DXgDjgh = 370;
 else if(Gl29mRg9YPMXflkjZZKXH == 5) 
 PRS9rUKxVkyn17E = 130, wQzsN5Cdj56A1b_DXgDjgh = 190;
 local SowGnYJkaF2Kukck = sq_getRandom(PRS9rUKxVkyn17E, wQzsN5Cdj56A1b_DXgDjgh);
 return SowGnYJkaF2Kukck.tofloat() * 0.0174532;
} ;


