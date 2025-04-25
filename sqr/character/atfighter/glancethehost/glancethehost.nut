
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atfighter_glancethehost(VRskL99pF86Dy)
{
 if(!VRskL99pF86Dy) return false; 
 local hg0Yv4OodCa39GmG = VRskL99pF86Dy.sq_IsUseSkill(222); 
 if(hg0Yv4OodCa39GmG) 
 {
 VRskL99pF86Dy.sq_IntVectClear();
 VRskL99pF86Dy.sq_IntVectPush(0); 
 VRskL99pF86Dy.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_glancethehost(VRskL99pF86Dy)
{
 if(!VRskL99pF86Dy) return false; 
 local hg0Yv4OodCa39GmG = VRskL99pF86Dy.sq_GetState(); 
 if(hg0Yv4OodCa39GmG == STATE_STAND) 
 return true; 
 if(hg0Yv4OodCa39GmG == STATE_ATTACK) 
 {
 return VRskL99pF86Dy.sq_IsCommandEnable(222); 
 }
 return true; 
} ;

 
function onSetState_atfighter_glancethehost(UGDYKaqoUVWSQEo6V5, aT_BxRH3rlPMrHLlXVwx, A_iSCdC3ETVcvIVRKi21u, LNBfBO9gwSWVcTOeQiC0WHGz)
{
 if(!UGDYKaqoUVWSQEo6V5) return; 
 UGDYKaqoUVWSQEo6V5.sq_StopMove(); 
 local uBH2T8zbA9aHbhrXtlqX = UGDYKaqoUVWSQEo6V5.sq_GetVectorData(A_iSCdC3ETVcvIVRKi21u, 0); 
 UGDYKaqoUVWSQEo6V5.setSkillSubState(uBH2T8zbA9aHbhrXtlqX); 
 switch(uBH2T8zbA9aHbhrXtlqX)
 {
 case 0:
 UGDYKaqoUVWSQEo6V5.getVar().clear_timer_vector(); 
 UGDYKaqoUVWSQEo6V5.getVar().clear_vector(); 
 UGDYKaqoUVWSQEo6V5.getVar().clear_obj_vector(); 
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").clear_obj_vector(); 
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAnimation(150);
 
 local piCYIS7yd1qzUJDssb = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/cast/ghcasteffect_casting03.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, piCYIS7yd1qzUJDssb); 
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(piCYIS7yd1qzUJDssb);
 break;
 case 1:
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAnimation(151);
 
 local piCYIS7yd1qzUJDssb = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/start/ghstartground_normal.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 local xdif8qdKmlmZCnFwjFbiTZj8 = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/start/ghstarteffect_circle01.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 local OnXmC6kNQyD8gfr1epynxl4D = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/start/ghstartdustf_01.ani" ENUM_DRAWLAYER_NORMAL, true);
 
 local WLf6pcV8gzRloYs8Csp121ja = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/start/ghstartdustb_dustb01.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, piCYIS7yd1qzUJDssb); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, xdif8qdKmlmZCnFwjFbiTZj8); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, OnXmC6kNQyD8gfr1epynxl4D); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, WLf6pcV8gzRloYs8Csp121ja); 
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(piCYIS7yd1qzUJDssb);
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(xdif8qdKmlmZCnFwjFbiTZj8);
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(OnXmC6kNQyD8gfr1epynxl4D);
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(WLf6pcV8gzRloYs8Csp121ja);
 if(UGDYKaqoUVWSQEo6V5.sq_IsMyControlObject())
 sq_flashScreen(UGDYKaqoUVWSQEo6V5, 0, 120, 0, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 UGDYKaqoUVWSQEo6V5.sq_PlaySound("MF_GLANCEHOST"); 
 break;
 case 2:
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAnimation(152);
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAttackInfo(88);
 local bmqQcrz6Rgy4K = UGDYKaqoUVWSQEo6V5.sq_GetBonusRateWithPassive(222, aT_BxRH3rlPMrHLlXVwx, 0, 1.0); 
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAttackBonusRate(bmqQcrz6Rgy4K); 
 
 local piCYIS7yd1qzUJDssb = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/start/ghstartstone_a12.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 local xdif8qdKmlmZCnFwjFbiTZj8 = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringeffect_lightning05.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 local OnXmC6kNQyD8gfr1epynxl4D = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringground_normal.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 local WLf6pcV8gzRloYs8Csp121ja = sq_AddDrawOnlyAniFromParent(UGDYKaqoUVWSQEo6V5, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringstoneb_e04.ani", 0, -1, 0);
 
 local RKxCp9p0vgB9 = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringstonef_d02.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, xdif8qdKmlmZCnFwjFbiTZj8); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, piCYIS7yd1qzUJDssb); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, OnXmC6kNQyD8gfr1epynxl4D); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, WLf6pcV8gzRloYs8Csp121ja); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, RKxCp9p0vgB9); 
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").push_obj_vector(xdif8qdKmlmZCnFwjFbiTZj8); 
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").push_obj_vector(piCYIS7yd1qzUJDssb);
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").push_obj_vector(OnXmC6kNQyD8gfr1epynxl4D);
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").push_obj_vector(WLf6pcV8gzRloYs8Csp121ja);
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").push_obj_vector(RKxCp9p0vgB9);
 UGDYKaqoUVWSQEo6V5.getVar("aniobj").setObject(0, xdif8qdKmlmZCnFwjFbiTZj8); 
 local qBdo21TS8WXXozpc = 10; 
 local Jj3nFLjXPZ7Gn3qz = xdif8qdKmlmZCnFwjFbiTZj8.getCurrentAnimation(); 
 local so2bachjjy = Jj3nFLjXPZ7Gn3qz.getDelaySum(false); 
 UGDYKaqoUVWSQEo6V5.getVar().push_timer_vector();
 local q0U0c5Qb6Lr4Vha8vV = UGDYKaqoUVWSQEo6V5.getVar().get_timer_vector(0);
 q0U0c5Qb6Lr4Vha8vV.setParameter(so2bachjjy / qBdo21TS8WXXozpc, qBdo21TS8WXXozpc); 
 q0U0c5Qb6Lr4Vha8vV.resetInstant(0); 
 q0U0c5Qb6Lr4Vha8vV.setEventOnStart(true); 
 UGDYKaqoUVWSQEo6V5.getVar().clear_vector(); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(0); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(5); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(100); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(220); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(qBdo21TS8WXXozpc); 
 UGDYKaqoUVWSQEo6V5.getVar().push_vector(qBdo21TS8WXXozpc*2); 
 break;
 case 3:
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAnimation(153);
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAttackInfo(89);
 local bmqQcrz6Rgy4K = UGDYKaqoUVWSQEo6V5.sq_GetBonusRateWithPassive(222, aT_BxRH3rlPMrHLlXVwx, 1, 1.0); 
 UGDYKaqoUVWSQEo6V5.sq_SetCurrentAttackBonusRate(bmqQcrz6Rgy4K); 
 
 local piCYIS7yd1qzUJDssb = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/end/ghendstone_d05.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 local xdif8qdKmlmZCnFwjFbiTZj8 = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/end/ghendground_normal.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 local OnXmC6kNQyD8gfr1epynxl4D = sq_CreateDrawOnlyObject(UGDYKaqoUVWSQEo6V5, "character/fighter/effect/animation/atglancethehost/end/ghendexplosion_circle01.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, piCYIS7yd1qzUJDssb); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, xdif8qdKmlmZCnFwjFbiTZj8); 
 sq_moveWithParent(UGDYKaqoUVWSQEo6V5, OnXmC6kNQyD8gfr1epynxl4D); 
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(piCYIS7yd1qzUJDssb);
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(xdif8qdKmlmZCnFwjFbiTZj8);
 UGDYKaqoUVWSQEo6V5.getVar().push_obj_vector(OnXmC6kNQyD8gfr1epynxl4D);
 UGDYKaqoUVWSQEo6V5.sq_PlaySound("MF_GLANCEHOST_EXP"); 
 break;
 }
} ;

 
function onProc_atfighter_glancethehost(hwk55aZSD0wIE6dYkz7Gp7E)
{
 if(!hwk55aZSD0wIE6dYkz7Gp7E) return;
 local wovA7ZCxBvLk7QzSjvjYM = hwk55aZSD0wIE6dYkz7Gp7E.getSkillSubState(); 
 if(wovA7ZCxBvLk7QzSjvjYM == 2)
 {
 local Xu89isMPmwmO4FH8RX6OS5t = hwk55aZSD0wIE6dYkz7Gp7E.getVar().get_timer_vector(0); 
 if(!Xu89isMPmwmO4FH8RX6OS5t) return; 
 local EK0fgGINS9jyWNEmcrBIZhc = hwk55aZSD0wIE6dYkz7Gp7E.sq_IsMyControlObject(); 
 if(EK0fgGINS9jyWNEmcrBIZhc)
 {
 local BiZbno8F1tEjsEsDxENC = hwk55aZSD0wIE6dYkz7Gp7E.getVar().get_vector(0); 
 local TbUoneb8n18sak6 = hwk55aZSD0wIE6dYkz7Gp7E.getVar().get_vector(1); 
 
 if(BiZbno8F1tEjsEsDxENC < TbUoneb8n18sak6)
 {
 sq_SetKeyxEnable(hwk55aZSD0wIE6dYkz7Gp7E, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(hwk55aZSD0wIE6dYkz7Gp7E, E_ATTACK_COMMAND))
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(BiZbno8F1tEjsEsDxENC+1);
 sq_SendChangeSkillEffectPacket(hwk55aZSD0wIE6dYkz7Gp7E, 222); 
 return;
 }
 }
 }
 local ohz0TrfswrZZweilQpdArt0 = hwk55aZSD0wIE6dYkz7Gp7E.getXPos(); 
 local YTxex41qtKa = hwk55aZSD0wIE6dYkz7Gp7E.getYPos(); 
 local QCAsqa7apTNdA = hwk55aZSD0wIE6dYkz7Gp7E.getZPos(); 
 local G04fOVhfj_AwL6ePYaL4 = 2; 
 local PQ0QZ7UDNI8lGp15L8gG7cAW = 430; 
 local n08WMRxUP5k3FJHPElpEP3Gq = 150; 
 local JwziKqJhWj7bqM3TD4r = 600; 
 local w4pQ5c2k_ugeNMwk0h = hwk55aZSD0wIE6dYkz7Gp7E.getObjectManager(); 
 local VEYehOwkxyMB_QWWPZXws8g = w4pQ5c2k_ugeNMwk0h.getCollisionObjectNumber(); 
 local k1CmeFETfeoMfZCL = false; 
 local rne1phRffzm6rbFryKfFRtI = hwk55aZSD0wIE6dYkz7Gp7E.getVar("aniobj").get_obj_vector(0); 
 if(rne1phRffzm6rbFryKfFRtI)
 {
 local kQFoErJM1oiWeg1RoeH = rne1phRffzm6rbFryKfFRtI.getCurrentAnimation(); 
 if(kQFoErJM1oiWeg1RoeH)
 {
 local eb9YvD81b5iJKn = sq_GetCurrentTime(kQFoErJM1oiWeg1RoeH); 
 k1CmeFETfeoMfZCL = Xu89isMPmwmO4FH8RX6OS5t.isOnEvent(eb9YvD81b5iJKn); 
 }
 }
 for(local DRsSqRW5Cue1LJScjhfQ = 0; DRsSqRW5Cue1LJScjhfQ < VEYehOwkxyMB_QWWPZXws8g; DRsSqRW5Cue1LJScjhfQ++)
 {
 local v7DK5HkV1kARIp_NkUOzkt = w4pQ5c2k_ugeNMwk0h.getCollisionObject(DRsSqRW5Cue1LJScjhfQ); 
 
 if(!hwk55aZSD0wIE6dYkz7Gp7E.isEnemy(v7DK5HkV1kARIp_NkUOzkt) || !v7DK5HkV1kARIp_NkUOzkt || !v7DK5HkV1kARIp_NkUOzkt.isInDamagableState(hwk55aZSD0wIE6dYkz7Gp7E)) continue;
 local jAueFWKkzMXocmX = v7DK5HkV1kARIp_NkUOzkt.getXPos(); 
 local J99XJlgwvSb = v7DK5HkV1kARIp_NkUOzkt.getYPos(); 
 local DY7fwPz6HETsq_uYG0xhbWXp = v7DK5HkV1kARIp_NkUOzkt.getZPos(); 
 local lmKd5U13ZOHLv6 = sq_Abs(ohz0TrfswrZZweilQpdArt0 - jAueFWKkzMXocmX); 
 local tGuecHPJeAgvi8k9DG5K9 = sq_Abs(YTxex41qtKa - J99XJlgwvSb); 
 if(lmKd5U13ZOHLv6 > PQ0QZ7UDNI8lGp15L8gG7cAW
 || tGuecHPJeAgvi8k9DG5K9 > n08WMRxUP5k3FJHPElpEP3Gq
 || sq_Abs(QCAsqa7apTNdA - DY7fwPz6HETsq_uYG0xhbWXp) > JwziKqJhWj7bqM3TD4r) continue; 
 local GPVRioolGiXOpAaOHlE = sq_GetCNRDObjectToActiveObject(v7DK5HkV1kARIp_NkUOzkt); 
 if(GPVRioolGiXOpAaOHlE && !GPVRioolGiXOpAaOHlE.isDead())
 {
 if(k1CmeFETfeoMfZCL && EK0fgGINS9jyWNEmcrBIZhc) 
 sq_SendHitObjectPacket(hwk55aZSD0wIE6dYkz7Gp7E, v7DK5HkV1kARIp_NkUOzkt, 0, 0, sq_GetHeightObject(v7DK5HkV1kARIp_NkUOzkt) / 2); 
 if(lmKd5U13ZOHLv6 > 0)
 {
 local OEO9SVkn23kuRx2buZnj = G04fOVhfj_AwL6ePYaL4; 
 while(lmKd5U13ZOHLv6 <= OEO9SVkn23kuRx2buZnj) OEO9SVkn23kuRx2buZnj -= 1;
 
 if(jAueFWKkzMXocmX > ohz0TrfswrZZweilQpdArt0) OEO9SVkn23kuRx2buZnj = OEO9SVkn23kuRx2buZnj / -1;
 if(GPVRioolGiXOpAaOHlE.isMovablePos(jAueFWKkzMXocmX + OEO9SVkn23kuRx2buZnj, YTxex41qtKa)) 
 sq_setCurrentAxisPos(GPVRioolGiXOpAaOHlE, 0, jAueFWKkzMXocmX + OEO9SVkn23kuRx2buZnj); 
 }
 if(tGuecHPJeAgvi8k9DG5K9 > 0)
 {
 local OEO9SVkn23kuRx2buZnj = G04fOVhfj_AwL6ePYaL4; 
 while(tGuecHPJeAgvi8k9DG5K9 <= OEO9SVkn23kuRx2buZnj) OEO9SVkn23kuRx2buZnj -= 1;
 
 if(J99XJlgwvSb > YTxex41qtKa) OEO9SVkn23kuRx2buZnj = OEO9SVkn23kuRx2buZnj / -1;
 if(GPVRioolGiXOpAaOHlE.isMovablePos(ohz0TrfswrZZweilQpdArt0, J99XJlgwvSb + OEO9SVkn23kuRx2buZnj)) 
 sq_setCurrentAxisPos(GPVRioolGiXOpAaOHlE, 1, J99XJlgwvSb + OEO9SVkn23kuRx2buZnj); 
 }
 }
 else if(v7DK5HkV1kARIp_NkUOzkt.isObjectType(OBJECTTYPE_PASSIVE) && k1CmeFETfeoMfZCL && EK0fgGINS9jyWNEmcrBIZhc) 
 sq_SendHitObjectPacket(hwk55aZSD0wIE6dYkz7Gp7E, v7DK5HkV1kARIp_NkUOzkt, 0, 0, sq_GetHeightObject(v7DK5HkV1kARIp_NkUOzkt) / 2); 
 }
 }
} ;

 
function onEndCurrentAni_atfighter_glancethehost(Two5d_bu4bFR_ekA)
{
 if(!Two5d_bu4bFR_ekA) return;
 if(!Two5d_bu4bFR_ekA.sq_IsMyControlObject()) return;
 local _8q7J6KJy8j = Two5d_bu4bFR_ekA.getSkillSubState(); 
 if(_8q7J6KJy8j != 3)
 {
 Two5d_bu4bFR_ekA.sq_IntVectClear();
 Two5d_bu4bFR_ekA.sq_IntVectPush(_8q7J6KJy8j + 1); 
 Two5d_bu4bFR_ekA.sq_AddSetStatePacket(222, STATE_PRIORITY_USER, true); 
 }
 else
 Two5d_bu4bFR_ekA.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onEndState_atfighter_glancethehost(Two5d_bu4bFR_ekA, _8q7J6KJy8j)
{
 if(!Two5d_bu4bFR_ekA) return;
 local ahZi_Xxxci = Two5d_bu4bFR_ekA.getSkillSubState(); 
 if(_8q7J6KJy8j != 222
 || _8q7J6KJy8j != STATE_STAND ||(ahZi_Xxxci != 3 && _8q7J6KJy8j == STATE_STAND)) 
 {
 local fPBIZvaskNwC = Two5d_bu4bFR_ekA.getVar().get_obj_vector_size(); 
 local lsS4ky6L6yL8Cd_pNuQO_Ch = Two5d_bu4bFR_ekA.getVar(); 
 for(local cNaCF_31zBVY9h3uqi9x5mN = 0; cNaCF_31zBVY9h3uqi9x5mN < fPBIZvaskNwC; cNaCF_31zBVY9h3uqi9x5mN++)
 {
 local k2zOWrBkVLYz = lsS4ky6L6yL8Cd_pNuQO_Ch.get_obj_vector(cNaCF_31zBVY9h3uqi9x5mN); 
 if(k2zOWrBkVLYz) k2zOWrBkVLYz.setValid(false); 
 }
 local p46wJYNjs9neanOSVFK_9WP = Two5d_bu4bFR_ekA.getVar("aniobj").get_obj_vector_size(); 
 local ljy0cPiAQs_e2oyC1 = Two5d_bu4bFR_ekA.getVar("aniobj"); 
 for(local cNaCF_31zBVY9h3uqi9x5mN = 0; cNaCF_31zBVY9h3uqi9x5mN < p46wJYNjs9neanOSVFK_9WP; cNaCF_31zBVY9h3uqi9x5mN++)
 {
 local XHR_ncPRnVMhEKWK9mS = ljy0cPiAQs_e2oyC1.get_obj_vector(cNaCF_31zBVY9h3uqi9x5mN); 
 if(XHR_ncPRnVMhEKWK9mS) XHR_ncPRnVMhEKWK9mS.setValid(false); 
 }
 }
} ;

function onKeyFrameFlag_atfighter_glancethehost(Mn7bpaWrL6DE, YjeVLvjMyo_jSNuF1JA)
{
 if(!Mn7bpaWrL6DE) return false;
 local oi_o_lO91Qm = Mn7bpaWrL6DE.getSkillSubState(); 
 switch(oi_o_lO91Qm)
 {
 case 0:
 if(Mn7bpaWrL6DE.sq_IsMyControlObject())
 switch(YjeVLvjMyo_jSNuF1JA)
 {
 case 1:
 sq_flashScreen(Mn7bpaWrL6DE, 0, 60, 0, 51, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 2:
 sq_flashScreen(Mn7bpaWrL6DE, 0, 60, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 3:
 sq_flashScreen(Mn7bpaWrL6DE, 0, 120, 0, 51, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 }
 break;
 case 1:
 if(Mn7bpaWrL6DE.sq_IsMyControlObject())
 if(YjeVLvjMyo_jSNuF1JA == 1)
 {
 sq_SetMyShake(Mn7bpaWrL6DE, 4, 260); 
 sq_flashScreen(Mn7bpaWrL6DE, 0, 60, 0, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 }
 else if(YjeVLvjMyo_jSNuF1JA == 2)
 sq_flashScreen(Mn7bpaWrL6DE, 0, 420, 0, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 2:
 switch(YjeVLvjMyo_jSNuF1JA)
 {
 case 1:
 sq_SetMyShake(Mn7bpaWrL6DE, 4, 240); 
 if(Mn7bpaWrL6DE.sq_IsMyControlObject())
 sq_flashScreen(Mn7bpaWrL6DE, 0, 2400, 0, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 2:
 sq_SetMyShake(Mn7bpaWrL6DE, 1, 2160); 
 break;
 case 3:
 if(Mn7bpaWrL6DE.sq_IsMyControlObject())
 sq_flashScreen(Mn7bpaWrL6DE, 0, 1520, 800, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 
 local cJzYUEwlSeP = sq_CreateDrawOnlyObject(Mn7bpaWrL6DE, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringpang_01.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(Mn7bpaWrL6DE, cJzYUEwlSeP); 
 Mn7bpaWrL6DE.getVar().push_obj_vector(cJzYUEwlSeP);
 Mn7bpaWrL6DE.sq_PlaySound("GLANCEHOST_LIGHT"); 
 break;
 }
 break;
 case 3:
 if(YjeVLvjMyo_jSNuF1JA == 1)
 sq_SetMyShake(Mn7bpaWrL6DE, 1, 480); 
 else if(YjeVLvjMyo_jSNuF1JA == 2)
 sq_SetMyShake(Mn7bpaWrL6DE, 10, 400); 
 break;
 }
 return true;
} ;

function onChangeSkillEffect_atfighter_glancethehost(rrAbht93oBMVDoD, oOvbQx71dhqJS, _rK_RYjo3cSD5CfV)
{
 if(!rrAbht93oBMVDoD) return;
 local QSiQPDNGW6Oq_3 = rrAbht93oBMVDoD.getSkillSubState(); 
 if(QSiQPDNGW6Oq_3 == 2)
 {
 local hJBS5DU7GKT0DG = _rK_RYjo3cSD5CfV.readWord();
 switch(hJBS5DU7GKT0DG)
 {
 case 1:
 local aYh6Y4zZilXe2mO7 = _rK_RYjo3cSD5CfV.readDword(); 
 rrAbht93oBMVDoD.getVar().set_vector(0, aYh6Y4zZilXe2mO7); 
 local nlzyNELbJR = rrAbht93oBMVDoD.getVar().get_vector(1); 
 local D4SwMwX3SXgyHBUpw = sq_GetUniformVelocity(rrAbht93oBMVDoD.getVar().get_vector(2), rrAbht93oBMVDoD.getVar().get_vector(3), aYh6Y4zZilXe2mO7, nlzyNELbJR).tofloat(); 
 rrAbht93oBMVDoD.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * D4SwMwX3SXgyHBUpw /100.0).tointeger(), 1.0, 1.0); 
 
 local In5PWmas9y3bmJk_qe = rrAbht93oBMVDoD.getVar("aniobj").get_obj_vector_size(); 
 local SrKYYf94rToooINe5g_z = rrAbht93oBMVDoD.getVar("aniobj"); 
 for(local ZR2Y0tsnHHFl = 0; ZR2Y0tsnHHFl < In5PWmas9y3bmJk_qe; ZR2Y0tsnHHFl++)
 {
 local mdFXkdkc7OKBSKWRsEq = SrKYYf94rToooINe5g_z.get_obj_vector(ZR2Y0tsnHHFl); 
 if(mdFXkdkc7OKBSKWRsEq)
 {
 local WLQH0Y8HvhHvJUrWjeNR = mdFXkdkc7OKBSKWRsEq.getCurrentAnimation(); 
 if(WLQH0Y8HvhHvJUrWjeNR) WLQH0Y8HvhHvJUrWjeNR.setSpeedRate(D4SwMwX3SXgyHBUpw); 
 }
 }
 local AAVwOyfAVz = rrAbht93oBMVDoD.getVar().get_timer_vector(0); 
 local UA6EFNZDrEMPL = rrAbht93oBMVDoD.getVar("aniobj").getObject(0); 
 if(UA6EFNZDrEMPL && AAVwOyfAVz)
 {
 local u4R0r8YbUH7YToh = (UA6EFNZDrEMPL.getCurrentAnimation()).getDelaySum(false); 
 local tWVEX5QWHlpwjkO03JWqA = sq_GetUniformVelocity(rrAbht93oBMVDoD.getVar().get_vector(4), rrAbht93oBMVDoD.getVar().get_vector(5), aYh6Y4zZilXe2mO7, nlzyNELbJR); 
 if(u4R0r8YbUH7YToh)
 {
 AAVwOyfAVz.setEventTerm(u4R0r8YbUH7YToh / tWVEX5QWHlpwjkO03JWqA); 
 AAVwOyfAVz.setEventMaxCount(tWVEX5QWHlpwjkO03JWqA); 
 }
 }
 break;
 }
 }
} ;

 
function onAttack_atfighter_glancethehost(oXdvc7IXAFqyX_8ufb, OwPB4o4fgPCqURHMs, UYpfcWuUcGbKZny4qf, NotkApqHRcE41GOS)
{
 if(!oXdvc7IXAFqyX_8ufb) return;
 local siI8IgGuKbJdCWzkbhufrm4 = oXdvc7IXAFqyX_8ufb.getSkillSubState();
 if(siI8IgGuKbJdCWzkbhufrm4 == 2) 
 {
 if(NotkApqHRcE41GOS || !OwPB4o4fgPCqURHMs.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 local GTqZPc3wFdLZOpy = sq_CreateDrawOnlyObject(oXdvc7IXAFqyX_8ufb, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atglancethehost/ghgatheringattack_hit.ani", ENUM_DRAWLAYER_NORMAL, true);
 GTqZPc3wFdLZOpy.setCurrentPos(OwPB4o4fgPCqURHMs.getXPos(), OwPB4o4fgPCqURHMs.getYPos(), OwPB4o4fgPCqURHMs.getZPos() + sq_GetHeightObject(OwPB4o4fgPCqURHMs) / 2); 
 sq_moveWithParent(OwPB4o4fgPCqURHMs, GTqZPc3wFdLZOpy); 
 }
} ;


