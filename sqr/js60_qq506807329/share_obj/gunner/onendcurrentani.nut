
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
 
function onEndCurrentAni_po_qq506807329new_gunner_24371(vP4Yux22cy)
{
 if(!vP4Yux22cy) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local _JQmEy2RzbI = vP4Yux22cy.getVar("skill").get_vector(0);
 switch(_JQmEy2RzbI)
 {
 case 232: 
 if(vP4Yux22cy.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 233: 
 if(!vP4Yux22cy.isMyControlObject())return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 switch(GUzAYzRf64cBGY)
 {
 case 1:
 local LxJOcx01QCh5No_6cPh = vP4Yux22cy.getVar("state").get_vector(0); 
 switch(LxJOcx01QCh5No_6cPh)
 {
 case 11: 
 case 13: 
 vP4Yux22cy.addSetStatePacket(LxJOcx01QCh5No_6cPh + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 14: 
 local MFAfmZL0CaRDBW = vP4Yux22cy.getVar().get_vector(4); 
 if(MFAfmZL0CaRDBW > 0)
 vP4Yux22cy.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 else
 vP4Yux22cy.addSetStatePacket(15, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 15: 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 2:
 case 3:
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 234: 
 if(vP4Yux22cy.isMyControlObject() && vP4Yux22cy.getVar("state").get_vector(0) == 10)
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 235: 
 if(vP4Yux22cy.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 236: 
 if(vP4Yux22cy.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 237: 
 if(vP4Yux22cy.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 240: 
 if(vP4Yux22cy.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 242: 
 if(!vP4Yux22cy.isMyControlObject()) return;
 local LxJOcx01QCh5No_6cPh = vP4Yux22cy.getVar("state").get_vector(0); 
 switch(LxJOcx01QCh5No_6cPh)
 {
 case 12: 
 vP4Yux22cy.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 14: 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 243: 
 if(!vP4Yux22cy.isMyControlObject()) return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 if(GUzAYzRf64cBGY == 2) 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 244: 
 if(!vP4Yux22cy.isMyControlObject()) return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 if(GUzAYzRf64cBGY == 1) 
 {
 local LxJOcx01QCh5No_6cPh = vP4Yux22cy.getState(); 
 switch(LxJOcx01QCh5No_6cPh)
 {
 case 13:
 vP4Yux22cy.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 14:
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 }
 else if(GUzAYzRf64cBGY == 2) 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 case 245: 
 if(!vP4Yux22cy.isMyControlObject())return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 local LxJOcx01QCh5No_6cPh = vP4Yux22cy.getVar("state").get_vector(0); 
 if(GUzAYzRf64cBGY == 1) 
 {
 if(LxJOcx01QCh5No_6cPh == 11)
 vP4Yux22cy.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else if(LxJOcx01QCh5No_6cPh == 13)
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 }
 else if(GUzAYzRf64cBGY == 2) 
 switch(LxJOcx01QCh5No_6cPh)
 {
 case 10:
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 246: 
 if(!vP4Yux22cy.isMyControlObject())return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 switch(GUzAYzRf64cBGY)
 {
 case 1:
 local LxJOcx01QCh5No_6cPh = vP4Yux22cy.getVar("state").get_vector(0); 
 switch(LxJOcx01QCh5No_6cPh)
 {
 case 11: 
 local EuDM9gmU6p5GZpYXqP_54VP = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(EuDM9gmU6p5GZpYXqP_54VP); 
 sq_IntVectorPush(EuDM9gmU6p5GZpYXqP_54VP, 1); 
 vP4Yux22cy.addSetStatePacket(12, EuDM9gmU6p5GZpYXqP_54VP, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12: 
 local xwOAzPJM1KR3_lLwaGDY = vP4Yux22cy.getVar().get_vector(1); 
 if(xwOAzPJM1KR3_lLwaGDY > 0)
 {
 local EuDM9gmU6p5GZpYXqP_54VP = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(EuDM9gmU6p5GZpYXqP_54VP); 
 sq_IntVectorPush(EuDM9gmU6p5GZpYXqP_54VP, 2); 
 sq_IntVectorPush(EuDM9gmU6p5GZpYXqP_54VP, sq_getRandom(0, 3)); 
 vP4Yux22cy.addSetStatePacket(12, EuDM9gmU6p5GZpYXqP_54VP, STATE_PRIORITY_AUTO, false, ""); 
 }
 else 
 vP4Yux22cy.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 13: 
 local Lefx6D2IWCPLHDuq3p9Q = vP4Yux22cy.getVar().get_vector(2); 
 local bwyP67M1bCKZxx = vP4Yux22cy.sq_FindFirstTarget(0, Lefx6D2IWCPLHDuq3p9Q, 80, 200);
 if(bwyP67M1bCKZxx) 
 {
 local EuDM9gmU6p5GZpYXqP_54VP = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(EuDM9gmU6p5GZpYXqP_54VP); 
 sq_IntVectorPush(EuDM9gmU6p5GZpYXqP_54VP, bwyP67M1bCKZxx.getXPos()); 
 sq_IntVectorPush(EuDM9gmU6p5GZpYXqP_54VP, bwyP67M1bCKZxx.getYPos()); 
 vP4Yux22cy.addSetStatePacket(14, EuDM9gmU6p5GZpYXqP_54VP, STATE_PRIORITY_AUTO, false, ""); 
 }
 else 
 vP4Yux22cy.addSetStatePacket(16, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 15: 
 vP4Yux22cy.addSetStatePacket(16, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 16: 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 2: 
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 case 247: 
 if(!vP4Yux22cy.isMyControlObject())return;
 local GUzAYzRf64cBGY = vP4Yux22cy.getVar("subType").get_vector(0); 
 switch(GUzAYzRf64cBGY)
 {
 case 2:
 case 3:
 sq_SendDestroyPacketPassiveObject(vP4Yux22cy); 
 break;
 }
 break;
 }
} ;
 
