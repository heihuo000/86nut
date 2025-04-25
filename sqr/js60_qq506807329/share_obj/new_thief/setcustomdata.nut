
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function setCustomData_po_qq506807329new_thief_24378(Iii53x0woY9_524q_sf, NP1CbguzeH4PnsmTOGNKlwar)
{
 if(!Iii53x0woY9_524q_sf) return;
 local BTR1Dcn12TCufn = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 Iii53x0woY9_524q_sf.getVar("skill").clear_vector(); 
 Iii53x0woY9_524q_sf.getVar("skill").push_vector(BTR1Dcn12TCufn);
 local dbMzWjlAxklefvcDgGQ = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 Iii53x0woY9_524q_sf.getVar("subType").clear_vector(); 
 Iii53x0woY9_524q_sf.getVar("subType").push_vector(dbMzWjlAxklefvcDgGQ);
 switch(BTR1Dcn12TCufn)
 {
 case 221: 
 switch(dbMzWjlAxklefvcDgGQ)
 {
 case 1:
 local FTlkavOcITgsyoRCeK = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 local CxC9QppqcnLblDNVQ5b = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 local rPB2J26B4XQm = null;
 local oI6JcL81srNJ7Vmid = null;
 if(CxC9QppqcnLblDNVQ5b == 0)
 {
 Iii53x0woY9_524q_sf.getVar().setBool(0,true); 
 rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/distribution/", "Distribution_AttackLoop_A01.ani");
 oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 0);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, FTlkavOcITgsyoRCeK); 
 }
 else
 {
 Iii53x0woY9_524q_sf.getVar().setBool(0, false); 
 local KYPmwnLpne = ["A","B", "C", "D", "E", "F"];
 rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/distribution/", "Distribution_AttackLoop_"+ KYPmwnLpne[CxC9QppqcnLblDNVQ5b] + "01.ani");
 oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 1);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, FTlkavOcITgsyoRCeK); 
 }
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 break;
 case 2: 
 local FTlkavOcITgsyoRCeK = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/distribution/", "Distribution_AttackC_MoveHit.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 2);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, FTlkavOcITgsyoRCeK); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 break;
 }
 break; 
 case 222: 
 switch(dbMzWjlAxklefvcDgGQ)
 {
 case 1:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 3);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 local fkZqTrDK_o = sq_ToRadian(NP1CbguzeH4PnsmTOGNKlwar.readFloat()); 
 sq_SetCustomRotate(Iii53x0woY9_524q_sf, fkZqTrDK_o); 
 Iii53x0woY9_524q_sf.getVar().setInt(0, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/", "novaremnant_att_eff.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 local M1NEkNZ1SMCPpKa1ezR = sq_AddDrawOnlyAniFromParent(Iii53x0woY9_524q_sf, "passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/novaremnant_line_blade.ani", 0, -1, 0);
 local inTb87pHzL4 = sq_AddDrawOnlyAniFromParent(Iii53x0woY9_524q_sf, "passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/novaremnant_line_1.ani", 0, -1, 0);
 sq_SetCustomRotate(M1NEkNZ1SMCPpKa1ezR, fkZqTrDK_o); 
 sq_SetCustomRotate(inTb87pHzL4, fkZqTrDK_o); 
 break;
 case 2:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 4);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/", "novaremnant_finish_boom_09.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 if(Iii53x0woY9_524q_sf.isMyControlObject())
 {
 sq_SetShake(Iii53x0woY9_524q_sf, 15, 240);
 sq_flashScreen(Iii53x0woY9_524q_sf, 0, 80, 0, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 case 3:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 5);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/novaremnant/", "novaremnant_hitend_boom_1.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 break;
 }
 break;
 case 223: 
 switch(dbMzWjlAxklefvcDgGQ)
 {
 case 1:
 local Cyx3bmXSMm2DB = Iii53x0woY9_524q_sf.getParent();
 if(Cyx3bmXSMm2DB)
 {
 Iii53x0woY9_524q_sf.setMapFollowParent(Cyx3bmXSMm2DB);
 Iii53x0woY9_524q_sf.setMapFollowType(1);
 }
 Iii53x0woY9_524q_sf.getVar().setInt(0, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 Iii53x0woY9_524q_sf.getVar().setFloat(1, NP1CbguzeH4PnsmTOGNKlwar.readFloat()); 
 Iii53x0woY9_524q_sf.getVar().setBool(2, true); 
 Iii53x0woY9_524q_sf.getVar().setBool(3, false); 
 Iii53x0woY9_524q_sf.getVar().setBool(4, false); 
 break;
 }
 break;
 case 224: 
 switch(dbMzWjlAxklefvcDgGQ)
 {
 case 1:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 6);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 Iii53x0woY9_524q_sf.getVar().setInt(0, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 Iii53x0woY9_524q_sf.getVar().setInt(1, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 Iii53x0woY9_524q_sf.getVar().setBool(2, false); 
 break;
 }
 break;
 case 225: 
 switch(dbMzWjlAxklefvcDgGQ)
 {
 case 1:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 7);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/", "ballacrecast02_set08n.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 sq_AddDrawOnlyAniFromParent(Iii53x0woY9_524q_sf, "character/thief/effect/animation/ballacreadvent/ballacrecast/ballacrecast01_set02d03.ani", 0, 0, 0); 
 break;
 case 2:
 sq_AddDrawOnlyAniFromParent(Iii53x0woY9_524q_sf, "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/bigballacre01_hand.ani", 0, -1, 0); 
 local l1m2NwTaXcdX2kuV = sq_CreateDrawOnlyObject(Iii53x0woY9_524q_sf, "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/beadstart02_set07n.ani", ENUM_DRAWLAYER_NORMAL, false); 
 l1m2NwTaXcdX2kuV.addCustomAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/beadloop_set01d.ani"));
 sq_setCurrentAxisPos(l1m2NwTaXcdX2kuV, 0, sq_GetDistancePos(Iii53x0woY9_524q_sf.getXPos(), Iii53x0woY9_524q_sf.getDirection(), 175)); 
 Iii53x0woY9_524q_sf.getVar("aniobj").clear_obj_vector(); 
 Iii53x0woY9_524q_sf.getVar("aniobj").push_obj_vector(l1m2NwTaXcdX2kuV); 
 sq_AddDrawOnlyAniFromParent(l1m2NwTaXcdX2kuV, "passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/beadstart01_set01d.ani", 0, 0, 0); 
 
 local FTlkavOcITgsyoRCeK = NP1CbguzeH4PnsmTOGNKlwar.readDword(); 
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 8); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 9), FTlkavOcITgsyoRCeK); 
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/", "BigBallacre02_Finger.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 Iii53x0woY9_524q_sf.getVar().clear_timer_vector();
 Iii53x0woY9_524q_sf.getVar().push_timer_vector();
 local GBA88werFfPMvKUz = Iii53x0woY9_524q_sf.getVar().get_timer_vector(0);
 GBA88werFfPMvKUz.setParameter(NP1CbguzeH4PnsmTOGNKlwar.readDword(), -1); 
 GBA88werFfPMvKUz.resetInstant(0); 
 Iii53x0woY9_524q_sf.getVar().setInt(0, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 if(Iii53x0woY9_524q_sf.isMyControlObject())
 sq_flashScreen(Iii53x0woY9_524q_sf, rPB2J26B4XQm.getDelaySum(0, 1), rPB2J26B4XQm.getDelaySum(2, 54), rPB2J26B4XQm.getDelaySum(55, 56), 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 3:
 local oI6JcL81srNJ7Vmid = sq_GetCustomAttackInfo(Iii53x0woY9_524q_sf, 10);
 sq_SetCurrentAttackBonusRate(oI6JcL81srNJ7Vmid, NP1CbguzeH4PnsmTOGNKlwar.readDword()); 
 sq_SetCurrentAttackInfo(Iii53x0woY9_524q_sf, oI6JcL81srNJ7Vmid);
 local rPB2J26B4XQm = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/thief/animation/ballacreadvent/", "LastEffect_Set02D15.ani");
 Iii53x0woY9_524q_sf.setCurrentAnimation(rPB2J26B4XQm);
 break;
 }
 break;
 }
} 
 
