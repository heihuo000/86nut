
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
 
function onEndCurrentAni_po_qq506807329new_fighter_24373(EDE4CvsO7QuyHl)
{
 if(!EDE4CvsO7QuyHl) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local P1WGJ7m_Cgg = EDE4CvsO7QuyHl.getVar("skill").get_vector(0);
 switch(P1WGJ7m_Cgg)
 {
 case 225: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 local iyAPkgEvly = EDE4CvsO7QuyHl.getVar("subType").get_vector(0); 
 if(iyAPkgEvly == 1)
 {
 if(EDE4CvsO7QuyHl.getVar("state").get_vector(0) == 11)
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 }
 else if(iyAPkgEvly == 2)
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 226: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 local iyAPkgEvly = EDE4CvsO7QuyHl.getVar("subType").get_vector(0); 
 if(iyAPkgEvly == 1 && EDE4CvsO7QuyHl.getVar("state").get_vector(0) == 11)
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 else if(iyAPkgEvly == 2)
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 227: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 local QezfLJKeBTjilte8j = EDE4CvsO7QuyHl.getParent(); 
 if(QezfLJKeBTjilte8j && QezfLJKeBTjilte8j.getState() == 227)
 QezfLJKeBTjilte8j.sendStateOnlyPacket(STATE_STAND); 
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 228: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 229: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 230: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 231: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 232: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 233: 
 local iyAPkgEvly = EDE4CvsO7QuyHl.getVar("subType").get_vector(0); 
 switch(iyAPkgEvly)
 {
 case 1: 
 EDE4CvsO7QuyHl.setCurrentAnimation(null); 
 break;
 case 2:
 case 3:
 case 4: 
 if(EDE4CvsO7QuyHl.isMyControlObject())
 {
 if(EDE4CvsO7QuyHl.getVar("state").get_vector(0) == 10)
 EDE4CvsO7QuyHl.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 else
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 }
 break;
 }
 break;
 case 234: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 237: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 local EoeR7u_bT8x4nqVsMnNRj = EDE4CvsO7QuyHl.getVar("state").get_vector(0); 
 if(EoeR7u_bT8x4nqVsMnNRj == 10)
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 238: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 case 239: 
 if(!EDE4CvsO7QuyHl.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(EDE4CvsO7QuyHl); 
 break;
 }
} ;
