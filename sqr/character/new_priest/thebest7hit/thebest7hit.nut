
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_thebest7hit(luv0hOdPH8ePlRsCB9jZEiMi)
{
 if(!luv0hOdPH8ePlRsCB9jZEiMi) return false; 
 local NaxKc9VZpmskIdFNN = luv0hOdPH8ePlRsCB9jZEiMi.sq_IsUseSkill(239); 
 if(NaxKc9VZpmskIdFNN) 
 {
 luv0hOdPH8ePlRsCB9jZEiMi.sq_IntVectClear();
 luv0hOdPH8ePlRsCB9jZEiMi.sq_IntVectPush(0); 
 luv0hOdPH8ePlRsCB9jZEiMi.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_thebest7hit(nB80cWCmuNh2)
{
 if(!nB80cWCmuNh2) return false; 
 local kOBq_k_rvHalEb3HBp = nB80cWCmuNh2.sq_GetState(); 
 if(kOBq_k_rvHalEb3HBp == STATE_STAND) 
 return true; 
 if(kOBq_k_rvHalEb3HBp == STATE_ATTACK) 
 {
 return nB80cWCmuNh2.sq_IsCommandEnable(239); 
 }
 return true; 
} ;

 
function onSetState_priest_thebest7hit(i7ntxSBn9SX2XbOU5, I79rhXSflzOKbH3O, gzS2L1Zew1q3ww2wZ9q, BPYz6pzJot4MeCj)
{
 if(!i7ntxSBn9SX2XbOU5) return; 
 local kgD6i1rZQpuoY = i7ntxSBn9SX2XbOU5.sq_GetVectorData(gzS2L1Zew1q3ww2wZ9q, 0); 
 i7ntxSBn9SX2XbOU5.setSkillSubState(kgD6i1rZQpuoY); 
 switch(kgD6i1rZQpuoY)
 {
 case 0:
 i7ntxSBn9SX2XbOU5.sq_StopMove(); 
 i7ntxSBn9SX2XbOU5.sq_ZStop(); 
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(123);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(98);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 2, 1.0)); 
 local OYXaUnGiVnn2XNBwLuSH = sq_GetSkillLevel(i7ntxSBn9SX2XbOU5, 239); 
 i7ntxSBn9SX2XbOU5.getVar().clear_vector(); 
 i7ntxSBn9SX2XbOU5.getVar().push_vector(0); 
 i7ntxSBn9SX2XbOU5.getVar().push_vector(i7ntxSBn9SX2XbOU5.sq_GetLevelData(239, 0, OYXaUnGiVnn2XNBwLuSH)); 
 i7ntxSBn9SX2XbOU5.getVar().push_vector(100); 
 i7ntxSBn9SX2XbOU5.getVar().push_vector(i7ntxSBn9SX2XbOU5.sq_GetLevelData(239, 1, OYXaUnGiVnn2XNBwLuSH)); 
 i7ntxSBn9SX2XbOU5.getVar().setBool(0, false); 
 sq_SetMyShake(i7ntxSBn9SX2XbOU5, 2, 80); 
 break;
 case 1:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(124);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(99);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 3, 1.0)); 
 break;
 case 2:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(125);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(100);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 4, 1.0)); 
 break;
 case 3:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(126);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(101);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 5, 1.0)); 
 break;
 case 4:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(127);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(102);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 6, 1.0)); 
 break;
 case 5:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(128);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(103);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 7, 1.0)); 
 i7ntxSBn9SX2XbOU5.getVar("move").clear_vector(); 
 i7ntxSBn9SX2XbOU5.getVar("move").push_vector(i7ntxSBn9SX2XbOU5.getZPos()); 
 i7ntxSBn9SX2XbOU5.getVar("move").push_vector(200); 
 if(i7ntxSBn9SX2XbOU5.sq_IsMyControlObject())
 sq_flashScreen(i7ntxSBn9SX2XbOU5, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 6:
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(129);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackInfo(104);
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackBonusRate(i7ntxSBn9SX2XbOU5) + i7ntxSBn9SX2XbOU5.sq_GetBonusRateWithPassive(239, 239, 8, 1.0)); 
 i7ntxSBn9SX2XbOU5.getVar("move").clear_vector(); 
 i7ntxSBn9SX2XbOU5.getVar("move").push_vector(i7ntxSBn9SX2XbOU5.getZPos()); 
 i7ntxSBn9SX2XbOU5.getVar("move").push_vector(0); 
 break;
 }
 local Qg37CcFXG3wqRQh5LyZg4l = sq_GetUniformVelocity(i7ntxSBn9SX2XbOU5.getVar().get_vector(2),
 i7ntxSBn9SX2XbOU5.getVar().get_vector(3),
 i7ntxSBn9SX2XbOU5.getVar().get_vector(0),
 i7ntxSBn9SX2XbOU5.getVar().get_vector(1)).tofloat(); 
 if(kgD6i1rZQpuoY != 6)
 {
 local Rt7uVgk_nKJ8u = ["atk1text_b.ani", "atk2text_b.ani", "atk3text_b.ani", "atk4text_a.ani", "atk5text_b.ani", "atk6text_b.ani"];
 CreateAniRate(i7ntxSBn9SX2XbOU5, "character/priest/effect/animation/thebest7hit/" + Rt7uVgk_nKJ8u[kgD6i1rZQpuoY], ENUM_DRAWLAYER_NORMAL, i7ntxSBn9SX2XbOU5.getXPos(), i7ntxSBn9SX2XbOU5.getYPos(), i7ntxSBn9SX2XbOU5.getZPos(), false, Qg37CcFXG3wqRQh5LyZg4l); 
 local sD31f8cdLifn501ZkD3wxL = ["atk1slash_eff_b.ani", "atk2slash_eff_b.ani", "atk3slash_eff_a.ani", "atk4slash_eff_a.ani", "atk5slash_eff_b.ani", "atk6slash_eff_c.ani"];
 local dLcd3TaFk8uTzHfIaOefH = CreateAniRate(i7ntxSBn9SX2XbOU5, "character/priest/effect/animation/thebest7hit/" + sD31f8cdLifn501ZkD3wxL[kgD6i1rZQpuoY], ENUM_DRAWLAYER_NORMAL, i7ntxSBn9SX2XbOU5.getXPos(), i7ntxSBn9SX2XbOU5.getYPos(), i7ntxSBn9SX2XbOU5.getZPos(), false, Qg37CcFXG3wqRQh5LyZg4l); 
 sq_moveWithParent(i7ntxSBn9SX2XbOU5, dLcd3TaFk8uTzHfIaOefH); 
 }
} ;

function onAttack_priest_thebest7hit(xgmp7Pc76hNvn7nnloROEYM, SfU4LBVPiy, M_CiU9ba7LSetb80uMJuAg, YA2juqzyypomnb1Nn)
{
 if(!xgmp7Pc76hNvn7nnloROEYM) return;
 if(YA2juqzyypomnb1Nn || !SfU4LBVPiy.isObjectType(OBJECTTYPE_ACTIVE))return;
 local kZqNqlbPBYP = xgmp7Pc76hNvn7nnloROEYM.getSkillSubState(); 
 switch(kZqNqlbPBYP)
 {
 case 0:
 if(xgmp7Pc76hNvn7nnloROEYM.getVar().getBool(0) == false) 
 {
 xgmp7Pc76hNvn7nnloROEYM.getVar().setBool(0, true);
 if(sq_IsGrabable(xgmp7Pc76hNvn7nnloROEYM, SfU4LBVPiy) 
 && sq_IsHoldable(xgmp7Pc76hNvn7nnloROEYM, SfU4LBVPiy) 
 && !sq_IsFixture(SfU4LBVPiy)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(SfU4LBVPiy, "character/new_priest/thebest7hit/ap_thebest7hit.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(SfU4LBVPiy, "character/new_priest/thebest7hit/ap_thebest7hit.nut");
 local M5mzabRPiqTRvXVB = CNSquirrelAppendage.sq_AppendAppendage(SfU4LBVPiy, xgmp7Pc76hNvn7nnloROEYM, 239, true, "character/new_priest/thebest7hit/ap_thebest7hit.nut", true);
 sq_HoldAndDelayDie(SfU4LBVPiy, xgmp7Pc76hNvn7nnloROEYM, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, M5mzabRPiqTRvXVB); 
 sq_MoveToAppendageForce(SfU4LBVPiy, xgmp7Pc76hNvn7nnloROEYM, xgmp7Pc76hNvn7nnloROEYM, 160, 0, 0, 100, true, M5mzabRPiqTRvXVB); 
 }
 }
 break;
 }
 
 local my1iehbdTmWXbtHvGa = sq_CreateAnimation("", "character/priest/effect/animation/thebest7hit/powerstrikeseven_crasha.ani"); 
 my1iehbdTmWXbtHvGa.addLayerAnimation(-1, sq_CreateAnimation("", "character/priest/effect/animation/thebest7hit/powerstrikeseven_crashb.ani"), true);; 
 local q4rxsKGqtnkiv = sq_CreatePooledObject(my1iehbdTmWXbtHvGa, true); 
 sq_SetCurrentDirection(q4rxsKGqtnkiv, xgmp7Pc76hNvn7nnloROEYM.getDirection()); 
 q4rxsKGqtnkiv.setCurrentPos(SfU4LBVPiy.getXPos(), SfU4LBVPiy.getYPos(), SfU4LBVPiy.getZPos() + sq_GetCenterZPos(M_CiU9ba7LSetb80uMJuAg)); 
 q4rxsKGqtnkiv = sq_SetEnumDrawLayer(q4rxsKGqtnkiv, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(xgmp7Pc76hNvn7nnloROEYM, q4rxsKGqtnkiv, OBJECTTYPE_DRAWONLY, false); 
} ;

function onKeyFrameFlag_priest_thebest7hit(zQJvfmwEoO4luhEf1yJwd4, DH5rqTwTn0o)
{
 if(!zQJvfmwEoO4luhEf1yJwd4) return;
 local fiQqsjXYQLKCZVG8xw = zQJvfmwEoO4luhEf1yJwd4.getSkillSubState(); 
 switch(fiQqsjXYQLKCZVG8xw)
 {
 case 0:
 if(DH5rqTwTn0o == 1 && zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 {
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 8, 560); 
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 1:
 if(DH5rqTwTn0o == 1 && zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 {
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 5, 320); 
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 2:
 if(DH5rqTwTn0o == 1 && zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 {
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 7, 240); 
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 3:
 if(DH5rqTwTn0o == 1 && zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 {
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 5, 240); 
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 4:
 if(DH5rqTwTn0o == 1 && zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 80, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 else if(DH5rqTwTn0o == 2)
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 7, 160); 
 else if(DH5rqTwTn0o == 3)
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 7, 240); 
 break;
 case 6:
 if(DH5rqTwTn0o == 1)
 {
 sq_SetMyShake(zQJvfmwEoO4luhEf1yJwd4, 7, 320); 
 if(zQJvfmwEoO4luhEf1yJwd4.sq_IsMyControlObject())
 sq_flashScreen(zQJvfmwEoO4luhEf1yJwd4, 0, 160, 400, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_CreateDrawOnlyObject(zQJvfmwEoO4luhEf1yJwd4, "character/priest/effect/animation/thebest7hit/atk7body_light.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(zQJvfmwEoO4luhEf1yJwd4, "character/priest/effect/animation/thebest7hit/atk7finish_word_7th.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 }
 return true;
} ;

function onProcCon_priest_thebest7hit(iR7NOlkCJTKIjW)
{
 if(!iR7NOlkCJTKIjW) return;
 local BAzyCRkm09 = iR7NOlkCJTKIjW.getSkillSubState(); 
 if(BAzyCRkm09 < 6)
 {
 iR7NOlkCJTKIjW.setSkillCommandEnable(239, true); 
 sq_SetKeyxEnable(iR7NOlkCJTKIjW, 0, true); 
 if(iR7NOlkCJTKIjW.sq_IsEnterSkill(239) != -1 || sq_IsEnterCommand(iR7NOlkCJTKIjW, 0)) 
 {
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar().get_vector(0); 
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar().get_vector(1); 
 if(XuiFPiCDpxWoA < G9pJtCd7nVk) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteWord(XuiFPiCDpxWoA + 1);
 sq_SendChangeSkillEffectPacket(iR7NOlkCJTKIjW, 239); 
 }
 }
 }
} ;

function onProc_priest_thebest7hit(Bz9wDv1P9un0LcgOZAkqqgM)
{
 if(!Bz9wDv1P9un0LcgOZAkqqgM) return;
 local xR_y886w6wsjRskwH3E = Bz9wDv1P9un0LcgOZAkqqgM.getSkillSubState(); 
 switch(xR_y886w6wsjRskwH3E)
 {
 case 5:
 local IC5ODgR0npPnxnF9vDQ = Bz9wDv1P9un0LcgOZAkqqgM.getCurrentAnimation(); 
 local ofCUqM4bpy = sq_GetCurrentTime(IC5ODgR0npPnxnF9vDQ); 
 local uSf_xboxSc6TFzD = IC5ODgR0npPnxnF9vDQ.getDelaySum(0, 1); 
 local tmiU3zWlu0hnFp5IoMEG7np = Bz9wDv1P9un0LcgOZAkqqgM.getVar("move").get_vector(0); 
 local doJb3P7rf3_M2QoY9CP = Bz9wDv1P9un0LcgOZAkqqgM.getVar("move").get_vector(1); 
 local uAIkjhsHL_GbyYkSE = sq_GetUniformVelocity(0, doJb3P7rf3_M2QoY9CP, ofCUqM4bpy, uSf_xboxSc6TFzD);
 sq_setCurrentAxisPos(Bz9wDv1P9un0LcgOZAkqqgM, 2, tmiU3zWlu0hnFp5IoMEG7np + uAIkjhsHL_GbyYkSE); 
 break;
 case 6:
 local IC5ODgR0npPnxnF9vDQ = Bz9wDv1P9un0LcgOZAkqqgM.getCurrentAnimation(); 
 local ofCUqM4bpy = sq_GetCurrentTime(IC5ODgR0npPnxnF9vDQ); 
 local uSf_xboxSc6TFzD = IC5ODgR0npPnxnF9vDQ.getDelaySum(0, 0); 
 local tmiU3zWlu0hnFp5IoMEG7np = Bz9wDv1P9un0LcgOZAkqqgM.getVar("move").get_vector(0); 
 local pl2TAaregH7S3_5FltVl3 = Bz9wDv1P9un0LcgOZAkqqgM.getVar("move").get_vector(1); 
 local uAIkjhsHL_GbyYkSE = sq_GetUniformVelocity(tmiU3zWlu0hnFp5IoMEG7np, pl2TAaregH7S3_5FltVl3, ofCUqM4bpy, uSf_xboxSc6TFzD);
 sq_setCurrentAxisPos(Bz9wDv1P9un0LcgOZAkqqgM, 2, uAIkjhsHL_GbyYkSE); 
 break;
 }
} ;

function onChangeSkillEffect_priest_thebest7hit(WwrECRwdHvBRDp6rqoJYtuHH, btrJJLMl0jiIlGdBJuqhXn, ap_aI8DydgDxgMv_TNqSZHv)
{
 if(!WwrECRwdHvBRDp6rqoJYtuHH) return;
 local mxOg0TjNZs1bJnoayqVo = WwrECRwdHvBRDp6rqoJYtuHH.getSkillSubState();
 if(mxOg0TjNZs1bJnoayqVo != 6)
 {
 local kNMaiblPG0fFiKrjfyON = ap_aI8DydgDxgMv_TNqSZHv.readWord(); 
 switch(kNMaiblPG0fFiKrjfyON)
 {
 case 1:
 local U2BM96UKvPXt2qvA4P7Mt4 = ap_aI8DydgDxgMv_TNqSZHv.readWord(); 
 local OSmO4XLVraLPC1a = WwrECRwdHvBRDp6rqoJYtuHH.getVar().get_vector(1); 
 local vFZiixntUIU = sq_GetUniformVelocity(WwrECRwdHvBRDp6rqoJYtuHH.getVar().get_vector(2), WwrECRwdHvBRDp6rqoJYtuHH.getVar().get_vector(3), U2BM96UKvPXt2qvA4P7Mt4, OSmO4XLVraLPC1a) / 100.0;
 WwrECRwdHvBRDp6rqoJYtuHH.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * vFZiixntUIU).tointeger(), 1.0, 1.0); 
 WwrECRwdHvBRDp6rqoJYtuHH.getVar().set_vector(0, U2BM96UKvPXt2qvA4P7Mt4); 
 break;
 }
 }
} ;

 
function onEndCurrentAni_priest_thebest7hit(cOLJ5Qp0QMJydXG0bh21d)
{
 if(!cOLJ5Qp0QMJydXG0bh21d) return;
 if(!cOLJ5Qp0QMJydXG0bh21d.sq_IsMyControlObject()) return;
 local rz0cmSYRjshyGXKF = cOLJ5Qp0QMJydXG0bh21d.getSkillSubState(); 
 if(rz0cmSYRjshyGXKF != 6)
 {
 if(cOLJ5Qp0QMJydXG0bh21d.getVar().getBool(0) == false && rz0cmSYRjshyGXKF == 0)
 cOLJ5Qp0QMJydXG0bh21d.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 else
 {
 cOLJ5Qp0QMJydXG0bh21d.sq_IntVectClear();
 cOLJ5Qp0QMJydXG0bh21d.sq_IntVectPush(rz0cmSYRjshyGXKF + 1); 
 cOLJ5Qp0QMJydXG0bh21d.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 }
 }
 else
 cOLJ5Qp0QMJydXG0bh21d.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

