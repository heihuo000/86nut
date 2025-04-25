
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function setState_po_qq506807329new_priest_24374(f6xAbcpu3qN4J0a9gd, Rcupf_9nPl, pCNnVLkBlt6bxOng8cyLoq4i)
{
 if(!f6xAbcpu3qN4J0a9gd) return;
 f6xAbcpu3qN4J0a9gd.getVar("state").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("state").push_vector(Rcupf_9nPl);
 local qF6SgNWF5_2 = f6xAbcpu3qN4J0a9gd.getVar("skill").get_vector(0);
 switch(qF6SgNWF5_2)
 {
 case 237: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 switch(h5lPlXGlNDW)
 {
 case 1:
 switch(Rcupf_9nPl)
 {
 case 10:
 f6xAbcpu3qN4J0a9gd.setTimeEvent(0, 20, 0, true); 
 break;
 case 11:
 f6xAbcpu3qN4J0a9gd.stopTimeEvent(0); 
 break;
 }
 break;
 case 2:
 switch(Rcupf_9nPl)
 {
 case 10:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/destroyspirittalisman/fluttering.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 sq_SetCurrentAttackInfoFromCustomIndex(f6xAbcpu3qN4J0a9gd, 0); 
 break;
 case 11:
 local cF9KuuH7two8fC7egMejJ9 = sq_GetObject(f6xAbcpu3qN4J0a9gd, sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 0), sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 1)); 
 if(cF9KuuH7two8fC7egMejJ9)
 {
 f6xAbcpu3qN4J0a9gd.setCurrentPos(cF9KuuH7two8fC7egMejJ9.getXPos(), cF9KuuH7two8fC7egMejJ9.getYPos() + 1, cF9KuuH7two8fC7egMejJ9.getZPos() + sq_GetObjectHeight(cF9KuuH7two8fC7egMejJ9) / 2); 
 sq_moveWithParent(cF9KuuH7two8fC7egMejJ9, f6xAbcpu3qN4J0a9gd); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/destroyspirittalisman/talisman.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(1, f6xAbcpu3qN4J0a9gd.getVar().get_vector(4), 1, false); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(2, f6xAbcpu3qN4J0a9gd.getVar().get_vector(5), 0, true); 
 }
 break;
 }
 break;
 }
 break;
 case 238: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 if(h5lPlXGlNDW == 1)
 {
 switch(Rcupf_9nPl)
 {
 case 10:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/pentagon/startpentagon_01.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local RUd81xeguIua = (f6xAbcpu3qN4J0a9gd.getVar().get_vector(0)).tofloat() / 340.0; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 
 local _kJR3tv4NGznYixFNhgobp = f6xAbcpu3qN4J0a9gd.getXPos(); 
 local Q9Na_Xq3iZFQ3 = f6xAbcpu3qN4J0a9gd.getYPos(); 
 local LoNE8EZZWdeOWoiZ2aY = f6xAbcpu3qN4J0a9gd.getDirection(); 
 local lz6CbwFSeYZOj = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "bluedragon/startbluedragon_02.ani", ENUM_DRAWLAYER_NORMAL, false);
 local i7jUhOaEmE8i = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "RedPhoenix/StartPhoenix_03.ani", ENUM_DRAWLAYER_NORMAL, false);
 local XDhKzCJide35BG = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "Turtle/StartHyunmu_02.ani", ENUM_DRAWLAYER_NORMAL, false);
 local AVzcikqqldC = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "WhiteTiger/StartWhiteTiger_02.ani", ENUM_DRAWLAYER_NORMAL, false);
 sq_SetCurrentPos(lz6CbwFSeYZOj, sq_GetDistancePos(_kJR3tv4NGznYixFNhgobp, LoNE8EZZWdeOWoiZ2aY, (250.0 * RUd81xeguIua).tointeger()), Q9Na_Xq3iZFQ3 - (15.0 * RUd81xeguIua).tointeger(), 0); 
 sq_SetCurrentPos(i7jUhOaEmE8i, sq_GetDistancePos(_kJR3tv4NGznYixFNhgobp, LoNE8EZZWdeOWoiZ2aY, (140.0 * RUd81xeguIua).tointeger()), Q9Na_Xq3iZFQ3 + (50.0 * RUd81xeguIua).tointeger(), 0); 
 sq_setCurrentAxisPos(XDhKzCJide35BG, 1, Q9Na_Xq3iZFQ3 - (55.0 * RUd81xeguIua).tointeger()); 
 sq_SetCurrentPos(AVzcikqqldC, sq_GetDistancePos(_kJR3tv4NGznYixFNhgobp, LoNE8EZZWdeOWoiZ2aY, (-160.0 * RUd81xeguIua).tointeger()), Q9Na_Xq3iZFQ3 + (50.0 * RUd81xeguIua).tointeger(), 0); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").clear_obj_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(lz6CbwFSeYZOj); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(i7jUhOaEmE8i); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(XDhKzCJide35BG); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(AVzcikqqldC); 
 f6xAbcpu3qN4J0a9gd.sq_PlaySound("PENTAGON_START");
 break;
 case 11:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/pentagon/castworkpentagon_03.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local RUd81xeguIua = (f6xAbcpu3qN4J0a9gd.getVar().get_vector(0)).tofloat() / 340.0; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "BlueDragon/CastWorkBlueDragon_03.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "RedPhoenix/CastWorkPhoenix_03.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Turtle/CastWorkHyunmu_03.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "WhiteTiger/CastWorkWhiteTiger_03.ani"));
 
 local SiJ3CqZ73OIngt6S = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "Barrier/CastBarrierBack_01.ani", ENUM_DRAWLAYER_NORMAL, false);
 local tIGod9y1edKaZKYsp = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/" + "Barrier/CastBarrierFront_01.ani", ENUM_DRAWLAYER_NORMAL, false);
 sq_setCurrentAxisPos(SiJ3CqZ73OIngt6S, 1, f6xAbcpu3qN4J0a9gd.getYPos() - 1); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(SiJ3CqZ73OIngt6S); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(tIGod9y1edKaZKYsp); 
 local tDgM22c4Vpppf = SiJ3CqZ73OIngt6S.getCurrentAnimation(); 
 local D3KtAqs8Q2PG2FwK2e511M = tIGod9y1edKaZKYsp.getCurrentAnimation(); 
 tDgM22c4Vpppf.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 tDgM22c4Vpppf.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 D3KtAqs8Q2PG2FwK2e511M.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 D3KtAqs8Q2PG2FwK2e511M.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 local _kJR3tv4NGznYixFNhgobp = f6xAbcpu3qN4J0a9gd.getXPos(); 
 local Q9Na_Xq3iZFQ3 = f6xAbcpu3qN4J0a9gd.getYPos(); 
 local DMAQNg3XTpJH1wfKEWB84G = f6xAbcpu3qN4J0a9gd.getZPos(); 
 local ZjD3h9YETRwZJuKTSJ3b = f6xAbcpu3qN4J0a9gd.getVar().get_vector(0); 
 local vj_bctUcor = (85.0 * RUd81xeguIua).tointeger(); 
 local VyZqeaTS_OweJobQDNwp1 = (380.0 * RUd81xeguIua).tointeger(); 
 local Aj_DbCC_6dhkNQ = f6xAbcpu3qN4J0a9gd.getObjectManager(); 
 for(local Akkwonayt9tNTXb = 0; Akkwonayt9tNTXb < Aj_DbCC_6dhkNQ.getCollisionObjectNumber(); Akkwonayt9tNTXb++)
 {
 local VATnlqjGPJ0 = Aj_DbCC_6dhkNQ.getCollisionObject(Akkwonayt9tNTXb); 
 if(VATnlqjGPJ0
 && VATnlqjGPJ0.isObjectType(OBJECTTYPE_ACTIVE)
 && f6xAbcpu3qN4J0a9gd.isEnemy(VATnlqjGPJ0)
 && VATnlqjGPJ0.isInDamagableState(f6xAbcpu3qN4J0a9gd)
 && sq_IsGrabable(f6xAbcpu3qN4J0a9gd, VATnlqjGPJ0) 
 && sq_IsHoldable(f6xAbcpu3qN4J0a9gd, VATnlqjGPJ0) 
 && !sq_IsFixture(VATnlqjGPJ0))
 {
 local KGhsBe5bS7PPdwDRoBu = sq_GetCNRDObjectToActiveObject(VATnlqjGPJ0); 
 if(!KGhsBe5bS7PPdwDRoBu.isDead()
 && !CNSquirrelAppendage.sq_IsAppendAppendage(VATnlqjGPJ0, "character/new_priest/pentagon/ap_pentagon.nut")) 
 {
 if(sq_Abs(KGhsBe5bS7PPdwDRoBu.getXPos() - _kJR3tv4NGznYixFNhgobp) <= ZjD3h9YETRwZJuKTSJ3b
 && sq_Abs(KGhsBe5bS7PPdwDRoBu.getYPos() - Q9Na_Xq3iZFQ3) <= vj_bctUcor
 && sq_Abs(KGhsBe5bS7PPdwDRoBu.getZPos() - DMAQNg3XTpJH1wfKEWB84G) <= VyZqeaTS_OweJobQDNwp1)
 {
 CNSquirrelAppendage.sq_AppendAppendage(VATnlqjGPJ0, f6xAbcpu3qN4J0a9gd, 238, true, "character/new_priest/pentagon/ap_pentagon.nut", true);
 f6xAbcpu3qN4J0a9gd.getVar().push_obj_vector(VATnlqjGPJ0); 
 }
 }
 }
 }
 f6xAbcpu3qN4J0a9gd.sq_PlaySound("PENTAGON_BARRIER");
 break;
 case 12:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/pentagon/workpentagon_01.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local RUd81xeguIua = (f6xAbcpu3qN4J0a9gd.getVar().get_vector(0)).tofloat() / 340.0; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 sq_SetAttackBoundingBoxSizeRate(U13zWI1JUlV5ae4ucAhPci, RUd81xeguIua, RUd81xeguIua, RUd81xeguIua); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, null);
 f6xAbcpu3qN4J0a9gd.setTimeEvent(0, f6xAbcpu3qN4J0a9gd.getVar().get_vector(1), 1, false); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(1, f6xAbcpu3qN4J0a9gd.getVar().get_vector(2), 0, false); 
 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "BlueDragon/WorkBlueDragon_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "RedPhoenix/WorkPhoenix_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Turtle/WorkHyunmu_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "WhiteTiger/WorkWhiteTiger_02.ani"));
 
 local tDgM22c4Vpppf = f6xAbcpu3qN4J0a9gd.getVar().GetAnimationMap("GatherBarrierBack_01", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Barrier/GatherBarrierBack_01.ani");
 local D3KtAqs8Q2PG2FwK2e511M = f6xAbcpu3qN4J0a9gd.getVar().GetAnimationMap("GatherBarrierFront_01", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Barrier/GatherBarrierFront_01.ani");
 tDgM22c4Vpppf.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 tDgM22c4Vpppf.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 D3KtAqs8Q2PG2FwK2e511M.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 D3KtAqs8Q2PG2FwK2e511M.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(4)).setCurrentAnimation(tDgM22c4Vpppf);
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(5)).setCurrentAnimation(D3KtAqs8Q2PG2FwK2e511M);
 
 local PXRUJ72L7qt = RUd81xeguIua * 1000000.0;
 f6xAbcpu3qN4J0a9gd.getVar("rate").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("rate").push_vector(PXRUJ72L7qt.tointeger()); 
 f6xAbcpu3qN4J0a9gd.getVar("rate").push_vector((PXRUJ72L7qt * 0.442307).tointeger()); 
 f6xAbcpu3qN4J0a9gd.getVar("rate").push_vector(0); 
 f6xAbcpu3qN4J0a9gd.getVar("time").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("time").push_vector(sq_GetObjectTime(f6xAbcpu3qN4J0a9gd)); 
 f6xAbcpu3qN4J0a9gd.sq_PlaySound("PENTAGON_BARRIER_GATHER");
 break;
 case 13:
 f6xAbcpu3qN4J0a9gd.stopTimeEvent(1); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, null);
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/pentagon/endpentagon_03.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local RUd81xeguIua = (f6xAbcpu3qN4J0a9gd.getVar().get_vector(0)).tofloat() / 340.0; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 sq_SetAttackBoundingBoxSizeRate(U13zWI1JUlV5ae4ucAhPci, RUd81xeguIua, RUd81xeguIua, RUd81xeguIua); 
 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "BlueDragon/EndBlueDragon_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "RedPhoenix/EndPhoenix_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Turtle/EndHyunmu_02.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "WhiteTiger/EndWhiteTiger_02.ani"));
 
 local PXRUJ72L7qt = (f6xAbcpu3qN4J0a9gd.getVar("rate").get_vector(2)).tofloat() / 1000000.0;
 local tDgM22c4Vpppf = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Barrier/EndBarrierBack_01.ani");
 local D3KtAqs8Q2PG2FwK2e511M = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/", "Barrier/EndBarrierFront_01.ani");
 tDgM22c4Vpppf.setImageRateFromOriginal(PXRUJ72L7qt, PXRUJ72L7qt); 
 tDgM22c4Vpppf.setAutoLayerWorkAnimationAddSizeRate(PXRUJ72L7qt); 
 D3KtAqs8Q2PG2FwK2e511M.setImageRateFromOriginal(PXRUJ72L7qt, PXRUJ72L7qt); 
 D3KtAqs8Q2PG2FwK2e511M.setAutoLayerWorkAnimationAddSizeRate(PXRUJ72L7qt); 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(4)).setCurrentAnimation(tDgM22c4Vpppf);
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(5)).setCurrentAnimation(D3KtAqs8Q2PG2FwK2e511M);
 break;
 }
 }
 break;
 case 241: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 switch(h5lPlXGlNDW)
 {
 case 1:
 switch(Rcupf_9nPl)
 {
 case 10:
 sq_ChangeDrawLayer(f6xAbcpu3qN4J0a9gd, ENUM_DRAWLAYER_BOTTOM); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/startmagiccircle_1.ani"); 
 local RUd81xeguIua = f6xAbcpu3qN4J0a9gd.getVar().getFloat(0); 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 
 local _kJR3tv4NGznYixFNhgobp = f6xAbcpu3qN4J0a9gd.getXPos(); local Q9Na_Xq3iZFQ3 = f6xAbcpu3qN4J0a9gd.getYPos();
 local VnC1t31skoN = sq_GetDirection(f6xAbcpu3qN4J0a9gd); 
 local PXRUJ72L7qt = f6xAbcpu3qN4J0a9gd.getVar().getFloat(1); 
 local lz6CbwFSeYZOj = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/startbluedragon_1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local i7jUhOaEmE8i = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/startwhitetiger_1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local XDhKzCJide35BG = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/starthyunmu_1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 local AVzcikqqldC = sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/startlphoenix_1.ani", ENUM_DRAWLAYER_NORMAL, false); 
 sq_setCurrentAxisPos(lz6CbwFSeYZOj, 0, sq_GetDistancePos(_kJR3tv4NGznYixFNhgobp, VnC1t31skoN, (172.0 * PXRUJ72L7qt).tointeger())); 
 sq_setCurrentAxisPos(i7jUhOaEmE8i, 0, sq_GetDistancePos(_kJR3tv4NGznYixFNhgobp, VnC1t31skoN, (-172.0 * PXRUJ72L7qt).tointeger())); 
 sq_setCurrentAxisPos(XDhKzCJide35BG, 1, Q9Na_Xq3iZFQ3 + (50.0 * PXRUJ72L7qt).tointeger()); 
 sq_setCurrentAxisPos(AVzcikqqldC, 1, Q9Na_Xq3iZFQ3 + (-50.0 * PXRUJ72L7qt).tointeger()); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").clear_obj_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(lz6CbwFSeYZOj); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(i7jUhOaEmE8i); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(XDhKzCJide35BG); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj").push_obj_vector(AVzcikqqldC); 
 break;
 case 11:
 sq_ChangeDrawLayer(f6xAbcpu3qN4J0a9gd, ENUM_DRAWLAYER_NORMAL); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/Animation/AdvancedDragon/AdvancedDragon_Bright/StartDragon_circle_aura_front.ani"); 
 local RUd81xeguIua = f6xAbcpu3qN4J0a9gd.getVar().getFloat(0); 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local yfgZicnGvTbsCjsr1JAyWuJ = CreateAniRate(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/workmagiccircle_1.ani", ENUM_DRAWLAYER_BOTTOM, f6xAbcpu3qN4J0a9gd.getXPos(), f6xAbcpu3qN4J0a9gd.getYPos(), f6xAbcpu3qN4J0a9gd.getZPos(), RUd81xeguIua, false); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj_new").clear_obj_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("aniobj_new").push_obj_vector(yfgZicnGvTbsCjsr1JAyWuJ); 
 sq_SetMyShake(f6xAbcpu3qN4J0a9gd, 100, 3); 
 break;
 case 12:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/workdragon_dragon_normal.ani"); 
 local RUd81xeguIua = f6xAbcpu3qN4J0a9gd.getVar().getFloat(0); 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 sq_SetAttackBoundingBoxSizeRate(U13zWI1JUlV5ae4ucAhPci, RUd81xeguIua, RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setSpeedRate(220.0); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local dOOq8vP8l9io99Ozb = sq_GetCustomAttackInfo(f6xAbcpu3qN4J0a9gd, 5); 
 sq_SetCurrentAttackBonusRate(dOOq8vP8l9io99Ozb, f6xAbcpu3qN4J0a9gd.getVar().get_vector(2)); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, dOOq8vP8l9io99Ozb); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(0, f6xAbcpu3qN4J0a9gd.getVar().get_vector(1), 1, false); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(1, f6xAbcpu3qN4J0a9gd.getVar().get_vector(0), 0, false); 
 break;
 case 13:
 f6xAbcpu3qN4J0a9gd.stopTimeEvent(1); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/enddragon_dragon_normal.ani"); 
 local RUd81xeguIua = f6xAbcpu3qN4J0a9gd.getVar().getFloat(0); 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setSpeedRate(170.0); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 if(f6xAbcpu3qN4J0a9gd.isMyControlObject())
 sq_flashScreen(f6xAbcpu3qN4J0a9gd, 100, 100, 200, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(0)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "endbluedragon_1.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(1)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "endwhitetiger_1.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(2)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "endhyunmu_1.ani"));
 (f6xAbcpu3qN4J0a9gd.getVar("aniobj").get_obj_vector(3)).setCurrentAnimation(sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/", "endphoenix_1.ani"));
 break;
 case 14:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/finish/finishdragon_11.ani"); 
 local RUd81xeguIua = f6xAbcpu3qN4J0a9gd.getVar().getFloat(1); 
 local PXRUJ72L7qt = RUd81xeguIua + 0.4; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(PXRUJ72L7qt, PXRUJ72L7qt); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(PXRUJ72L7qt); 
 sq_SetAttackBoundingBoxSizeRate(U13zWI1JUlV5ae4ucAhPci, PXRUJ72L7qt, PXRUJ72L7qt, PXRUJ72L7qt); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local dOOq8vP8l9io99Ozb = sq_GetCustomAttackInfo(f6xAbcpu3qN4J0a9gd, 6); 
 sq_SetCurrentAttackBonusRate(dOOq8vP8l9io99Ozb, f6xAbcpu3qN4J0a9gd.getVar().get_vector(3)); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, dOOq8vP8l9io99Ozb); 
 local _kJR3tv4NGznYixFNhgobp = f6xAbcpu3qN4J0a9gd.getXPos(); local Q9Na_Xq3iZFQ3 = f6xAbcpu3qN4J0a9gd.getYPos(); local DMAQNg3XTpJH1wfKEWB84G = f6xAbcpu3qN4J0a9gd.getZPos();
 CreateAniRate(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/finish/finishdragonbottom_5.ani", ENUM_DRAWLAYER_BOTTOM, _kJR3tv4NGznYixFNhgobp, Q9Na_Xq3iZFQ3, DMAQNg3XTpJH1wfKEWB84G, RUd81xeguIua, false); 
 CreateAniRate(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/finish/finishdragonhead_6.ani", ENUM_DRAWLAYER_NORMAL, _kJR3tv4NGznYixFNhgobp, Q9Na_Xq3iZFQ3, DMAQNg3XTpJH1wfKEWB84G, RUd81xeguIua, false); 
 CreateAniRate(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/flash_red_doom.ani", ENUM_DRAWLAYER_NORMAL, _kJR3tv4NGznYixFNhgobp, Q9Na_Xq3iZFQ3, DMAQNg3XTpJH1wfKEWB84G, RUd81xeguIua, false); 
 sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/finish/finishdragon_focusline.ani", ENUM_DRAWLAYER_COVER, true); 
 RemoveAllFlash(f6xAbcpu3qN4J0a9gd); 
 if(f6xAbcpu3qN4J0a9gd.isMyControlObject())
 sq_flashScreen(f6xAbcpu3qN4J0a9gd, 0, 0, 1000, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 local P1z_edfnrb = f6xAbcpu3qN4J0a9gd.getVar().getFloat(0); 
 local AABgQl4pdwl4cVTfAdU = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_bright/endmagiccircle_1.ani");
 AABgQl4pdwl4cVTfAdU.setImageRateFromOriginal(P1z_edfnrb, P1z_edfnrb); 
 AABgQl4pdwl4cVTfAdU.setAutoLayerWorkAnimationAddSizeRate(P1z_edfnrb); 
 local yfgZicnGvTbsCjsr1JAyWuJ = f6xAbcpu3qN4J0a9gd.getVar("aniobj_new").get_obj_vector(0); 
 yfgZicnGvTbsCjsr1JAyWuJ.setCurrentAnimation(AABgQl4pdwl4cVTfAdU); 
 sq_ChangeDrawLayer(yfgZicnGvTbsCjsr1JAyWuJ, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 }
 break;
 case 245: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 if(h5lPlXGlNDW == 1)
 {
 if(Rcupf_9nPl == 10)
 {
 local U13zWI1JUlV5ae4ucAhPci = f6xAbcpu3qN4J0a9gd.getCurrentAnimation(); 
 U13zWI1JUlV5ae4ucAhPci.setCurrentFrameWithChildLayer(sq_GetAniFrameNumber(U13zWI1JUlV5ae4ucAhPci, 0) - 1); 
 f6xAbcpu3qN4J0a9gd.getVar().clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar().push_vector(sq_GetObjectTime(f6xAbcpu3qN4J0a9gd)); 
 }
 }
 else if(h5lPlXGlNDW == 2)
 {
 if(Rcupf_9nPl == 10)
 {
 local jq7L7NomA3RD2lPvOh = sq_GetCNRDObjectToSQRCharacter(f6xAbcpu3qN4J0a9gd.getParent()); 
 if(jq7L7NomA3RD2lPvOh)
 {
 local U13zWI1JUlV5ae4ucAhPci = sq_GetCustomAni(jq7L7NomA3RD2lPvOh, 161); 
 sq_Rewind(U13zWI1JUlV5ae4ucAhPci); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 f6xAbcpu3qN4J0a9gd.getVar("move").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(f6xAbcpu3qN4J0a9gd.getXPos()); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(f6xAbcpu3qN4J0a9gd.getYPos()); 
 }
 }
 else if(Rcupf_9nPl == 11)
 {
 f6xAbcpu3qN4J0a9gd.getVar("move").clear_vector(); 
 local jq7L7NomA3RD2lPvOh = sq_GetCNRDObjectToSQRCharacter(f6xAbcpu3qN4J0a9gd.getParent()); 
 if(jq7L7NomA3RD2lPvOh)
 {
 local U13zWI1JUlV5ae4ucAhPci = sq_GetCustomAni(jq7L7NomA3RD2lPvOh, 159); 
 sq_Rewind(U13zWI1JUlV5ae4ucAhPci); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local dOOq8vP8l9io99Ozb = sq_GetCustomAttackInfo(jq7L7NomA3RD2lPvOh, 111); 
 sq_SetCurrentAttackBonusRate(dOOq8vP8l9io99Ozb, f6xAbcpu3qN4J0a9gd.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, dOOq8vP8l9io99Ozb); 
 f6xAbcpu3qN4J0a9gd.setDirection(sq_GetOppositeDirection(f6xAbcpu3qN4J0a9gd.getDirection())); 
 }
 }
 }
 break;
 case 248: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 if(h5lPlXGlNDW == 1)
 {
 switch(Rcupf_9nPl)
 {
 case 10:
 if(f6xAbcpu3qN4J0a9gd.isMyControlObject())
 {
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "common/commoneffect/animation/aimpointmark.ani"); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 }
 break;
 case 11:
 f6xAbcpu3qN4J0a9gd.setCurrentPos(sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 0), sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 1), 0); 
 sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "common/commoneffect/animation/aimpointmarkdisable.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_ChangeDrawLayer(f6xAbcpu3qN4J0a9gd, ENUM_DRAWLAYER_BOTTOM); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/start_b_magic3.ani"); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 case 12:
 local _kJR3tv4NGznYixFNhgobp = sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 0);
 local Q9Na_Xq3iZFQ3 = sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 1);
 if(_kJR3tv4NGznYixFNhgobp != -1 && Q9Na_Xq3iZFQ3 != -1) f6xAbcpu3qN4J0a9gd.setCurrentPos(sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 0), sq_GetVectorData(pCNnVLkBlt6bxOng8cyLoq4i, 1), 0); 
 f6xAbcpu3qN4J0a9gd.getVar().set_vector(2, f6xAbcpu3qN4J0a9gd.getVar().get_vector(2) - 1); 
 local U13zWI1JUlV5ae4ucAhPci = f6xAbcpu3qN4J0a9gd.getVar().GetAnimationMap("loop_b_magic2", "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/loop_b_magic2.ani"); 
 U13zWI1JUlV5ae4ucAhPci.setCurrentFrameWithChildLayer(0);
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local dOOq8vP8l9io99Ozb = sq_GetCustomAttackInfo(f6xAbcpu3qN4J0a9gd, 11); 
 sq_SetCurrentAttackBonusRate(dOOq8vP8l9io99Ozb, f6xAbcpu3qN4J0a9gd.getVar().get_vector(1)); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, dOOq8vP8l9io99Ozb); 
 sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/loop_b2_1.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 case 13:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/end_b_magic3.ani"); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local dOOq8vP8l9io99Ozb = sq_GetCustomAttackInfo(f6xAbcpu3qN4J0a9gd, 12); 
 sq_SetCurrentAttackBonusRate(dOOq8vP8l9io99Ozb, f6xAbcpu3qN4J0a9gd.getVar().get_vector(3)); 
 sq_SetCurrentAttackInfo(f6xAbcpu3qN4J0a9gd, dOOq8vP8l9io99Ozb); 
 sq_CreateDrawOnlyObject(f6xAbcpu3qN4J0a9gd, "passiveobject/script_sqr_nut_qq506807329/priest/animation/hollysanctuary/end_c6.ani", ENUM_DRAWLAYER_NORMAL, true); 
 f6xAbcpu3qN4J0a9gd.sq_PlaySound("HOLYSANCTUARY_EXP");
 break;
 }
 }
 break;
 case 136: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 if(h5lPlXGlNDW == 2)
 {
 switch(Rcupf_9nPl)
 {
 case 10:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/start_soul _normal.ani"); 
 local RUd81xeguIua = 0.65; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 local DMAQNg3XTpJH1wfKEWB84G = f6xAbcpu3qN4J0a9gd.getZPos(); 
 f6xAbcpu3qN4J0a9gd.getVar("move").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(DMAQNg3XTpJH1wfKEWB84G); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(DMAQNg3XTpJH1wfKEWB84G + 15); 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(1, 40, 0, true); 
 break;
 case 11:
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/loop_soul _normal.ani"); 
 local RUd81xeguIua = 0.65; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 sq_SetCurrentAttackInfoFromCustomIndex(f6xAbcpu3qN4J0a9gd, 26); 
 f6xAbcpu3qN4J0a9gd.getVar("move").clear_vector(); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(sq_GetObjectTime(f6xAbcpu3qN4J0a9gd)); 
 f6xAbcpu3qN4J0a9gd.getVar("move").push_vector(f6xAbcpu3qN4J0a9gd.getZPos()); 
 break;
 case 12:
 f6xAbcpu3qN4J0a9gd.stopTimeEvent(1); 
 local U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/boom_normal.ani"); 
 local RUd81xeguIua = 0.75; 
 U13zWI1JUlV5ae4ucAhPci.setImageRateFromOriginal(RUd81xeguIua, RUd81xeguIua); 
 U13zWI1JUlV5ae4ucAhPci.setAutoLayerWorkAnimationAddSizeRate(RUd81xeguIua); 
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 }
 }
 break;
 case 132: 
 local h5lPlXGlNDW = f6xAbcpu3qN4J0a9gd.getVar("subType").get_vector(0); 
 switch(h5lPlXGlNDW)
 {
 case 1:
 local lEdyXjKpBDL8 = f6xAbcpu3qN4J0a9gd.getVar().get_vector(0); 
 switch(Rcupf_9nPl)
 {
 case 10:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_r_loop_02.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_r_loop_01.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 if(!f6xAbcpu3qN4J0a9gd.isExistTimeEvent(0)) 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(0, 200, 1, false); 
 break;
 case 11:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_r_hit_loop_01.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_r_hit_loop_01.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 case 12:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_r_boom_02.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_r_boom_02.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 }
 break;
 case 2:
 local lEdyXjKpBDL8 = f6xAbcpu3qN4J0a9gd.getVar().get_vector(0); 
 switch(Rcupf_9nPl)
 {
 case 10:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_l_loop_01.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_l_loop_04.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 if(!f6xAbcpu3qN4J0a9gd.isExistTimeEvent(0)) 
 f6xAbcpu3qN4J0a9gd.setTimeEvent(0, 200, 1, false); 
 break;
 case 11:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_l_hit_loop_01.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_l_hit_loop_04.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 case 12:
 local U13zWI1JUlV5ae4ucAhPci = null; 
 if(lEdyXjKpBDL8 == 1)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_l_boom_02.ani");
 else if(lEdyXjKpBDL8 == 2)
 U13zWI1JUlV5ae4ucAhPci = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_l_boom_02.ani");
 f6xAbcpu3qN4J0a9gd.setCurrentAnimation(U13zWI1JUlV5ae4ucAhPci); 
 break;
 }
 break;
 }
 break;
 }
} ;
 
