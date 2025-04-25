
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onAttack_po_qq506807329new_priest_24374(eJ5nCE48XTHw7bzVAC3ppeuv, RGK1167L1xkPyeiFmvA_bkS, vLkrbIKQmR, Kt6ZnIa621rcOFv)
{
 if(!eJ5nCE48XTHw7bzVAC3ppeuv) return 0;
 local Abbg81JW9YCaaTL9EKlml = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("skill").get_vector(0);
 switch(Abbg81JW9YCaaTL9EKlml)
 {
 case 237: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 2 && eJ5nCE48XTHw7bzVAC3ppeuv.getVar("state").get_vector(0) == 10)
 {
 if(RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE))
 {
 local DZF_Dh93XLaMo3dtq = sq_GetCNRDObjectToCollisionObject(eJ5nCE48XTHw7bzVAC3ppeuv.getParent()); 
 if(DZF_Dh93XLaMo3dtq && !DZF_Dh93XLaMo3dtq.getVar("atkobj").is_obj_vector(RGK1167L1xkPyeiFmvA_bkS)) 
 {
 DZF_Dh93XLaMo3dtq.getVar("atkobj").push_obj_vector(RGK1167L1xkPyeiFmvA_bkS); 
 if(eJ5nCE48XTHw7bzVAC3ppeuv.isMyControlObject())
 {
 local hJgFBzafxJ7dRYqBCoctn = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(hJgFBzafxJ7dRYqBCoctn); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, sq_GetGroup(RGK1167L1xkPyeiFmvA_bkS)); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, sq_GetUniqueId(RGK1167L1xkPyeiFmvA_bkS)); 
 eJ5nCE48XTHw7bzVAC3ppeuv.addSetStatePacket(11, hJgFBzafxJ7dRYqBCoctn, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 }
 }
 break;
 case 238: 
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 
 local L9zL71Y5IG4jcn = sq_CreateAnimation("", "character/priest/effect/animation/pentagon/hiteffect_02.ani"); 
 local NBaYgCaBbyY = sq_CreatePooledObject(L9zL71Y5IG4jcn, true); 
 sq_SetCurrentDirection(NBaYgCaBbyY, eJ5nCE48XTHw7bzVAC3ppeuv.getDirection()); 
 NBaYgCaBbyY.setCurrentPos(RGK1167L1xkPyeiFmvA_bkS.getXPos(), RGK1167L1xkPyeiFmvA_bkS.getYPos(), RGK1167L1xkPyeiFmvA_bkS.getZPos() + sq_GetCenterZPos(vLkrbIKQmR)); 
 NBaYgCaBbyY = sq_SetEnumDrawLayer(NBaYgCaBbyY, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(eJ5nCE48XTHw7bzVAC3ppeuv, NBaYgCaBbyY, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 case 241: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 2)
 {
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 
 local lwmqjveBRktpBT57wbnLTLNd = sq_GetObjectHeight(RGK1167L1xkPyeiFmvA_bkS) / 150.0; 
 CreateAniRate(eJ5nCE48XTHw7bzVAC3ppeuv, "character/priest/effect/animation/advanceddragon_passion/hit/hit_hitdodge.ani", ENUM_DRAWLAYER_NORMAL, RGK1167L1xkPyeiFmvA_bkS.getXPos(), RGK1167L1xkPyeiFmvA_bkS.getYPos() + 1, RGK1167L1xkPyeiFmvA_bkS.getZPos() + sq_GetCenterZPos(vLkrbIKQmR), lwmqjveBRktpBT57wbnLTLNd, false); 
 }
 }
 break;
 case 243: 
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 if(RGK1167L1xkPyeiFmvA_bkS.isMyControlObject())
 {
 local hJgFBzafxJ7dRYqBCoctn = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(hJgFBzafxJ7dRYqBCoctn); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, sq_GetOppositeDirection(eJ5nCE48XTHw7bzVAC3ppeuv.getDirection())); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, 0); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, 1); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, 250); 
 sq_IntVectorPush(hJgFBzafxJ7dRYqBCoctn, 500); 
 sq_AddSetStatePacketCollisionObject(RGK1167L1xkPyeiFmvA_bkS, STATE_DOWN, hJgFBzafxJ7dRYqBCoctn, STATE_PRIORITY_FORCE, true);
 }
 }
 break;
 case 248: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 1)
 {
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 local YV1GSBnA6M4Hih3iu4Yj = "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/hit/attack_d_back.ani";
 if(eJ5nCE48XTHw7bzVAC3ppeuv.getVar("state").get_vector(0) == 13)
 YV1GSBnA6M4Hih3iu4Yj = "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/hit/heal_d2.ani";
 local NBaYgCaBbyY = sq_CreateDrawOnlyObject(eJ5nCE48XTHw7bzVAC3ppeuv, YV1GSBnA6M4Hih3iu4Yj, ENUM_DRAWLAYER_NORMAL, true); 
 NBaYgCaBbyY.setCurrentPos(RGK1167L1xkPyeiFmvA_bkS.getXPos(), RGK1167L1xkPyeiFmvA_bkS.getYPos(), RGK1167L1xkPyeiFmvA_bkS.getZPos() + sq_GetCenterZPos(vLkrbIKQmR)); 
 sq_moveWithParent(RGK1167L1xkPyeiFmvA_bkS, NBaYgCaBbyY); 
 }
 }
 break;
 case 246: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 3)
 {
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(eJ5nCE48XTHw7bzVAC3ppeuv, "character/new_priest/haptism/ap_haptism.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(eJ5nCE48XTHw7bzVAC3ppeuv, "character/new_priest/haptism/ap_haptism.nut");
 local LU7TQ3ZiXAtmc = CNSquirrelAppendage.sq_AppendAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, 246, true, "character/new_priest/haptism/ap_haptism.nut", true);
 local VpTb4tTf6ST5t9 = 250; 
 LU7TQ3ZiXAtmc.sq_SetValidTime(VpTb4tTf6ST5t9); 
 sq_MoveToAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, eJ5nCE48XTHw7bzVAC3ppeuv, 0, 0, RGK1167L1xkPyeiFmvA_bkS.getZPos(), VpTb4tTf6ST5t9, true, LU7TQ3ZiXAtmc); 
 }
 }
 break;
 case 136: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 switch(poraP_rfPk0B922ytGg)
 {
 case 1:
 case 3:
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 local Xhp5Kgn5OWzmd0xG = eJ5nCE48XTHw7bzVAC3ppeuv.getParent(); 
 if(!Xhp5Kgn5OWzmd0xG)return;
 local LU7TQ3ZiXAtmc = CNSquirrelAppendage.sq_GetAppendage(RGK1167L1xkPyeiFmvA_bkS, "character/new_priest/darkhowling/ap_darkhowling.nut"); 
 if(LU7TQ3ZiXAtmc) 
 {
 local WkQ3nSdC1_G = LU7TQ3ZiXAtmc.getSource(); 
 if(!WkQ3nSdC1_G)return; 
 if(isSameObject(Xhp5Kgn5OWzmd0xG, WkQ3nSdC1_G))return; 
 CNSquirrelAppendage.sq_RemoveAppendage(RGK1167L1xkPyeiFmvA_bkS, "character/new_priest/darkhowling/ap_darkhowling.nut"); 
 }
 
 LU7TQ3ZiXAtmc = CNSquirrelAppendage.sq_AppendAppendage(RGK1167L1xkPyeiFmvA_bkS, Xhp5Kgn5OWzmd0xG, 136, true, "character/new_priest/darkhowling/ap_darkhowling.nut", true);
 if(LU7TQ3ZiXAtmc)
 {
 LU7TQ3ZiXAtmc.getVar("endTime").clear_vector(); 
 LU7TQ3ZiXAtmc.getVar("endTime").push_vector(eJ5nCE48XTHw7bzVAC3ppeuv.getVar().get_vector(0)); 
 }
 }
 break;
 case 2: 
 local bhSrfntGYVA = sq_GetCNRDObjectToSQRCharacter(eJ5nCE48XTHw7bzVAC3ppeuv.getParent()); 
 if(bhSrfntGYVA && isInDevilStrikeSkill(bhSrfntGYVA))
 {
 addDevilGauge(bhSrfntGYVA, eJ5nCE48XTHw7bzVAC3ppeuv.getVar().get_vector(0)); 
 local NBaYgCaBbyY = sq_CreateDrawOnlyObject(eJ5nCE48XTHw7bzVAC3ppeuv, "character/priest/effect/animation/darkhowling/buff_dodge.ani", ENUM_DRAWLAYER_NORMAL, true); 
 NBaYgCaBbyY.setCurrentPos(bhSrfntGYVA.getXPos(), bhSrfntGYVA.getYPos(), bhSrfntGYVA.getZPos() + sq_GetObjectHeight(bhSrfntGYVA) / 2); 
 sq_moveWithParent(bhSrfntGYVA, NBaYgCaBbyY); 
 }
 if(eJ5nCE48XTHw7bzVAC3ppeuv.isMyControlObject())
 eJ5nCE48XTHw7bzVAC3ppeuv.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 137: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 1)
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE) 
 && !eJ5nCE48XTHw7bzVAC3ppeuv.getVar().is_obj_vector(RGK1167L1xkPyeiFmvA_bkS)) 
 {
 eJ5nCE48XTHw7bzVAC3ppeuv.getVar().push_obj_vector(RGK1167L1xkPyeiFmvA_bkS); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RGK1167L1xkPyeiFmvA_bkS, "character/new_priest/doomcrush/ap_doomcrush_atk.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(RGK1167L1xkPyeiFmvA_bkS, "character/new_priest/doomcrush/ap_doomcrush_atk.nut");
 local LU7TQ3ZiXAtmc = CNSquirrelAppendage.sq_AppendAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, 137, false, "character/new_priest/doomcrush/ap_doomcrush_atk.nut", true);
 if(eJ5nCE48XTHw7bzVAC3ppeuv.getVar().getBool(0) == false)
 {
 eJ5nCE48XTHw7bzVAC3ppeuv.getVar().setBool(0, true); 
 eJ5nCE48XTHw7bzVAC3ppeuv.setTimeEvent(0, 220, 0, false); 
 }
 }
 break;
 case 132: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 switch(poraP_rfPk0B922ytGg)
 {
 case 1:
 case 2:
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(RGK1167L1xkPyeiFmvA_bkS, "character/new_priest/inviteofdevil/ap_inviteofdevil.nut")) 
 {
 local AZWkRxinQhtK8fgZAUkQwej = 200; 
 local LU7TQ3ZiXAtmc = CNSquirrelAppendage.sq_AppendAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, 132, false, "character/new_priest/inviteofdevil/ap_inviteofdevil.nut", true);
 if(poraP_rfPk0B922ytGg == 1)
 sq_MoveToAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, eJ5nCE48XTHw7bzVAC3ppeuv, 135, -5, 0, AZWkRxinQhtK8fgZAUkQwej, true, LU7TQ3ZiXAtmc); 
 else if(poraP_rfPk0B922ytGg == 2)
 sq_MoveToAppendage(RGK1167L1xkPyeiFmvA_bkS, eJ5nCE48XTHw7bzVAC3ppeuv, eJ5nCE48XTHw7bzVAC3ppeuv, 135, 5, 0, AZWkRxinQhtK8fgZAUkQwej, true, LU7TQ3ZiXAtmc); 
 LU7TQ3ZiXAtmc.sq_SetValidTime(AZWkRxinQhtK8fgZAUkQwej); 
 }
 break;
 }
 break;
 case 116: 
 local poraP_rfPk0B922ytGg = eJ5nCE48XTHw7bzVAC3ppeuv.getVar("subType").get_vector(0); 
 if(poraP_rfPk0B922ytGg == 1)
 {
 if(!Kt6ZnIa621rcOFv 
 && RGK1167L1xkPyeiFmvA_bkS.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 local NBaYgCaBbyY = sq_CreateDrawOnlyObject(eJ5nCE48XTHw7bzVAC3ppeuv, "character/priest/animation/avengerawakening/devilhedgehog/monster_shot2_back.ani", ENUM_DRAWLAYER_NORMAL, true); 
 NBaYgCaBbyY.setCurrentPos(RGK1167L1xkPyeiFmvA_bkS.getXPos(), RGK1167L1xkPyeiFmvA_bkS.getYPos(), RGK1167L1xkPyeiFmvA_bkS.getZPos() + sq_GetCenterZPos(vLkrbIKQmR)); 
 }
 }
 break;
 }
} ;
 

 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_po_qq506807329new_priest_24374(UVdg92utcpl9fp8LtMTK1, avOJ_p_CbrvJ)
{
 if(!UVdg92utcpl9fp8LtMTK1) return false;
 local YcGVPfdwCN2zn4rq4TcSkPJY = UVdg92utcpl9fp8LtMTK1.getVar("skill").get_vector(0);
 switch(YcGVPfdwCN2zn4rq4TcSkPJY)
 {
 case 238: 
 if(avOJ_p_CbrvJ == 1)
 {
 UVdg92utcpl9fp8LtMTK1.getVar("end").setBool(0, true); 
 local eNtQDtTbpbfj2X = sq_GetCustomAttackInfo(UVdg92utcpl9fp8LtMTK1, 3); 
 sq_SetCurrentAttackBonusRate(eNtQDtTbpbfj2X, UVdg92utcpl9fp8LtMTK1.getVar().get_vector(4)); 
 sq_SetCurrentAttackInfo(UVdg92utcpl9fp8LtMTK1, eNtQDtTbpbfj2X); 
 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/pentagonglassbrockenleft.ptl", UVdg92utcpl9fp8LtMTK1, 0, 0, 180, true, 10, 0, 8);
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/pentagonglassbrockenright.ptl", UVdg92utcpl9fp8LtMTK1, 0, 0, 180, true, 10, 0, 8);
 UVdg92utcpl9fp8LtMTK1.sq_PlaySound("PENTAGON_BARRIER_EXP");
 }
 break;
 case 241: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 if(P0onUfltFSzQ14mZT == 1)
 {
 local IIj7W8AhVtb = UVdg92utcpl9fp8LtMTK1.getVar("state").get_vector(0); 
 switch(IIj7W8AhVtb)
 {
 case 11:
 if(avOJ_p_CbrvJ == 1)
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 10, 500); 
 else if(avOJ_p_CbrvJ == 2)
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 5, 1000); 
 else if(avOJ_p_CbrvJ == 3 && UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 100, 100, 200, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 else if(avOJ_p_CbrvJ == 4)
 {
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 local F2P05jji0VWPlHpTEzSYOo = sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 250, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 UVdg92utcpl9fp8LtMTK1.getVar("flashobj").clear_obj_vector(); 
 UVdg92utcpl9fp8LtMTK1.getVar("flashobj").push_obj_vector(F2P05jji0VWPlHpTEzSYOo); 
 }
 local d4nhqHulrOB0jK0M = UVdg92utcpl9fp8LtMTK1.getVar("aniobj_new").get_obj_vector(0); 
 sq_ChangeDrawLayer(d4nhqHulrOB0jK0M, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 12:
 if(avOJ_p_CbrvJ == 1)
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 2, 400); 
 break;
 case 14:
 if(avOJ_p_CbrvJ == 1)
 {
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/advanceddragonmagicrock.ptl", UVdg92utcpl9fp8LtMTK1, 0, 0, 50, true, 20, 0, 13); 
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 5, 300); 
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 20, 500); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 100, 0, 102, sq_RGB(211, 211, 211), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 }
 else if(P0onUfltFSzQ14mZT == 2)
 {
 switch(avOJ_p_CbrvJ)
 {
 case 1:
 sq_CreateDrawOnlyObject(UVdg92utcpl9fp8LtMTK1, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_passion/ground_bottom_attack_end_crack_normal.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(UVdg92utcpl9fp8LtMTK1, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_passion/attack_attack3.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 case 2:
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 5, (UVdg92utcpl9fp8LtMTK1.getVar().getFloat(0) * 1700).tointeger()); 
 break;
 case 3:
 local nf7O5IUFJ5Gl = UVdg92utcpl9fp8LtMTK1.getVar().getFloat(0); 
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 20, (450.0 * nf7O5IUFJ5Gl * 0.5).tointeger()); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 100, 0, 30, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 4:
 local nf7O5IUFJ5Gl = UVdg92utcpl9fp8LtMTK1.getVar().getFloat(0); 
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 20, (700.0 * nf7O5IUFJ5Gl / 100.0 * 0.5).tointeger()); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 100, 100, 30, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 5:
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/advanceddragondestroyaxe.ptl", UVdg92utcpl9fp8LtMTK1, sq_GetDistancePos(0, UVdg92utcpl9fp8LtMTK1.getDirection(), -300), 0, 15, true, 10, 0, 8); 
 break;
 case 6:
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 local F2P05jji0VWPlHpTEzSYOo = sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 200, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 UVdg92utcpl9fp8LtMTK1.getVar("flashobj").clear_obj_vector(); 
 UVdg92utcpl9fp8LtMTK1.getVar("flashobj").push_obj_vector(F2P05jji0VWPlHpTEzSYOo); 
 }
 break;
 case 7:
 RemoveAllFlash(UVdg92utcpl9fp8LtMTK1); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 0, 1000, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 }
 break;
 case 245: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 switch(P0onUfltFSzQ14mZT)
 {
 case 1:
 if(avOJ_p_CbrvJ == 1)
 {
 UVdg92utcpl9fp8LtMTK1.resetHitObjectList(); 
 local a_ZIFiVdmUhVSi = sq_GetCNRDObjectToSQRCharacter(UVdg92utcpl9fp8LtMTK1.getParent()); 
 if(a_ZIFiVdmUhVSi)
 {
 local OeIy5kb1c_jGzkIIR = a_ZIFiVdmUhVSi.getVar().get_vector(1); 
 if(OeIy5kb1c_jGzkIIR > 0)
 a_ZIFiVdmUhVSi.getVar().set_vector(1, OeIy5kb1c_jGzkIIR - 1); 
 else if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 UVdg92utcpl9fp8LtMTK1.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 2:
 if(UVdg92utcpl9fp8LtMTK1.getVar("state").get_vector(0) == 11 && avOJ_p_CbrvJ == 1)
 {
 UVdg92utcpl9fp8LtMTK1.getVar("move").clear_vector(); 
 UVdg92utcpl9fp8LtMTK1.getVar("move").push_vector(UVdg92utcpl9fp8LtMTK1.getXPos()); 
 }
 break;
 case 4:
 if(avOJ_p_CbrvJ == 1)
 {
 UVdg92utcpl9fp8LtMTK1.getVar("move").clear_vector(); 
 UVdg92utcpl9fp8LtMTK1.getVar("move").push_vector(UVdg92utcpl9fp8LtMTK1.getXPos()); 
 UVdg92utcpl9fp8LtMTK1.getVar("move").push_vector(sq_GetObjectTime(UVdg92utcpl9fp8LtMTK1)); 
 }
 break;
 }
 break;
 case 248: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 if(P0onUfltFSzQ14mZT == 1)
 {
 local IIj7W8AhVtb = UVdg92utcpl9fp8LtMTK1.getVar("state").get_vector(0); 
 if(IIj7W8AhVtb == 12)
 {
 if(avOJ_p_CbrvJ == 0)
 {
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 3, 300); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 80, 160, 76, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local rYBtk2yFPuPOfrrXxmR2z = UVdg92utcpl9fp8LtMTK1.getXPos(); 
 local OHg4RGVOJ4iuhJFT = UVdg92utcpl9fp8LtMTK1.getYPos(); 
 local UOQ_6SSnYDL5Sgjp = (UVdg92utcpl9fp8LtMTK1.getVar().get_vector(0)).tofloat(); 
 local q8JfjlL1kTj6Gg6J90a = UVdg92utcpl9fp8LtMTK1.getObjectManager(); 
 for(local bm3RvN24E4ILNSHYH2euPNY = 0; bm3RvN24E4ILNSHYH2euPNY < q8JfjlL1kTj6Gg6J90a.getCollisionObjectNumber(); bm3RvN24E4ILNSHYH2euPNY++)
 {
 local klKfSyEf5je = q8JfjlL1kTj6Gg6J90a.getCollisionObject(bm3RvN24E4ILNSHYH2euPNY); 
 
 if(klKfSyEf5je && !UVdg92utcpl9fp8LtMTK1.isEnemy(klKfSyEf5je) && klKfSyEf5je.isObjectType(OBJECTTYPE_CHARACTER)
 && sq_Abs(rYBtk2yFPuPOfrrXxmR2z - sq_GetXPos(klKfSyEf5je)) <= 225 
 && sq_Abs(OHg4RGVOJ4iuhJFT - sq_GetYPos(klKfSyEf5je)) <= 70) 
 {
 local a_ZIFiVdmUhVSi = sq_GetCNRDObjectToSQRCharacter(klKfSyEf5je); 
 if(a_ZIFiVdmUhVSi && !a_ZIFiVdmUhVSi.isDead() && a_ZIFiVdmUhVSi.isMyControlObject()) 
 {
 local rqzXVo46YpfzpDbnfmReAK = a_ZIFiVdmUhVSi.getHp(); 
 local TpqDoGHpyxm0yAm9CDsAx2Z = a_ZIFiVdmUhVSi.getHpMax(); 
 if(rqzXVo46YpfzpDbnfmReAK != TpqDoGHpyxm0yAm9CDsAx2Z) 
 a_ZIFiVdmUhVSi.sq_SendSetHpPacket((rqzXVo46YpfzpDbnfmReAK + TpqDoGHpyxm0yAm9CDsAx2Z / 100.0 * UOQ_6SSnYDL5Sgjp).tointeger(), true, UVdg92utcpl9fp8LtMTK1); 
 }
 }
 }
 }
 }
 else if(IIj7W8AhVtb == 13)
 {
 if(avOJ_p_CbrvJ == 0)
 {
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 5, 500); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 80, 240, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 }
 }
 }
 break;
 case 249: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 switch(P0onUfltFSzQ14mZT)
 {
 case 0:
 if(avOJ_p_CbrvJ == 1 && UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(249); 
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(0)); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(1)); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(2)); 
 sq_SendCreatePassiveObjectPacketPos(UVdg92utcpl9fp8LtMTK1, 24374, 0, UVdg92utcpl9fp8LtMTK1.getXPos(), UVdg92utcpl9fp8LtMTK1.getVar().get_vector(3), 0);
 }
 break;
 case 1:
 switch(avOJ_p_CbrvJ)
 {
 case 1:
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(249); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(UVdg92utcpl9fp8LtMTK1, 24374, 0, 0, 0, 0, UVdg92utcpl9fp8LtMTK1.getDirection());
 }
 break;
 case 2:
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(249); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(1)); 
 sq_SendCreatePassiveObjectPacket(UVdg92utcpl9fp8LtMTK1, 24374, 0, 0, -150, 0, UVdg92utcpl9fp8LtMTK1.getDirection());
 }
 sq_CreateDrawOnlyObject(UVdg92utcpl9fp8LtMTK1, "passiveobject/script_sqr_nut_qq506807329/priest/animation/spearofdestiny/spearofdestiny_explosion_front_eff02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 break;
 case 3:
 switch(avOJ_p_CbrvJ)
 {
 case 1:
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 4, 120); 
 break;
 case 2:
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 10, 120); 
 break;
 case 3:
 UVdg92utcpl9fp8LtMTK1.resetHitObjectList(); 
 break;
 case 4:
 UVdg92utcpl9fp8LtMTK1.resetHitObjectList(); 
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 2, 240); 
 break;
 }
 break;
 }
 break;
 case 250: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 if(P0onUfltFSzQ14mZT == 3)
 {
 if(avOJ_p_CbrvJ == 0)
 {
 local eNtQDtTbpbfj2X = sq_GetCustomAttackInfo(UVdg92utcpl9fp8LtMTK1, 19); 
 sq_SetCurrentAttackBonusRate(eNtQDtTbpbfj2X, UVdg92utcpl9fp8LtMTK1.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(UVdg92utcpl9fp8LtMTK1, eNtQDtTbpbfj2X); 
 UVdg92utcpl9fp8LtMTK1.resetHitObjectList(); 
 }
 }
 break;
 case 246: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 if(P0onUfltFSzQ14mZT == 2)
 {
 if(avOJ_p_CbrvJ == 1)
 {
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 3, 160); 
 if(UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 80, 80, 25, sq_RGB(255, 255, 255), GRAPHICEFFECT_LINEARDODGE, ENUM_DRAWLAYER_COVER); 
 sq_flashScreen(UVdg92utcpl9fp8LtMTK1, 0, 160, 320, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 }
 }
 }
 break;
 case 135: 
 if(avOJ_p_CbrvJ == 1)
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 7, 320); 
 break;
 case 132: 
 local P0onUfltFSzQ14mZT = UVdg92utcpl9fp8LtMTK1.getVar("subType").get_vector(0); 
 if(P0onUfltFSzQ14mZT == 2)
 {
 if(UVdg92utcpl9fp8LtMTK1.getVar("state").get_vector(0) == 11 && avOJ_p_CbrvJ == 0 && UVdg92utcpl9fp8LtMTK1.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(132); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(UVdg92utcpl9fp8LtMTK1.getVar().get_vector(1)); 
 sq_SendCreatePassiveObjectPacket(UVdg92utcpl9fp8LtMTK1, 24374, 0, 135, 0, 30, UVdg92utcpl9fp8LtMTK1.getDirection());
 }
 }
 else if(P0onUfltFSzQ14mZT == 3)
 if(avOJ_p_CbrvJ == 1)
 sq_SetMyShake(UVdg92utcpl9fp8LtMTK1, 10, 200); 
 break;
 }
 return true;
} ;
 

 
 
function onTimeEvent_po_qq506807329new_priest_24374(EZdk_Ls90RMoKw, FqsldXbndfkm7E, l001ED3uN3IlrV8J85C4z2)
{
 if(!EZdk_Ls90RMoKw) return false;
 local yg0s_3nprbwiNiJQnU = EZdk_Ls90RMoKw.getVar("skill").get_vector(0);
 switch(yg0s_3nprbwiNiJQnU)
 {
 case 137: 
 switch(FqsldXbndfkm7E)
 {
 case 0: 
 local zgYlaEtnoxenfpzXRWk3rjS = EZdk_Ls90RMoKw.getMyPassiveObject(24374, 0); 
 if(zgYlaEtnoxenfpzXRWk3rjS)
 {
 local V2YqnpcdgQU8lBUPS = EZdk_Ls90RMoKw.getVar().get_obj_vector_size(); 
 local fH1_GNxgrM7RIBTev = EZdk_Ls90RMoKw.getVar(); 
 for(local M4__MJ9GRslICO = 0; M4__MJ9GRslICO < V2YqnpcdgQU8lBUPS; M4__MJ9GRslICO++)
 {
 local SqBlBtIU95byDL = sq_GetCNRDObjectToActiveObject(fH1_GNxgrM7RIBTev.get_obj_vector(M4__MJ9GRslICO)); 
 if(SqBlBtIU95byDL && !SqBlBtIU95byDL.isDead() && zgYlaEtnoxenfpzXRWk3rjS.isMyControlObject()) 
 sq_SendHitObjectPacket(zgYlaEtnoxenfpzXRWk3rjS, SqBlBtIU95byDL, 0, 0, sq_GetObjectHeight(SqBlBtIU95byDL) / 2); 
 }
 }
 local QujgSOvyKwJ0s9Bb4hsM = EZdk_Ls90RMoKw.getVar().get_vector(0); 
 if(l001ED3uN3IlrV8J85C4z2 >= QujgSOvyKwJ0s9Bb4hsM) 
 {
 if(zgYlaEtnoxenfpzXRWk3rjS && zgYlaEtnoxenfpzXRWk3rjS.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(zgYlaEtnoxenfpzXRWk3rjS); 
 if(EZdk_Ls90RMoKw.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(EZdk_Ls90RMoKw); 
 return true;
 }
 break;
 }
 break;
 case 237: 
 switch(FqsldXbndfkm7E)
 {
 case 0:
 if(!EZdk_Ls90RMoKw.isMyControlObject())return false;
 local AAW3igJXlWgCXJeubNQwC = sq_getRandom(-35, 35); 
 local g7tdvrmlKjZ = 500; 
 local JvJaxaUsgQk6kaAublDGKWzz = sq_getRandom(-80, 80); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(237); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(g7tdvrmlKjZ);
 sq_BinaryWriteDword(JvJaxaUsgQk6kaAublDGKWzz);
 sq_BinaryWriteDword(EZdk_Ls90RMoKw.getVar().get_vector(0)); 
 sq_BinaryWriteDword(EZdk_Ls90RMoKw.getVar().get_vector(1)); 
 sq_BinaryWriteDword(EZdk_Ls90RMoKw.getVar().get_vector(2)); 
 sq_SendCreatePassiveObjectPacket(EZdk_Ls90RMoKw, 24374, 0, 0, 0, AAW3igJXlWgCXJeubNQwC, EZdk_Ls90RMoKw.getDirection());
 break;
 case 1:
 if(EZdk_Ls90RMoKw.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(EZdk_Ls90RMoKw); 
 break;
 case 2:
 if(!EZdk_Ls90RMoKw.isMyControlObject())return false;
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(237); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(EZdk_Ls90RMoKw.getVar().get_vector(6)); 
 sq_SendCreatePassiveObjectPacketPos(EZdk_Ls90RMoKw.getParent(), 24374, 0, EZdk_Ls90RMoKw.getXPos(), EZdk_Ls90RMoKw.getYPos(), EZdk_Ls90RMoKw.getZPos(), EZdk_Ls90RMoKw.getDirection());
 break;
 }
 break;
 case 238: 
 if(FqsldXbndfkm7E == 0)
 {
 if(EZdk_Ls90RMoKw.isMyControlObject())
 EZdk_Ls90RMoKw.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(FqsldXbndfkm7E == 1)
 {
 if(EZdk_Ls90RMoKw.getVar().getBool(0) == false) 
 {
 EZdk_Ls90RMoKw.getVar().setBool(0, true); 
 local VLRs_SM0B1UkexuvQOIU7X = sq_GetCustomAttackInfo(EZdk_Ls90RMoKw, 2); 
 sq_SetCurrentAttackBonusRate(VLRs_SM0B1UkexuvQOIU7X, EZdk_Ls90RMoKw.getVar().get_vector(3)); 
 sq_SetCurrentAttackInfo(EZdk_Ls90RMoKw, VLRs_SM0B1UkexuvQOIU7X); 
 }
 EZdk_Ls90RMoKw.resetHitObjectList(); 
 }
 break;
 case 241: 
 if(FqsldXbndfkm7E == 0)
 {
 if(EZdk_Ls90RMoKw.isMyControlObject())
 EZdk_Ls90RMoKw.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(FqsldXbndfkm7E == 1)
 EZdk_Ls90RMoKw.resetHitObjectList(); 
 break;
 case 136: 
 if(FqsldXbndfkm7E == 0)
 EZdk_Ls90RMoKw.resetHitObjectList(); 
 else if(FqsldXbndfkm7E == 1)
 {
 local moVhY66r3dcmk = EZdk_Ls90RMoKw.getParent(); 
 if(moVhY66r3dcmk)
 {
 local qhJz5xo4Hs = EZdk_Ls90RMoKw.getXPos(); 
 local WoiZDGO0U924dpCKHR5OCGlm = EZdk_Ls90RMoKw.getYPos(); 
 local Zr2kChzQj9GHau = moVhY66r3dcmk.getXPos(); 
 local HnFXNax9qRxkAT3OJO = moVhY66r3dcmk.getYPos(); 
 if(qhJz5xo4Hs > Zr2kChzQj9GHau) sq_setCurrentAxisPos(EZdk_Ls90RMoKw, 0, qhJz5xo4Hs -= 1); 
 else sq_setCurrentAxisPos(EZdk_Ls90RMoKw, 0, qhJz5xo4Hs += 1); 
 if(WoiZDGO0U924dpCKHR5OCGlm > HnFXNax9qRxkAT3OJO) sq_setCurrentAxisPos(EZdk_Ls90RMoKw, 1, WoiZDGO0U924dpCKHR5OCGlm -= 1); 
 else sq_setCurrentAxisPos(EZdk_Ls90RMoKw, 1, WoiZDGO0U924dpCKHR5OCGlm += 1); 
 }
 else if(EZdk_Ls90RMoKw.isMyControlObject()) 
 EZdk_Ls90RMoKw.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 132: 
 if(FqsldXbndfkm7E == 0 && EZdk_Ls90RMoKw.isMyControlObject())
 EZdk_Ls90RMoKw.addSetStatePacket(EZdk_Ls90RMoKw.getVar("state").get_vector(0) + 1, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 return false;
} ;
 

 
function getCustomHitEffectFileName_po_qq506807329new_priest_24374(XHMvPPkmg6y5RzvTA3z3Mr, Ei50iAfCf0fq8PAGYkKJeiMS)
{
 if(!XHMvPPkmg6y5RzvTA3z3Mr) return "";
 local lFiBU_LUKktE = XHMvPPkmg6y5RzvTA3z3Mr.getVar("skill").get_vector(0);
 switch(lFiBU_LUKktE)
 {
 case SKILL_ELEMENTALCURTAIN: 
 return "";
 default: 
 return "";
 }
} ;

 
function onChangeSkillEffect_po_qq506807329new_priest_24374(gwHNU3cveUt5iLc6QC, jJR8ULEJ7vwsyGnnTvtMtp, n4lLuiWcIreg)
{
 if(!gwHNU3cveUt5iLc6QC) return;
 switch(jJR8ULEJ7vwsyGnnTvtMtp)
 {
 case 238: 
 local O2864tg00s_iPaKQdBR_Y = gwHNU3cveUt5iLc6QC.getCurrentAnimation(); 
 if(O2864tg00s_iPaKQdBR_Y)sq_Rewind(O2864tg00s_iPaKQdBR_Y); 
 break;
 }
} ;
 

function destroy_po_qq506807329new_priest_24374(zKjNDN2dRvkghQL8GSKjk)
{
 if(!zKjNDN2dRvkghQL8GSKjk) return;
 local MOGu2UxRcOQfXaTbQ1VXNh = zKjNDN2dRvkghQL8GSKjk.getVar("skill").get_vector(0);
 switch(MOGu2UxRcOQfXaTbQ1VXNh)
 {
 case 238: 
 case 241: 
 RemoveAllAni(zKjNDN2dRvkghQL8GSKjk); 
 break;
 }
} ;




