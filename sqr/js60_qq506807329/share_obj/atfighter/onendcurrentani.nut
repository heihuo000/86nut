
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onEndCurrentAni_po_qq506807329new_atfighter_24375(dkVrZM7aZsEDVrpY5taBFQ)
{
 if(!dkVrZM7aZsEDVrpY5taBFQ) return;
 local l2ptfUCns0I3g7IarGUYL = dkVrZM7aZsEDVrpY5taBFQ.getVar("skill").get_vector(0);
 switch(l2ptfUCns0I3g7IarGUYL)
 {
 case 220: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 223: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 226: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 227: 
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 local Gt9CnhX696VZE = sq_GetCustomAttackInfo(dkVrZM7aZsEDVrpY5taBFQ, 3); 
 sq_SetCurrentAttackBonusRate(Gt9CnhX696VZE, dkVrZM7aZsEDVrpY5taBFQ.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(dkVrZM7aZsEDVrpY5taBFQ, Gt9CnhX696VZE); 
 local Cp_DhpdPRjPbbSz31U = 10; 
 local nOwFzf7sZ8B = 200; 
 dkVrZM7aZsEDVrpY5taBFQ.getVar().push_timer_vector();
 local HNWUkSZmxC2WPw0Z8T54 = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_timer_vector(1);
 HNWUkSZmxC2WPw0Z8T54.setParameter(nOwFzf7sZ8B, Cp_DhpdPRjPbbSz31U); 
 HNWUkSZmxC2WPw0Z8T54.resetInstant(0); 
 HNWUkSZmxC2WPw0Z8T54.setEventOnStart(true); 
 break;
 case 2:
 local J9LObvgoNzQUU = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 switch(J9LObvgoNzQUU)
 {
 case 10:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 }
 break;
 case 228: 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 229: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 local J9LObvgoNzQUU = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 if(J9LObvgoNzQUU != 13)
 dkVrZM7aZsEDVrpY5taBFQ.addSetStatePacket(J9LObvgoNzQUU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 case 230: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 2:
 case 3:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 case 231: 
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 if(dkVrZM7aZsEDVrpY5taBFQ.getState() != 10)break;
 local IiNgFevJl1cr = dkVrZM7aZsEDVrpY5taBFQ.getVar("state").get_vector(0); 
 if(IiNgFevJl1cr != 15)
 {
 local dV8JoTPBcOoy8cMzlw4SW = IiNgFevJl1cr + 1; 
 dkVrZM7aZsEDVrpY5taBFQ.getVar("state").set_vector(0, dV8JoTPBcOoy8cMzlw4SW); 
 local fJGqQOiY39RoLibwSo = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(fJGqQOiY39RoLibwSo); 
 sq_IntVectorPush(fJGqQOiY39RoLibwSo, dV8JoTPBcOoy8cMzlw4SW); 
 dkVrZM7aZsEDVrpY5taBFQ.addSetStatePacket(10, fJGqQOiY39RoLibwSo, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 }
} ;

 
