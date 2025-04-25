
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onEndCurrentAni_po_qq506807329new_atmage_24377(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 local ZEJlR93Xfq3u0L_E3MG4q = wFIP1mA9lyqJj.getVar("skill").get_vector(0);
 local JmYGXVlARzl = wFIP1mA9lyqJj.getVar("subType").get_vector(0); 
 local PpBEN997hbYDnZ9Kee1 = wFIP1mA9lyqJj.getVar("state").get_vector(0); 
 switch(ZEJlR93Xfq3u0L_E3MG4q)
 {
 case 243: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 12)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1+1, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 244: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 12)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1 + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 245: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 == 12)
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 case 2:
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 246: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 == 10)
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 247: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 case 248: 
 if(!wFIP1mA9lyqJj.isMyControlObject()) return;
 switch(JmYGXVlARzl)
 {
 case 1:
 if(PpBEN997hbYDnZ9Kee1 != 14)
 wFIP1mA9lyqJj.addSetStatePacket(PpBEN997hbYDnZ9Kee1 + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(wFIP1mA9lyqJj); 
 break;
 }
 break;
 }
} ;

 
