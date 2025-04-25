
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function procAppend_po_qq506807329new_atmage_24377(qMNVihjRTmuS)
{
 if(!qMNVihjRTmuS) return;
 local tVkhhJRGalKq = qMNVihjRTmuS.getVar("skill").get_vector(0); 
 local RNDKDGb7Xh4tmzwoFrEmqi4B = qMNVihjRTmuS.getVar("subType").get_vector(0); 
 local LqMdIv7SpKl = qMNVihjRTmuS.getVar("state").get_vector(0); 
 switch(tVkhhJRGalKq)
 {
 case 243: 
 switch(RNDKDGb7Xh4tmzwoFrEmqi4B)
 {
 case 1:
 switch(LqMdIv7SpKl)
 {
 case 12:
 if(qMNVihjRTmuS.getVar("time").size_vector() <= 0)return;
 local JFlt1wvdwKdlcbytEGuXGD = sq_GetObjectTime(qMNVihjRTmuS) - qMNVihjRTmuS.getVar("time").get_vector(0); 
 local OmDrZNzyRAkMj9s96nEZ_GvJ = qMNVihjRTmuS.getVar("time").get_vector(1); 
 local gZ9vWm31LHYy = sq_GetUniformVelocity(255, 0, JFlt1wvdwKdlcbytEGuXGD, OmDrZNzyRAkMj9s96nEZ_GvJ); 
 setRgba_qq506807329(qMNVihjRTmuS, 255, 255, 255, gZ9vWm31LHYy); 
 local OhOWPP3mH4iYqseXBJ2C4W4a = qMNVihjRTmuS.getVar("aniobj").get_obj_vector(0); 
 setRgba_qq506807329(OhOWPP3mH4iYqseXBJ2C4W4a, 255, 255, 255, gZ9vWm31LHYy); 
 if(JFlt1wvdwKdlcbytEGuXGD >= OmDrZNzyRAkMj9s96nEZ_GvJ && qMNVihjRTmuS.isMyControlObject()) 
 sq_SendDestroyPacketPassiveObject(qMNVihjRTmuS);
 break;
 }
 break;
 }
 break;
 case 244: 
 switch(RNDKDGb7Xh4tmzwoFrEmqi4B)
 {
 case 1:
 switch(LqMdIv7SpKl)
 {
 case 10:
 local wqgNmsUX8Cewg4GFQlGLK = qMNVihjRTmuS.getParent(); 
 if(!wqgNmsUX8Cewg4GFQlGLK)
 {
 if(qMNVihjRTmuS.isMyControlObject())
 {
 qMNVihjRTmuS.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 return;
 }
 }
 
 else if(qMNVihjRTmuS.sq_GetParentState()!= 244|| qMNVihjRTmuS.sq_GetParentSkillSubState()==2)
 {
 if(qMNVihjRTmuS.isMyControlObject())
 qMNVihjRTmuS.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 }
 break;
 case 11:
 local wqgNmsUX8Cewg4GFQlGLK = sq_GetCNRDObjectToSQRCharacter(qMNVihjRTmuS.getParent()); 
 if(wqgNmsUX8Cewg4GFQlGLK)
 {
 if(wqgNmsUX8Cewg4GFQlGLK.sq_IsEnterSkill(244) != -1) 
 if(qMNVihjRTmuS.isMyControlObject())
 {
 qMNVihjRTmuS.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 return;
 }
 }
 if(qMNVihjRTmuS.getVar("move").size_vector() <= 0)return;
 local FWS2k_OmSy7x9 = sq_GetObjectTime(qMNVihjRTmuS); 
 local JFlt1wvdwKdlcbytEGuXGD = FWS2k_OmSy7x9 - qMNVihjRTmuS.getVar("move").get_vector(3); 
 local OmDrZNzyRAkMj9s96nEZ_GvJ = qMNVihjRTmuS.getVar("move").get_vector(2); 
 local eCM5Q7FEfbwHQ7C1f_0cBee = sq_GetDistancePos(qMNVihjRTmuS.getVar("move").get_vector(0),
 qMNVihjRTmuS.getDirection(),
 sq_GetUniformVelocity(0, qMNVihjRTmuS.getVar("move").get_vector(1), JFlt1wvdwKdlcbytEGuXGD, OmDrZNzyRAkMj9s96nEZ_GvJ)); 
 sq_setCurrentAxisPos(qMNVihjRTmuS, 0, eCM5Q7FEfbwHQ7C1f_0cBee); 
 
 local seOgo9OdGMJZnoU_eWIAC = qMNVihjRTmuS.getVar().get_timer_vector(0);
 if(seOgo9OdGMJZnoU_eWIAC)
 if(seOgo9OdGMJZnoU_eWIAC.isOnEvent(FWS2k_OmSy7x9) == true)
 {
 local pAvaJgrCBKPrLfjgpt = sq_getRandom(0, 100)>50
 ?"character/mage/effect/animation/atconvergencecannon/shot/groundloop01_floor.ani"
 :"character/mage/effect/animation/atconvergencecannon/shot/groundloop02_floor.ani";
 createPooledObjEff_qq506807329(qMNVihjRTmuS, pAvaJgrCBKPrLfjgpt, qMNVihjRTmuS.getXPos(), qMNVihjRTmuS.getYPos(), qMNVihjRTmuS.getZPos(), ENUM_DRAWLAYER_BOTTOM, sq_GetOppositeDirection(qMNVihjRTmuS.getDirection())); 
 }
 if(JFlt1wvdwKdlcbytEGuXGD >= OmDrZNzyRAkMj9s96nEZ_GvJ && qMNVihjRTmuS.isMyControlObject())
 qMNVihjRTmuS.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 }
 break;
 case 245: 
 switch(RNDKDGb7Xh4tmzwoFrEmqi4B)
 {
 case 1:
 local wqgNmsUX8Cewg4GFQlGLK = qMNVihjRTmuS.getParent(); 
 if(!wqgNmsUX8Cewg4GFQlGLK)
 {
 if(qMNVihjRTmuS.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(qMNVihjRTmuS); 
 }
 break;
 }
 break;
 case 246: 
 switch(RNDKDGb7Xh4tmzwoFrEmqi4B)
 {
 case 1:
 if(LqMdIv7SpKl != 10)
 {
 local wqgNmsUX8Cewg4GFQlGLK = qMNVihjRTmuS.getParent(); 
 if(!wqgNmsUX8Cewg4GFQlGLK)
 {
 if(qMNVihjRTmuS.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(qMNVihjRTmuS); 
 }
 }
 break;
 }
 break;
 }
} ;
 
