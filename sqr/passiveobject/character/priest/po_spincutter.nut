
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



S_PO_SPINCUTTER_THROW <-10
 S_PO_SPINCUTTER_RECALL <-11

 VECTOR_I_RECALL_FLAG <-0
 VECTOR_I_RECALL_STD_X <-1
 VECTOR_I_MULTI_HIT_COUNT <-2
 VECTOR_I_ATTACK_RATE <-3  


function setCustomData_po_Spincutter(EZn_MJUV730cXRHhGRlUDKi, vAJySiIlk0rRY1MTiETV)
{
 local NjVsAur399UWJny0j = vAJySiIlk0rRY1MTiETV.readDword(); 
 EZn_MJUV730cXRHhGRlUDKi.getVar("subType").clear_vector();
 EZn_MJUV730cXRHhGRlUDKi.getVar("subType").push_vector(NjVsAur399UWJny0j);
 if(NjVsAur399UWJny0j == 1)
 {
 local Lfn3ZhwSDTGg = vAJySiIlk0rRY1MTiETV.readDword();
 local satzpXX10zho = vAJySiIlk0rRY1MTiETV.readDword();
 EZn_MJUV730cXRHhGRlUDKi.sq_var.push_vector(0);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.push_vector(0);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.push_vector(0);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.push_vector(0);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.push_vector(0);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.set_vector(2, Lfn3ZhwSDTGg);
 EZn_MJUV730cXRHhGRlUDKi.sq_var.set_vector(3, satzpXX10zho);
 local E1HxPRKkFQVCnvqMxQyS_zu = sq_GetCustomAttackInfo(EZn_MJUV730cXRHhGRlUDKi, 0);
 sq_SetCurrentAttackInfo(EZn_MJUV730cXRHhGRlUDKi, E1HxPRKkFQVCnvqMxQyS_zu);
 local tV6b9JX9S0Z9BoCwnOh = sq_GetCurrentAttackInfo(EZn_MJUV730cXRHhGRlUDKi);
 sq_SetCurrentAttackBonusRate(tV6b9JX9S0Z9BoCwnOh, satzpXX10zho);
 local hmDgA2vXqnZ3SegGvaoNU = EZn_MJUV730cXRHhGRlUDKi.getCurrentAnimation();
 local obT01eY3ri3babqPF6p_N = 0;
 local iHhSX7Yrjz3vg = hmDgA2vXqnZ3SegGvaoNU.getDelaySum(false);
 local FA0at6sW0tZLE = EZn_MJUV730cXRHhGRlUDKi.sq_var.get_vector(2);
 local ReTIGNgHEiobh_LWzH8VN2 = 500 / FA0at6sW0tZLE;
 
 EZn_MJUV730cXRHhGRlUDKi.timer_.setParameter(ReTIGNgHEiobh_LWzH8VN2, FA0at6sW0tZLE);
 EZn_MJUV730cXRHhGRlUDKi.timer_.resetInstant(obT01eY3ri3babqPF6p_N);
 
 }
 else if(NjVsAur399UWJny0j == 2) 
 {
 local Lfn3ZhwSDTGg = vAJySiIlk0rRY1MTiETV.readDword();
 local satzpXX10zho = vAJySiIlk0rRY1MTiETV.readDword();
 local E1HxPRKkFQVCnvqMxQyS_zu = sq_GetCustomAttackInfo(EZn_MJUV730cXRHhGRlUDKi, 2); 
 sq_SetCurrentAttackBonusRate(E1HxPRKkFQVCnvqMxQyS_zu, satzpXX10zho); 
 sq_SetCurrentAttackInfo(EZn_MJUV730cXRHhGRlUDKi, E1HxPRKkFQVCnvqMxQyS_zu); 
 local N4wvGghHpF186qk = sq_GetCustomAttackInfo(EZn_MJUV730cXRHhGRlUDKi, 1); 
 sq_SetCurrentAttackBonusRate(N4wvGghHpF186qk, satzpXX10zho); 
 EZn_MJUV730cXRHhGRlUDKi.getVar().push_vector(Lfn3ZhwSDTGg); 
 if(EZn_MJUV730cXRHhGRlUDKi.isMyControlObject())
 EZn_MJUV730cXRHhGRlUDKi.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 }
} ;


function setState_po_Spincutter(q6yToCNenDoAf1tPki2bB, zm3EhSiD_RS4U6LxTU406RV, uP4PFt5QG5AIQUcrC)
{
 local HUMpd8KNTdzBHAEQcUUmM = zm3EhSiD_RS4U6LxTU406RV;
 local EquWfwXNwL6aKicHfBZJQ = q6yToCNenDoAf1tPki2bB.getVar("subType").get_vector(0); 
 if(EquWfwXNwL6aKicHfBZJQ == 1)
 {
 if(HUMpd8KNTdzBHAEQcUUmM == 10)
 {
 }
 else if(HUMpd8KNTdzBHAEQcUUmM == 11)
 {
 local uLu050wJbdF08G2DSU3U = q6yToCNenDoAf1tPki2bB.getCustomAnimation(0);
 local UKxZa4IoPUqw = sq_GetVectorData(uP4PFt5QG5AIQUcrC, 0); 
 q6yToCNenDoAf1tPki2bB.setCurrentAnimation(uLu050wJbdF08G2DSU3U);
 q6yToCNenDoAf1tPki2bB.sq_var.set_vector(1, UKxZa4IoPUqw);
 
 local ehad5XFsaAnK9IDEwrDCnc = sq_GetDefaultAttackInfo(q6yToCNenDoAf1tPki2bB);
 sq_SetCurrentAttackInfo(q6yToCNenDoAf1tPki2bB, ehad5XFsaAnK9IDEwrDCnc);
 local H8SVcbGURG = q6yToCNenDoAf1tPki2bB.sq_var.get_vector(3);
 local GRkhQ9XJi7B1wgX = sq_GetCurrentAttackInfo(q6yToCNenDoAf1tPki2bB);
 
 sq_SetCurrentAttackBonusRate(GRkhQ9XJi7B1wgX, H8SVcbGURG);
 local EzgoubgntsMiHb3V2GV8 = q6yToCNenDoAf1tPki2bB.getCurrentAnimation();
 local HRR0OyXJ6mnQ = 0;
 local frtb4ttXqywE1A41_flDcA = EzgoubgntsMiHb3V2GV8.getDelaySum(false);
 local GimocO7DkONuKIvAOCiEgk = q6yToCNenDoAf1tPki2bB.sq_var.get_vector(2);
 
 local PcJH7e5HsvdlyvC = frtb4ttXqywE1A41_flDcA / GimocO7DkONuKIvAOCiEgk;
 q6yToCNenDoAf1tPki2bB.timer_.setParameter(PcJH7e5HsvdlyvC, GimocO7DkONuKIvAOCiEgk);
 q6yToCNenDoAf1tPki2bB.timer_.resetInstant(HRR0OyXJ6mnQ);
 
 }
 }
 else if(EquWfwXNwL6aKicHfBZJQ == 2)
 {
 switch(HUMpd8KNTdzBHAEQcUUmM)
 {
 case 10:
 setCurrentAnimationFromCutomIndex(q6yToCNenDoAf1tPki2bB, 4);
 local a2xAC4xrazTALt8zaXXFY = q6yToCNenDoAf1tPki2bB.getCurrentAnimation();
 a2xAC4xrazTALt8zaXXFY.setLoop(false); 
 break;
 case 11:
 setCurrentAnimationFromCutomIndex(q6yToCNenDoAf1tPki2bB, 5);
 local qQsZESxtirFq5mXOzW1EcYb = q6yToCNenDoAf1tPki2bB.getVar().get_vector(0); 
 q6yToCNenDoAf1tPki2bB.setTimeEvent(0, 30, qQsZESxtirFq5mXOzW1EcYb - 3, false);
 q6yToCNenDoAf1tPki2bB.getVar("isAtk").setBool(0, false); 
 break;
 case 12:
 if(!q6yToCNenDoAf1tPki2bB.getCurrentAnimation().isLoop()) 
 setCurrentAnimationFromCutomIndex(q6yToCNenDoAf1tPki2bB, 5); 
 sq_SetCurrentAttackInfoFromCustomIndex(q6yToCNenDoAf1tPki2bB, 1); 
 q6yToCNenDoAf1tPki2bB.setTimeEvent(0, 20, 1, false); 
 break;
 }
 }
} ;

function procAppend_po_Spincutter(naNoWMuxMcQMLjY15VR)
{
 local o_ljIxMuGipF487 = naNoWMuxMcQMLjY15VR.getTopCharacter();
 if(!o_ljIxMuGipF487)
 {
 if(naNoWMuxMcQMLjY15VR.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(naNoWMuxMcQMLjY15VR);
 return;
 }
 local tBoPKjmpj_GbHOpt81 = o_ljIxMuGipF487.getState();
 local mZnE6__UOwFCPo4C = o_ljIxMuGipF487.getSkillSubState();
 local ICbAj8_IUkl6 = o_ljIxMuGipF487.getCurrentAnimation();
 local tY2YTObaePLSL7R55yADqWrx = ICbAj8_IUkl6.GetCurrentFrameIndex();
 local rAnVjnbQA68L3TdgHkeY = sq_IsEnd(ICbAj8_IUkl6);
 local R0dWWeOaGxknVQNMhDqaq81c = true;
 if(tBoPKjmpj_GbHOpt81 != 61)
 {
 if(naNoWMuxMcQMLjY15VR.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(naNoWMuxMcQMLjY15VR);
 return;
 }
 local qWfgd91HAcAwa = naNoWMuxMcQMLjY15VR.getVar("subType").get_vector(0); 
 if(qWfgd91HAcAwa == 1)
 {
 if(mZnE6__UOwFCPo4C == 0)
 {
 }
 else if(mZnE6__UOwFCPo4C == 1)
 {
 local lHuVRIp84hhhU1sHj_LfQW = naNoWMuxMcQMLjY15VR.sq_var.get_vector(0);
 if(lHuVRIp84hhhU1sHj_LfQW == 0)
 {
 naNoWMuxMcQMLjY15VR.sq_var.set_vector(0, 1);
 if(R0dWWeOaGxknVQNMhDqaq81c == true)
 {
 
 local BlsjPw4tG5BHcCe = sq_GetGlobalIntVector();
 sq_IntVectorClear(BlsjPw4tG5BHcCe);
 sq_IntVectorPush(BlsjPw4tG5BHcCe, naNoWMuxMcQMLjY15VR.getXPos());
 
 naNoWMuxMcQMLjY15VR.addSetStatePacket(11, BlsjPw4tG5BHcCe, STATE_PRIORITY_AUTO, false, "");
 
 }
 }
 else
 {
 if(naNoWMuxMcQMLjY15VR.getState() == 11)
 {
 local KCXbMMBz0xV5AaV = sq_GetDistancePos(o_ljIxMuGipF487.getXPos(), naNoWMuxMcQMLjY15VR.getDirection(), 80);
 
 local FxazoiQB_wEpP = sq_GetCurrentTime(ICbAj8_IUkl6);
 local KCrW3zI5dNcK = ICbAj8_IUkl6.getDelaySum(false);
 local du_xz8I51QA6baBb = naNoWMuxMcQMLjY15VR.sq_var.get_vector(1);
 local zTAGY0Z9ixnY8fNjKsU0I = sq_GetAccel(du_xz8I51QA6baBb, KCXbMMBz0xV5AaV, FxazoiQB_wEpP, KCrW3zI5dNcK, false);
 
 local p27Haxxv8Ann = naNoWMuxMcQMLjY15VR.getYPos();
 local Z7EQy7awT9jZrDUIMi = naNoWMuxMcQMLjY15VR.getZPos();
 naNoWMuxMcQMLjY15VR.setCurrentPos(zTAGY0Z9ixnY8fNjKsU0I, p27Haxxv8Ann, Z7EQy7awT9jZrDUIMi);
 
 }
 }
 
 
 
 
 
 }
 else if(mZnE6__UOwFCPo4C == 2)
 {
 sq_SendDestroyPacketPassiveObject(naNoWMuxMcQMLjY15VR);
 return;
 }
 local yrzIIKIgYDdG6mD6py = naNoWMuxMcQMLjY15VR.getCurrentAnimation();
 local vZdNbXIV6OHJ9z1lfhjVP = sq_GetCurrentTime(yrzIIKIgYDdG6mD6py);
 if(naNoWMuxMcQMLjY15VR.timer_.isOnEvent(vZdNbXIV6OHJ9z1lfhjVP) == true)
 {
 
 naNoWMuxMcQMLjY15VR.resetHitObjectList();
 }
 }
 else if(qWfgd91HAcAwa == 2)
 {
 local DUjosaakUfkrKTAuVF = naNoWMuxMcQMLjY15VR.getState(); 
 switch(DUjosaakUfkrKTAuVF)
 {
 case 11:
 if(!naNoWMuxMcQMLjY15VR.isExistTimeEvent(0)) 
 {
 if(mZnE6__UOwFCPo4C != 2
 && mZnE6__UOwFCPo4C != 3
 && naNoWMuxMcQMLjY15VR.getVar("isAtk").getBool(0) == false)
 {
 naNoWMuxMcQMLjY15VR.getVar("isAtk").setBool(0, true);
 o_ljIxMuGipF487 = sq_GetCNRDObjectToSQRCharacter(naNoWMuxMcQMLjY15VR.getParent());
 if(o_ljIxMuGipF487 && o_ljIxMuGipF487.sq_IsMyControlObject())
 {
 o_ljIxMuGipF487.sq_IntVectClear();
 o_ljIxMuGipF487.sq_IntVectPush(2);
 o_ljIxMuGipF487.sq_AddSetStatePacket(61, STATE_PRIORITY_USER, true);
 }
 }
 }
 break;
 case 12:
 if(mZnE6__UOwFCPo4C == 4 && naNoWMuxMcQMLjY15VR.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(naNoWMuxMcQMLjY15VR);
 break;
 }
 }
} ;

function onTimeEvent_po_Spincutter(VABqqZtyWvN93688, ElP6xENj55Z60a, yypsW3KlVefzZWr_BdBlf)
{
 if(ElP6xENj55Z60a == 0)
 VABqqZtyWvN93688.resetHitObjectList(); 
} ;

function onEndCurrentAni_po_Spincutter(UVdg92utcpl9fp8LtMTK1)
{
 if(!UVdg92utcpl9fp8LtMTK1.isMyControlObject())return;
 local avOJ_p_CbrvJ = UVdg92utcpl9fp8LtMTK1.getState(); 
 if(avOJ_p_CbrvJ != 12)
 UVdg92utcpl9fp8LtMTK1.addSetStatePacket(avOJ_p_CbrvJ + 1, null, STATE_PRIORITY_AUTO, false, "");
 else
 sq_SendDestroyPacketPassiveObject(UVdg92utcpl9fp8LtMTK1); 
} ;


function onDestroyObject_po_Spincutter(qhmqyDF51d9lwHcqvfl, SPl_dAol4lxyX4T1PflybC)
{
} ;




