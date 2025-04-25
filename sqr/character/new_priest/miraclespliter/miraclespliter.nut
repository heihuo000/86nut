
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_priest_miraclespliter(L72yTlRnpkyE)
{
 if(!L72yTlRnpkyE) return false; 
 local wGGgoJI9yMdGgVc6GD = L72yTlRnpkyE.sq_IsUseSkill(247); 
 if(wGGgoJI9yMdGgVc6GD) 
 {
 L72yTlRnpkyE.sq_IntVectClear();
 L72yTlRnpkyE.sq_IntVectPush(0); 
 L72yTlRnpkyE.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_miraclespliter(dxLOEFUc71tEtkFyt9tV0Y9)
{
 if(!dxLOEFUc71tEtkFyt9tV0Y9) return false; 
 local xXDsZErYIbM1SqH6q = dxLOEFUc71tEtkFyt9tV0Y9.sq_GetState(); 
 if(xXDsZErYIbM1SqH6q == STATE_STAND) 
 return true; 
 if(xXDsZErYIbM1SqH6q == STATE_ATTACK) 
 {
 return dxLOEFUc71tEtkFyt9tV0Y9.sq_IsCommandEnable(247); 
 }
 return true; 
} ;

 
function onSetState_priest_miraclespliter(IN4zOvedT4BV2V9nbm1C, agN2G3xN99I4DRlMAsEa, Iyo9ego9DmVz1k, ykClPhxCyLupOQFrjW)
{
 if(!IN4zOvedT4BV2V9nbm1C) return; 
 IN4zOvedT4BV2V9nbm1C.sq_StopMove(); 
 local R8UZWYeHgWDESwZL = IN4zOvedT4BV2V9nbm1C.sq_GetVectorData(Iyo9ego9DmVz1k, 0); 
 IN4zOvedT4BV2V9nbm1C.setSkillSubState(R8UZWYeHgWDESwZL); 
 switch(R8UZWYeHgWDESwZL)
 {
 case 0:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IN4zOvedT4BV2V9nbm1C, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAnimation(164);
else
 {
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAnimation(162); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IN4zOvedT4BV2V9nbm1C, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(IN4zOvedT4BV2V9nbm1C, "MSDash_Body")
 }
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAttackInfo(112);
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAttackBonusRate(IN4zOvedT4BV2V9nbm1C.sq_GetBonusRateWithPassive(247, 247, 0, 1.0)); 
 IN4zOvedT4BV2V9nbm1C.getVar().clear_vector(); 
 IN4zOvedT4BV2V9nbm1C.getVar().push_vector(IN4zOvedT4BV2V9nbm1C.getXPos()); 
 IN4zOvedT4BV2V9nbm1C.getVar().clear_obj_vector(); 
 break;
 case 1:
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IN4zOvedT4BV2V9nbm1C, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAnimation(165);
 else
 {
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAnimation(163);
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IN4zOvedT4BV2V9nbm1C, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(IN4zOvedT4BV2V9nbm1C, "MSAtk_Body")
 }
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAttackInfo(113);
 IN4zOvedT4BV2V9nbm1C.sq_SetCurrentAttackBonusRate(IN4zOvedT4BV2V9nbm1C.sq_GetBonusRateWithPassive(247, 247, 1, 1.0)); 
 IN4zOvedT4BV2V9nbm1C.sq_PlaySound("PR_MIRACLE_SPLITER"); 
 break;
 }
 IN4zOvedT4BV2V9nbm1C.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onProc_priest_miraclespliter(VKn8JGgNe6Hn)
{
 if(!VKn8JGgNe6Hn) return;
 local BKFPbRnUFHSFd = VKn8JGgNe6Hn.getSkillSubState(); 
 if(BKFPbRnUFHSFd == 0 && VKn8JGgNe6Hn.getVar().size_vector() > 0)
 {
 local XnD8VJwgQVQG3 = VKn8JGgNe6Hn.getCurrentAnimation(); 
 local s5yqQV8JVsvsxc72GdzQvjk = sq_GetCurrentTime(XnD8VJwgQVQG3); 
 local CP4niK9AmYzOmQrl42RjRWsU = XnD8VJwgQVQG3.getDelaySum(false); 
 local E8taxfFTiiKKWb = sq_GetDistancePos(VKn8JGgNe6Hn.getVar().get_vector(0), 
 VKn8JGgNe6Hn.getDirection(),
 sq_GetAccel(0, 240, s5yqQV8JVsvsxc72GdzQvjk, CP4niK9AmYzOmQrl42RjRWsU, true)); 
 if(VKn8JGgNe6Hn.isMovablePos(E8taxfFTiiKKWb, VKn8JGgNe6Hn.getYPos()))
 sq_setCurrentAxisPos(VKn8JGgNe6Hn, 0, E8taxfFTiiKKWb); 
 else
 VKn8JGgNe6Hn.getVar().clear_vector(); 
 }
} ;

function onKeyFrameFlag_priest_miraclespliter(yeF81QcR4FtqvaQKqr, HZuxHYUR_xYzLgJ5Vww)
{
 if(!yeF81QcR4FtqvaQKqr) return;
 local O7I6BDUXe1 = yeF81QcR4FtqvaQKqr.getSkillSubState(); 
 if(O7I6BDUXe1 == 0)
 {
 switch(HZuxHYUR_xYzLgJ5Vww)
 {
 case 1:
 sq_AddDrawOnlyAniFromParent(yeF81QcR4FtqvaQKqr, "character/priest/effect/animation/miraclespliter/msdashstonea_eff_03.ani", -20, 30, 0); 
 break;
 case 2:
 sq_AddDrawOnlyAniFromParent(yeF81QcR4FtqvaQKqr, "character/priest/effect/animation/miraclespliter/msdashstoneb_eff_03.ani", 0, 35, 0); 
 break;
 case 3:
 sq_AddDrawOnlyAniFromParent(yeF81QcR4FtqvaQKqr, "character/priest/effect/animation/miraclespliter/msdashstonea_eff_03.ani", -4, 5, 0); 
 break;
 }
 switch(HZuxHYUR_xYzLgJ5Vww)
 {
 case 1:
 case 2:
 case 3:
 yeF81QcR4FtqvaQKqr.resetHitObjectList(); 
 sq_AddDrawOnlyAniFromParent(yeF81QcR4FtqvaQKqr, "character/priest/effect/animation/miraclespliter/msdash_nndasheff.ani", 0, 0, 0); 
 break;
 }
 }
 else if(O7I6BDUXe1 == 1)
 {
 if(HZuxHYUR_xYzLgJ5Vww == 1)
 {
 sq_SetMyShake(yeF81QcR4FtqvaQKqr, 5, 240); 
 if(yeF81QcR4FtqvaQKqr.sq_IsMyControlObject())
 sq_flashScreen(yeF81QcR4FtqvaQKqr, 0, 0, 240, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 }
 return true;
} ;

function onAttack_priest_miraclespliter(_OjswvRiJy7F6C, ObaJ91lPzJANno, qts4lnsnobFpV3le, KaeluLvon_B)
{
 if(!_OjswvRiJy7F6C) return;
 if(KaeluLvon_B || !ObaJ91lPzJANno.isObjectType(OBJECTTYPE_ACTIVE))return;
 local bm5_gyXl1zSoM2odO = _OjswvRiJy7F6C.getSkillSubState(); 
 if(bm5_gyXl1zSoM2odO == 0)
 {
 if(sq_IsGrabable(_OjswvRiJy7F6C, ObaJ91lPzJANno) 
 && sq_IsHoldable(_OjswvRiJy7F6C, ObaJ91lPzJANno) 
 && !sq_IsFixture(ObaJ91lPzJANno)) 
 {
 if(!_OjswvRiJy7F6C.getVar().is_obj_vector(ObaJ91lPzJANno)) 
 {
 _OjswvRiJy7F6C.getVar().push_obj_vector(ObaJ91lPzJANno);
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ObaJ91lPzJANno, "character/new_priest/miraclespliter/ap_miraclespliter.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(ObaJ91lPzJANno, "character/new_priest/miraclespliter/ap_miraclespliter.nut");
 
 CNSquirrelAppendage.sq_AppendAppendage(ObaJ91lPzJANno, _OjswvRiJy7F6C, 247, true, "character/new_priest/miraclespliter/ap_miraclespliter.nut", true);
 }
 }
 }
} ;

 
function onEndCurrentAni_priest_miraclespliter(nSZFySt43Yp6L)
{
 if(!nSZFySt43Yp6L) return;
 if(!nSZFySt43Yp6L.sq_IsMyControlObject()) return;
 local I7Q2tvx5AR = nSZFySt43Yp6L.getSkillSubState(); 
 if(I7Q2tvx5AR != 1)
 {
 nSZFySt43Yp6L.sq_IntVectClear();
 nSZFySt43Yp6L.sq_IntVectPush(I7Q2tvx5AR + 1); 
 nSZFySt43Yp6L.sq_AddSetStatePacket(247, STATE_PRIORITY_USER, true); 
 }
 else
 nSZFySt43Yp6L.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


ADDEXTRANUT <- 0 