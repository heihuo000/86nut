
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


S_FLOW_NORMAL <-0  
 S_FLOW_PRIEST <-1  
 S_FLOW_RETURN <-2  

  
 SL_PERFECT_CHANGE_HP <-0  
 SL_CHANGE_TIME <-1  
 SL_DEF_INC <-2  
 SL_ATK_SPD <-3  
 SL_MOV_SPD <-4  
 SL_1_HIT_MAGIC_ATK <-5  
 SL_2_HIT_MAGIC_ATK <-6  
 SL_3_HIT_MAGIC_ATK <-7  
 SL_DASH_MAGIC_ATK <-8  
 SL_JUMP_MAGIC_ATK <-9  
 SL_JUMP_FULLCHARGE_MAGIC_ATK <-10  


  
  
 SL_DS_ATTACK1_GAUGE_COMSUME <-0  
 SL_DS_ATTACK2_GAUGE_COMSUME <-1  
 SL_DS_ATTACK3_GAUGE_COMSUME <-2  
 SL_DS_ATTACK1_ATTACK_RATE <-3  
 SL_DS_ATTACK2_ATTACK_RATE <-4  
 SL_DS_ATTACK3_ATTACK_RATE <-5  


  
 SL_DS_ATTACK1_GAUGE_COMSUME <-0  
 SL_DS_ATTACK2_GAUGE_COMSUME <-1  
 SL_DS_ATTACK3_GAUGE_COMSUME <-2  
 SL_DS_ATTACK1_ATTACK_RATE <-3  
 SL_DS_ATTACK2_ATTACK_RATE <-4  
 SL_DS_ATTACK3_ATTACK_RATE <-5  


  
 DEVILSTRIKE_ATTACK_1 <-0
 DEVILSTRIKE_ATTACK_2 <-1
 DEVILSTRIKE_ATTACK_3 <-2

  
 DS_APEND_MAX_GAUGE <-0  
 DS_APEND_GAUGE <-1  
 DS_APEND_LAST_GAUGE <-2  
 DS_APEND_ADD_FLAG <-3  
 DS_APEND_BEFORE_ADD <-4;  


  
function isAvengerAwakenning(Hmi0iELa3kFXc)
{
 if(!Hmi0iELa3kFXc) return false;
 local iP1a23I4jP0KHg0 = Hmi0iELa3kFXc.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
 if(iP1a23I4jP0KHg0)
 {
 
 
 
 
 local eU4xZEFJM2y3HHx = iP1a23I4jP0KHg0.sq_var.get_vector(2);
 if(eU4xZEFJM2y3HHx)
 {
 return true;
 }
 }
 return false;
} ;

function isGrowTypeAvenger(XtZ0dcj9xiMrT5cA) 
{
 if(!XtZ0dcj9xiMrT5cA) return false;
 if(sq_getJob(XtZ0dcj9xiMrT5cA) == ENUM_CHARACTERJOB_PRIEST && sq_getGrowType(XtZ0dcj9xiMrT5cA) == GROW_TYPE_AVENGER) return true; 
 return false;
} ;

 
function isExecutableStateDevilStrike(TjptsUk8g4zrNixxqWypt1)
{
 if(!TjptsUk8g4zrNixxqWypt1) return false;
 if(isAvengerAwakenning(TjptsUk8g4zrNixxqWypt1)) return false;
 local ktuBfLPjQuXVnHZY7pB8WZ = sq_GetSkill(TjptsUk8g4zrNixxqWypt1, 123);
 local jqpk1gxpQn = false;
 if(ktuBfLPjQuXVnHZY7pB8WZ)
 {
 local M_5A4iUTXN4dBUiV7M = TjptsUk8g4zrNixxqWypt1.getState();
 jqpk1gxpQn = ktuBfLPjQuXVnHZY7pB8WZ.isExcutableState(M_5A4iUTXN4dBUiV7M);
 
 if(jqpk1gxpQn)
 {
 if(M_5A4iUTXN4dBUiV7M == STATE_THROW)
 { 
 if(TjptsUk8g4zrNixxqWypt1.getThrowIndex() != SKILL_GRASP_HAND_OF_ANGER && TjptsUk8g4zrNixxqWypt1.getThrowIndex() != 10)
 {
 jqpk1gxpQn = false;
 }
 }
 }
 local XtlwBF3jO25Npd = TjptsUk8g4zrNixxqWypt1.getVar("devilStrike");
 if(jqpk1gxpQn)
 {
 local LZQgtYzN_6yGfDAlfpoUdvH8 = XtlwBF3jO25Npd.get_vector(1); 
 if(M_5A4iUTXN4dBUiV7M == LZQgtYzN_6yGfDAlfpoUdvH8)
 {
 
 }
 else
 {
 XtlwBF3jO25Npd.set_vector(2, 0); 
 XtlwBF3jO25Npd.set_vector(1, M_5A4iUTXN4dBUiV7M);
 }
 }
 else
 {
 XtlwBF3jO25Npd.set_vector(2, 0); 
 XtlwBF3jO25Npd.set_vector(1, M_5A4iUTXN4dBUiV7M);
 }
 }
 return jqpk1gxpQn;
} ;


 
function getDevilStrikeConsumeValue(nBNlvRQF9bfJnZeibI, Pde5MhaiCUvMBr8o)
{
 if(!nBNlvRQF9bfJnZeibI) return 999999; 
 local MyB0MmNPQWbD = sq_GetSkillLevel(nBNlvRQF9bfJnZeibI, 123);
 local Qq5fVeuLM2wdY7RmjRh = sq_GetLevelData(nBNlvRQF9bfJnZeibI, 123, 0 + Pde5MhaiCUvMBr8o, MyB0MmNPQWbD);
 return Qq5fVeuLM2wdY7RmjRh;
} ;


 
function isInDevilStrike(REmkWv7RQfm9UQmoAnkFN)
{
 if(!REmkWv7RQfm9UQmoAnkFN) return false;
 local V1sMxzTN8h_NTJ5n = sq_GetSkillLevel(REmkWv7RQfm9UQmoAnkFN, 123);
 if(V1sMxzTN8h_NTJ5n <= 0) return false;
 local JWpz4Z81GP69EI8F7I = REmkWv7RQfm9UQmoAnkFN.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(JWpz4Z81GP69EI8F7I)
 {
 if(JWpz4Z81GP69EI8F7I.isValid() && V1sMxzTN8h_NTJ5n > 0)
 {
 if(!isExecutableStateDevilStrike(REmkWv7RQfm9UQmoAnkFN)) return false; 
 return true;
 }
 }
 return false;
} ;


 
function isInDevilStrikeSkill(NMhZmKwQfBn8aMnSQ)
{
 if(!NMhZmKwQfBn8aMnSQ) return false;
 local L2HK59VxppjDmiF7 = sq_GetSkillLevel(NMhZmKwQfBn8aMnSQ, 123);
 if(L2HK59VxppjDmiF7 <= 0) return false;
 local lX1PfxE5B3 = NMhZmKwQfBn8aMnSQ.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(lX1PfxE5B3)
 {
 if(lX1PfxE5B3.isValid() && L2HK59VxppjDmiF7 > 0)
 {
 return true;
 }
 }
 return false;
} ;

 
 
function IsAddDevilGauge(eT1ZYAPjGFSllUCFGyJ9, tCeL8vZfrAAmNf11)
{
 if(!eT1ZYAPjGFSllUCFGyJ9) return false;
 local jq5dWidQ0N3jbgv = eT1ZYAPjGFSllUCFGyJ9.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 local dNPH1vtK2W31ZcpZSzVU4 = -1;
 if(jq5dWidQ0N3jbgv)
 {
 dNPH1vtK2W31ZcpZSzVU4 = jq5dWidQ0N3jbgv.sq_var.get_vector(3);
 }
 
 if(dNPH1vtK2W31ZcpZSzVU4 >= 0)
 { 
 return true;
 }
 return false;
} ;



 
 

function IsEnableDevilStrike(ipRZARiyyRNDQfuH15Ji1a, dGGPksYXesDPI9TVNO56E)
{
 if(!ipRZARiyyRNDQfuH15Ji1a) return false;
 if(!isInDevilStrike(ipRZARiyyRNDQfuH15Ji1a)) return false;
 
 
 
 
 
 
 
 
 
 
 
 
 local ux_91vVKBJHmh5BCKCQ = ipRZARiyyRNDQfuH15Ji1a.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(!ux_91vVKBJHmh5BCKCQ) return false;
 if(ux_91vVKBJHmh5BCKCQ.sq_var.size_vector() > 1)
 {
 
 
 
 local FjGYmYfqZQBr7QUpAoa9 = 0;
 if(dGGPksYXesDPI9TVNO56E == 0)
 { 
 FjGYmYfqZQBr7QUpAoa9 = 1;
 }
 else if(dGGPksYXesDPI9TVNO56E == 1)
 { 
 FjGYmYfqZQBr7QUpAoa9 = 2;
 }
 else if(dGGPksYXesDPI9TVNO56E == 2)
 { 
 FjGYmYfqZQBr7QUpAoa9 = 0;
 }
 local zgBX8SmM3LwbCCOIaQf8SMfZ = getDevilStrikeConsumeValue(ipRZARiyyRNDQfuH15Ji1a, FjGYmYfqZQBr7QUpAoa9);
 
 
 local bJhTqnWkSg1KSkCGeG = ux_91vVKBJHmh5BCKCQ.sq_var.get_vector(1); 
 if(bJhTqnWkSg1KSkCGeG >= zgBX8SmM3LwbCCOIaQf8SMfZ) return true;
 else
 {
 
 if(ipRZARiyyRNDQfuH15Ji1a.isMessage())
 {
 sq_AddMessage(29002); 
 }
 return false;
 }
 }
 return false;
} ;

 
function getLoadSkillEnableTime(wJi6CQjX05Kg9MMEge2, ov_ZNK3_qlkQp06pp0e, zOBSsYOEl5YEAmlvJh83bj)
{
 if(!wJi6CQjX05Kg9MMEge2) return 0;
 local RTi58ZUof_eulQybp9kb4 = sq_GetSkill(wJi6CQjX05Kg9MMEge2, ov_ZNK3_qlkQp06pp0e);
 local LJAmQzCZ9aBMg64QmAFGi = sq_GetSkillLevel(wJi6CQjX05Kg9MMEge2, ov_ZNK3_qlkQp06pp0e);
 local Ep_BWZHC5XYSHldQoef = 0;
 if(RTi58ZUof_eulQybp9kb4 == null)
 return Ep_BWZHC5XYSHldQoef;
 Ep_BWZHC5XYSHldQoef = wJi6CQjX05Kg9MMEge2.sq_getIntData(ov_ZNK3_qlkQp06pp0e, zOBSsYOEl5YEAmlvJh83bj);
 
 return Ep_BWZHC5XYSHldQoef;
 
} ;



 
 

function isEnterDevilStrike(ve7nZCzLGYJgGf, et3kX1Cw0nfZHVuLk6wxH7xf, g1mRbnrAIG5LuMpc)
{
 if(!ve7nZCzLGYJgGf) return false;
 local y_c2TVbFhi = false;
 local C9VAI1R_dnx09988w0w = sq_GetKeyxEnable(ve7nZCzLGYJgGf, et3kX1Cw0nfZHVuLk6wxH7xf);
 sq_SetKeyxEnable(ve7nZCzLGYJgGf, et3kX1Cw0nfZHVuLk6wxH7xf, true);
 local X_F1xZfR61H = sq_IsEnterCommand(ve7nZCzLGYJgGf, et3kX1Cw0nfZHVuLk6wxH7xf);
 
 if(X_F1xZfR61H)
 {
 y_c2TVbFhi = IsEnableDevilStrike(ve7nZCzLGYJgGf, g1mRbnrAIG5LuMpc); 
 }
 
 
 return y_c2TVbFhi;
} ;


 
function getDevilGauge(VdVp4bnnDnS0AQU)
{
 if(!VdVp4bnnDnS0AQU) return 0;
 local Fpy0pIyv8CgbMyM = VdVp4bnnDnS0AQU.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 local fyxCzdcP2sDZ2eVtD9HoRw3r = 0;
 if(!Fpy0pIyv8CgbMyM) return 0;
 if(Fpy0pIyv8CgbMyM.sq_var.size_vector() > 1)
 {
 
 fyxCzdcP2sDZ2eVtD9HoRw3r = Fpy0pIyv8CgbMyM.sq_var.get_vector(1); 
 }
 return fyxCzdcP2sDZ2eVtD9HoRw3r;
} ;

function getDevilMaxGaugeValue(jPSS2LWvm7P)
{
 if(!jPSS2LWvm7P) return 0;
 local xMUKQwTu96 = jPSS2LWvm7P.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(!xMUKQwTu96) return 0;
 local OPkrfS4jG3jLjiKY = 0;
 if(xMUKQwTu96.sq_var.size_vector() > 1)
 {
 OPkrfS4jG3jLjiKY = xMUKQwTu96.sq_var.get_vector(0); 
 }
 return OPkrfS4jG3jLjiKY;
} ;


 
function setDevilGauge(SrNb9Q7f6wkpwz29ZQkyJTY, zacvJWfJkYv)
{
 if(!SrNb9Q7f6wkpwz29ZQkyJTY) return 0;
 local QhwH6t5YjwUHME0leW54nH = SrNb9Q7f6wkpwz29ZQkyJTY.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(!QhwH6t5YjwUHME0leW54nH) return 0;
 if(QhwH6t5YjwUHME0leW54nH.sq_var.size_vector() > 1)
 {
 QhwH6t5YjwUHME0leW54nH.sq_var.set_vector(1, zacvJWfJkYv); 
 }
} ;

 
function consumeDevilGauge(yQFM7VwaXSjpJL1WPlH, A2KuBJadEjGOyJXdp)
{
 if(!yQFM7VwaXSjpJL1WPlH) return;
 local lf_nObE4qBrajOP0B3Ab2iQ = getDevilGauge(yQFM7VwaXSjpJL1WPlH);
 local DxNP40NUoJ5lv9spYZUg9i = yQFM7VwaXSjpJL1WPlH.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(DxNP40NUoJ5lv9spYZUg9i)
 {
 
 
 
 DxNP40NUoJ5lv9spYZUg9i.sq_var.set_vector(2, lf_nObE4qBrajOP0B3Ab2iQ); 
 DxNP40NUoJ5lv9spYZUg9i.getTimer().Reset();
 DxNP40NUoJ5lv9spYZUg9i.getTimer().Start(0, 0);
 }
 local tMtZKRDL5FqHtQZ_qMb2WRux = lf_nObE4qBrajOP0B3Ab2iQ - A2KuBJadEjGOyJXdp;
 if(tMtZKRDL5FqHtQZ_qMb2WRux < 0)
 tMtZKRDL5FqHtQZ_qMb2WRux = 0;
 setDevilGauge(yQFM7VwaXSjpJL1WPlH, tMtZKRDL5FqHtQZ_qMb2WRux);
} ;

 
 
 
 
function getDSGConvertbyNightmare(YAESpbu1LTsBD4SVyIT, MHCDbgJ3YhCegXXzYDz) 
{
 if(!YAESpbu1LTsBD4SVyIT) return 0;
 local HLCF7PXkoU995rIDHJrC = sq_GetSkillLevel(YAESpbu1LTsBD4SVyIT, 122);
 local afzP8nLqoizrNJ6C8YHx = sq_GetLevelData(YAESpbu1LTsBD4SVyIT, 122, 0, HLCF7PXkoU995rIDHJrC); 
 if(afzP8nLqoizrNJ6C8YHx < 0)
 afzP8nLqoizrNJ6C8YHx = 0;
 local GMyD6we7THmn_Qx = MHCDbgJ3YhCegXXzYDz + afzP8nLqoizrNJ6C8YHx;
 return GMyD6we7THmn_Qx;
} ;


 
function addDevilGauge(xQTNgWJJwu2yr, yIgNKLcDsfDGN2cSo6mpVgIG)
{
 if(!xQTNgWJJwu2yr) return;
 local GJStmcOR2c8s = getDevilGauge(xQTNgWJJwu2yr);
 
 local PRPRyueQTGakMC = getDSGConvertbyNightmare(xQTNgWJJwu2yr, yIgNKLcDsfDGN2cSo6mpVgIG);
 local V2O0mG41SbDL3qCbfh_j = PRPRyueQTGakMC - yIgNKLcDsfDGN2cSo6mpVgIG;
 
 local Yp9jEQ82jFWQ2P0F8DcWWN5z = GJStmcOR2c8s + PRPRyueQTGakMC;
 local ojPuN1McAaPmQBt = getDevilMaxGaugeValue(xQTNgWJJwu2yr);
 if(Yp9jEQ82jFWQ2P0F8DcWWN5z >= ojPuN1McAaPmQBt)
 Yp9jEQ82jFWQ2P0F8DcWWN5z = ojPuN1McAaPmQBt;
 setDevilGauge(xQTNgWJJwu2yr, Yp9jEQ82jFWQ2P0F8DcWWN5z);
} ;



 
 
 
 

function isPriestFlow(pkUwlYjTvXPmULzlbt261, FM_e41d6U0SPMaPLKKXR)
{
 if(!pkUwlYjTvXPmULzlbt261) return true;
 
 if(!isGrowTypeAvenger(pkUwlYjTvXPmULzlbt261)) 
 return true;
 if(isAvengerAwakenning(pkUwlYjTvXPmULzlbt261) == true)
 { 
 if(FM_e41d6U0SPMaPLKKXR == STATE_DASH_ATTACK)
 {
 return false;
 }
 }
 if(isAvengerAwakenning(pkUwlYjTvXPmULzlbt261) == false)
 {
 
 
 return true;
 }
 return false;
} ;

function flushCommandEnable_Avenger(g6ownnNxNAVLGmHxA42tTBQ1)
{
 if(!g6ownnNxNAVLGmHxA42tTBQ1) return 0;
 if(!g6ownnNxNAVLGmHxA42tTBQ1.isInBattle())
 {
 sq_SetAllCommandEnable(g6ownnNxNAVLGmHxA42tTBQ1, false); 
 return 2;
 }
 if(isAvengerAwakenning(g6ownnNxNAVLGmHxA42tTBQ1) == true)
 {
 if(g6ownnNxNAVLGmHxA42tTBQ1.isMyControlObject())
 sq_SetAllCommandEnable(g6ownnNxNAVLGmHxA42tTBQ1, false); 
 local ZiQanJzbnp0KwlYcf3IeyKT = null;
 switch(g6ownnNxNAVLGmHxA42tTBQ1.getState())
 {
 case 0:
 case 8:
 case 14:
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 64); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 118); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 169); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 124); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 113); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 116); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 115); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 125); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 134); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true);
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 133); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true);
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 135); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 136); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 137); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 138); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 132); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 120); 
 if(ZiQanJzbnp0KwlYcf3IeyKT)
 {
 local ac_myaaviyIugqhXlsuyHR = sq_GetLevelData(g6ownnNxNAVLGmHxA42tTBQ1, 120, 7, sq_GetSkillLevel(g6ownnNxNAVLGmHxA42tTBQ1, 120)); 
 if(getDevilGauge(g6ownnNxNAVLGmHxA42tTBQ1) >= ac_myaaviyIugqhXlsuyHR) 
 ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true);
 }
 break;
 case 6:
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 115); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 break;
 }
 return 2;
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(g6ownnNxNAVLGmHxA42tTBQ1, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 local ZiQanJzbnp0KwlYcf3IeyKT = null;
 switch(g6ownnNxNAVLGmHxA42tTBQ1.getState())
 {
 case 0:
 case 8:
 case 14:
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 1); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 11); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 break;
 case 139: 
 ZiQanJzbnp0KwlYcf3IeyKT = sq_GetSkill(g6ownnNxNAVLGmHxA42tTBQ1, 169); 
 if(ZiQanJzbnp0KwlYcf3IeyKT) ZiQanJzbnp0KwlYcf3IeyKT.setCommandEnable(true); 
 break;
 }
 }
 return 0;
} ;

function setState_Avenger(vOIi6ENtznF, jlpaZ72Ic8, uNrpEvw4XMyw1y2, O0pYiSocU3I)
{
 if(!vOIi6ENtznF) return 1;
 if(!isGrowTypeAvenger(vOIi6ENtznF)) return 1;
 
 if(isInDevilStrikeSkill(vOIi6ENtznF))
 {
 if(jlpaZ72Ic8 != vOIi6ENtznF.getState() || jlpaZ72Ic8 == STATE_ATTACK)
 { 
 local L4ORidmaZpsOizZ = getStaticDataIndexDevilGauge(vOIi6ENtznF, -1, jlpaZ72Ic8);
 
 if(L4ORidmaZpsOizZ != -1)
 { 
 local rii4K1gUez3 = vOIi6ENtznF.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(rii4K1gUez3)
 {
 
 
 
 rii4K1gUez3.sq_var.set_vector(3, L4ORidmaZpsOizZ); 
 }
 }
 }
 }
 if(jlpaZ72Ic8 == STATE_THROW)
 {
 if(vOIi6ENtznF.getThrowIndex() == 10 && vOIi6ENtznF.getThrowState() == 0)
 {
 local OOTnHJtJuRCYIPe = sq_GetSkillLevel(vOIi6ENtznF, 10);
 local PWgGKtkhFRcGU2j = sq_GetLevelData(vOIi6ENtznF, 10, 2, OOTnHJtJuRCYIPe);
 addDevilGauge(vOIi6ENtznF, PWgGKtkhFRcGU2j);
 }
 }
 if(isPriestFlow(vOIi6ENtznF, jlpaZ72Ic8) == true)
 {
 return 1;
 }
 else
 {
 if(isAvengerAwakenning(vOIi6ENtznF) == true)
 {
 }
 }
 return 0;
} ;



function isRidingToObject_Avenger(jtaxum6Zt0IYX317yty3TaQ)
{
 if(!jtaxum6Zt0IYX317yty3TaQ) return -1;
 if(isAvengerAwakenning(jtaxum6Zt0IYX317yty3TaQ) == true)
 { 
 
 return -1;
 }
 return 1;
} ;

 
 
 

function addSetStatePacket_Avenger(qhSPyA7K8GwYr, qKqYkwm1wsj1n, sXJOa4uXp8lH85pJbi)
{
 if(!qhSPyA7K8GwYr)return -1;
 if(isAvengerAwakenning(qhSPyA7K8GwYr) == true)
 {
 switch(qKqYkwm1wsj1n)
 {
 case 7: 
 if(qhSPyA7K8GwYr.getState() == 6)
 {
 if(qhSPyA7K8GwYr.sq_isMyControlObject())
 {
 qhSPyA7K8GwYr.sq_IntVectClear();
 qhSPyA7K8GwYr.sq_IntVectPush(4); 
 qhSPyA7K8GwYr.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 return -1;
 }
 break;
 case 13:
 local ZxRP9rbUMthorwnTyNxs9_7v = qhSPyA7K8GwYr.sq_getVectorData(sXJOa4uXp8lH85pJbi, 2); 
 if(ZxRP9rbUMthorwnTyNxs9_7v == 64) 
 {
 if(qhSPyA7K8GwYr.sq_isMyControlObject())
 {
 
 qhSPyA7K8GwYr.sq_IntVectClear();
 qhSPyA7K8GwYr.sq_IntVectPush(6);
 qhSPyA7K8GwYr.sq_addSetStatePacket(67, STATE_PRIORITY_USER, true);
 }
 return -1;
 }
 break;
 case STATE_DIE:
 local aR2zPsH83I = qhSPyA7K8GwYr.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
 if(aR2zPsH83I)
 {
 aR2zPsH83I.setValid(false);
 aR2zPsH83I.sq_var.set_vector(2, 0);
 qhSPyA7K8GwYr.setObjectHeight(-1);
 }
 return -1;
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(qhSPyA7K8GwYr, "character/new_priest/metamorphosis/ap_metamorphosis.nut") == true) 
 {
 if(qhSPyA7K8GwYr.sq_isMyControlObject())
 switch(qKqYkwm1wsj1n)
 {
 case 20: 
 qhSPyA7K8GwYr.sq_IntVectClear();
 qhSPyA7K8GwYr.sq_IntVectPush(1); 
 qhSPyA7K8GwYr.sq_addSetStatePacket(139, STATE_PRIORITY_USER, true); 
 return -1;
 case 30: 
 qhSPyA7K8GwYr.sq_IntVectClear();
 qhSPyA7K8GwYr.sq_IntVectPush(2); 
 qhSPyA7K8GwYr.sq_addSetStatePacket(139, STATE_PRIORITY_USER, true); 
 return -1;
 case 26: 
 qhSPyA7K8GwYr.sq_IntVectClear();
 qhSPyA7K8GwYr.sq_IntVectPush(3); 
 qhSPyA7K8GwYr.sq_addSetStatePacket(139, STATE_PRIORITY_USER, true);
 return -1;
 }
 }
 return 1;
} ;

function isEnableBackStepState_Avenger(zNKfzCLo8UuWQB47Qx2C9Kk)
{
 if(!zNKfzCLo8UuWQB47Qx2C9Kk) return false;
 if(isAvengerAwakenning(zNKfzCLo8UuWQB47Qx2C9Kk) == true)
 {
 return false; 
 }
 
 return zNKfzCLo8UuWQB47Qx2C9Kk.sq_isEnableBackStepState();
} ;

function getDefaultAttackInfo_Avenger(nRlfnGj8mvz, STj9Gp21S6ue2C75Ag8LT8O)
{
 local WW7LCcDv_GUYrEt = null;
 if(isAvengerAwakenning(nRlfnGj8mvz) == true)
 {
 if(STj9Gp21S6ue2C75Ag8LT8O < 4)
 WW7LCcDv_GUYrEt = sq_GetCustomAttackInfo(nRlfnGj8mvz, 80 + STj9Gp21S6ue2C75Ag8LT8O);
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(nRlfnGj8mvz, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 WW7LCcDv_GUYrEt = sq_GetCustomAttackInfo(nRlfnGj8mvz, 128 + STj9Gp21S6ue2C75Ag8LT8O);
 }
 else
 {
 if(isInDevilStrikeSkill(nRlfnGj8mvz))
 {
 WW7LCcDv_GUYrEt = sq_GetCustomAttackInfo(nRlfnGj8mvz, 87 + STj9Gp21S6ue2C75Ag8LT8O);
 }
 }
 return WW7LCcDv_GUYrEt;
} ;


 
function procEnterDevilStrike(fxxWRK_BX8qr9nFXBWt, h2IGipy4WAvDHb, hmTGBMg5ogFhyk4jpJgdr)
{
 if(!fxxWRK_BX8qr9nFXBWt) return;
 local AppEVd9RhgEGxspFooXNgh = isEnterDevilStrike(fxxWRK_BX8qr9nFXBWt, h2IGipy4WAvDHb, hmTGBMg5ogFhyk4jpJgdr);
 if(AppEVd9RhgEGxspFooXNgh)
 {
 
 local V_TbarVkwbcLacs31 = fxxWRK_BX8qr9nFXBWt.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(V_TbarVkwbcLacs31)
 {
 
 local A_gGlNP7bb5lujiJhEiJJhzB = fxxWRK_BX8qr9nFXBWt.getVar("devilStrike");
 local gMzMiNyZ1Oj67nIF = A_gGlNP7bb5lujiJhEiJJhzB.get_ct_vector(0).Get();
 
 if(A_gGlNP7bb5lujiJhEiJJhzB.get_ct_vector(0).Get() > A_gGlNP7bb5lujiJhEiJJhzB.get_vector(0))
 { 
 local PgdAu5Wc6PDe6 = 0;
 if(hmTGBMg5ogFhyk4jpJgdr == 0)
 { 
 PgdAu5Wc6PDe6 = 1;
 }
 else if(hmTGBMg5ogFhyk4jpJgdr == 1)
 { 
 PgdAu5Wc6PDe6 = 2;
 }
 else if(hmTGBMg5ogFhyk4jpJgdr == 2)
 { 
 PgdAu5Wc6PDe6 = 0;
 }
 local WkfwMy8yQJQyOJ = getDevilStrikeConsumeValue(fxxWRK_BX8qr9nFXBWt, PgdAu5Wc6PDe6);
 consumeDevilGauge(fxxWRK_BX8qr9nFXBWt, WkfwMy8yQJQyOJ);
 
 
 local h4W1RA4EI0XLxwtzUCkX = hmTGBMg5ogFhyk4jpJgdr;
 if(h2IGipy4WAvDHb == 0)
 {
 h4W1RA4EI0XLxwtzUCkX = fxxWRK_BX8qr9nFXBWt.getVar("devilStrike").get_vector(2); 
 
 local FfPn4jHvq1fSDHYwqxbk = h4W1RA4EI0XLxwtzUCkX;
 FfPn4jHvq1fSDHYwqxbk = FfPn4jHvq1fSDHYwqxbk + 1;
 if(FfPn4jHvq1fSDHYwqxbk > 2)
 FfPn4jHvq1fSDHYwqxbk = 0;
 fxxWRK_BX8qr9nFXBWt.getVar("devilStrike").set_vector(2, FfPn4jHvq1fSDHYwqxbk);
 }
 if(h4W1RA4EI0XLxwtzUCkX == 0)
 { 
 PgdAu5Wc6PDe6 = 1;
 }
 else if(h4W1RA4EI0XLxwtzUCkX == 1)
 { 
 PgdAu5Wc6PDe6 = 2;
 }
 else if(h4W1RA4EI0XLxwtzUCkX == 2)
 { 
 PgdAu5Wc6PDe6 = 0;
 }
 
 local Aw4fY4sdXsiB4nOZxnpu6v = sq_GetSkillLevel(fxxWRK_BX8qr9nFXBWt, 123);
 
 
 
 
 
 
 local E7PfQovjXzK3wTqjdz9uU5HI = sq_GetSkill(fxxWRK_BX8qr9nFXBWt, 123);
 local NpIBtwPqenuVU = sq_GetAttackBonusRate(E7PfQovjXzK3wTqjdz9uU5HI, 3 + PgdAu5Wc6PDe6, 1.0);
 
 fxxWRK_BX8qr9nFXBWt.sq_binaryData_startWrite();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(fxxWRK_BX8qr9nFXBWt, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 fxxWRK_BX8qr9nFXBWt.sq_binaryData_writeDword(2); 
 else
 fxxWRK_BX8qr9nFXBWt.sq_binaryData_writeDword(1); 
 fxxWRK_BX8qr9nFXBWt.sq_binaryData_writeDword(NpIBtwPqenuVU); 
 fxxWRK_BX8qr9nFXBWt.sq_p00_sendCreatePassiveObjectPacket(24104 + h4W1RA4EI0XLxwtzUCkX, 0, 0, 1, 0);
 
 A_gGlNP7bb5lujiJhEiJJhzB.get_ct_vector(0).Reset();
 A_gGlNP7bb5lujiJhEiJJhzB.get_ct_vector(0).Start(0, 0);
 local rgVfzrxvyp8BFBupkp16E = getLoadSkillEnableTime(fxxWRK_BX8qr9nFXBWt, 123, 17); 
 A_gGlNP7bb5lujiJhEiJJhzB.set_vector(0, rgVfzrxvyp8BFBupkp16E);
 }
 else
 { 
 
 if(fxxWRK_BX8qr9nFXBWt.isMessage()) 
 {
 sq_AddMessage(29001); 
 }
 }
 
 }
 
 local V_TbarVkwbcLacs31 = CNSquirrelAppendage.sq_AppendAppendage(fxxWRK_BX8qr9nFXBWt, fxxWRK_BX8qr9nFXBWt, 123, true, "Appendage/Character/ap_avenger_effect.nut", true);
 }
} ;

 

function procAppend_Avenger(Wmtz0ML2Tz)
{
 if(!Wmtz0ML2Tz) return 1;
 
 
 
 if(isInDevilStrike(Wmtz0ML2Tz))
 {
 if(Wmtz0ML2Tz.getState() == STATE_ATTACK || Wmtz0ML2Tz.getState() == STATE_DASH_ATTACK)
 {
 
 procEnterDevilStrike(Wmtz0ML2Tz, 1, 1);
 }
 else
 {
 local G5KnNPv2f13w = 3;
 local uEBmNWeJp0yOG = [];
 uEBmNWeJp0yOG.resize(G5KnNPv2f13w);
 uEBmNWeJp0yOG[0] = 0;
 uEBmNWeJp0yOG[1] = 1;
 uEBmNWeJp0yOG[2] = 6;
 for(local o4HILDyoJTfc = 0; o4HILDyoJTfc < G5KnNPv2f13w; o4HILDyoJTfc += 1)
 {
 
 local nlt2zfMsh2o = o4HILDyoJTfc;
 procEnterDevilStrike(Wmtz0ML2Tz, uEBmNWeJp0yOG[o4HILDyoJTfc], nlt2zfMsh2o);
 }
 }
 }
 
 
 
 if(isPriestFlow(Wmtz0ML2Tz, Wmtz0ML2Tz.getState()) == true)
 {
 return 1;
 }
 if(isAvengerAwakenning(Wmtz0ML2Tz) == true)
 {
 local eipl4WJ9QdB = Wmtz0ML2Tz.getState();
 if(eipl4WJ9QdB == STATE_STAND)
 {
 local kwj1JDowlzAf4MDsJG = Wmtz0ML2Tz.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
 if(kwj1JDowlzAf4MDsJG)
 {
 
 
 if(kwj1JDowlzAf4MDsJG.sq_var.get_vector(2) && kwj1JDowlzAf4MDsJG.isEnd())
 {
 Wmtz0ML2Tz.sq_IntVectClear();
 Wmtz0ML2Tz.sq_IntVectPush(0); 
 Wmtz0ML2Tz.sq_addSetStatePacket(69, STATE_PRIORITY_IGNORE_FORCE, true);
 return 2;
 }
 }
 }
 if(eipl4WJ9QdB == STATE_STAND || eipl4WJ9QdB == STATE_DASH)
 {
 sq_SetKeyxEnable(Wmtz0ML2Tz, 6, true); 
 if(sq_IsEnterCommand(Wmtz0ML2Tz, 6)) 
 {
 local wvEHxBJS2bdn6xUOiBBcR = Wmtz0ML2Tz.getVar("awakening");
 local uRQnVg6JcpDEV2PfB5_0y = wvEHxBJS2bdn6xUOiBBcR.get_ct_vector(0).Get();
 if(wvEHxBJS2bdn6xUOiBBcR.get_ct_vector(0).Get() > wvEHxBJS2bdn6xUOiBBcR.get_vector(0))
 { 
 Wmtz0ML2Tz.sq_IntVectClear();
 Wmtz0ML2Tz.sq_IntVectPush(4); 
 Wmtz0ML2Tz.sq_addSetStatePacket(STATE_ATTACK, STATE_PRIORITY_USER, true);
 }
 else
 { 
 Wmtz0ML2Tz.startCantUseSkillWarning();
 if(Wmtz0ML2Tz.isMessage()) 
 {
 sq_AddMessage(414); 
 }
 }
 }
 }
 switch(eipl4WJ9QdB)
 {
 case 0: case 8: case 14:
 if(Wmtz0ML2Tz.sq_IsEnterSkill(169) != -1) 
 {
 Wmtz0ML2Tz.sq_IntVectClear();
 Wmtz0ML2Tz.sq_IntVectPush(1);
 Wmtz0ML2Tz.sq_IntVectPush(1);
 Wmtz0ML2Tz.sq_IntVectPush(200);
 Wmtz0ML2Tz.sq_addSetStatePacket(6, STATE_PRIORITY_USER, true);
 }
 break;
 }
 }
 return 0;
} ;

function drawAppend_Avenger(xi9XjDUwEy8afAsmYQlrZ, WWhfGrmRz1_psEyqsRS, wdVCDC5thfnUKASnx3Nl, MF6a4gPacyHlrRqYxEZ)
{
 if(!xi9XjDUwEy8afAsmYQlrZ) return 1;
 if(isPriestFlow(xi9XjDUwEy8afAsmYQlrZ, xi9XjDUwEy8afAsmYQlrZ.getState()) == true)
 {
 return 1;
 }
 return 0;
} ;

function prepareDraw_Avenger(tlm7hVO9c2E)
{
 if(!tlm7hVO9c2E) return;
 if(isAvengerAwakenning(tlm7hVO9c2E) == true)
 { 
 return 0;
 }
 return 1;
} ;

function getStayAni_Avenger(mBDXvYt025sRckIWZjlscXsR)
{
 if(!mBDXvYt025sRckIWZjlscXsR) return null;
 local w0Db4RcD8IofxBj = mBDXvYt025sRckIWZjlscXsR.getVar();
 local vbOtzyBwJfXLZkQ = null;
 if(isAvengerAwakenning(mBDXvYt025sRckIWZjlscXsR) == true)
 { 
 vbOtzyBwJfXLZkQ = w0Db4RcD8IofxBj.GetAnimationMap("Stay", "Character/Priest/Animation/AvengerAwakening/Stay.ani");
 }
 else
 {
 vbOtzyBwJfXLZkQ = mBDXvYt025sRckIWZjlscXsR.sq_getStayAni();
 }
 return vbOtzyBwJfXLZkQ;
} ;

function getAttackAni_Avenger(XpWsx_iMJYaR9JU3PiJ, lpbDVnJEpZ3dQp4GwB)
{
 if(!XpWsx_iMJYaR9JU3PiJ) return null;
 local _iPqQhdS4jn = XpWsx_iMJYaR9JU3PiJ.getVar();
 local ofopmFJhB9UUBEN3KSZLS = null;
 if(isAvengerAwakenning(XpWsx_iMJYaR9JU3PiJ) == true)
 { 
 if(lpbDVnJEpZ3dQp4GwB == 0)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack01_attack1", "character/priest/animation/avengerawakening/attack01_attack1.ani");
 }
 else if(lpbDVnJEpZ3dQp4GwB == 1)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack02_attack2", "character/priest/animation/avengerawakening/attack02_attack2.ani");
 }
 else if(lpbDVnJEpZ3dQp4GwB == 2)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack03_attack3", "character/priest/animation/avengerawakening/attack03_attack3.ani");
 }
 else if(lpbDVnJEpZ3dQp4GwB == 3)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack04_attack4", "character/priest/animation/avengerawakening/attack04_attack4.ani");
 }
 else if(lpbDVnJEpZ3dQp4GwB == 4)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack05start_attack5", "character/priest/animation/avengerawakening/attack05start_attack5.ani");
 }
 else if(lpbDVnJEpZ3dQp4GwB == 5)
 {
 ofopmFJhB9UUBEN3KSZLS = _iPqQhdS4jn.GetAnimationMap("attack05end_attack5", "character/priest/animation/avengerawakening/attack05end_attack5.ani");
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(XpWsx_iMJYaR9JU3PiJ, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 if(lpbDVnJEpZ3dQp4GwB == 0)
 {
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(236);
 }
 else if(lpbDVnJEpZ3dQp4GwB == 1)
 {
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(237);
 }
 else if(lpbDVnJEpZ3dQp4GwB == 2)
 {
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(238);
 }
 }
 else
 {
 if(isInDevilStrikeSkill(XpWsx_iMJYaR9JU3PiJ))
 { 
 
 if(lpbDVnJEpZ3dQp4GwB == 3)
 { 
 
 
 if(XpWsx_iMJYaR9JU3PiJ.getWeaponSubType() == WEAPON_SUBTYPE_CROSS || XpWsx_iMJYaR9JU3PiJ.getWeaponSubType() == WEAPON_SUBTYPE_ROSARY)
 {
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(110);
 }
 else
 {
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(109);
 }
 }
 else
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getCustomAni(106 + lpbDVnJEpZ3dQp4GwB);
 }
 else
 {
 
 ofopmFJhB9UUBEN3KSZLS = XpWsx_iMJYaR9JU3PiJ.sq_getAttackAni(lpbDVnJEpZ3dQp4GwB);
 }
 }
 return ofopmFJhB9UUBEN3KSZLS;
} ;


function getMoveAni_Avenger(OdXDHXnidW6L)
{
 if(!OdXDHXnidW6L) return null;
 local w6RkvyaRU13uUx = OdXDHXnidW6L.getVar();
 local Bx95xFJ1cUISEMHHFjeo = null;
 if(isAvengerAwakenning(OdXDHXnidW6L) == true)
 { 
 Bx95xFJ1cUISEMHHFjeo = w6RkvyaRU13uUx.GetAnimationMap("Move", "Character/Priest/Animation/AvengerAwakening/Move.ani");
 }
 else
 {
 Bx95xFJ1cUISEMHHFjeo = OdXDHXnidW6L.sq_getMoveAni();
 }
 return Bx95xFJ1cUISEMHHFjeo;
} ;

function getSitAni_Avenger(F1vDXF66FkpwkPl)
{
 if(!F1vDXF66FkpwkPl) return null;
 local PsyktCK5eaOuCVpmuEw = null;
 if(isAvengerAwakenning(F1vDXF66FkpwkPl) == true)
 { 
 local UMontPaq5MIs8i54xA7H = F1vDXF66FkpwkPl.getVar();
 PsyktCK5eaOuCVpmuEw = UMontPaq5MIs8i54xA7H.GetAnimationMap("Sit", "Character/Priest/Animation/AvengerAwakening/Sit.ani");
 }
 else
 {
 PsyktCK5eaOuCVpmuEw = F1vDXF66FkpwkPl.sq_getSitAni();
 }
 return PsyktCK5eaOuCVpmuEw;
} ;

function getDamageAni_Avenger(LI7S_UYBtivcmkHIZw, RJ9I88MCJZfx1)
{
 if(!LI7S_UYBtivcmkHIZw) return null;
 local vvfSoXdJlH = null;
 if(isAvengerAwakenning(LI7S_UYBtivcmkHIZw) == true)
 { 
 vvfSoXdJlH = null;
 }
 else
 {
 vvfSoXdJlH = LI7S_UYBtivcmkHIZw.sq_getDamageAni(RJ9I88MCJZfx1);
 }
 return vvfSoXdJlH;
} ;

function getDownAni_Avenger(EZn_MJUV730cXRHhGRlUDKi)
{
 if(!EZn_MJUV730cXRHhGRlUDKi) return null;
 local vAJySiIlk0rRY1MTiETV = null;
 if(isAvengerAwakenning(EZn_MJUV730cXRHhGRlUDKi) == true)
 { 
 vAJySiIlk0rRY1MTiETV = null;
 }
 else
 {
 vAJySiIlk0rRY1MTiETV = EZn_MJUV730cXRHhGRlUDKi.sq_getDownAni();
 }
 
 return vAJySiIlk0rRY1MTiETV;
} ;

function getOverturnAni_Avenger(In9M4PtSnXe)
{
 if(!In9M4PtSnXe) return null;
 local wawk1llGf56Afg2HPPLVrJ = null;
 if(isAvengerAwakenning(In9M4PtSnXe) == true)
 { 
 wawk1llGf56Afg2HPPLVrJ = null;
 }
 else
 {
 wawk1llGf56Afg2HPPLVrJ = In9M4PtSnXe.sq_getOverturnAni();
 }
 return wawk1llGf56Afg2HPPLVrJ;
} ;

function getJumpAni_Avenger(kPQe3XuAlIOGsbqq)
{
 if(!kPQe3XuAlIOGsbqq) return null;
 local CTVoFIpY8BtER4dRjymU4YPs = null;
 if(isAvengerAwakenning(kPQe3XuAlIOGsbqq) == true)
 {
 local NPLN9vmelfRmqb2ub = kPQe3XuAlIOGsbqq.getVar();
 CTVoFIpY8BtER4dRjymU4YPs = NPLN9vmelfRmqb2ub.GetAnimationMap("avengerjump_body", "character/priest/animation/avengerawakening/avengerjump_body.ani");
 }
 else
 {
 CTVoFIpY8BtER4dRjymU4YPs = kPQe3XuAlIOGsbqq.sq_getJumpAni();
 }
 return CTVoFIpY8BtER4dRjymU4YPs;
} ;

function getJumpAttackAni_Avenger(vgwe8FGQZbX7ztbeqAT)
{
 if(!vgwe8FGQZbX7ztbeqAT) return null;
 local C2bsWF9GQ4 = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vgwe8FGQZbX7ztbeqAT, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 C2bsWF9GQ4 = vgwe8FGQZbX7ztbeqAT.sq_getCustomAni(241);
 }
 else
 {
 C2bsWF9GQ4 = vgwe8FGQZbX7ztbeqAT.sq_getJumpAttackAni();
 }
 return C2bsWF9GQ4;
} ;

function getRestAni_Avenger(W4GetUdhpd6jWVXtgmYqcu)
{
 if(!W4GetUdhpd6jWVXtgmYqcu) return null;
 local xblfdnvhow4BCVI = W4GetUdhpd6jWVXtgmYqcu.getVar();
 local jmMMjz28QShgkuMdyOjYFp = null;
 if(isAvengerAwakenning(W4GetUdhpd6jWVXtgmYqcu) == true)
 { 
 
 jmMMjz28QShgkuMdyOjYFp = xblfdnvhow4BCVI.GetAnimationMap("Stay", "Character/Priest/Animation/AvengerAwakening/Stay.ani");
 }
 else
 {
 jmMMjz28QShgkuMdyOjYFp = W4GetUdhpd6jWVXtgmYqcu.sq_getRestAni();
 }
 
 return jmMMjz28QShgkuMdyOjYFp;
} ;

function getThrowChargeAni_Avenger(CkTTe0jf7B5jyaZItk, vdUbv7Neep)
{
 if(!CkTTe0jf7B5jyaZItk) return null;
 local L9MyajAw2ZliWi = null;
 if(isAvengerAwakenning(CkTTe0jf7B5jyaZItk) == true)
 { 
 L9MyajAw2ZliWi = null;
 }
 else
 {
 L9MyajAw2ZliWi = CkTTe0jf7B5jyaZItk.sq_getThrowChargeAni(vdUbv7Neep);
 }
 
 return L9MyajAw2ZliWi;
} ;

function getThrowShootAni_Avenger(q6yToCNenDoAf1tPki2bB, zm3EhSiD_RS4U6LxTU406RV)
{
 if(!q6yToCNenDoAf1tPki2bB) return null;
 local uP4PFt5QG5AIQUcrC = null;
 if(isAvengerAwakenning(q6yToCNenDoAf1tPki2bB) == true)
 { 
 uP4PFt5QG5AIQUcrC = null;
 }
 else
 {
 uP4PFt5QG5AIQUcrC = q6yToCNenDoAf1tPki2bB.sq_getThrowShootAni(zm3EhSiD_RS4U6LxTU406RV);
 }
 
 return uP4PFt5QG5AIQUcrC;
} ;

function getDashAni_Avenger(yDLTfGv2MEx2cPWAY73Ym9eQ)
{
 if(!yDLTfGv2MEx2cPWAY73Ym9eQ) return null;
 local fEayrq5bX0F_GyxISEMy1WSq = yDLTfGv2MEx2cPWAY73Ym9eQ.getVar();
 local GShFhBQiT7weFS = null;
 if(isAvengerAwakenning(yDLTfGv2MEx2cPWAY73Ym9eQ) == true)
 { 
 GShFhBQiT7weFS = fEayrq5bX0F_GyxISEMy1WSq.GetAnimationMap("Dash", "Character/Priest/Animation/AvengerAwakening/Dash.ani");
 }
 else
 {
 GShFhBQiT7weFS = yDLTfGv2MEx2cPWAY73Ym9eQ.sq_getDashAni();
 }
 
 return GShFhBQiT7weFS;
} ;

function getAttackCancelStartFrame_Avenger(akxRzI4LhlId, vNDZN3Dqh1RVCHZrYan)
{
 if(!akxRzI4LhlId) return null;
 local Ddz76Jiox7anQ5 = 0;
 if(isAvengerAwakenning(akxRzI4LhlId) == true)
 { 
 if(vNDZN3Dqh1RVCHZrYan == 0)
 {
 Ddz76Jiox7anQ5 = 3;
 }
 else if(vNDZN3Dqh1RVCHZrYan == 1)
 {
 Ddz76Jiox7anQ5 = 4;
 }
 else if(vNDZN3Dqh1RVCHZrYan == 2)
 {
 Ddz76Jiox7anQ5 = 5;
 }
 else if(vNDZN3Dqh1RVCHZrYan == 3)
 {
 Ddz76Jiox7anQ5 = 4;
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(akxRzI4LhlId, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 if(vNDZN3Dqh1RVCHZrYan == 0)
 {
 Ddz76Jiox7anQ5 = 6;
 }
 else if(vNDZN3Dqh1RVCHZrYan == 1)
 {
 Ddz76Jiox7anQ5 = 4;
 }
 else if(vNDZN3Dqh1RVCHZrYan == 2)
 {
 Ddz76Jiox7anQ5 = 6;
 }
 }
 else
 {
 if(isInDevilStrikeSkill(akxRzI4LhlId))
 { 
 if(vNDZN3Dqh1RVCHZrYan == 0)
 {
 Ddz76Jiox7anQ5 = 2; 
 }
 else if(vNDZN3Dqh1RVCHZrYan == 1)
 {
 Ddz76Jiox7anQ5 = 3; 
 }
 else if(vNDZN3Dqh1RVCHZrYan == 2)
 {
 Ddz76Jiox7anQ5 = 5; 
 }
 }
 else
 Ddz76Jiox7anQ5 = akxRzI4LhlId.sq_getAttackCancelStartFrame(vNDZN3Dqh1RVCHZrYan);
 }
 return Ddz76Jiox7anQ5;
} ;


function getAttackCancelStartFrameSize_Avenger(tN8KRRevqCWMr1Umy4u8pQu)
{
 if(!tN8KRRevqCWMr1Umy4u8pQu) return null;
 local yM9j1lZCuNA4il = 0;
 if(isAvengerAwakenning(tN8KRRevqCWMr1Umy4u8pQu) == true)
 { 
 yM9j1lZCuNA4il = 3;
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(tN8KRRevqCWMr1Umy4u8pQu, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 yM9j1lZCuNA4il = 2;
 }
 else
 {
 if(isInDevilStrikeSkill(tN8KRRevqCWMr1Umy4u8pQu))
 { 
 yM9j1lZCuNA4il = 3; 
 }
 else
 yM9j1lZCuNA4il = tN8KRRevqCWMr1Umy4u8pQu.sq_getAttackCancelStartFrameSize();
 }
 return yM9j1lZCuNA4il;
} ;


function getDashAttackAni_Avenger(XHq4OIFscnioYC1p)
{
 if(!XHq4OIFscnioYC1p) return null;
 local klgJvIZsguhZHuG = null;
 local zD0pvHy10utR62_F = XHq4OIFscnioYC1p.getVar();
 if(isAvengerAwakenning(XHq4OIFscnioYC1p) == true)
 { 
 klgJvIZsguhZHuG = zD0pvHy10utR62_F.GetAnimationMap("DashAttack", "Character/Priest/Animation/AvengerAwakening/DashAttack.ani");
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(XHq4OIFscnioYC1p, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 klgJvIZsguhZHuG = XHq4OIFscnioYC1p.sq_getCustomAni(239);
 }
 else
 {
 klgJvIZsguhZHuG = XHq4OIFscnioYC1p.sq_getDashAttackAni();
 }
 
 return klgJvIZsguhZHuG;
} ;

function getGetItemAni_Avenger(fw_vU1Jop7ui)
{
 if(!fw_vU1Jop7ui) return null;
 local j0DteKRIVL1CX5 = null;
 if(isAvengerAwakenning(fw_vU1Jop7ui) == true)
 { 
 local ORIIynqv7__GX = fw_vU1Jop7ui.getVar();
 j0DteKRIVL1CX5 = ORIIynqv7__GX.GetAnimationMap("GetItem", "Character/Priest/Animation/AvengerAwakening/GetItem.ani");
 }
 else
 {
 j0DteKRIVL1CX5 = fw_vU1Jop7ui.sq_getGetItemAni();
 }
 
 return j0DteKRIVL1CX5;
} ;

function getBuffAni_Avenger(lKEvSCg8ANzWk1d)
{
 if(!lKEvSCg8ANzWk1d) return null;
 local b2KSoqO3KnpHR4K91fceyo = null;
 if(isAvengerAwakenning(lKEvSCg8ANzWk1d) == true)
 { 
 b2KSoqO3KnpHR4K91fceyo = lKEvSCg8ANzWk1d.getVar().GetAnimationMap("Buff", "character/priest/animation/avengerawakening/buff.ani");
 }
 else
 {
 b2KSoqO3KnpHR4K91fceyo = lKEvSCg8ANzWk1d.sq_getBuffAni();
 }
 
 return b2KSoqO3KnpHR4K91fceyo;
} ;


function getJumpAttackInfo_Avenger(bvtcKGBNqGUCmPPJYL)
{
 if(!bvtcKGBNqGUCmPPJYL) return null;
 local XXhb6FevfQv1RGeKLfEwh8 = null;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(bvtcKGBNqGUCmPPJYL, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 XXhb6FevfQv1RGeKLfEwh8 = sq_GetCustomAttackInfo(bvtcKGBNqGUCmPPJYL, 131);
 sq_SetCurrentAttackBonusRate(XXhb6FevfQv1RGeKLfEwh8, bvtcKGBNqGUCmPPJYL.sq_getBonusRateWithPassive(139, 7, 3, 1.0)); 
 }
 else
 XXhb6FevfQv1RGeKLfEwh8 = bvtcKGBNqGUCmPPJYL.sq_getJumpAttackInfo();
 return XXhb6FevfQv1RGeKLfEwh8;
} ;


function getDashAttackInfo_Avenger(EwKcBOcGWTLrIj5LZPK_c)
{
 if(!EwKcBOcGWTLrIj5LZPK_c) return null;
 local z8AKPBnNw5Q1encCFeA = null;
 
 
 
 
 if(isAvengerAwakenning(EwKcBOcGWTLrIj5LZPK_c) == true)
 { 
 z8AKPBnNw5Q1encCFeA = sq_GetCustomAttackInfo(EwKcBOcGWTLrIj5LZPK_c, 84);
 local c8OR0rpMhMY3uXJOS = EwKcBOcGWTLrIj5LZPK_c.sq_GetSTATE();
 local MmyTlFTUrbd = EwKcBOcGWTLrIj5LZPK_c.sq_getBonusRateWithPassive(119, c8OR0rpMhMY3uXJOS, 8, 1.0);
 EwKcBOcGWTLrIj5LZPK_c.sq_setCurrentAttackBonusRate(MmyTlFTUrbd);
 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(EwKcBOcGWTLrIj5LZPK_c, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 {
 z8AKPBnNw5Q1encCFeA = sq_GetCustomAttackInfo(EwKcBOcGWTLrIj5LZPK_c, 132);
 }
 return z8AKPBnNw5Q1encCFeA;
} ;

function getJumpUpStartFrame_Avenger(k2ZP0S4EVumb9p)
{
 if(!k2ZP0S4EVumb9p) return null;
 local I1_3t2WFANuJChpn = 0;
 if(isAvengerAwakenning(k2ZP0S4EVumb9p) == true)
 {
 I1_3t2WFANuJChpn = 2;
 }
 else
 I1_3t2WFANuJChpn = k2ZP0S4EVumb9p.sq_getJumpUpStartFrame();
 return I1_3t2WFANuJChpn;
} ;

function getJumpDownStartFrame_Avenger(vOcP6TRld6DJi0GYy)
{
 if(!vOcP6TRld6DJi0GYy) return null;
 local edTJEFXC3xfSPlbyQqYi55 = 0;
 if(isAvengerAwakenning(vOcP6TRld6DJi0GYy) == true)
 {
 edTJEFXC3xfSPlbyQqYi55 = 5;
 }
 else
 edTJEFXC3xfSPlbyQqYi55 = vOcP6TRld6DJi0GYy.sq_getJumpDownStartFrame();
 return edTJEFXC3xfSPlbyQqYi55;
} ;

function getJumpLandStartFrame_Avenger(K4aq4_UhqUSJC)
{
 if(!K4aq4_UhqUSJC) return null;
 local H65OlEcyFCxkZa8m = 0;
 if(isAvengerAwakenning(K4aq4_UhqUSJC) == true)
 {
 H65OlEcyFCxkZa8m = 7;
 }
 else
 H65OlEcyFCxkZa8m = K4aq4_UhqUSJC.sq_getJumpLandStartFrame();
 return H65OlEcyFCxkZa8m;
} ;


 
function getDashAttackSlideStopFrame_Avenger(smbBwOeuIPl)
{
 if(!smbBwOeuIPl) return null;
 local DC9hg6yWqD1f = -1;
 if(isAvengerAwakenning(smbBwOeuIPl) == true)
 { 
 DC9hg6yWqD1f = 15;
 }
 else
 {
 DC9hg6yWqD1f = smbBwOeuIPl.sq_getDashAttackSlideStopFrame();
 }
 return DC9hg6yWqD1f;
} ;


function drawCustomUI_Avenger(UVdg92utcpl9fp8LtMTK1)
{
 if(!UVdg92utcpl9fp8LtMTK1) return;
 if(!UVdg92utcpl9fp8LtMTK1.sq_isMyCharacter())return;
 if(!isGrowTypeAvenger(UVdg92utcpl9fp8LtMTK1)) return;
 drawDevilStrikeGauge(UVdg92utcpl9fp8LtMTK1); 
} ;




function getStaticDataIndexDevilGauge(qhmqyDF51d9lwHcqvfl, SPl_dAol4lxyX4T1PflybC, Kw9I03NVMIcCoNmGvzs0mLX)
{ 
 if(!qhmqyDF51d9lwHcqvfl) return -1;
 local yqzl9VrpDKRHr2ig7b = qhmqyDF51d9lwHcqvfl.getState();
 local Rg9s39QBDeVpBiQWJ = -1;
 if(Kw9I03NVMIcCoNmGvzs0mLX != -1)
 {
 yqzl9VrpDKRHr2ig7b = Kw9I03NVMIcCoNmGvzs0mLX;
 }
 if(yqzl9VrpDKRHr2ig7b == STATE_THROW)
 { 
 
 if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_GRASP_HAND_OF_ANGER)
 { 
 Rg9s39QBDeVpBiQWJ = 8;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == 10)
 { 
 Rg9s39QBDeVpBiQWJ = 9;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_SLOW_HEAL)
 { 
 
 Rg9s39QBDeVpBiQWJ = 20;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_STRIKING)
 { 
 
 
 Rg9s39QBDeVpBiQWJ = 22;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_CURE)
 { 
 
 
 Rg9s39QBDeVpBiQWJ = 23;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_BLESS)
 { 
 
 
 Rg9s39QBDeVpBiQWJ = 25;
 }
 else if(qhmqyDF51d9lwHcqvfl.getThrowIndex() == SKILL_RISING_AREA)
 { 
 
 
 Rg9s39QBDeVpBiQWJ = 27;
 }
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_ATTACK)
 {
 if(isAvengerAwakenning(qhmqyDF51d9lwHcqvfl))
 {
 if(qhmqyDF51d9lwHcqvfl.getAttackIndex() == 3)
 {
 Rg9s39QBDeVpBiQWJ = 6;
 }
 else
 {
 Rg9s39QBDeVpBiQWJ = 4;
 }
 }
 else
 {
 Rg9s39QBDeVpBiQWJ = 1;
 }
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_JUMP_ATTACK)
 {
 Rg9s39QBDeVpBiQWJ = 2;
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_DASH_ATTACK)
 {
 if(isAvengerAwakenning(qhmqyDF51d9lwHcqvfl))
 {
 Rg9s39QBDeVpBiQWJ = 5;
 }
 else
 {
 Rg9s39QBDeVpBiQWJ = 3;
 }
 }
 else if(yqzl9VrpDKRHr2ig7b == 70)
 {
 Rg9s39QBDeVpBiQWJ = 7;
 }
 else if(yqzl9VrpDKRHr2ig7b == 66 || SPl_dAol4lxyX4T1PflybC == 24103)
 { 
 Rg9s39QBDeVpBiQWJ = 10;
 }
 else if(yqzl9VrpDKRHr2ig7b == 61)
 {
 Rg9s39QBDeVpBiQWJ = 11;
 }
 else if(yqzl9VrpDKRHr2ig7b == 63)
 {
 Rg9s39QBDeVpBiQWJ = 12;
 }
 else if(yqzl9VrpDKRHr2ig7b == 64)
 {
 Rg9s39QBDeVpBiQWJ = 13;
 }
 else if(yqzl9VrpDKRHr2ig7b == 68)
 {
 Rg9s39QBDeVpBiQWJ = 15;
 }
 else if(yqzl9VrpDKRHr2ig7b == 65)
 {
 Rg9s39QBDeVpBiQWJ = 14;
 }
 else if(yqzl9VrpDKRHr2ig7b == 71)
 {
 Rg9s39QBDeVpBiQWJ = 16;
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_ANTIAIR_UPPER)
 {
 
 Rg9s39QBDeVpBiQWJ = 18;
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_SMASHER)
 {
 
 Rg9s39QBDeVpBiQWJ = 19;
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_LUCKY_STRAIGHT)
 {
 
 Rg9s39QBDeVpBiQWJ = 21;
 }
 else if(yqzl9VrpDKRHr2ig7b == 30)
 {
 
 
 Rg9s39QBDeVpBiQWJ = 24;
 }
 else if(yqzl9VrpDKRHr2ig7b == STATE_LUCKY_STRAIGHT)
 {
 
 Rg9s39QBDeVpBiQWJ = 21;
 }
 else if(yqzl9VrpDKRHr2ig7b == 26)
 {
 
 
 Rg9s39QBDeVpBiQWJ = 26;
 }
 else if(yqzl9VrpDKRHr2ig7b == 74)
 {
 
 Rg9s39QBDeVpBiQWJ = 28;
 }
 else if(yqzl9VrpDKRHr2ig7b == 73)
 {
 
 Rg9s39QBDeVpBiQWJ = 29;
 }
 
 
 return Rg9s39QBDeVpBiQWJ;
} ;


 
function drawNumberUiAvenger(z9C1PFe0rbsay, Iuv9y32NFc9UecjSsF9fx7, phq_MqRseEk, _WYRnwhfjZ3)
{
 local SWzenqZavqsA544Gq9 = Iuv9y32NFc9UecjSsF9fx7.tostring(); 
 local rShj9U9Ew5AYpdQofOjF2A7m = SWzenqZavqsA544Gq9.len(); 
 local fVnx7WruV_JowpvhmIyFc1 = phq_MqRseEk + -3 * (rShj9U9Ew5AYpdQofOjF2A7m - 1); 
 local QFI6AfCaTJQXSE7 = 5; 
 for(local mvggfS_egX = 0; mvggfS_egX < rShj9U9Ew5AYpdQofOjF2A7m; mvggfS_egX++) 
 {
 local m2ZGatb2OkcxX0T = SWzenqZavqsA544Gq9.slice(mvggfS_egX, mvggfS_egX + 1); 
 local nWjDFkTSu6T1 = null; 
 local HxOJ_kiD2uYrmjRM2cfOm = "character/priest/effect/animation/evilstrike/qq506807329/"; 
 switch(m2ZGatb2OkcxX0T)
 {
 case "-":nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num_", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num_.ani"); break;
 case "0": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num00", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num00.ani"); break;
 case "1": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num01", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num01.ani"); break;
 case "2": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num02", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num02.ani"); break;
 case "3": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num03", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num03.ani"); break;
 case "4": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num04", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num04.ani"); break;
 case "5": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num05", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num05.ani"); break;
 case "6": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num06", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num06.ani"); break;
 case "7": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num07", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num07.ani"); break;
 case "8": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num08", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num08.ani"); break;
 case "9": nWjDFkTSu6T1 = z9C1PFe0rbsay.getVar().GetAnimationMap("evilstrike_gauge_num09", HxOJ_kiD2uYrmjRM2cfOm + "evilstrike_gauge_num09.ani"); break;
 }
 sq_AnimationProc(nWjDFkTSu6T1);
 sq_drawCurrentFrame(nWjDFkTSu6T1, fVnx7WruV_JowpvhmIyFc1 + mvggfS_egX * QFI6AfCaTJQXSE7, _WYRnwhfjZ3, false);
 }
} ;



 
 
function procDevilStrikeGauge(FP1IBNBlejjyWcIbBNKGRG2, LXmlMGxxIEWCwa)
{
 if(!FP1IBNBlejjyWcIbBNKGRG2) return;
 local cqT7NvqHrPf98dFu = getStaticDataIndexDevilGauge(FP1IBNBlejjyWcIbBNKGRG2, LXmlMGxxIEWCwa, -1);
 
 
 
 if(cqT7NvqHrPf98dFu != -1)
 { 
 if(!IsAddDevilGauge(FP1IBNBlejjyWcIbBNKGRG2, cqT7NvqHrPf98dFu))
 {
 
 return; 
 }
 
 local POK2gcxhVVm_CFsEckR_U4GY = sq_GetIntData(FP1IBNBlejjyWcIbBNKGRG2, 123, cqT7NvqHrPf98dFu);
 
 addDevilGauge(FP1IBNBlejjyWcIbBNKGRG2, POK2gcxhVVm_CFsEckR_U4GY); 
 
 
 local lPWYs7CsTtz = FP1IBNBlejjyWcIbBNKGRG2.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(lPWYs7CsTtz)
 {
 
 lPWYs7CsTtz.sq_var.set_vector(3, -1);
 }
 }
} ;

 
function onBeforeAttack_Avenger(B3yU8A2745HZKZ, YgTK2KiOgPrMmXIG, fuiukBU0g78Y6uFu, T5e_ekYdLNCSzrfihRWE89j)
{
 return 1;
} ;

function onAttack_Avenger(ItYC6X46NZpZw6hpp43, GMoN0NZ_FW1J, LMvsISoJiB5eO2J2koH, cLTBOX905pfKl)
{
 if(!ItYC6X46NZpZw6hpp43) return -1;
 
 if(!isGrowTypeAvenger(ItYC6X46NZpZw6hpp43)) return -1; 
 procDevilStrikeGauge(ItYC6X46NZpZw6hpp43, -1); 
 return 1;
} ;

function onAfterAttack_Avenger(kj585465LUGZcog2tcyoIIZv, DGhUcyi3jYDykH, gjSvo9og9ovlcEpTnn, ziIhdjvH4REGGUU0uVdt9j)
{
 return 1;
} ;


function onAfterAttack_PassiveObject(DCiXeFRBhPvwpGDsvC3ifr, _BE6nS2epjY, az_d5l0lkcubL8, gdmEzcFiBQ)
{
 return 1;
} ;


function setEnableCancelSkill_Avenger(v5I7wNYCoc0w, _S4ksyhoVOmyf0MTBhA)
{
 if(!v5I7wNYCoc0w) return false;
 if(!isGrowTypeAvenger(v5I7wNYCoc0w)) return false; 
 if(!v5I7wNYCoc0w.isMyControlObject()) return false;
 if(!_S4ksyhoVOmyf0MTBhA)
 {
 return true;
 }
 
 
 {
 
 v5I7wNYCoc0w.setSkillCommandEnable(115, _S4ksyhoVOmyf0MTBhA);
 
 v5I7wNYCoc0w.setSkillCommandEnable(124, _S4ksyhoVOmyf0MTBhA);
 
 v5I7wNYCoc0w.setSkillCommandEnable(118, _S4ksyhoVOmyf0MTBhA);
 
 v5I7wNYCoc0w.setSkillCommandEnable(116, _S4ksyhoVOmyf0MTBhA);
 
 v5I7wNYCoc0w.setSkillCommandEnable(113, _S4ksyhoVOmyf0MTBhA);
 
 
 
 v5I7wNYCoc0w.setSkillCommandEnable(133, _S4ksyhoVOmyf0MTBhA);
 
 
 v5I7wNYCoc0w.setSkillCommandEnable(134, _S4ksyhoVOmyf0MTBhA);
 
 }
 
 return true;
 
 local f0lfAkfXquLWOFjyXxMHHZ = 4;
 local x8ZGBUis6udf_oOOX = [];
 local W8YJMnWQPAzjV0dv4tKRjrL = [];
 x8ZGBUis6udf_oOOX.resize(f0lfAkfXquLWOFjyXxMHHZ);
 W8YJMnWQPAzjV0dv4tKRjrL.resize(f0lfAkfXquLWOFjyXxMHHZ);
 x8ZGBUis6udf_oOOX[0] = 127;
 x8ZGBUis6udf_oOOX[1] = 128;
 x8ZGBUis6udf_oOOX[2] = 129;
 x8ZGBUis6udf_oOOX[3] = 130;
 
 W8YJMnWQPAzjV0dv4tKRjrL[0] = 115;
 W8YJMnWQPAzjV0dv4tKRjrL[1] = 124;
 W8YJMnWQPAzjV0dv4tKRjrL[2] = 118;
 W8YJMnWQPAzjV0dv4tKRjrL[3] = 116;
 
 for(local GashkBeF4BpSJb9srfNbZUa = 0; GashkBeF4BpSJb9srfNbZUa < f0lfAkfXquLWOFjyXxMHHZ; GashkBeF4BpSJb9srfNbZUa += 1)
 {
 
 local wztzKiloyA4Tee9 = sq_GetSkillLevel(v5I7wNYCoc0w, x8ZGBUis6udf_oOOX[GashkBeF4BpSJb9srfNbZUa]);
 local EIdMOWUb5vj3us25__fNO = false;
 if(wztzKiloyA4Tee9 > 0)
 {
 if(_S4ksyhoVOmyf0MTBhA)
 {
 
 if(!isAvengerAwakenning(v5I7wNYCoc0w))
 EIdMOWUb5vj3us25__fNO = true;
 else
 {
 return false;
 }
 }
 }
 
 v5I7wNYCoc0w.setSkillCommandEnable(W8YJMnWQPAzjV0dv4tKRjrL[GashkBeF4BpSJb9srfNbZUa], EIdMOWUb5vj3us25__fNO);
 }
 return true;
} ;

function playDashAttackSound_Avenger(QBQsbIZtVTpjzM) 
{
 if(!QBQsbIZtVTpjzM) return 0;
 if(!isGrowTypeAvenger(QBQsbIZtVTpjzM)) return 0; 
 if(isAvengerAwakenning(QBQsbIZtVTpjzM)) return 1; 
 return 0;
} ;

 
function drawDevilStrikeGauge(a8_mvLCrHkGjFewTqmY8)
{
 if(!a8_mvLCrHkGjFewTqmY8) return;
 local hrKQcU3incxAPDUUl1 = sq_GetSkillLevel(a8_mvLCrHkGjFewTqmY8, 123);
 if(hrKQcU3incxAPDUUl1 <= 0) return; 
 local djV7NDtYL1Fd = a8_mvLCrHkGjFewTqmY8.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(djV7NDtYL1Fd) 
 {
 local e7XV8M0wKBiBaI4jcNO = a8_mvLCrHkGjFewTqmY8.getVar(); 
 local WX9f5ZGi0eyS8ZIWLA = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_body_bottom", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_body_bottom.ani"); 
 local m0BfzTwT59yd35G59N = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_body", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_body.ani"); 
 local LuwAwYIbGk0znSjtnm = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_bar_blue", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_bar_blue.ani"); 
 local PPCtP7DJeYsFbRaCi = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_circle_blue", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_circle_blue.ani"); 
 local fDPF6fr5IIERKy = 10; 
 local IoGV1lRjJcLlTzJtH = -10; 
 local BoGGXRb1Tj4r = 105 + fDPF6fr5IIERKy; 
 local K5iXsv_uJTsXoyCmEK = 525 + IoGV1lRjJcLlTzJtH; 
 local HcCNOJhwg_HesEB2 = 9; 
 if(sq_getMyBuffInfoCount() > HcCNOJhwg_HesEB2) 
 {
 local zmxOJZ6TzCWfEz1 = 20;
 local Uk4C7m4BaEi0l_iseb = sq_getMyBuffInfoCount() / HcCNOJhwg_HesEB2;
 K5iXsv_uJTsXoyCmEK -= zmxOJZ6TzCWfEz1 * Uk4C7m4BaEi0l_iseb; 
 }
 local efSBRGayVGHS = getDevilGauge(a8_mvLCrHkGjFewTqmY8); 
 local JRAwZ8uGcnftW5ezR = getDevilMaxGaugeValue(a8_mvLCrHkGjFewTqmY8); 
 local p4iMeKxk6Fa99 = efSBRGayVGHS.tofloat() / JRAwZ8uGcnftW5ezR.tofloat(); 
 
 sq_AnimationProc(WX9f5ZGi0eyS8ZIWLA);
 sq_drawCurrentFrame(WX9f5ZGi0eyS8ZIWLA, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 local LArHu5z3ognJgP1P7 = djV7NDtYL1Fd.sq_var.get_vector(2); 
 local hnROyJkZOk1zzdhKgLZfe = 200;
 if(LArHu5z3ognJgP1P7 > efSBRGayVGHS) 
 {
 local H7DXkfzSjgYmKEX8xf = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_bar_white", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_bar_white.ani"); 
 local xg21JCekbs9JSmP = djV7NDtYL1Fd.getTimer().Get(); 
 local QVdg4hB0TGCcFNyfcMHqP = sq_GetUniformVelocity(255, 0, xg21JCekbs9JSmP, hnROyJkZOk1zzdhKgLZfe); 
 local NMtVBjumC_7 = sq_GetUniformVelocity(LArHu5z3ognJgP1P7, efSBRGayVGHS, xg21JCekbs9JSmP, hnROyJkZOk1zzdhKgLZfe); 
 local xr7_aMk1g10ITQ5FsDAQ1h = NMtVBjumC_7.tofloat() / JRAwZ8uGcnftW5ezR.tofloat(); 
 if(LArHu5z3ognJgP1P7 == JRAwZ8uGcnftW5ezR) 
 {
 if(xg21JCekbs9JSmP <= hnROyJkZOk1zzdhKgLZfe)
 {
 
 sq_AnimationProc(H7DXkfzSjgYmKEX8xf);
 H7DXkfzSjgYmKEX8xf.setImageRate(xr7_aMk1g10ITQ5FsDAQ1h, 1.0); 
 local xq8zbA5XCgBQ2yvYJPOOVNno = sq_RGB(255, 255, 255); 
 local kxr8unHMtAJwvCi = sq_ALPHA(QVdg4hB0TGCcFNyfcMHqP); 
 sq_drawCurrentFrameEffect_SIMPLE(H7DXkfzSjgYmKEX8xf, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, xq8zbA5XCgBQ2yvYJPOOVNno, kxr8unHMtAJwvCi); 
 
 local i6pI_2bJ6CKpP3 = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_circle_white", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_circle_white.ani"); 
 sq_AnimationProc(i6pI_2bJ6CKpP3);
 sq_drawCurrentFrame(i6pI_2bJ6CKpP3, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 
 local UJ6euLSYK8EHvUzp = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_body_decline", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_body_decline.ani"); 
 sq_AnimationProc(UJ6euLSYK8EHvUzp);
 sq_drawCurrentFrame(UJ6euLSYK8EHvUzp, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 
 local vgFLyWfoBg1dIvuqprsjO1 = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_max-effect", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_max-effect.ani"); 
 if(sq_GetCurrentTime(vgFLyWfoBg1dIvuqprsjO1) > 0)
 sq_Rewind(vgFLyWfoBg1dIvuqprsjO1); 
 return; 
 }
 else 
 djV7NDtYL1Fd.sq_var.set_vector(2, efSBRGayVGHS); 
 }
 else
 {
 sq_AnimationProc(H7DXkfzSjgYmKEX8xf);
 H7DXkfzSjgYmKEX8xf.setImageRate(xr7_aMk1g10ITQ5FsDAQ1h, 1.0); 
 local xq8zbA5XCgBQ2yvYJPOOVNno = sq_RGB(255, 255, 255);
 local kxr8unHMtAJwvCi = sq_ALPHA(QVdg4hB0TGCcFNyfcMHqP);
 sq_drawCurrentFrameEffect_SIMPLE(H7DXkfzSjgYmKEX8xf, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, xq8zbA5XCgBQ2yvYJPOOVNno, kxr8unHMtAJwvCi); 
 }
 }
 if(efSBRGayVGHS == JRAwZ8uGcnftW5ezR) 
 {
 local yhBgjF2M4CygSURVXSK6IGI = BoGGXRb1Tj4r - 55; 
 local P8pB2QHIvICxfZ8QeSKhtanz = K5iXsv_uJTsXoyCmEK - 52; 
 local vAzE0rpONPox6Bx6mL4S8n0E = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_evilstrike-body", "character/priest/effect/animation/evilstrike/gauge/evilstrike_evilstrike-body.ani"); 
 sq_AnimationProc(vAzE0rpONPox6Bx6mL4S8n0E);
 sq_drawCurrentFrame(vAzE0rpONPox6Bx6mL4S8n0E, yhBgjF2M4CygSURVXSK6IGI, P8pB2QHIvICxfZ8QeSKhtanz, false);
 local vgFLyWfoBg1dIvuqprsjO1 = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_max-effect", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_max-effect.ani"); 
 
 sq_AnimationProc(vgFLyWfoBg1dIvuqprsjO1);
 sq_drawCurrentFrame(vgFLyWfoBg1dIvuqprsjO1, yhBgjF2M4CygSURVXSK6IGI, P8pB2QHIvICxfZ8QeSKhtanz, false);
 }
 else 
 {
 
 sq_AnimationProc(LuwAwYIbGk0znSjtnm);
 LuwAwYIbGk0znSjtnm.setImageRate(p4iMeKxk6Fa99, 1.0);
 sq_drawCurrentFrame(LuwAwYIbGk0znSjtnm, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 
 sq_AnimationProc(PPCtP7DJeYsFbRaCi);
 sq_drawCurrentFrame(PPCtP7DJeYsFbRaCi, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 
 sq_AnimationProc(m0BfzTwT59yd35G59N);
 sq_drawCurrentFrame(m0BfzTwT59yd35G59N, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK, false);
 
 drawNumberUiAvenger(a8_mvLCrHkGjFewTqmY8, efSBRGayVGHS, BoGGXRb1Tj4r, K5iXsv_uJTsXoyCmEK);
 
 local vgFLyWfoBg1dIvuqprsjO1 = e7XV8M0wKBiBaI4jcNO.GetAnimationMap("evilstrike_gauge_max-effect", "character/priest/effect/animation/evilstrike/qq506807329/evilstrike_gauge_max-effect.ani"); 
 if(sq_GetCurrentTime(vgFLyWfoBg1dIvuqprsjO1) > 0)
 sq_Rewind(vgFLyWfoBg1dIvuqprsjO1); 
 }
 
 local Ld6isjrgOY9aTScfW9f8 = sq_GetMouseXPos(); 
 local G9H7W_5Z766A6cOheudeD8 = sq_GetMouseYPos(); 
 local NxPnq5ZQxAZ4eo9A = BoGGXRb1Tj4r - 22;
 local uvQm2QbyFNgZ0B4R = K5iXsv_uJTsXoyCmEK - 20;
 local ZRZkVFyvE0tjc73vV4um = NxPnq5ZQxAZ4eo9A + 170;
 local VCwpf8xIzFGlckvL_ePs2jm = uvQm2QbyFNgZ0B4R + 15;
 if(Ld6isjrgOY9aTScfW9f8 > NxPnq5ZQxAZ4eo9A && G9H7W_5Z766A6cOheudeD8 > uvQm2QbyFNgZ0B4R && Ld6isjrgOY9aTScfW9f8 < ZRZkVFyvE0tjc73vV4um && G9H7W_5Z766A6cOheudeD8 < VCwpf8xIzFGlckvL_ePs2jm)
 sq_drawToolTip(BoGGXRb1Tj4r - 35, K5iXsv_uJTsXoyCmEK - 13, sq_RGB(255, 255, 255), 0, 1, 29003, 0, 260, true); 
 }
} ;

function setActiveStatus_Avenger(Soxpi6Yhs7SbYFPDO, fa1prFo4321yLEPY, QwzPgV1x2IF5lSCeUJSxg)
{
 if(!Soxpi6Yhs7SbYFPDO) return 0;
 if(isAvengerAwakenning(Soxpi6Yhs7SbYFPDO))
 {
 return 0; 
 }
 return 1;
} ;

 
function setCurrentAnimation_Avenger(yDI5gJwuLwlKzi5, wJ3aOKlyBMs)
{
 if(!yDI5gJwuLwlKzi5) return;
 if(!wJ3aOKlyBMs) return;
 if(isAvengerAwakenning(yDI5gJwuLwlKzi5))
 { 
 if(wJ3aOKlyBMs)
 {
 wJ3aOKlyBMs.setNeverApplyAnotherPlayersEffectAlphaRate(false);
 wJ3aOKlyBMs.setIsApplyAnotherPlayersEffectAlphaRate(false);
 }
 }
} ;

 
function resetDungeonStart_Avenger(JN6pf_eyDNBKFx5GBuyk, R3HtPuE_I24cx6qpDpw, F_g_sQxKvqe9N4yCi4, DWy5VZspgCcqB4CZmYH, oFSxvJVbjKu1IUlVcCz7_u6)
{
 if(!JN6pf_eyDNBKFx5GBuyk) return -1;
 local w_u52eIylwxBKDm6BHXnTzzi = JN6pf_eyDNBKFx5GBuyk.GetSquirrelAppendage("Appendage/Character/ap_avenger_devilstrike.nut"); 
 if(w_u52eIylwxBKDm6BHXnTzzi)
 {
 if(w_u52eIylwxBKDm6BHXnTzzi.sq_var.size_vector() == 5 && !sq_isPVPMode())
 { 
 w_u52eIylwxBKDm6BHXnTzzi.sq_var.set_vector(1, getDevilMaxGaugeValue(JN6pf_eyDNBKFx5GBuyk) / 2); 
 }
 }
 local _fTePXZIGlvQKcr91Qc = JN6pf_eyDNBKFx5GBuyk.GetSquirrelAppendage("Appendage/Character/ap_avenger_awakening.nut");
 if(_fTePXZIGlvQKcr91Qc)
 {
 if(isAvengerAwakenning(JN6pf_eyDNBKFx5GBuyk))
 {
 _fTePXZIGlvQKcr91Qc.setValid(false);
 _fTePXZIGlvQKcr91Qc.sq_var.set_vector(2, 0);
 JN6pf_eyDNBKFx5GBuyk.setObjectHeight(-1);
 }
 }
 return 1;
} ;

function takingAwakenSkillBack_Avenger(_oaonDpCRTd)
{
 if(!_oaonDpCRTd) return false;
 if(!isGrowTypeAvenger(_oaonDpCRTd)) 
 return false;
 local eZGLgBuIK1OX62UP = _oaonDpCRTd.getState();
 print("\n takingAwakenSkillBack:" + eZGLgBuIK1OX62UP + " isAvengerAwakenning(obj):" + isAvengerAwakenning(_oaonDpCRTd));
 if(isAvengerAwakenning(_oaonDpCRTd) || eZGLgBuIK1OX62UP == 67)
 { 
 _oaonDpCRTd.sq_IntVectClear();
 _oaonDpCRTd.sq_IntVectPush(0); 
 _oaonDpCRTd.sq_addSetStatePacket(69, STATE_PRIORITY_IGNORE_FORCE, true);
 }
 if(_oaonDpCRTd.getVar("takingAwakenSkillBack").size_vector() == 0)
 {
 _oaonDpCRTd.getVar("takingAwakenSkillBack").push_vector(0);
 _oaonDpCRTd.getVar("takingAwakenSkillBack").push_vector(0);
 }
 _oaonDpCRTd.getVar("takingAwakenSkillBack").set_vector(0, 1);
 return true;
} ;