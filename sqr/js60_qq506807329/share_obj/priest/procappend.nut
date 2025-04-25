
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function procAppend_po_qq506807329new_priest_24374(iR7NOlkCJTKIjW)
{
 if(!iR7NOlkCJTKIjW) return;
 local BAzyCRkm09 = iR7NOlkCJTKIjW.getVar("skill").get_vector(0);
 switch(BAzyCRkm09)
 {
 case 237: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 switch(XuiFPiCDpxWoA)
 {
 case 1:
 switch(G9pJtCd7nVk)
 {
 case 10: 
 if(iR7NOlkCJTKIjW.sq_GetParentState() != 237) 
 iR7NOlkCJTKIjW.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 11:
 if(iR7NOlkCJTKIjW.getMyPassiveObjectCount(24374) <= 0) 
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 break;
 }
 break;
 case 2:
 local MXIO37GxQwR3CQDTomslP8 = sq_GetCNRDObjectToCollisionObject(iR7NOlkCJTKIjW.getParent()); 
 if(MXIO37GxQwR3CQDTomslP8)
 {
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 if(G9pJtCd7nVk == 10)
 {
 local tWjxcubWbu = MXIO37GxQwR3CQDTomslP8.getVar("atkobj").get_obj_vector_size(); 
 for(local P9OH_Q_7JStQasmRHzuO1uA = 0; P9OH_Q_7JStQasmRHzuO1uA < tWjxcubWbu; P9OH_Q_7JStQasmRHzuO1uA++)
 {
 local S8LBzEmBLG659BODsA = sq_GetCNRDObjectToCollisionObject(MXIO37GxQwR3CQDTomslP8.getVar("atkobj").get_obj_vector(P9OH_Q_7JStQasmRHzuO1uA)); 
 if(S8LBzEmBLG659BODsA)sq_AddHitObject(iR7NOlkCJTKIjW, S8LBzEmBLG659BODsA); 
 }
 local gK168BRO7unXhg97K = sq_GetObjectTime(iR7NOlkCJTKIjW); 
 local eYtwiOvtzxZScfiFxOU1 = 500; 
 local qKCkUaCOI_JK3o6y5mpQ = iR7NOlkCJTKIjW.getVar(); 
 local m9HdDqRRCkkJ_2GaSEgEbDx = sq_GetUniformVelocity(qKCkUaCOI_JK3o6y5mpQ.get_vector(0), qKCkUaCOI_JK3o6y5mpQ.get_vector(2), gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1);
 local Vk5wbh8dkG = sq_GetUniformVelocity(qKCkUaCOI_JK3o6y5mpQ.get_vector(1), qKCkUaCOI_JK3o6y5mpQ.get_vector(3), gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1);
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 0, m9HdDqRRCkkJ_2GaSEgEbDx); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 1, Vk5wbh8dkG); 
 if(gK168BRO7unXhg97K > 350)
 {
 local S54X9o5Fng04yoCsB = sq_GetAccel(255, 0, gK168BRO7unXhg97K - 350, 150, true); 
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 MgOYDls5k5vp4hqv6tUOypk.setRGBA(255, 255, 255, S54X9o5Fng04yoCsB); 
 local BYCdKXE3wkzkJ2pRm3K0iyaW = sq_AniLayerListSize(MgOYDls5k5vp4hqv6tUOypk); 
 for(local P9OH_Q_7JStQasmRHzuO1uA = 0; P9OH_Q_7JStQasmRHzuO1uA < BYCdKXE3wkzkJ2pRm3K0iyaW; P9OH_Q_7JStQasmRHzuO1uA++)
 {
 local e8wzkOUapl7OVgCSGc6pe5Q = sq_getAniLayerListObject(MgOYDls5k5vp4hqv6tUOypk, P9OH_Q_7JStQasmRHzuO1uA); 
 e8wzkOUapl7OVgCSGc6pe5Q.setRGBA(255, 255, 255, S54X9o5Fng04yoCsB); 
 }
 }
 if(iR7NOlkCJTKIjW.isMyControlObject())
 if(gK168BRO7unXhg97K >= eYtwiOvtzxZScfiFxOU1) 
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 }
 else if(G9pJtCd7nVk == 11) 
 {
 if(iR7NOlkCJTKIjW.isMyControlObject())
 if(!sq_GetMoveParent(iR7NOlkCJTKIjW))
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 }
 }
 else if(iR7NOlkCJTKIjW.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 break;
 }
 break;
 case 238: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 1)
 {
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 if(G9pJtCd7nVk == 12)
 {
 local tQqDGyWM5uhK3Y = iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(0); 
 if(sq_IsEnd(tQqDGyWM5uhK3Y.getCurrentAnimation())) 
 {
 
 tQqDGyWM5uhK3Y.setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "BlueDragon/WorkBlueDragon_02.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "RedPhoenix/WorkPhoenix_02.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Turtle/WorkHyunmu_02.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "WhiteTiger/WorkWhiteTiger_02.ani"));
 }
 local qSCGvBlg2Ym82R7x = iR7NOlkCJTKIjW.getVar().GetAnimationMap("GatherBarrierBack_01", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Barrier/GatherBarrierBack_01.ani");
 local Yy3udohTnuxz = iR7NOlkCJTKIjW.getVar().GetAnimationMap("GatherBarrierFront_01", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Barrier/GatherBarrierFront_01.ani");
 if(sq_IsEnd(qSCGvBlg2Ym82R7x)) 
 {
 
 sq_Rewind(qSCGvBlg2Ym82R7x);
 sq_Rewind(Yy3udohTnuxz);
 }
 if(iR7NOlkCJTKIjW.getVar("time").size_vector() > 0)
 {
 local gK168BRO7unXhg97K = sq_GetObjectTime(iR7NOlkCJTKIjW) - iR7NOlkCJTKIjW.getVar("time").get_vector(0); 
 local eYtwiOvtzxZScfiFxOU1 = 250; 
 local tWjxcubWbu = iR7NOlkCJTKIjW.getVar().get_obj_vector_size(); 
 if(tWjxcubWbu > 0)
 {
 local nCk4tqqb_XvO2J = iR7NOlkCJTKIjW.getXPos(); 
 local tcrY8I8YYogQwUrE_VNF = iR7NOlkCJTKIjW.getYPos() - 1; 
 local qKCkUaCOI_JK3o6y5mpQ = iR7NOlkCJTKIjW.getVar(); 
 for(local P9OH_Q_7JStQasmRHzuO1uA = 0; P9OH_Q_7JStQasmRHzuO1uA < tWjxcubWbu; P9OH_Q_7JStQasmRHzuO1uA++)
 {
 local jd4UrszYjdQPfDrxVhWRQz = sq_GetCNRDObjectToActiveObject(qKCkUaCOI_JK3o6y5mpQ.get_obj_vector(P9OH_Q_7JStQasmRHzuO1uA)); 
 if(!jd4UrszYjdQPfDrxVhWRQz.isDead())
 {
 local FNCnwfmU8IqbjtKmP = CNSquirrelAppendage.sq_GetAppendage(jd4UrszYjdQPfDrxVhWRQz, "character/new_priest/pentagon/ap_pentagon.nut");
 if(FNCnwfmU8IqbjtKmP)
 {
 local m9HdDqRRCkkJ_2GaSEgEbDx = sq_GetUniformVelocity(FNCnwfmU8IqbjtKmP.getVar().get_vector(0), nCk4tqqb_XvO2J, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1);
 local Vk5wbh8dkG = sq_GetUniformVelocity(FNCnwfmU8IqbjtKmP.getVar().get_vector(1), tcrY8I8YYogQwUrE_VNF, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1);
 sq_setCurrentAxisPos(jd4UrszYjdQPfDrxVhWRQz, 0, m9HdDqRRCkkJ_2GaSEgEbDx); 
 sq_setCurrentAxisPos(jd4UrszYjdQPfDrxVhWRQz, 1, Vk5wbh8dkG); 
 }
 }
 }
 }
 local b0lnpxuyMi = iR7NOlkCJTKIjW.getVar("rate").get_vector(0); 
 local ejCIvX8yBoKEsSEr387rLtrF = iR7NOlkCJTKIjW.getVar("rate").get_vector(1); 
 local bDgJb2pQOhWobidVWCSQg6 = sq_GetUniformVelocity(b0lnpxuyMi, ejCIvX8yBoKEsSEr387rLtrF, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1); 
 iR7NOlkCJTKIjW.getVar("rate").set_vector(2, bDgJb2pQOhWobidVWCSQg6); 
 
 local Sue7K47Ge7K47Ajhyb2Ts = bDgJb2pQOhWobidVWCSQg6.tofloat() / 1000000.0;
 qSCGvBlg2Ym82R7x.setImageRateFromOriginal(Sue7K47Ge7K47Ajhyb2Ts, Sue7K47Ge7K47Ajhyb2Ts); 
 qSCGvBlg2Ym82R7x.setAutoLayerWorkAnimationAddSizeRate(Sue7K47Ge7K47Ajhyb2Ts); 
 Yy3udohTnuxz.setImageRateFromOriginal(Sue7K47Ge7K47Ajhyb2Ts, Sue7K47Ge7K47Ajhyb2Ts); 
 Yy3udohTnuxz.setAutoLayerWorkAnimationAddSizeRate(Sue7K47Ge7K47Ajhyb2Ts); 
 if(gK168BRO7unXhg97K >= eYtwiOvtzxZScfiFxOU1) 
 {
 
 tWjxcubWbu = iR7NOlkCJTKIjW.getVar().get_obj_vector_size(); 
 if(tWjxcubWbu > 0)
 {
 local qKCkUaCOI_JK3o6y5mpQ = iR7NOlkCJTKIjW.getVar(); 
 for(local P9OH_Q_7JStQasmRHzuO1uA = 0; P9OH_Q_7JStQasmRHzuO1uA < tWjxcubWbu; P9OH_Q_7JStQasmRHzuO1uA++)
 {
 local jd4UrszYjdQPfDrxVhWRQz = sq_GetCNRDObjectToActiveObject(qKCkUaCOI_JK3o6y5mpQ.get_obj_vector(P9OH_Q_7JStQasmRHzuO1uA)); 
 if(!jd4UrszYjdQPfDrxVhWRQz.isDead())
 {
 local FNCnwfmU8IqbjtKmP = CNSquirrelAppendage.sq_GetAppendage(jd4UrszYjdQPfDrxVhWRQz, "character/new_priest/pentagon/ap_pentagon.nut");
 if(FNCnwfmU8IqbjtKmP)
 {
 FNCnwfmU8IqbjtKmP.getVar().set_vector(0, jd4UrszYjdQPfDrxVhWRQz.getXPos()); 
 FNCnwfmU8IqbjtKmP.getVar().set_vector(1, jd4UrszYjdQPfDrxVhWRQz.getYPos()); 
 FNCnwfmU8IqbjtKmP.getVar("isMove").setBool(0, true); 
 }
 }
 }
 }
 iR7NOlkCJTKIjW.getVar("time").clear_vector(); 
 }
 }
 }
 }
 break;
 case 241: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 1)
 {
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 if(G9pJtCd7nVk < 13)
 {
 local tQqDGyWM5uhK3Y = iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(0); 
 if(sq_IsEnd(tQqDGyWM5uhK3Y.getCurrentAnimation())) 
 {
 
 tQqDGyWM5uhK3Y.setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "workbluedragon_1.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "workwhitetiger_1.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "workhyunmu_1.ani"));
 (iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "workphoenix_1.ani"));
 }
 }
 }
 break;
 case 245: 
 local nXm1Rb7P_bo04366og8FNiNc = iR7NOlkCJTKIjW.getParent(); 
 if(!nXm1Rb7P_bo04366og8FNiNc) 
 {
 if(iR7NOlkCJTKIjW.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 return;
 }
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 switch(XuiFPiCDpxWoA)
 {
 case 1:
 if(iR7NOlkCJTKIjW.getVar("state").get_vector(0) == 10)
 {
 local gK168BRO7unXhg97K = sq_GetObjectTime(iR7NOlkCJTKIjW) - iR7NOlkCJTKIjW.getVar().get_vector(0); 
 local eYtwiOvtzxZScfiFxOU1 = 150; 
 local g3Fu0ix6UBHgALlu8 = sq_GetUniformVelocity(0, 250, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1);
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local hnwqTLh7QyVjBd0 = sq_RGB(255, 255, 255); 
 local S54X9o5Fng04yoCsB = sq_ALPHA(g3Fu0ix6UBHgALlu8); 
 MgOYDls5k5vp4hqv6tUOypk.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, hnwqTLh7QyVjBd0, S54X9o5Fng04yoCsB, true, false); 
 local BYCdKXE3wkzkJ2pRm3K0iyaW = sq_AniLayerListSize(MgOYDls5k5vp4hqv6tUOypk); 
 if(BYCdKXE3wkzkJ2pRm3K0iyaW > 0)
 for(local P9OH_Q_7JStQasmRHzuO1uA = 0; P9OH_Q_7JStQasmRHzuO1uA < BYCdKXE3wkzkJ2pRm3K0iyaW; P9OH_Q_7JStQasmRHzuO1uA++)
 {
 local CVIkrYy24pA2EoG4Y = sq_getAniLayerListObject(MgOYDls5k5vp4hqv6tUOypk, P9OH_Q_7JStQasmRHzuO1uA); 
 if(CVIkrYy24pA2EoG4Y)
 {
 local XJK7yTqCYoWk = CVIkrYy24pA2EoG4Y.GetCurrentFrame().GetGraphicEffect(); 
 if(XJK7yTqCYoWk != GRAPHICEFFECT_LINEARDODGE)
 CVIkrYy24pA2EoG4Y.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, hnwqTLh7QyVjBd0, S54X9o5Fng04yoCsB, true, false);
 }
 }
 if(iR7NOlkCJTKIjW.isMyControlObject())
 if(gK168BRO7unXhg97K >= eYtwiOvtzxZScfiFxOU1) 
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 }
 break;
 case 2:
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 if(G9pJtCd7nVk == 10)
 {
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local gK168BRO7unXhg97K = sq_GetCurrentTime(MgOYDls5k5vp4hqv6tUOypk); 
 local eYtwiOvtzxZScfiFxOU1 = MgOYDls5k5vp4hqv6tUOypk.getDelaySum(false); 
 local m9HdDqRRCkkJ_2GaSEgEbDx = sq_GetDistancePos(iR7NOlkCJTKIjW.getVar("move").get_vector(0),
 iR7NOlkCJTKIjW.getDirection(),
 sq_GetUniformVelocity(0, 130, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1)); 
 local Vk5wbh8dkG = iR7NOlkCJTKIjW.getVar("move").get_vector(1) + 20 * sq_SinTable(sq_GetUniformVelocity(0, 180, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1)); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 0, m9HdDqRRCkkJ_2GaSEgEbDx); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 1, Vk5wbh8dkG.tointeger()); 
 }
 else if(G9pJtCd7nVk == 11)
 {
 if(iR7NOlkCJTKIjW.getVar("move").size_vector() > 0)
 {
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local gK168BRO7unXhg97K = sq_GetCurrentTime(MgOYDls5k5vp4hqv6tUOypk) - MgOYDls5k5vp4hqv6tUOypk.getDelaySum(0, 1); 
 local eYtwiOvtzxZScfiFxOU1 = MgOYDls5k5vp4hqv6tUOypk.getDelaySum(2, 2); 
 local m9HdDqRRCkkJ_2GaSEgEbDx = sq_GetDistancePos(iR7NOlkCJTKIjW.getVar("move").get_vector(0),
 iR7NOlkCJTKIjW.getDirection(),
 sq_GetUniformVelocity(0, 10, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1)); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 0, m9HdDqRRCkkJ_2GaSEgEbDx); 
 if(gK168BRO7unXhg97K >= eYtwiOvtzxZScfiFxOU1) 
 iR7NOlkCJTKIjW.getVar("move").clear_vector(); 
 }
 }
 break;
 case 4:
 if(iR7NOlkCJTKIjW.getVar("move").size_vector() > 0) 
 {
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local gK168BRO7unXhg97K = sq_GetObjectTime(iR7NOlkCJTKIjW) - iR7NOlkCJTKIjW.getVar("move").get_vector(1); 
 local eYtwiOvtzxZScfiFxOU1 = MgOYDls5k5vp4hqv6tUOypk.getDelaySum(5, 10); 
 local m9HdDqRRCkkJ_2GaSEgEbDx = sq_GetDistancePos(iR7NOlkCJTKIjW.getVar("move").get_vector(0),
 iR7NOlkCJTKIjW.getDirection(),
 sq_GetUniformVelocity(0, 50, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1)); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 0, m9HdDqRRCkkJ_2GaSEgEbDx); 
 if(gK168BRO7unXhg97K >= eYtwiOvtzxZScfiFxOU1)
 iR7NOlkCJTKIjW.getVar("move").clear_vector(); 
 }
 break;
 }
 break;
 case 248: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 1)
 {
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 switch(G9pJtCd7nVk)
 {
 case 10:
 local nXm1Rb7P_bo04366og8FNiNc = iR7NOlkCJTKIjW.getParent(); 
 if(!nXm1Rb7P_bo04366og8FNiNc || nXm1Rb7P_bo04366og8FNiNc.getState() != 248)
 {
 if(iR7NOlkCJTKIjW.isMyControlObject())
 {
 local uSVWpzp7IV9nuINX1 = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(uSVWpzp7IV9nuINX1); 
 sq_IntVectorPush(uSVWpzp7IV9nuINX1, iR7NOlkCJTKIjW.getXPos()); 
 sq_IntVectorPush(uSVWpzp7IV9nuINX1, iR7NOlkCJTKIjW.getYPos()); 
 iR7NOlkCJTKIjW.addSetStatePacket(11, uSVWpzp7IV9nuINX1, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 }
 }
 break;
 case 249: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 0)
 {
 local nXm1Rb7P_bo04366og8FNiNc = iR7NOlkCJTKIjW.getParent(); 
 if(nXm1Rb7P_bo04366og8FNiNc && nXm1Rb7P_bo04366og8FNiNc.isMyControlObject()) 
 {
 local sFOguyjez2nZBef5mXmTztl = nXm1Rb7P_bo04366og8FNiNc.getObjectManager(); 
 if(!sFOguyjez2nZBef5mXmTztl)return;
 local tcrY8I8YYogQwUrE_VNF = sFOguyjez2nZBef5mXmTztl.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL);
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 1, tcrY8I8YYogQwUrE_VNF); 
 local tQqDGyWM5uhK3Y = iR7NOlkCJTKIjW.getVar("aniobj").get_obj_vector(0); 
 if(tQqDGyWM5uhK3Y)
 {
 local nCk4tqqb_XvO2J = sFOguyjez2nZBef5mXmTztl.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL);
 sq_setCurrentAxisPos(tQqDGyWM5uhK3Y, 0, nCk4tqqb_XvO2J); 
 sq_setCurrentAxisPos(tQqDGyWM5uhK3Y, 1, tcrY8I8YYogQwUrE_VNF); 
 }
 }
 }
 break;
 case 136: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 2)
 {
 local G9pJtCd7nVk = iR7NOlkCJTKIjW.getVar("state").get_vector(0); 
 switch(G9pJtCd7nVk)
 {
 case 10:
 local MgOYDls5k5vp4hqv6tUOypk = iR7NOlkCJTKIjW.getCurrentAnimation(); 
 local gK168BRO7unXhg97K = sq_GetCurrentTime(MgOYDls5k5vp4hqv6tUOypk); 
 local eYtwiOvtzxZScfiFxOU1 = MgOYDls5k5vp4hqv6tUOypk.getDelaySum(false); 
 local ZJcextB5qOkiL1j8pNISE = sq_GetUniformVelocity(iR7NOlkCJTKIjW.getVar("move").get_vector(0), iR7NOlkCJTKIjW.getVar("move").get_vector(1), gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 2, ZJcextB5qOkiL1j8pNISE); 
 break;
 case 11:
 local BV7d8xZPNpVbKg = sq_GetObjectTime(iR7NOlkCJTKIjW); 
 local gK168BRO7unXhg97K = BV7d8xZPNpVbKg - iR7NOlkCJTKIjW.getVar("move").get_vector(0); 
 local eYtwiOvtzxZScfiFxOU1 = 2000; 
 local ZJcextB5qOkiL1j8pNISE = sq_GetUniformVelocity(iR7NOlkCJTKIjW.getVar("move").get_vector(1), 30, gK168BRO7unXhg97K, eYtwiOvtzxZScfiFxOU1); 
 sq_setCurrentAxisPos(iR7NOlkCJTKIjW, 2, ZJcextB5qOkiL1j8pNISE); 
 if(BV7d8xZPNpVbKg > 3000 && iR7NOlkCJTKIjW.isMyControlObject()) 
 iR7NOlkCJTKIjW.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 }
 break;
 case 137: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 1)
 {
 if(iR7NOlkCJTKIjW.getVar().getBool(0) == true) 
 {
 if(iR7NOlkCJTKIjW.getVar().get_obj_vector_size() <= 0 && iR7NOlkCJTKIjW.getCurrentAnimation() == null) 
 {
 local Miww8zTjMEqt = iR7NOlkCJTKIjW.getMyPassiveObject(24374, 0); 
 if(Miww8zTjMEqt && Miww8zTjMEqt.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Miww8zTjMEqt); 
 if(iR7NOlkCJTKIjW.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 }
 }
 }
 break;
 case 116: 
 local XuiFPiCDpxWoA = iR7NOlkCJTKIjW.getVar("subType").get_vector(0); 
 if(XuiFPiCDpxWoA == 1)
 {
 local nXm1Rb7P_bo04366og8FNiNc = iR7NOlkCJTKIjW.getTopCharacter(); 
 if(!nXm1Rb7P_bo04366og8FNiNc || nXm1Rb7P_bo04366og8FNiNc.getState() != 63)
 {
 if(iR7NOlkCJTKIjW.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(iR7NOlkCJTKIjW); 
 return;
 }
 }
 break;
 }
} ;
 
