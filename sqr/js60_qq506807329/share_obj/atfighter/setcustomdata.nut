
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
 
function setCustomData_po_qq506807329new_atfighter_24375(H1Nsp49mua, YAvHbZRvEK5EG)
{
 if(!H1Nsp49mua) return;
 local S7SfqbsNQZREQD = YAvHbZRvEK5EG.readDword(); 
 H1Nsp49mua.getVar("skill").clear_vector(); 
 H1Nsp49mua.getVar("skill").push_vector(S7SfqbsNQZREQD);
 switch(S7SfqbsNQZREQD) 
 {
 case 220: 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atspiralemperorslap/spiralemperorslap_boom_explosion.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 0); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_SetMyShake(H1Nsp49mua, 5, 300); 
 if(H1Nsp49mua.isMyControlObject())
 sq_flashScreen(H1Nsp49mua, 0, 120, 320, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 223: 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atdropfire/atdropfire_boom_06.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 1); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_SetMyShake(H1Nsp49mua, 15, 180); 
 if(H1Nsp49mua.isMyControlObject())
 sq_flashScreen(H1Nsp49mua, 0, 60, 120, 178, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 
 sq_CreateDrawOnlyObject(H1Nsp49mua, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atdropfire/atdropfire_shockwave.ani", ENUM_DRAWLAYER_BOTTOM, true);
 break;
 case 226: 
 local CpL5DiiIFkMlDUxbtl = 0.72; 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atchaindrive/finish_dust1.ani");
 DCLAuL0zyiL1S1eIh.setImageRateFromOriginal(CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl); 
 DCLAuL0zyiL1S1eIh.setAutoLayerWorkAnimationAddSizeRate(CpL5DiiIFkMlDUxbtl); 
 sq_SetAttackBoundingBoxSizeRate(DCLAuL0zyiL1S1eIh, CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl); 
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 2); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atchaindriveexplosion.ptl", H1Nsp49mua, 0, 0, 10, true, 5, 0, 5); 
 local ecjs1NhXUIpQHgy = sq_CreateDrawOnlyObject(H1Nsp49mua, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atchaindrive/finish_shock1.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 local Yzi2YFgfKV = ecjs1NhXUIpQHgy.getCurrentAnimation(); 
 Yzi2YFgfKV.setImageRateFromOriginal(CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl); 
 Yzi2YFgfKV.setAutoLayerWorkAnimationAddSizeRate(CpL5DiiIFkMlDUxbtl); 
 break;
 case 227: 
 local Ow4A3jQtA3oNIOYhPDaM7M = YAvHbZRvEK5EG.readDword(); 
 H1Nsp49mua.getVar("subType").clear_vector(); 
 H1Nsp49mua.getVar("subType").push_vector(Ow4A3jQtA3oNIOYhPDaM7M);
 switch(Ow4A3jQtA3oNIOYhPDaM7M)
 {
 case 1: 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/atruinrainattackbox.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 H1Nsp49mua.getVar().clear_vector(); 
 local W_pcQa0fUEvB = H1Nsp49mua.getVar(); 
 for(local OEReO1LNR0GZnBBGDcwP = 0; OEReO1LNR0GZnBBGDcwP < 7; OEReO1LNR0GZnBBGDcwP++)
 W_pcQa0fUEvB.push_vector(YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar("count").clear_vector(); 
 H1Nsp49mua.getVar("count").push_vector(0); 
 H1Nsp49mua.getVar("aniobj").clear_obj_vector(); 
 H1Nsp49mua.setTimeEvent(0, 50, -1, false); 
 
 H1Nsp49mua.getVar().clear_timer_vector();
 H1Nsp49mua.getVar().push_timer_vector();
 local mm82S4OXklN7z66MAn7geZ_c = H1Nsp49mua.getVar().get_timer_vector(0);
 mm82S4OXklN7z66MAn7geZ_c.setParameter(20, -1); 
 mm82S4OXklN7z66MAn7geZ_c.resetInstant(0); 
 break;
 case 2: 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/bigstone/stonec_stone.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 4); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar().clear_vector(); 
 H1Nsp49mua.getVar().push_vector(YAvHbZRvEK5EG.readDword()); 
 sq_SetChangeStatusIntoAttackInfo(wWNge5FZR9Rw, 0, ACTIVESTATUS_BLEEDING, YAvHbZRvEK5EG.readDword(), YAvHbZRvEK5EG.readDword(), YAvHbZRvEK5EG.readDword(), YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 H1Nsp49mua.getVar().push_vector(H1Nsp49mua.getZPos()); 
 break;
 }
 break;
 case 228: 
 local V3xQWqr7IkUJNbrSK9oLV = H1Nsp49mua.getTopCharacter();
 if(V3xQWqr7IkUJNbrSK9oLV)
 V3xQWqr7IkUJNbrSK9oLV.getVar().setBool(0, true); 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atfireworks/fireworks_end_explosion.ani");
 
 
 sq_ClearAttackBox(DCLAuL0zyiL1S1eIh); 
 sq_AddAttackBox(DCLAuL0zyiL1S1eIh,
 -319, 80, 0
 625, 200, 237); 
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 6); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 H1Nsp49mua.getVar().clear_vector(); 
 H1Nsp49mua.getVar().push_vector(YAvHbZRvEK5EG.readDword()); 
 
 H1Nsp49mua.getVar("atkobj").clear_vector(); 
 local JaWRKdCId3 = H1Nsp49mua.getVar("atkobj"); 
 local nNREjjgGjPiOp = YAvHbZRvEK5EG.readDword(); 
 for(local OEReO1LNR0GZnBBGDcwP = 0; OEReO1LNR0GZnBBGDcwP < nNREjjgGjPiOp; OEReO1LNR0GZnBBGDcwP += 2)
 {
 local _9ogCobEoPPZGW95eQ = YAvHbZRvEK5EG.readDword(); 
 local y0tOFHliMZf = YAvHbZRvEK5EG.readDword(); 
 local mdm73YTNm__C_Z7q = sq_GetObject(H1Nsp49mua, _9ogCobEoPPZGW95eQ, y0tOFHliMZf); 
 if(mdm73YTNm__C_Z7q)
 {
 local iAAXn1nSkvQz0nACoybyx6 = CNSquirrelAppendage.sq_GetAppendage(mdm73YTNm__C_Z7q, "character/atfighter/fireworks/ap_fireworks.nut"); 
 if(iAAXn1nSkvQz0nACoybyx6)
 {
 
 iAAXn1nSkvQz0nACoybyx6.sq_var.clear_obj_vector(); 
 iAAXn1nSkvQz0nACoybyx6.sq_var.push_obj_vector(H1Nsp49mua); 
 
 local RRb70aPXIokJ8TbC = iAAXn1nSkvQz0nACoybyx6.getTimer(); 
 RRb70aPXIokJ8TbC.Reset(); 
 RRb70aPXIokJ8TbC.Start(10000, 0); 
 iAAXn1nSkvQz0nACoybyx6.getVar("state").clear_vector();
 iAAXn1nSkvQz0nACoybyx6.getVar("state").push_vector(2); 
 }
 }
 JaWRKdCId3.push_vector(_9ogCobEoPPZGW95eQ); 
 JaWRKdCId3.push_vector(y0tOFHliMZf); 
 }
 sq_SetMyShake(H1Nsp49mua, 5, 300); 
 break;
 case 229: 
 local Ow4A3jQtA3oNIOYhPDaM7M = YAvHbZRvEK5EG.readDword(); 
 H1Nsp49mua.getVar("subType").clear_vector(); 
 H1Nsp49mua.getVar("subType").push_vector(Ow4A3jQtA3oNIOYhPDaM7M);
 switch(Ow4A3jQtA3oNIOYhPDaM7M)
 {
 case 1:
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 7); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 H1Nsp49mua.getVar().clear_vector(); 
 H1Nsp49mua.getVar().push_vector(0); 
 H1Nsp49mua.getVar().push_vector(YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar().push_vector(YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar().push_vector(YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar("atkobj").clear_obj_vector(); 
 local V3xQWqr7IkUJNbrSK9oLV = H1Nsp49mua.getTopCharacter(); 
 if(V3xQWqr7IkUJNbrSK9oLV)
 {
 local nNREjjgGjPiOp = V3xQWqr7IkUJNbrSK9oLV.getVar("atkobj").get_obj_vector_size(); 
 local CkxCZnwpMSYPX = V3xQWqr7IkUJNbrSK9oLV.getVar("atkobj"); 
 local JaWRKdCId3 = H1Nsp49mua.getVar("atkobj"); 
 for(local OEReO1LNR0GZnBBGDcwP = 0; OEReO1LNR0GZnBBGDcwP < nNREjjgGjPiOp; OEReO1LNR0GZnBBGDcwP++)
 {
 local mdm73YTNm__C_Z7q = sq_GetCNRDObjectToActiveObject(CkxCZnwpMSYPX.get_obj_vector(OEReO1LNR0GZnBBGDcwP)); 
 if(mdm73YTNm__C_Z7q)
 {
 if(!mdm73YTNm__C_Z7q.isDead()) 
 {
 if(H1Nsp49mua.isMyControlObject())
 sq_SendHitObjectPacket(H1Nsp49mua, mdm73YTNm__C_Z7q, 0, 0, 0); 
 sq_AddHitObject(H1Nsp49mua, mdm73YTNm__C_Z7q); 
 }
 JaWRKdCId3.push_obj_vector(mdm73YTNm__C_Z7q); 
 }
 }
 }
 local VhLRC3Npgp2sUvWd36PUM3f = H1Nsp49mua.getVar().GetparticleCreaterMap("atcyclonecrashgroundcrashloop", "passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atcyclonecrashgroundcrashloop.ptl", H1Nsp49mua); 
 VhLRC3Npgp2sUvWd36PUM3f.Restart(0); 
 VhLRC3Npgp2sUvWd36PUM3f.SetPos(H1Nsp49mua.getXPos(), H1Nsp49mua.getYPos(), H1Nsp49mua.getZPos() + 15); 
 sq_AddParticleObject(H1Nsp49mua, VhLRC3Npgp2sUvWd36PUM3f); 
 if(H1Nsp49mua.isMyControlObject())
 H1Nsp49mua.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local CpL5DiiIFkMlDUxbtl = 0.82; 
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/grabcannonexplosion/grabcannonhit_02.ani");
 DCLAuL0zyiL1S1eIh.setImageRateFromOriginal(CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl); 
 DCLAuL0zyiL1S1eIh.setAutoLayerWorkAnimationAddSizeRate(CpL5DiiIFkMlDUxbtl); 
 sq_SetAttackBoundingBoxSizeRate(DCLAuL0zyiL1S1eIh, CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl, CpL5DiiIFkMlDUxbtl); 
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 10); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_SetMyShake(H1Nsp49mua, 6, 300); 
 if(H1Nsp49mua.isMyControlObject())
 sq_flashScreen(H1Nsp49mua, 0, 80, 0, 178, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 break;
 case 230: 
 local Ow4A3jQtA3oNIOYhPDaM7M = YAvHbZRvEK5EG.readDword(); 
 H1Nsp49mua.getVar("subType").clear_vector(); 
 H1Nsp49mua.getVar("subType").push_vector(Ow4A3jQtA3oNIOYhPDaM7M);
 switch(Ow4A3jQtA3oNIOYhPDaM7M)
 {
 case 1:
 sq_SetCurrentAttackInfoFromCustomIndex(H1Nsp49mua, 11); 
 if(H1Nsp49mua.isMyControlObject())
 H1Nsp49mua.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/chainbrake/nnfinish_ready_eff.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 13); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 break;
 case 3:
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/chainbrake/finishefftop_02.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 12); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_CreateDrawOnlyObject(H1Nsp49mua, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/chainbrake/finisheffbot_03.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetMyShake(H1Nsp49mua, 5, 160); 
 if(H1Nsp49mua.isMyControlObject())
 sq_flashScreen(H1Nsp49mua, 40, 160, 400, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 if(YAvHbZRvEK5EG.readBool()) 
 {
 local Ytus_eosiYiLM = H1Nsp49mua.getObjectManager(); 
 local B1yWNFw93pol9xUSgxqx5 = Ytus_eosiYiLM.getCollisionObjectNumber(); 
 for(local OEReO1LNR0GZnBBGDcwP = 0; OEReO1LNR0GZnBBGDcwP < B1yWNFw93pol9xUSgxqx5; OEReO1LNR0GZnBBGDcwP++)
 {
 local KYbuGOvYNL = Ytus_eosiYiLM.getCollisionObject(OEReO1LNR0GZnBBGDcwP); 
 if(KYbuGOvYNL
 && H1Nsp49mua.isEnemy(KYbuGOvYNL) 
 && KYbuGOvYNL.isInDamagableState(H1Nsp49mua)
 && KYbuGOvYNL.isObjectType(OBJECTTYPE_ACTIVE)
 && sq_IsHoldable(H1Nsp49mua, KYbuGOvYNL)
 && sq_IsGrabable(H1Nsp49mua, KYbuGOvYNL)
 && !sq_IsFixture(KYbuGOvYNL))
 {
 sq_AddHitObject(H1Nsp49mua, KYbuGOvYNL); 
 }
 }
 }
 break;
 }
 break;
 case 231: 
 local Ow4A3jQtA3oNIOYhPDaM7M = YAvHbZRvEK5EG.readDword(); 
 H1Nsp49mua.getVar("subType").clear_vector(); 
 H1Nsp49mua.getVar("subType").push_vector(Ow4A3jQtA3oNIOYhPDaM7M);
 switch(Ow4A3jQtA3oNIOYhPDaM7M)
 {
 case 1:
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 14); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 H1Nsp49mua.getVar("state").clear_vector(); 
 H1Nsp49mua.getVar("state").push_vector(2); 
 H1Nsp49mua.getVar("speed").clear_vector(); 
 H1Nsp49mua.getVar("speed").push_vector(YAvHbZRvEK5EG.readDword()); 
 if(H1Nsp49mua.isMyControlObject())
 {
 local ocHyIpxkN5p = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(ocHyIpxkN5p); 
 sq_IntVectorPush(ocHyIpxkN5p, 2); 
 H1Nsp49mua.addSetStatePacket(10, ocHyIpxkN5p, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 2:
 local DCLAuL0zyiL1S1eIh = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/finalextremestrike/e1_blueline.ani");
 H1Nsp49mua.setCurrentAnimation(DCLAuL0zyiL1S1eIh); 
 local wWNge5FZR9Rw = sq_GetCustomAttackInfo(H1Nsp49mua, 15); 
 sq_SetCurrentAttackBonusRate(wWNge5FZR9Rw, YAvHbZRvEK5EG.readDword()); 
 sq_SetCurrentAttackInfo(H1Nsp49mua, wWNge5FZR9Rw); 
 sq_SetMyShake(H1Nsp49mua, 15, 500); 
 
 if(H1Nsp49mua.isMyControlObject())
 {
 sq_flashScreen(H1Nsp49mua, 0, 200, 100, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local b6CJOhpKtAriS8YUaPu6iqU7 = sq_AddDrawOnlyAniFromParent(H1Nsp49mua, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/finalextremestrike/worda_normal1.ani", 0, 0, 190);
 local kZNVMx6jah8IcYx6UKoNfd = sq_AddDrawOnlyAniFromParent(H1Nsp49mua, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/finalextremestrike/wordb_normal1.ani", 0, 0, 220);
 sq_SetCurrentDirection(b6CJOhpKtAriS8YUaPu6iqU7, ENUM_DIRECTION_RIGHT); 
 sq_SetCurrentDirection(kZNVMx6jah8IcYx6UKoNfd, ENUM_DIRECTION_RIGHT); 
 local nOXOehIijF0gvsVuy7LkAv_G = H1Nsp49mua.getXPos(); 
 sq_setCurrentAxisPos(b6CJOhpKtAriS8YUaPu6iqU7, 0, sq_GetDistancePos(nOXOehIijF0gvsVuy7LkAv_G, ENUM_DIRECTION_RIGHT, -195)); 
 sq_setCurrentAxisPos(kZNVMx6jah8IcYx6UKoNfd, 0, sq_GetDistancePos(nOXOehIijF0gvsVuy7LkAv_G, ENUM_DIRECTION_RIGHT, 215)); 
 }
 break;
 }
 break;
 default: 
 break;
 }
} ;
 
