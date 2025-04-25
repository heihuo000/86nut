
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onEndCurrentAni_po_qq506807329new_mage_24372(A4ZZlVhqV6)
{
 if(!A4ZZlVhqV6) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local aTXgCO5MIXMm9XRC2 = A4ZZlVhqV6.getVar("skill").get_vector(0);
 switch(aTXgCO5MIXMm9XRC2)
 {
 case 245: 
 if(!A4ZZlVhqV6.isMyControlObject()) return;
 if(A4ZZlVhqV6.getVar().get_obj_vector_size() <= 0) 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 else
 A4ZZlVhqV6.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 247: 
 if(A4ZZlVhqV6.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 249: 
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(A4ZZlVhqV6.isMyControlObject() && PfQkLZrEBwQpBgT4o == 10)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 250: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10)
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else if(PfQkLZrEBwQpBgT4o == 11)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 251: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 13)
 A4ZZlVhqV6.addSetStatePacket(14, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else if(PfQkLZrEBwQpBgT4o == 14)
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 252: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0);
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 1:
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10:
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 }
 break;
 case 253: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10) 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 131: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getState(); 
 if(PfQkLZrEBwQpBgT4o != 13)
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 133: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 if(PfQkLZrEBwQpBgT4o == 10) 
 {
 local xethX82VAryurBt1LeE2sx = A4ZZlVhqV6.sq_FindFirstTarget(-400, 400, 400, 400); 
 if(xethX82VAryurBt1LeE2sx) 
 {
 local ggquBgodiTGucejLfl = sq_GetGlobalIntVector();
 sq_IntVectorClear(ggquBgodiTGucejLfl);
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getXPos()); 
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getYPos()); 
 sq_IntVectorPush(ggquBgodiTGucejLfl, xethX82VAryurBt1LeE2sx.getZPos() + sq_GetObjectHeight(xethX82VAryurBt1LeE2sx) / 2); 
 A4ZZlVhqV6.addSetStatePacket(11, ggquBgodiTGucejLfl, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 A4ZZlVhqV6.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 134: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 132: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0);
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10:
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 135: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(PfQkLZrEBwQpBgT4o)
 {
 case 10: 
 A4ZZlVhqV6.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 12:
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 136: 
 if(!A4ZZlVhqV6.isMyControlObject())return;
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 2: 
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 case 139: 
 local TBu7C7vrv88tgEB = A4ZZlVhqV6.getVar("subType").get_vector(0); 
 local PfQkLZrEBwQpBgT4o = A4ZZlVhqV6.getVar("state").get_vector(0); 
 switch(TBu7C7vrv88tgEB)
 {
 case 1: 
 if(PfQkLZrEBwQpBgT4o != 13) 
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 case 3: 
 if(PfQkLZrEBwQpBgT4o != 12) 
 A4ZZlVhqV6.addSetStatePacket(PfQkLZrEBwQpBgT4o + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(A4ZZlVhqV6); 
 break;
 }
 break;
 }
} ;
 
