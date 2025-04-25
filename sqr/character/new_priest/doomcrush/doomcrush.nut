
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_doomcrush(Cdpj3lt6_jHhGzOA1L)
{
 Cdpj3lt6_jHhGzOA1L = sq_GetCNRDObjectToSQRCharacter(Cdpj3lt6_jHhGzOA1L);
 if(!Cdpj3lt6_jHhGzOA1L) return false; 
 local P1pOrycXGu7UH = Cdpj3lt6_jHhGzOA1L.sq_IsUseSkill(137); 
 if(P1pOrycXGu7UH) 
 {
 Cdpj3lt6_jHhGzOA1L.sq_IntVectClear();
 if(isAvengerAwakenning(Cdpj3lt6_jHhGzOA1L)) 
 Cdpj3lt6_jHhGzOA1L.sq_IntVectPush(1); 
 else
 Cdpj3lt6_jHhGzOA1L.sq_IntVectPush(0); 
 Cdpj3lt6_jHhGzOA1L.sq_AddSetStatePacket(137, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_doomcrush(AesT7vGCa3vO)
{
 AesT7vGCa3vO = sq_GetCNRDObjectToSQRCharacter(AesT7vGCa3vO);
 if(!AesT7vGCa3vO) return false; 
 local z3cq9jCnu8HxX = AesT7vGCa3vO.sq_GetState(); 
 if(z3cq9jCnu8HxX == STATE_STAND) 
 return true; 
 if(z3cq9jCnu8HxX == STATE_ATTACK) 
 {
 return AesT7vGCa3vO.sq_IsCommandEnable(137); 
 }
 return true; 
} ;

 
function onSetState_priest_doomcrush(zgSL6IJXrK0PQm2r5, U2zNPgDYVe0giqPykH, AiyAIS8rXx4NGGkcZ1, Pd6kSRXJmJ0s7rRh)
{
 zgSL6IJXrK0PQm2r5 = sq_GetCNRDObjectToSQRCharacter(zgSL6IJXrK0PQm2r5);
 if(!zgSL6IJXrK0PQm2r5) return; 
 zgSL6IJXrK0PQm2r5.sq_StopMove(); 
 local zoFrQqZwLteQJY = zgSL6IJXrK0PQm2r5.sq_GetVectorData(AiyAIS8rXx4NGGkcZ1, 0); 
 zgSL6IJXrK0PQm2r5.setSkillSubState(zoFrQqZwLteQJY); 
 switch(zoFrQqZwLteQJY)
 {
 case 0:
 case 1:
 zgSL6IJXrK0PQm2r5.getVar("move").clear_vector(); 
 zgSL6IJXrK0PQm2r5.getVar().setBool(0, false); 
 zgSL6IJXrK0PQm2r5.getVar().setBool(1, false); 
 break;
 }
 switch(zoFrQqZwLteQJY)
 {
 case 0:
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAnimation(231);
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAttackInfo(123);
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAttackBonusRate(zgSL6IJXrK0PQm2r5.sq_GetBonusRateWithPassive(137, 137, 0, 1.0)); 
 zgSL6IJXrK0PQm2r5.sq_PlaySound("PR_DOOMCRUSH_01");
 zgSL6IJXrK0PQm2r5.getVar().setBool(2, false); 
 break;
 case 1:
 local s1qtQJx6GCmgZ8BSwg87Qt = zgSL6IJXrK0PQm2r5.getVar().GetAnimationMap("priest_avenger_doomcrush_dash(devil)_body", "character/priest/animation/avengerawakening/doomcrush_dash(devil)_body.ani");
 zgSL6IJXrK0PQm2r5.setCurrentAnimation(s1qtQJx6GCmgZ8BSwg87Qt);
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAttackInfo(123);
 local teruZgIyAqq8 = zgSL6IJXrK0PQm2r5.sq_GetLevelData(137, 6, sq_GetSkillLevel(zgSL6IJXrK0PQm2r5, 137))/100.0; 
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAttackBonusRate(zgSL6IJXrK0PQm2r5.sq_GetBonusRateWithPassive(137, 137, 0, 1.0 + teruZgIyAqq8)); 
 zgSL6IJXrK0PQm2r5.sq_PlaySound("PR_DGUARDIAN_DOOMCRUSH_01");
 zgSL6IJXrK0PQm2r5.getVar().setBool(2, true); 
 break;
 case 2:
 local ehHlZe_o1FM = zgSL6IJXrK0PQm2r5.sq_GetVectorData(AiyAIS8rXx4NGGkcZ1, 1); 
 local Bx0wInuMH5 = zgSL6IJXrK0PQm2r5.sq_GetVectorData(AiyAIS8rXx4NGGkcZ1, 2); 
 local zQEO6YJtP0 = zgSL6IJXrK0PQm2r5.sq_GetVectorData(AiyAIS8rXx4NGGkcZ1, 3); 
 if(zQEO6YJtP0 > 0) 
 consumeDevilGauge(zgSL6IJXrK0PQm2r5, zQEO6YJtP0); 
 zgSL6IJXrK0PQm2r5.getVar().clear_vector(); 
 zgSL6IJXrK0PQm2r5.getVar().push_vector(Bx0wInuMH5); 
 if(ehHlZe_o1FM == 0) 
 {
 local s1qtQJx6GCmgZ8BSwg87Qt = zgSL6IJXrK0PQm2r5.getVar().GetAnimationMap("priest_avenger_doomcrush_end_body_body", "character/priest/animation/avengerawakening/doomcrush_end_body_body.ani");
 zgSL6IJXrK0PQm2r5.setCurrentAnimation(s1qtQJx6GCmgZ8BSwg87Qt);
 
 sq_AddDrawOnlyAniFromParent(zgSL6IJXrK0PQm2r5, "character/priest/effect/animation/doomcrush/doomcrush_end_body_a00.ani", 0, 1, 0);
 }
 else if(ehHlZe_o1FM == 1) 
 {
 local s1qtQJx6GCmgZ8BSwg87Qt = zgSL6IJXrK0PQm2r5.getVar().GetAnimationMap("priest_avenger_doomcrush_end_body_charge_body", "character/priest/animation/avengerawakening/doomcrush_end_body_charge_body.ani");
 zgSL6IJXrK0PQm2r5.setCurrentAnimation(s1qtQJx6GCmgZ8BSwg87Qt);
 
 sq_CreateDrawOnlyObject(zgSL6IJXrK0PQm2r5, "character/priest/effect/animation/doomcrush/doomcrush_end_body_charge_a01.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_AddDrawOnlyAniFromParent(zgSL6IJXrK0PQm2r5, "character/priest/effect/animation/doomcrush/doomcrush_end_body_charge_a00.ani", 0, 1, 0);
 }
 break;
 case 3:
 zgSL6IJXrK0PQm2r5.sq_SetCurrentAnimation(232);
 break;
 }
 switch(zoFrQqZwLteQJY)
 {
 case 0:
 case 1:
 sq_CreateDrawOnlyObject(zgSL6IJXrK0PQm2r5, "character/priest/effect/animation/doomcrush/readydash_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 zgSL6IJXrK0PQm2r5.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onProcCon_priest_doomcrush(lDioEdeLEleQ09w)
{
 lDioEdeLEleQ09w = sq_GetCNRDObjectToSQRCharacter(lDioEdeLEleQ09w);
 if(!lDioEdeLEleQ09w) return;
 local fx10NGZS_50jQLIJwdZjq0 = lDioEdeLEleQ09w.getSkillSubState(); 
 switch(fx10NGZS_50jQLIJwdZjq0)
 {
 case 0:
 case 1:
 if(lDioEdeLEleQ09w.getVar().getBool(0) == false) 
 {
 lDioEdeLEleQ09w.setSkillCommandEnable(137, true); 
 if(lDioEdeLEleQ09w.sq_IsEnterSkill(137) != -1)
 lDioEdeLEleQ09w.getVar().setBool(0, true); 
 }
 break;
 }
} ;

function onProc_priest_doomcrush(uEpvIjFUB4XXl3nEgStyxSod)
{
 uEpvIjFUB4XXl3nEgStyxSod = sq_GetCNRDObjectToSQRCharacter(uEpvIjFUB4XXl3nEgStyxSod);
 if(!uEpvIjFUB4XXl3nEgStyxSod) return;
 local Q8hjr4AdDCse3 = uEpvIjFUB4XXl3nEgStyxSod.getSkillSubState(); 
 switch(Q8hjr4AdDCse3)
 {
 case 0:
 case 1:
 if(uEpvIjFUB4XXl3nEgStyxSod.getVar("move").size_vector() <= 0)return;
 local AdpAKW3RN_Wt1xBlgaNow = uEpvIjFUB4XXl3nEgStyxSod.getVar("move"); 
 local xuP09bU8eja0nZ = uEpvIjFUB4XXl3nEgStyxSod.getCurrentAnimation(); 
 local qkDqLwhJM2yj = sq_GetCurrentTime(xuP09bU8eja0nZ) - xuP09bU8eja0nZ.getDelaySum(AdpAKW3RN_Wt1xBlgaNow.get_vector(2), AdpAKW3RN_Wt1xBlgaNow.get_vector(3)); 
 local E1tDmgM30KkvBG = xuP09bU8eja0nZ.getDelaySum(AdpAKW3RN_Wt1xBlgaNow.get_vector(4), AdpAKW3RN_Wt1xBlgaNow.get_vector(5)); 
 local pC1B3ifZw8p7MjANC7dWq = AdpAKW3RN_Wt1xBlgaNow.get_vector(0); 
 if(pC1B3ifZw8p7MjANC7dWq != 0)
 {
 local Rk9C7_WsYVdE = sq_GetDistancePos(pC1B3ifZw8p7MjANC7dWq,
 uEpvIjFUB4XXl3nEgStyxSod.getDirection(),
 sq_GetAccel(0, AdpAKW3RN_Wt1xBlgaNow.get_vector(1), qkDqLwhJM2yj, E1tDmgM30KkvBG, true)); 
 if(uEpvIjFUB4XXl3nEgStyxSod.isMovablePos(Rk9C7_WsYVdE, uEpvIjFUB4XXl3nEgStyxSod.getYPos())) 
 sq_setCurrentAxisPos(uEpvIjFUB4XXl3nEgStyxSod, 0, Rk9C7_WsYVdE); 
 else 
 AdpAKW3RN_Wt1xBlgaNow.set_vector(0, 0);
 }
 local r1pf3q93Tyi0RiXvhWt = AdpAKW3RN_Wt1xBlgaNow.get_vector(7); 
 if(r1pf3q93Tyi0RiXvhWt != 0) 
 {
 local MdQF89foKxgSdDUBEAp = AdpAKW3RN_Wt1xBlgaNow.get_vector(6) + sq_GetAccel(0, r1pf3q93Tyi0RiXvhWt, qkDqLwhJM2yj, E1tDmgM30KkvBG, true);
 if(uEpvIjFUB4XXl3nEgStyxSod.isMovablePos(uEpvIjFUB4XXl3nEgStyxSod.getXPos(), MdQF89foKxgSdDUBEAp)) 
 sq_setCurrentAxisPos(uEpvIjFUB4XXl3nEgStyxSod, 1, MdQF89foKxgSdDUBEAp); 
 else 
 AdpAKW3RN_Wt1xBlgaNow.set_vector(7, 0);
 }
 break;
 }
} ;

function onAttack_priest_doomcrush(J__BVkc91qxJx, UqZ8RK9ZNEEMQV5d0M, vsXfzPT5JZSUQWqv7, XNN5V1gsNKm3Uqxs4r)
{
 J__BVkc91qxJx = sq_GetCNRDObjectToSQRCharacter(J__BVkc91qxJx);
 if(!J__BVkc91qxJx) return;
 if(XNN5V1gsNKm3Uqxs4r || !UqZ8RK9ZNEEMQV5d0M.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local Hjh_Da_rB2gjjMF72bag = J__BVkc91qxJx.getSkillSubState(); 
 switch(Hjh_Da_rB2gjjMF72bag)
 {
 case 0:
 case 1:
 if(sq_IsGrabable(J__BVkc91qxJx, UqZ8RK9ZNEEMQV5d0M) 
 && sq_IsHoldable(J__BVkc91qxJx, UqZ8RK9ZNEEMQV5d0M) 
 && !sq_IsFixture(UqZ8RK9ZNEEMQV5d0M)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(UqZ8RK9ZNEEMQV5d0M, "character/new_priest/doomcrush/ap_doomcrush.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(UqZ8RK9ZNEEMQV5d0M, "character/new_priest/doomcrush/ap_doomcrush.nut");
 local _8DGvDrWwyvNFs9zMeSBHk = CNSquirrelAppendage.sq_AppendAppendage(UqZ8RK9ZNEEMQV5d0M, J__BVkc91qxJx, 137, false, "character/new_priest/doomcrush/ap_doomcrush.nut", true); 
 sq_HoldAndDelayDie(UqZ8RK9ZNEEMQV5d0M, J__BVkc91qxJx, true, true, true, 0, 450, ENUM_DIRECTION_NEUTRAL, _8DGvDrWwyvNFs9zMeSBHk); 
 }
 if(J__BVkc91qxJx.getVar().getBool(1) == false) 
 {
 sq_CreateDrawOnlyObject(J__BVkc91qxJx, "character/priest/effect/animation/doomcrush/poke_dash.ani", ENUM_DRAWLAYER_NORMAL, true); 
 J__BVkc91qxJx.getVar().setBool(1, true); 
 }
 break;
 }
} ;

function onChangeSkillEffect_priest_doomcrush(AvTq5fRGFRfl49aByyJro3ry, wCzC9ndlYPcbJ0bSlOZd7, HHwPmKQOTogg3z9ZR50_hj)
{
 if(!AvTq5fRGFRfl49aByyJro3ry) return;
 local cjtpzJsaXYt7TAk_vLN4e9 = AvTq5fRGFRfl49aByyJro3ry.getSkillSubState();
 switch(cjtpzJsaXYt7TAk_vLN4e9)
 {
 case 0:
 case 1:
 local N3EQ4Gs7hd0Dpab7 = HHwPmKQOTogg3z9ZR50_hj.readWord(); 
 switch(N3EQ4Gs7hd0Dpab7)
 {
 case 1: 
 local hNcPJsc9e6c8ldEuMiyKui = HHwPmKQOTogg3z9ZR50_hj.readDword(); 
 local RnHDTN7YMA5FtYA7P6 = null; 
 if(hNcPJsc9e6c8ldEuMiyKui < 0) 
 RnHDTN7YMA5FtYA7P6 = sq_CreateDrawOnlyObject(AvTq5fRGFRfl49aByyJro3ry, "character/priest/effect/animation/doomcrush/eye_line_up.ani", ENUM_DRAWLAYER_NORMAL, true); 
 else if(hNcPJsc9e6c8ldEuMiyKui > 0) 
 RnHDTN7YMA5FtYA7P6 = sq_CreateDrawOnlyObject(AvTq5fRGFRfl49aByyJro3ry, "character/priest/effect/animation/doomcrush/eye_line_down.ani", ENUM_DRAWLAYER_NORMAL, true); 
 else 
 RnHDTN7YMA5FtYA7P6 = sq_CreateDrawOnlyObject(AvTq5fRGFRfl49aByyJro3ry, "character/priest/effect/animation/doomcrush/eye_line_middle.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_moveWithParent(AvTq5fRGFRfl49aByyJro3ry, RnHDTN7YMA5FtYA7P6); 
 AvTq5fRGFRfl49aByyJro3ry.getVar("move").clear_vector(); 
 local ZIKMB0gcs3ouW0kV = AvTq5fRGFRfl49aByyJro3ry.getVar("move"); 
 ZIKMB0gcs3ouW0kV.push_vector(AvTq5fRGFRfl49aByyJro3ry.getXPos()); 
 ZIKMB0gcs3ouW0kV.push_vector(150); 
 ZIKMB0gcs3ouW0kV.push_vector(0); 
 ZIKMB0gcs3ouW0kV.push_vector(1); 
 ZIKMB0gcs3ouW0kV.push_vector(2); 
 ZIKMB0gcs3ouW0kV.push_vector(10); 
 ZIKMB0gcs3ouW0kV.push_vector(AvTq5fRGFRfl49aByyJro3ry.getYPos()); 
 ZIKMB0gcs3ouW0kV.push_vector(hNcPJsc9e6c8ldEuMiyKui); 
 break;
 }
 break;
 }
} ;

function onKeyFrameFlag_priest_doomcrush(Mh7JrYGhdUy4o91w, djJiTT2bE4KcDvWe)
{
 Mh7JrYGhdUy4o91w = sq_GetCNRDObjectToSQRCharacter(Mh7JrYGhdUy4o91w);
 if(!Mh7JrYGhdUy4o91w) return false;
 local mRcYzMag9L = Mh7JrYGhdUy4o91w.getSkillSubState(); 
 switch(mRcYzMag9L)
 {
 case 0:
 case 1:
 switch(djJiTT2bE4KcDvWe)
 {
 case 1:
 sq_SetMyShake(Mh7JrYGhdUy4o91w, 5, 50); 
 if(Mh7JrYGhdUy4o91w.sq_IsMyControlObject())
 sq_flashScreen(Mh7JrYGhdUy4o91w, 0, 160, 0, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddDrawOnlyAniFromParent(Mh7JrYGhdUy4o91w, "character/priest/effect/animation/doomcrush/destdash_smoke.ani", 0, -1, 0); 
 break;
 case 2:
 if(Mh7JrYGhdUy4o91w.sq_IsMyControlObject())
 {
 local EbbdNpcyEwaS5 = 0; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 EbbdNpcyEwaS5 = -45;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 EbbdNpcyEwaS5 = 45;
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(EbbdNpcyEwaS5); 
 sq_SendChangeSkillEffectPacket(Mh7JrYGhdUy4o91w, 137); 
 }
 break;
 }
 break;
 case 2:
 if(djJiTT2bE4KcDvWe == 1)
 {
 if(Mh7JrYGhdUy4o91w.sq_IsMyControlObject())
 {
 local UWNXW9YLtYhIFA = Mh7JrYGhdUy4o91w.sq_GetLevelData(137, 6, sq_GetSkillLevel(Mh7JrYGhdUy4o91w, 137)) / 100.0; 
 Mh7JrYGhdUy4o91w.sq_StartWrite();
 Mh7JrYGhdUy4o91w.sq_WriteDword(137); 
 Mh7JrYGhdUy4o91w.sq_WriteDword(1); 
 if(Mh7JrYGhdUy4o91w.getVar().getBool(2) == true) 
 {
 Mh7JrYGhdUy4o91w.sq_WriteDword(1); 
 Mh7JrYGhdUy4o91w.sq_WriteDword(Mh7JrYGhdUy4o91w.sq_GetBonusRateWithPassive(137, 137, 1, 1.0 + UWNXW9YLtYhIFA)); 
 Mh7JrYGhdUy4o91w.sq_WriteDword(Mh7JrYGhdUy4o91w.sq_GetBonusRateWithPassive(137, 137, 2, 1.0 + UWNXW9YLtYhIFA)); 
 }
 else
 {
 Mh7JrYGhdUy4o91w.sq_WriteDword(2); 
 Mh7JrYGhdUy4o91w.sq_WriteDword(Mh7JrYGhdUy4o91w.sq_GetBonusRateWithPassive(137, 137, 1, 1.0)); 
 Mh7JrYGhdUy4o91w.sq_WriteDword(Mh7JrYGhdUy4o91w.sq_GetBonusRateWithPassive(137, 137, 2, 1.0)); 
 }
 Mh7JrYGhdUy4o91w.sq_WriteDword(Mh7JrYGhdUy4o91w.getVar().get_vector(0)); 
 Mh7JrYGhdUy4o91w.sq_SendCreatePassiveObjectPacket(24374, 0, 120, -1, 0);
 sq_SetMyShake(Mh7JrYGhdUy4o91w, 2, 1000); 
 sq_flashScreen(Mh7JrYGhdUy4o91w, 0, 200, 500, 255, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 sq_CreateDrawOnlyObject(Mh7JrYGhdUy4o91w, "character/priest/effect/animation/doomcrush/doomcrush_boom_finish_glow.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_priest_doomcrush(L72yTlRnpkyE)
{
 L72yTlRnpkyE = sq_GetCNRDObjectToSQRCharacter(L72yTlRnpkyE);
 if(!L72yTlRnpkyE) return;
 if(!L72yTlRnpkyE.sq_IsMyControlObject()) return;
 local wGGgoJI9yMdGgVc6GD = L72yTlRnpkyE.getSkillSubState(); 
 switch(wGGgoJI9yMdGgVc6GD)
 {
 case 0:
 case 1:
 local CdWvBIYbigazCqzG4IWhs = sq_GetSkillLevel(L72yTlRnpkyE, 137); 
 local _W8Uluv7kc = L72yTlRnpkyE.sq_GetLevelData(137, 3, CdWvBIYbigazCqzG4IWhs); 
 local nPrliKITohDVclTV8kh = 0; 
 if(L72yTlRnpkyE.getVar().getBool(0) == true) 
 {
 local zkJf_fuyh19BG = getDevilGauge(L72yTlRnpkyE); 
 if(isInDevilStrikeSkill(L72yTlRnpkyE) && zkJf_fuyh19BG > 0) 
 {
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(L72yTlRnpkyE, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 nPrliKITohDVclTV8kh = L72yTlRnpkyE.sq_GetLevelData(137, 4, CdWvBIYbigazCqzG4IWhs) 
 _W8Uluv7kc = sq_GetUniformVelocity(_W8Uluv7kc, L72yTlRnpkyE.sq_GetLevelData(137, 5, CdWvBIYbigazCqzG4IWhs), zkJf_fuyh19BG, nPrliKITohDVclTV8kh); 
 }
 else
 L72yTlRnpkyE.getVar().setBool(0, false); 
 }
 L72yTlRnpkyE.sq_IntVectClear();
 L72yTlRnpkyE.sq_IntVectPush(2); 
 if(L72yTlRnpkyE.getVar().getBool(0) == true)
 L72yTlRnpkyE.sq_IntVectPush(1); 
 else
 L72yTlRnpkyE.sq_IntVectPush(0); 
 L72yTlRnpkyE.sq_IntVectPush(_W8Uluv7kc); 
 L72yTlRnpkyE.sq_IntVectPush(nPrliKITohDVclTV8kh); 
 L72yTlRnpkyE.sq_AddSetStatePacket(137, STATE_PRIORITY_USER, true); 
 break;
 case 2:
 if(!isAvengerAwakenning(L72yTlRnpkyE)) 
 {
 L72yTlRnpkyE.sq_IntVectClear();
 L72yTlRnpkyE.sq_IntVectPush(3); 
 L72yTlRnpkyE.sq_AddSetStatePacket(137, STATE_PRIORITY_USER, true); 
 }
 else
 L72yTlRnpkyE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 3:
 L72yTlRnpkyE.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

