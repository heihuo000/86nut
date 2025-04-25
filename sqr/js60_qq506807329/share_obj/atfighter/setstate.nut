
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function setState_po_qq506807329new_atfighter_24375(fmMvW0yPqRfm1IcoWfbDD, H6tPQNIda8hTp1UCu6_t6WN2, RBxvFgfMoFLiLh)
{
 if(!fmMvW0yPqRfm1IcoWfbDD) return;
 local wGot9ggxEU7jFn = fmMvW0yPqRfm1IcoWfbDD.getVar("skill").get_vector(0);
 switch(wGot9ggxEU7jFn)
 {
 case 227: 
 switch(H6tPQNIda8hTp1UCu6_t6WN2)
 {
 case 10:
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosionb_dust.ani");
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(fmMvW0yPqRfm1IcoWfbDD, 5); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, fmMvW0yPqRfm1IcoWfbDD.getVar().get_vector(0)); 
 sq_SetCurrentAttackInfo(fmMvW0yPqRfm1IcoWfbDD, CXwzLKYMQjkEA5kgoJMAx); 
 sq_CreateDrawOnlyObject(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/stonewreckagefloor_crack.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosionbground_shock.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_AddDrawOnlyAniFromParent(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/stonewreckagefront_stone.ani", 0, -1, 0); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atruinrainbigstone.ptl", fmMvW0yPqRfm1IcoWfbDD, 0, 0, 40, true, 1, 0, 1); 
 sq_SetMyShake(fmMvW0yPqRfm1IcoWfbDD, 20, 200); 
 fmMvW0yPqRfm1IcoWfbDD.sq_PlaySound("RUINRAIN_ROCK"); 
 break;
 }
 break;
 case 229: 
 local SftG2AA6dQK = fmMvW0yPqRfm1IcoWfbDD.getXPos(); 
 local hbKba_XFlyQR4bBo = fmMvW0yPqRfm1IcoWfbDD.getYPos(); 
 local zpmyFwHy4GCtx4LP = fmMvW0yPqRfm1IcoWfbDD.getZPos(); 
 switch(H6tPQNIda8hTp1UCu6_t6WN2)
 {
 case 10: 
 onSetAllApObjPos_atfighter_cyclonecrash(fmMvW0yPqRfm1IcoWfbDD, true, 0, 0, 50, 0, true, 180.0, true, fmMvW0yPqRfm1IcoWfbDD.getDirection()); 
 local JCnSc_KOYzGWAvF = 0.6727272727; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrash_front_05.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashfronteffect_front_08.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, false, false); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrash_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 sq_SetMyShake(fmMvW0yPqRfm1IcoWfbDD, 8, 500); 
 if(fmMvW0yPqRfm1IcoWfbDD.isMyControlObject()) 
 sq_flashScreen(fmMvW0yPqRfm1IcoWfbDD, 0, 80, 80, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 case 11: 
 local JCnSc_KOYzGWAvF = 0.6851851852; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_front_01.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloop_back_02.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo - 2, zpmyFwHy4GCtx4LP, JCnSc_KOYzGWAvF, false); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashloopsmoke_front_01.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.65, false); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(fmMvW0yPqRfm1IcoWfbDD, 8); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, fmMvW0yPqRfm1IcoWfbDD.getVar().get_vector(2)); 
 sq_SetCurrentAttackInfo(fmMvW0yPqRfm1IcoWfbDD, CXwzLKYMQjkEA5kgoJMAx); 
 local xjjVVsvd6S_UJmCBxHpX1g = fmMvW0yPqRfm1IcoWfbDD.getVar().get_vector(1); 
 local s_ykaolLlhStNr6PQf = p8wk10eJnS2Y0yGRgIIeop.getDelaySum(false); 
 fmMvW0yPqRfm1IcoWfbDD.getVar().clear_timer_vector();
 fmMvW0yPqRfm1IcoWfbDD.getVar().push_timer_vector();
 local Pj5kR_bbSdsRH_XeV = fmMvW0yPqRfm1IcoWfbDD.getVar().get_timer_vector(0);
 Pj5kR_bbSdsRH_XeV.setParameter(s_ykaolLlhStNr6PQf / xjjVVsvd6S_UJmCBxHpX1g, xjjVVsvd6S_UJmCBxHpX1g); 
 Pj5kR_bbSdsRH_XeV.resetInstant(0); 
 Pj5kR_bbSdsRH_XeV.setEventOnStart(true); 
 break;
 case 12: 
 local JCnSc_KOYzGWAvF = 0.6851851852; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_front_01.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_bottom_t00.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.55, false); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend01_back_01.ani", ENUM_DRAWLAYER_NORMAL, SftG2AA6dQK, hbKba_XFlyQR4bBo - 2, zpmyFwHy4GCtx4LP, JCnSc_KOYzGWAvF, false); 
 if(fmMvW0yPqRfm1IcoWfbDD.isMyControlObject()) 
 sq_flashScreen(fmMvW0yPqRfm1IcoWfbDD, p8wk10eJnS2Y0yGRgIIeop.getDelaySum(false), 0, 0, 120, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 case 13: 
 onSetAllApObjPos_atfighter_cyclonecrash(fmMvW0yPqRfm1IcoWfbDD, true, 0, 0, 0, 0, false, 0.0, false, 0); 
 onDeleteAllApAndRestoreRotate_atfighter_cyclonecrash(fmMvW0yPqRfm1IcoWfbDD); 
 local JCnSc_KOYzGWAvF = 0.74; 
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend02_front_21.ani");
 p8wk10eJnS2Y0yGRgIIeop.setImageRateFromOriginal(JCnSc_KOYzGWAvF, JCnSc_KOYzGWAvF); 
 p8wk10eJnS2Y0yGRgIIeop.setAutoLayerWorkAnimationAddSizeRate(JCnSc_KOYzGWAvF); 
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 local CXwzLKYMQjkEA5kgoJMAx = sq_GetCustomAttackInfo(fmMvW0yPqRfm1IcoWfbDD, 9); 
 sq_SetCurrentAttackBonusRate(CXwzLKYMQjkEA5kgoJMAx, fmMvW0yPqRfm1IcoWfbDD.getVar().get_vector(3)); 
 sq_SetCurrentAttackInfo(fmMvW0yPqRfm1IcoWfbDD, CXwzLKYMQjkEA5kgoJMAx); 
 CreateAniRate(fmMvW0yPqRfm1IcoWfbDD, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atcyclonecrash/groundcrash/groundcrashend02_bottom_01.ani", ENUM_DRAWLAYER_BOTTOM, SftG2AA6dQK, hbKba_XFlyQR4bBo, zpmyFwHy4GCtx4LP, 0.67, false); 
 sq_SetMyShake(fmMvW0yPqRfm1IcoWfbDD, 8, 300); 
 if(fmMvW0yPqRfm1IcoWfbDD.isMyControlObject()) 
 sq_flashScreen(fmMvW0yPqRfm1IcoWfbDD, 0, 80, 0, 229, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 break;
 }
 break;
 case 231: 
 local hNDVwF85q8IhnO57wbGebwz0 = fmMvW0yPqRfm1IcoWfbDD.getVar("subType").get_vector(0); 
 switch(hNDVwF85q8IhnO57wbGebwz0)
 {
 case 1:
 if(H6tPQNIda8hTp1UCu6_t6WN2 != 10)break;
 local AepQ6XJv6Q = sq_GetVectorData(RBxvFgfMoFLiLh, 0); 
 local n8XbBRhlIUycXt5MKkz6x = "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/finalextremestrike/b" + AepQ6XJv6Q.tostring() + "_body.ani";
 local p8wk10eJnS2Y0yGRgIIeop = sq_CreateAnimation("", n8XbBRhlIUycXt5MKkz6x);
 p8wk10eJnS2Y0yGRgIIeop.setSpeedRate((fmMvW0yPqRfm1IcoWfbDD.getVar("speed").get_vector(0)).tofloat()); 
 fmMvW0yPqRfm1IcoWfbDD.setCurrentAnimation(p8wk10eJnS2Y0yGRgIIeop); 
 if(AepQ6XJv6Q < 10)
 sq_SetMyShake(fmMvW0yPqRfm1IcoWfbDD, 7, 80); 
 else
 sq_SetMyShake(fmMvW0yPqRfm1IcoWfbDD, 7, 40); 
 sq_SetCurrentAttackInfoFromCustomIndex(fmMvW0yPqRfm1IcoWfbDD, 14); 
 break;
 }
 break;
 }
} ;
 
