
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_po_qq506807329new_priest_24374(oXbJ6ZNZ20ekbaD2ZOu)
{
 if(!oXbJ6ZNZ20ekbaD2ZOu) return;
 local ZCAY45lRMFu_3K2Ifx9rU0 = oXbJ6ZNZ20ekbaD2ZOu.getVar("skill").get_vector(0);
 switch(ZCAY45lRMFu_3K2Ifx9rU0)
 {
 case 237: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 3)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 238: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0); 
 if(Pgn38KP5LPq != 13)
 {
 if(Pgn38KP5LPq == 12)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(oXbJ6ZNZ20ekbaD2ZOu, 238); 
 }
 else
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(Pgn38KP5LPq + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 }
 break;
 case 240: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 241: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0); 
 if(Pgn38KP5LPq != 14)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(Pgn38KP5LPq + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 }
 else if(OFsCPLnwVDGF == 2)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 242: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 243: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 245: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 else if(OFsCPLnwVDGF == 2)
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0);
 if(Pgn38KP5LPq != 11)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(Pgn38KP5LPq + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 }
 else if(OFsCPLnwVDGF == 3 || OFsCPLnwVDGF == 4)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 248: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0); 
 switch(Pgn38KP5LPq)
 {
 case 11:
 local lFHON4ACbmAkgY = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(lFHON4ACbmAkgY); 
 sq_IntVectorPush(lFHON4ACbmAkgY, oXbJ6ZNZ20ekbaD2ZOu.getXPos()); 
 sq_IntVectorPush(lFHON4ACbmAkgY, oXbJ6ZNZ20ekbaD2ZOu.getYPos()); 
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(12, lFHON4ACbmAkgY, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 local OzN7p5A509Kr = oXbJ6ZNZ20ekbaD2ZOu.getVar().get_vector(2); 
 if(OzN7p5A509Kr > 0)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 13:
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 }
 }
 break;
 case 249: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 switch(OFsCPLnwVDGF)
 {
 case 0:
 case 1:
 case 2:
 case 3:
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 }
 break;
 case 250: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 251: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 246: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 135: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 136: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF != 2)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 else
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0); 
 if(Pgn38KP5LPq != 12)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(Pgn38KP5LPq + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 }
 break;
 case 137: 
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 if(oXbJ6ZNZ20ekbaD2ZOu.getVar().getBool(0) == true) 
 oXbJ6ZNZ20ekbaD2ZOu.setCurrentAnimation(null); 
 else
 {
 local Nx0UfL5DnwFB0wBa45ypx9u = oXbJ6ZNZ20ekbaD2ZOu.getMyPassiveObject(24374, 0); 
 if(Nx0UfL5DnwFB0wBa45ypx9u && Nx0UfL5DnwFB0wBa45ypx9u.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Nx0UfL5DnwFB0wBa45ypx9u); 
 if(oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 }
 break;
 case 139: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 case 132: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 3)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 else
 {
 local Pgn38KP5LPq = oXbJ6ZNZ20ekbaD2ZOu.getVar("state").get_vector(0); 
 if(Pgn38KP5LPq == 11)
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(Pgn38KP5LPq + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else if(Pgn38KP5LPq == 12)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 else
 oXbJ6ZNZ20ekbaD2ZOu.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 116: 
 if(!oXbJ6ZNZ20ekbaD2ZOu.isMyControlObject())return;
 local OFsCPLnwVDGF = oXbJ6ZNZ20ekbaD2ZOu.getVar("subType").get_vector(0); 
 if(OFsCPLnwVDGF == 1)
 sq_SendDestroyPacketPassiveObject(oXbJ6ZNZ20ekbaD2ZOu); 
 break;
 }
} ;
