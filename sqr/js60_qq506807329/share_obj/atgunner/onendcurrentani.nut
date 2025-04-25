
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onEndCurrentAni_po_qq506807329new_atgunner_24376(kkk0B3UpiU2qdccNga32d)
{
 if(!kkk0B3UpiU2qdccNga32d) return;
 local HDYstiEgYffvCsd1b0W = kkk0B3UpiU2qdccNga32d.getVar("skill").get_vector(0);
 switch(HDYstiEgYffvCsd1b0W)
 {
 case 249: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 12:
 case 13:
 case 15:
 case 16:
 case 18:
 case 19:
 case 20:
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 14:
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, kkk0B3UpiU2qdccNga32d.getVar().get_vector(11)); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(15, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 21:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 2:
 if(cIZ1YFJQqWdG3kGtkKUNCU == 12)
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 246: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 2:
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 11:
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 17:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 }
 break;
 case 247: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 local O12YQEDVV_HfQ = kkk0B3UpiU2qdccNga32d.getVar("subStateType").get_vector(0); 
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 10:
 switch(O12YQEDVV_HfQ)
 {
 case 5:
 local jg8nIzGMaRK2b0GfRyzmIX = kkk0B3UpiU2qdccNga32d.getVar("endState").get_vector(0); 
 if(jg8nIzGMaRK2b0GfRyzmIX != -1)
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(jg8nIzGMaRK2b0GfRyzmIX, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 4:
 
 if(SKILL_ATGUNNER_GSPFALCON_isTeleport_po_qq506807329new_atgunner_24376(kkk0B3UpiU2qdccNga32d)) break;
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 2); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 break;
 default:
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, O12YQEDVV_HfQ + 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 11:
 switch(O12YQEDVV_HfQ)
 {
 case 4:
 local jg8nIzGMaRK2b0GfRyzmIX = kkk0B3UpiU2qdccNga32d.getVar("endState").get_vector(0); 
 if(jg8nIzGMaRK2b0GfRyzmIX != -1)
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(jg8nIzGMaRK2b0GfRyzmIX, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 3:
 local xqNU4HEfQGH = kkk0B3UpiU2qdccNga32d.getVar("count").get_vector(0); 
 if(xqNU4HEfQGH > 1)
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 3); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, kkk0B3UpiU2qdccNga32d.getVar("count").get_vector(1)); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, xqNU4HEfQGH - 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 {
 
 if(SKILL_ATGUNNER_GSPFALCON_isTeleport_po_qq506807329new_atgunner_24376(kkk0B3UpiU2qdccNga32d)) break;
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 2); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 default:
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, O12YQEDVV_HfQ + 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 12:
 switch(O12YQEDVV_HfQ)
 {
 case 5:
 local jg8nIzGMaRK2b0GfRyzmIX = kkk0B3UpiU2qdccNga32d.getVar("endState").get_vector(0); 
 if(jg8nIzGMaRK2b0GfRyzmIX != -1)
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(jg8nIzGMaRK2b0GfRyzmIX, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 {
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 4:
 break;
 case 3:
 break;
 default:
 local oG9I6eUIUVweLvauenPjwK = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(oG9I6eUIUVweLvauenPjwK); 
 sq_IntVectorPush(oG9I6eUIUVweLvauenPjwK, O12YQEDVV_HfQ + 1); 
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU, oG9I6eUIUVweLvauenPjwK, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 }
 break;
 case 2:
 if(cIZ1YFJQqWdG3kGtkKUNCU == 11)
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 248: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 if(cIZ1YFJQqWdG3kGtkKUNCU != 16)
 {
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 245: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 if(cIZ1YFJQqWdG3kGtkKUNCU != 12)
 {
 if(cIZ1YFJQqWdG3kGtkKUNCU != 10)
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 244: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 2:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 case 4: 
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 13:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 default:
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 5: 
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 12:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 default:
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 }
 break;
 case 232: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 if(kkk0B3UpiU2qdccNga32d.getState() == 10)
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 case 233: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 if(kkk0B3UpiU2qdccNga32d.getState() == 11)
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 case 234: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 case 235: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 if(xsV_gpQFrKrUjOYYsW != 5 && xsV_gpQFrKrUjOYYsW != 8 && xsV_gpQFrKrUjOYYsW != 9)
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 case 239: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 240: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 12:
 kkk0B3UpiU2qdccNga32d.addSetStatePacket(cIZ1YFJQqWdG3kGtkKUNCU + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 14:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 }
 break;
 case 242: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 case 243: 
 if(!kkk0B3UpiU2qdccNga32d.isMyControlObject())return;
 local xsV_gpQFrKrUjOYYsW = kkk0B3UpiU2qdccNga32d.getVar("subType").get_vector(0); 
 switch(xsV_gpQFrKrUjOYYsW)
 {
 case 1:
 local cIZ1YFJQqWdG3kGtkKUNCU = kkk0B3UpiU2qdccNga32d.getState(); 
 switch(cIZ1YFJQqWdG3kGtkKUNCU)
 {
 case 11:
 sq_SendDestroyPacketPassiveObject(kkk0B3UpiU2qdccNga32d); 
 break;
 }
 break;
 }
 break;
 }
} ;

 
