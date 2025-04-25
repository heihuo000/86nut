
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_po_qq506807329new_swordman_24370(tderjy9h9NwFLDXXP9Gptm)
{
 if(!tderjy9h9NwFLDXXP9Gptm) return;
 local PBUMZ_dch2oZdxRGn4Gjj = tderjy9h9NwFLDXXP9Gptm.getVar("skill").get_vector(0);
 switch(PBUMZ_dch2oZdxRGn4Gjj)
 {
 case 229: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 231: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 230: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 if(uv1hZ1T2SQcmvuSuujFzFAQL == 1)
 {
 local c6dutj9fAHqBx6sLd = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0);
 if(c6dutj9fAHqBx6sLd != 13)
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(c6dutj9fAHqBx6sLd + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm);
 }
 else if(uv1hZ1T2SQcmvuSuujFzFAQL == 2)
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 232: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm);
 break;
 case 233: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm);
 break;
 case 234: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local c6dutj9fAHqBx6sLd = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 if(c6dutj9fAHqBx6sLd == 11)
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 235: 
 if(tderjy9h9NwFLDXXP9Gptm.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 236: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 if(tderjy9h9NwFLDXXP9Gptm.getVar().get_obj_vector_size() <= 0) 
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 237: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 239: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 if(uv1hZ1T2SQcmvuSuujFzFAQL == 1)
 {
 switch(tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0))
 {
 case 10:
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 break;
 case 13:
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 }
 }
 else if(uv1hZ1T2SQcmvuSuujFzFAQL == 3)
 {
 local c6dutj9fAHqBx6sLd = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 if(c6dutj9fAHqBx6sLd == 10)
 {
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "");
 }
 else if(c6dutj9fAHqBx6sLd == 11)
 {
 local WjWkrGWRjm = tderjy9h9NwFLDXXP9Gptm.getParent(); 
 if(WjWkrGWRjm) 
 WjWkrGWRjm.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "");
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 }
 }
 break;
 case 240: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 241: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 if(uv1hZ1T2SQcmvuSuujFzFAQL == 1) 
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 else if(uv1hZ1T2SQcmvuSuujFzFAQL == 2) 
 {
 local _G68JDw0fvwY = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 if(_G68JDw0fvwY != 12)
 {
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 }
 break;
 case 242: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 243: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 local _G68JDw0fvwY = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 switch(uv1hZ1T2SQcmvuSuujFzFAQL)
 {
 case 0:
 switch(_G68JDw0fvwY)
 {
 case 10: 
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 14: 
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 }
 break;
 case 1:
 case 2:
 if(_G68JDw0fvwY != 11)
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 default:
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 }
 break;
 case 244: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 local _G68JDw0fvwY = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 if(uv1hZ1T2SQcmvuSuujFzFAQL == 1)
 {
 if(_G68JDw0fvwY != 15)
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 }
 else if(uv1hZ1T2SQcmvuSuujFzFAQL == 2)
 {
 if(_G68JDw0fvwY != 13)
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
 }
 break;
 case 246: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 local _G68JDw0fvwY = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 switch(uv1hZ1T2SQcmvuSuujFzFAQL)
 {
 case 1:
 if(_G68JDw0fvwY != 11)
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 2:
 if(_G68JDw0fvwY == 10)
 {
 local MirXhypC148Umr = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(MirXhypC148Umr); 
 tderjy9h9NwFLDXXP9Gptm.getVar().clear_obj_vector(); 
 local EXxlrJZt9x3Gel0FD = tderjy9h9NwFLDXXP9Gptm.getVar().get_vector(2); 
 local c8kwBIL1lJP0edl4Zc = tderjy9h9NwFLDXXP9Gptm.getVar().get_vector(3); 
 local Akz633hsk6l1id6955dB = tderjy9h9NwFLDXXP9Gptm.getVar().get_vector(4); 
 local Yef2c9iOd8Qc358V2f7ns = tderjy9h9NwFLDXXP9Gptm.getXPos(); 
 local V_HlY6rd_vnV6y63 = tderjy9h9NwFLDXXP9Gptm.getYPos(); 
 local C7T4MZvruNr3Othlqi = 0; 
 local d2cwc083N7_ZJMG = null; 
 local vOsV7ptg8_oii = -1; 
 local mVMOHvhB93JH = 0; 
 local tu5f4X0_AHsuVG63cO = []; 
 
 local GGT3C7qiHxmi6oS983Erfi = tderjy9h9NwFLDXXP9Gptm.getObjectManager(); 
 for(local F6RlXPoZTsM3 = 0; F6RlXPoZTsM3 < GGT3C7qiHxmi6oS983Erfi.getCollisionObjectNumber(); F6RlXPoZTsM3++)
 {
 local beqyCRevwbyMwYM_ZcxxT = GGT3C7qiHxmi6oS983Erfi.getCollisionObject(F6RlXPoZTsM3); 
 if(beqyCRevwbyMwYM_ZcxxT 
 && beqyCRevwbyMwYM_ZcxxT.isObjectType(OBJECTTYPE_ACTIVE) 
 && tderjy9h9NwFLDXXP9Gptm.isEnemy(beqyCRevwbyMwYM_ZcxxT) 
 && sq_IsHoldable(tderjy9h9NwFLDXXP9Gptm, beqyCRevwbyMwYM_ZcxxT) 
 && beqyCRevwbyMwYM_ZcxxT.isInDamagableState(tderjy9h9NwFLDXXP9Gptm)) 
 {
 local NiUimvWCB7t0IVZfoS5TnQg = sq_GetCNRDObjectToActiveObject(beqyCRevwbyMwYM_ZcxxT); 
 if(NiUimvWCB7t0IVZfoS5TnQg.isDead())continue;
 local D3aXDJxQ5nyXmT3Y = true; 
 switch(vOsV7ptg8_oii)
 {
 case -1: 
 if(sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) 
 vOsV7ptg8_oii = 2;
 else if(sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) 
 vOsV7ptg8_oii = 1;
 else 
 vOsV7ptg8_oii = 0;
 break;
 case 0: 
 if(sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) 
 vOsV7ptg8_oii = 2;
 else if(sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) 
 vOsV7ptg8_oii = 1;
 else if(mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp()) 
 D3aXDJxQ5nyXmT3Y = false;
 break;
 case 1: 
 if(sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) 
 vOsV7ptg8_oii = 2;
 else if(sq_IsNamed(NiUimvWCB7t0IVZfoS5TnQg)) 
 {
 
 if(mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp())
 D3aXDJxQ5nyXmT3Y = false;
 }
 else 
 D3aXDJxQ5nyXmT3Y = false;
 break;
 case 2: 
 if(sq_IsBoss(NiUimvWCB7t0IVZfoS5TnQg)) 
 { 
 if(mVMOHvhB93JH > NiUimvWCB7t0IVZfoS5TnQg.getHp())
 D3aXDJxQ5nyXmT3Y = false;
 }
 else
 D3aXDJxQ5nyXmT3Y = false;
 break;
 }
 
 if(D3aXDJxQ5nyXmT3Y)
 {
 d2cwc083N7_ZJMG = NiUimvWCB7t0IVZfoS5TnQg; 
 mVMOHvhB93JH = NiUimvWCB7t0IVZfoS5TnQg.getHp(); 
 }
 }
 }
 
 if(d2cwc083N7_ZJMG != null && !d2cwc083N7_ZJMG.isDead())
 {
 
 tu5f4X0_AHsuVG63cO.push(sq_GetGroup(d2cwc083N7_ZJMG)); 
 tu5f4X0_AHsuVG63cO.push(sq_GetUniqueId(d2cwc083N7_ZJMG)); 
 
 Yef2c9iOd8Qc358V2f7ns = d2cwc083N7_ZJMG.getXPos();
 V_HlY6rd_vnV6y63 = d2cwc083N7_ZJMG.getYPos();
 C7T4MZvruNr3Othlqi = d2cwc083N7_ZJMG.getZPos();
 
 for(local F6RlXPoZTsM3 = 0; F6RlXPoZTsM3 < GGT3C7qiHxmi6oS983Erfi.getCollisionObjectNumber(); F6RlXPoZTsM3++)
 {
 local beqyCRevwbyMwYM_ZcxxT = GGT3C7qiHxmi6oS983Erfi.getCollisionObject(F6RlXPoZTsM3); 
 if(beqyCRevwbyMwYM_ZcxxT 
 && beqyCRevwbyMwYM_ZcxxT.isObjectType(OBJECTTYPE_ACTIVE) 
 && tderjy9h9NwFLDXXP9Gptm.isEnemy(beqyCRevwbyMwYM_ZcxxT) 
 && sq_IsHoldable(tderjy9h9NwFLDXXP9Gptm, beqyCRevwbyMwYM_ZcxxT) 
 && !isSameObject(beqyCRevwbyMwYM_ZcxxT, d2cwc083N7_ZJMG) 
 && beqyCRevwbyMwYM_ZcxxT.isInDamagableState(tderjy9h9NwFLDXXP9Gptm)) 
 {
 local NiUimvWCB7t0IVZfoS5TnQg = sq_GetCNRDObjectToActiveObject(beqyCRevwbyMwYM_ZcxxT); 
 if(NiUimvWCB7t0IVZfoS5TnQg.isDead())continue; 
 
 if(sq_Abs(Yef2c9iOd8Qc358V2f7ns - NiUimvWCB7t0IVZfoS5TnQg.getXPos()) <= EXxlrJZt9x3Gel0FD
 && sq_Abs(V_HlY6rd_vnV6y63 - NiUimvWCB7t0IVZfoS5TnQg.getYPos()) <= c8kwBIL1lJP0edl4Zc
 && sq_Abs(C7T4MZvruNr3Othlqi - NiUimvWCB7t0IVZfoS5TnQg.getZPos()) <= Akz633hsk6l1id6955dB)
 {
 tu5f4X0_AHsuVG63cO.push(sq_GetGroup(NiUimvWCB7t0IVZfoS5TnQg)); 
 tu5f4X0_AHsuVG63cO.push(sq_GetUniqueId(NiUimvWCB7t0IVZfoS5TnQg)); 
 }
 }
 }
 }
 sq_IntVectorPush(MirXhypC148Umr, tu5f4X0_AHsuVG63cO.len()); 
 foreach(member in tu5f4X0_AHsuVG63cO)
 sq_IntVectorPush(MirXhypC148Umr, member); 
 sq_IntVectorPush(MirXhypC148Umr, Yef2c9iOd8Qc358V2f7ns); 
 sq_IntVectorPush(MirXhypC148Umr, V_HlY6rd_vnV6y63); 
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(11, MirXhypC148Umr, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 3:
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 }
 break;
 case 47: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 247: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local _G68JDw0fvwY = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0); 
 if(_G68JDw0fvwY != 13)
 {
 tderjy9h9NwFLDXXP9Gptm.addSetStatePacket(_G68JDw0fvwY + 1, null, STATE_PRIORITY_AUTO, false, "");
 }
 else
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 67: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 case 248: 
 if(!tderjy9h9NwFLDXXP9Gptm.isMyControlObject())return;
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar("subType").get_vector(0); 
 switch(uv1hZ1T2SQcmvuSuujFzFAQL)
 {
 case 2:
 case 3:
 case 5:
 case 6:
 case 7: 
 sq_SendDestroyPacketPassiveObject(tderjy9h9NwFLDXXP9Gptm); 
 break;
 }
 break;
 }
} ;
 
