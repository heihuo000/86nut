
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
 
 
 
 
 


 
function checkExecutableSkill_swordman_meteorsword(jaXF6dZ6R2gbOm)
{
 if(!jaXF6dZ6R2gbOm) return false; 
 local j0VhQBrogEnaGdDh = jaXF6dZ6R2gbOm.sq_IsUseSkill(235); 
 if(j0VhQBrogEnaGdDh) 
 {
 
 jaXF6dZ6R2gbOm.sq_IntVectClear();
 jaXF6dZ6R2gbOm.sq_IntVectPush(0);
 jaXF6dZ6R2gbOm.sq_IntVectPush(jaXF6dZ6R2gbOm.getWeaponSubType()); 
 jaXF6dZ6R2gbOm.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_meteorsword(jaXF6dZ6R2gbOm)
{
 if(!jaXF6dZ6R2gbOm) return false; 
 local j0VhQBrogEnaGdDh = jaXF6dZ6R2gbOm.sq_GetState(); 
 if(j0VhQBrogEnaGdDh == STATE_STAND) 
 return true; 
 if(j0VhQBrogEnaGdDh == STATE_ATTACK) 
 {
 return jaXF6dZ6R2gbOm.sq_IsCommandEnable(235); 
 }
 return true; 
} ;


 
function onSetState_swordman_meteorsword(SG5mr4jN956J, rJRpsrmRSbKulEBkp, Sc3DmgxApX8z5D9, fDczqpbvNuyoSl)
{
 if(!SG5mr4jN956J) return; 
 local WKPhsloitHWCUcil5 = SG5mr4jN956J.sq_GetVectorData(Sc3DmgxApX8z5D9, 0); 
 SG5mr4jN956J.setSkillSubState(WKPhsloitHWCUcil5); 
 SG5mr4jN956J.sq_StopMove(); 
 switch(WKPhsloitHWCUcil5)
 {
 case 0:
 SG5mr4jN956J.sq_SetSuperArmor(0); 
 SG5mr4jN956J.sq_SetCurrentAnimation(144); 
 local idqVJwgMnHo = SG5mr4jN956J.sq_GetVectorData(Sc3DmgxApX8z5D9, 1); 
 SG5mr4jN956J.getVar().clear_vector(); 
 SG5mr4jN956J.getVar().push_vector(idqVJwgMnHo); 
 SG5mr4jN956J.sq_IsEnterSkillLastKeyUnits(235); 
 break;
 case 1:
 SG5mr4jN956J.sq_SetCurrentAnimation(145); 
 if(SG5mr4jN956J.sq_IsMyControlObject())
 {
 local p_KjEEddHLNc = sq_GetSkillLevel(SG5mr4jN956J, 235); 
 local OQhL0UH9eE5pW0 = sq_GetLevelData(SG5mr4jN956J, 235, 0, p_KjEEddHLNc); 
 local wfXxM4TE4yXY6Aoig = sq_GetLevelData(SG5mr4jN956J, 235, 1, p_KjEEddHLNc); 
 SG5mr4jN956J.getVar().push_vector(OQhL0UH9eE5pW0); 
 SG5mr4jN956J.getVar().push_vector(wfXxM4TE4yXY6Aoig); 
 
 SG5mr4jN956J.getVar().clear_ct_vector(); 
 SG5mr4jN956J.getVar().push_ct_vector(); 
 local OwEM7b8x0_fS70WHakB = SG5mr4jN956J.getVar().get_ct_vector(0); 
 OwEM7b8x0_fS70WHakB.Reset(); 
 OwEM7b8x0_fS70WHakB.Start(10000, 0); 
 }
 break;
 case 2:
 SG5mr4jN956J.sq_SetCurrentAnimation(146); 
 break;
 case 3:
 SG5mr4jN956J.sq_ZStop(); 
 SG5mr4jN956J.sq_SetCurrentAnimation(147); 
 
 sq_CreateDrawOnlyObject(SG5mr4jN956J, "character/swordman/effect/animation/meteorsword/up_meteorsword_start_dust.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_CreateDrawOnlyObject(SG5mr4jN956J, "character/swordman/effect/animation/meteorsword/up_meteorsword_upeffect.ani", ENUM_DRAWLAYER_NORMAL, true);
 if(SG5mr4jN956J.sq_IsMyControlObject())
 {
 local wfXxM4TE4yXY6Aoig = SG5mr4jN956J.sq_GetVectorData(Sc3DmgxApX8z5D9, 1); 
 SG5mr4jN956J.getVar().set_vector(1, wfXxM4TE4yXY6Aoig); 
 
 SG5mr4jN956J.sq_StartWrite();
 SG5mr4jN956J.sq_WriteDword(235); 
 SG5mr4jN956J.sq_WriteDword(1); 
 SG5mr4jN956J.sq_WriteDword(SG5mr4jN956J.sq_GetBonusRateWithPassive(235, 235, 2, 1.0 + wfXxM4TE4yXY6Aoig / 100.0)); 
 SG5mr4jN956J.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 sq_SetMyShake(SG5mr4jN956J, 4, 100); 
 }
 local p_KjEEddHLNc = sq_GetSkillLevel(SG5mr4jN956J, 235); 
 SG5mr4jN956J.getVar("state").clear_vector(); 
 local ghKaV9lwYR = SG5mr4jN956J.getVar("state"); 
 ghKaV9lwYR.push_vector(1); 
 ghKaV9lwYR.push_vector(SG5mr4jN956J.getXPos()); 
 ghKaV9lwYR.push_vector(SG5mr4jN956J.getYPos()); 
 ghKaV9lwYR.push_vector(sq_GetLevelData(SG5mr4jN956J, 235, 3, p_KjEEddHLNc)); 
 ghKaV9lwYR.push_vector(sq_GetLevelData(SG5mr4jN956J, 235, 4, p_KjEEddHLNc)); 
 ghKaV9lwYR.push_vector(0); 
 break;
 case 4:
 SG5mr4jN956J.sq_ZStop(); 
 SG5mr4jN956J.sq_SetCurrentAnimation(148); 
 if(SG5mr4jN956J.sq_IsMyControlObject())
 {
 
 local c7DW523x5DCoeQ719 = sq_flashScreen(SG5mr4jN956J, 50, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 SG5mr4jN956J.getVar("flashobj").clear_obj_vector(); 
 SG5mr4jN956J.getVar("flashobj").push_obj_vector(c7DW523x5DCoeQ719); 
 }
 SG5mr4jN956J.getVar("state").set_vector(0, 3); 
 break;
 case 5:
 SG5mr4jN956J.sq_SetCurrentAnimation(149); 
 SG5mr4jN956J.sq_SetCurrentAttackInfo(92); 
 SG5mr4jN956J.sq_SetCurrentAttackBonusRate(SG5mr4jN956J.sq_GetBonusRateWithPassive(235,
 235,
 10,
 1.0 + SG5mr4jN956J.getVar().get_vector(1) / 100.0)); 
 RemoveAllFlash(SG5mr4jN956J); 
 if(SG5mr4jN956J.sq_IsMyControlObject())
 {
 sq_SetMyShake(SG5mr4jN956J, 6, 200); 
 sq_flashScreen(SG5mr4jN956J, 50, 100, 0, 150, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 SG5mr4jN956J.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onEndState_swordman_meteorsword(YaADf1nEVn0z5YnhYljVDVD, vvBxy6C4lo9qnJ1wm)
{
 if(!YaADf1nEVn0z5YnhYljVDVD) return;
 if(vvBxy6C4lo9qnJ1wm != 235)
 {
 RemoveAllAni(YaADf1nEVn0z5YnhYljVDVD); 
 RemoveAllFlash(YaADf1nEVn0z5YnhYljVDVD); 
 YaADf1nEVn0z5YnhYljVDVD.sq_RemoveSuperArmor(0); 
 }
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onProc_swordman_meteorsword(YaADf1nEVn0z5YnhYljVDVD)
{
 if(!YaADf1nEVn0z5YnhYljVDVD) return;
 local vvBxy6C4lo9qnJ1wm = YaADf1nEVn0z5YnhYljVDVD.getSkillSubState(); 
 switch(vvBxy6C4lo9qnJ1wm)
 {
 case 3:
 local helIbZ5mRLe97YnysK43d = YaADf1nEVn0z5YnhYljVDVD.getVar("state").get_vector(0);
 switch(helIbZ5mRLe97YnysK43d)
 {
 case 1:
 local OB0GvfKJjtd0TQ2AM4hIx3 = YaADf1nEVn0z5YnhYljVDVD.sq_GetCurrentAni(); 
 local jqxRpcq6vhzmvIAdOOGkMD = sq_GetCurrentTime(OB0GvfKJjtd0TQ2AM4hIx3); 
 local wNeEZ0YUsW4 = 150; 
 local I1Anay7KEq1b3yOI_UEL = sq_GetUniformVelocity(0, 1000, jqxRpcq6vhzmvIAdOOGkMD, wNeEZ0YUsW4); 
 sq_setCurrentAxisPos(YaADf1nEVn0z5YnhYljVDVD, 2, I1Anay7KEq1b3yOI_UEL); 
 
 if(jqxRpcq6vhzmvIAdOOGkMD >= wNeEZ0YUsW4)
 {
 RemoveAllAni(YaADf1nEVn0z5YnhYljVDVD); 
 local elU7Zo6KA8Mk_7sN9 = YaADf1nEVn0z5YnhYljVDVD.getXPos();
 local aKVvLBUmRoNUYMeq = YaADf1nEVn0z5YnhYljVDVD.getYPos();
 YaADf1nEVn0z5YnhYljVDVD.getVar("state").set_vector(1, elU7Zo6KA8Mk_7sN9); 
 YaADf1nEVn0z5YnhYljVDVD.getVar("state").set_vector(2, aKVvLBUmRoNUYMeq); 
 YaADf1nEVn0z5YnhYljVDVD.getVar("state").set_vector(5, jqxRpcq6vhzmvIAdOOGkMD); 
 
 if(YaADf1nEVn0z5YnhYljVDVD.sq_IsMyControlObject())
 {
 local T4klB1_Z13548fPJrj = sq_CreateAnimation("", "character/swordman/effect/animation/meteorsword/meteorsword_target.ani"); 
 local YnQAkaYGZ3 = sq_CreatePooledObject(T4klB1_Z13548fPJrj, true); 
 sq_SetCurrentDirection(YnQAkaYGZ3, YaADf1nEVn0z5YnhYljVDVD.getDirection()); 
 YnQAkaYGZ3.setCurrentPos(elU7Zo6KA8Mk_7sN9, aKVvLBUmRoNUYMeq, 0); 
 YnQAkaYGZ3 = sq_SetEnumDrawLayer(YnQAkaYGZ3, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(YaADf1nEVn0z5YnhYljVDVD, YnQAkaYGZ3, OBJECTTYPE_DRAWONLY, false); 
 YaADf1nEVn0z5YnhYljVDVD.getVar("aniobj").push_obj_vector(YnQAkaYGZ3); 
 }
 YaADf1nEVn0z5YnhYljVDVD.getVar("state").set_vector(0, 2); 
 }
 break;
 }
 break;
 case 4:
 local helIbZ5mRLe97YnysK43d = YaADf1nEVn0z5YnhYljVDVD.getVar("state").get_vector(0); 
 switch(helIbZ5mRLe97YnysK43d)
 {
 case 7:
 local jqxRpcq6vhzmvIAdOOGkMD = sq_GetCurrentTime(YaADf1nEVn0z5YnhYljVDVD.getCurrentAnimation()) - YaADf1nEVn0z5YnhYljVDVD.getVar("state").get_vector(5); 
 local wNeEZ0YUsW4 = 150; 
 local I1Anay7KEq1b3yOI_UEL = sq_GetUniformVelocity(1000, 0, jqxRpcq6vhzmvIAdOOGkMD, wNeEZ0YUsW4);
 sq_setCurrentAxisPos(YaADf1nEVn0z5YnhYljVDVD, 2, I1Anay7KEq1b3yOI_UEL); 
 if(YaADf1nEVn0z5YnhYljVDVD.sq_IsMyControlObject())
 if(jqxRpcq6vhzmvIAdOOGkMD >= wNeEZ0YUsW4)
 {
 YaADf1nEVn0z5YnhYljVDVD.sq_IntVectClear();
 YaADf1nEVn0z5YnhYljVDVD.sq_IntVectPush(5);
 YaADf1nEVn0z5YnhYljVDVD.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true);
 }
 break;
 }
 break;
 }
} ;

function onProcCon_swordman_meteorsword(tderjy9h9NwFLDXXP9Gptm)
{
 if(!tderjy9h9NwFLDXXP9Gptm) return;
 local PBUMZ_dch2oZdxRGn4Gjj = tderjy9h9NwFLDXXP9Gptm.getSkillSubState(); 
 switch(PBUMZ_dch2oZdxRGn4Gjj)
 {
 case 1:
 case 2:
 local uv1hZ1T2SQcmvuSuujFzFAQL = tderjy9h9NwFLDXXP9Gptm.getVar().get_ct_vector(0); 
 if(!uv1hZ1T2SQcmvuSuujFzFAQL)return;
 local c6dutj9fAHqBx6sLd = uv1hZ1T2SQcmvuSuujFzFAQL.Get(); 
 local SfFMd3iHgRN9gV = tderjy9h9NwFLDXXP9Gptm.getVar().get_vector(1); 
 if(!tderjy9h9NwFLDXXP9Gptm.isDownSkillLastKey()) 
 {
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectClear();
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectPush(3);
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectPush(
 sq_GetUniformVelocity(0, tderjy9h9NwFLDXXP9Gptm.getVar().get_vector(2), c6dutj9fAHqBx6sLd, SfFMd3iHgRN9gV) 
 ); 
 tderjy9h9NwFLDXXP9Gptm.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true);
 return;
 }
 if(PBUMZ_dch2oZdxRGn4Gjj == 1)
 if(c6dutj9fAHqBx6sLd >= SfFMd3iHgRN9gV) 
 {
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectClear();
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectPush(2);
 tderjy9h9NwFLDXXP9Gptm.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true);
 }
 break;
 case 3:
 local XxVoFbqdeDlQ = tderjy9h9NwFLDXXP9Gptm.getVar("state").get_vector(0);
 switch(XxVoFbqdeDlQ)
 {
 case 2:
 local HplEkzLcAkAoMj = tderjy9h9NwFLDXXP9Gptm.getVar("state"); 
 local c6dutj9fAHqBx6sLd = sq_GetCurrentTime(tderjy9h9NwFLDXXP9Gptm.sq_GetCurrentAni()) - HplEkzLcAkAoMj.get_vector(5); 
 local Fn1WeCzN15wdOV5Y82 = HplEkzLcAkAoMj.get_vector(4); 
 local _G68JDw0fvwY = HplEkzLcAkAoMj.get_vector(3); 
 local wKOpz9tJJ1 = 0; 
 local Ns3Zv89zWtQFTje = 0; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 Ns3Zv89zWtQFTje -= _G68JDw0fvwY;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 Ns3Zv89zWtQFTje += _G68JDw0fvwY;
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 wKOpz9tJJ1 -= _G68JDw0fvwY;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 wKOpz9tJJ1 += _G68JDw0fvwY;
 if(wKOpz9tJJ1 != 0 || Ns3Zv89zWtQFTje != 0)
 {
 local qX5lJh9aLrDw_Gd9FOwxPo = tderjy9h9NwFLDXXP9Gptm.getVar("aniobj").get_obj_vector(0); 
 local ffP5Fl44XuatVAmmb = HplEkzLcAkAoMj.get_vector(1); 
 local F1odNzFZj0Vt = HplEkzLcAkAoMj.get_vector(2); 
 local yOgK56adLG8LCYQjhr9T = tderjy9h9NwFLDXXP9Gptm.sq_findNearLinearMovableXPos(ffP5Fl44XuatVAmmb + wKOpz9tJJ1, F1odNzFZj0Vt,
 ffP5Fl44XuatVAmmb, F1odNzFZj0Vt, 1); 
 local MirXhypC148Umr = tderjy9h9NwFLDXXP9Gptm.sq_findNearLinearMovableYPos(yOgK56adLG8LCYQjhr9T, F1odNzFZj0Vt + Ns3Zv89zWtQFTje,
 yOgK56adLG8LCYQjhr9T, F1odNzFZj0Vt, 1); 
 sq_setCurrentAxisPos(qX5lJh9aLrDw_Gd9FOwxPo, 0, yOgK56adLG8LCYQjhr9T); 
 HplEkzLcAkAoMj.set_vector(1, yOgK56adLG8LCYQjhr9T); 
 sq_setCurrentAxisPos(qX5lJh9aLrDw_Gd9FOwxPo, 1, MirXhypC148Umr); 
 HplEkzLcAkAoMj.set_vector(2, MirXhypC148Umr); 
 }
 if(c6dutj9fAHqBx6sLd >= Fn1WeCzN15wdOV5Y82) 
 {
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectClear();
 tderjy9h9NwFLDXXP9Gptm.sq_IntVectPush(4);
 tderjy9h9NwFLDXXP9Gptm.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true);
 return;
 }
 break;
 }
 break;
 }
} ;

function onChangeSkillEffect_swordman_meteorsword(gOjrE1u40TWg, oENqJHnk3lA, _g0VyJaWBmPAy09oik6brx)
{
 if(!gOjrE1u40TWg) return;
 switch(oENqJHnk3lA)
 {
 case 235:
 local Y5NOUqSryUf = _g0VyJaWBmPAy09oik6brx.readDword(); 
 switch(Y5NOUqSryUf)
 {
 case 1:
 local Iy9DGuGwWXrCJUy9Esr = gOjrE1u40TWg.getVar("state"); 
 sq_setCurrentAxisPos(gOjrE1u40TWg, 0, Iy9DGuGwWXrCJUy9Esr.get_vector(1)); 
 sq_setCurrentAxisPos(gOjrE1u40TWg, 1, Iy9DGuGwWXrCJUy9Esr.get_vector(2)); 
 Iy9DGuGwWXrCJUy9Esr.set_vector(0, 7);
 Iy9DGuGwWXrCJUy9Esr.set_vector(5, sq_GetCurrentTime(gOjrE1u40TWg.sq_GetCurrentAni())); 
 break;
 }
 break;
 }
} ;

 
 
function onTimeEvent_swordman_meteorsword(MZJkWei3Ck5hldWU5u, PdS2a7ApkG, eD_buMT_5jAj)
{
 if(!MZJkWei3Ck5hldWU5u)return false;
 if(!MZJkWei3Ck5hldWU5u.isMyControlObject())return false;
 switch(PdS2a7ApkG)
 {
 case 0: 
 local ERYATPBqaVfee = MZJkWei3Ck5hldWU5u.getVar("state"); 
 local WpKZKySfahC6R26wQVVvcI = MZJkWei3Ck5hldWU5u.getVar("createInfo"); 
 local _YOLMPJEs387UynZ = WpKZKySfahC6R26wQVVvcI.get_vector(1); 
 local QqpuHn5C49sl = WpKZKySfahC6R26wQVVvcI.get_vector(2); 
 local SsJLKt8gDYxFQ2 = ERYATPBqaVfee.get_vector(1) + sq_getRandom(_YOLMPJEs387UynZ / -1, _YOLMPJEs387UynZ); 
 local VkB21A1sgeq6RNCmx = ERYATPBqaVfee.get_vector(2) + sq_getRandom(QqpuHn5C49sl / -1, QqpuHn5C49sl); 
 
 MZJkWei3Ck5hldWU5u.sq_StartWrite();
 MZJkWei3Ck5hldWU5u.sq_WriteDword(235); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(2); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(WpKZKySfahC6R26wQVVvcI.get_vector(0)); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(MZJkWei3Ck5hldWU5u.getVar().get_vector(0)); 
 if(MZJkWei3Ck5hldWU5u.getVar().get_vector(0) == 1) 
 {
 MZJkWei3Ck5hldWU5u.sq_WriteDword(WpKZKySfahC6R26wQVVvcI.get_vector(3)); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(WpKZKySfahC6R26wQVVvcI.get_vector(4)); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(WpKZKySfahC6R26wQVVvcI.get_vector(5)); 
 MZJkWei3Ck5hldWU5u.sq_WriteDword(WpKZKySfahC6R26wQVVvcI.get_vector(6)); 
 }
 sq_SendCreatePassiveObjectPacketPos(MZJkWei3Ck5hldWU5u, 24370, 0, SsJLKt8gDYxFQ2, VkB21A1sgeq6RNCmx, 1000);
 break;
 }
 return false;
} ;

 
function getScrollBasisPos_swordman_meteorsword(rnljU5JXsuiOQ3NOp60FB)
{
 if(!rnljU5JXsuiOQ3NOp60FB) return false;
 if(!rnljU5JXsuiOQ3NOp60FB.sq_IsMyControlObject()) return false;
 local Xd3gv_DWrtDdETDoItdqSZVr = rnljU5JXsuiOQ3NOp60FB.getSkillSubState(); 
 if(Xd3gv_DWrtDdETDoItdqSZVr == 4)
 {
 local PHn9LyQF4U6fi = rnljU5JXsuiOQ3NOp60FB.getVar("state"); 
 local L7A33BrlpB0jFkGy_j = PHn9LyQF4U6fi.get_vector(0); 
 switch(L7A33BrlpB0jFkGy_j)
 {
 case 3:
 local oJwtldMwmnMUChYv30JLi0 = rnljU5JXsuiOQ3NOp60FB.sq_GetCurrentAni(); 
 local QE8ll9_HIYb7P = sq_GetCurrentTime(oJwtldMwmnMUChYv30JLi0); 
 local XoO4SYCsu508CAt9mm9 = 300; 
 local PRaCb2QPi0giVKqP8Gv = sq_GetUniformVelocity(rnljU5JXsuiOQ3NOp60FB.getXPos(),
 PHn9LyQF4U6fi.get_vector(1), QE8ll9_HIYb7P, XoO4SYCsu508CAt9mm9); 
 local j9s2kayyWn6NN7M = sq_GetUniformVelocity(rnljU5JXsuiOQ3NOp60FB.getYPos(),
 PHn9LyQF4U6fi.get_vector(2), QE8ll9_HIYb7P, XoO4SYCsu508CAt9mm9); 
 rnljU5JXsuiOQ3NOp60FB.sq_SetCameraScrollPosition(PRaCb2QPi0giVKqP8Gv, j9s2kayyWn6NN7M, 0); 
 if(QE8ll9_HIYb7P >= XoO4SYCsu508CAt9mm9 / 2) 
 {
 rnljU5JXsuiOQ3NOp60FB.getVar("createInfo").clear_vector(); 
 local MGnP4e4uOPe3m = rnljU5JXsuiOQ3NOp60FB.getVar("createInfo"); 
 local qD3GovoizeFs7AXkp = sq_GetSkillLevel(rnljU5JXsuiOQ3NOp60FB, 235); 
 MGnP4e4uOPe3m.push_vector(
 rnljU5JXsuiOQ3NOp60FB.sq_GetBonusRateWithPassive(
 235,
 235, 5, 1.0 + rnljU5JXsuiOQ3NOp60FB.getVar().get_vector(1) / 100.0)
 ); 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 8, qD3GovoizeFs7AXkp)); 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 9, qD3GovoizeFs7AXkp)); 
 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 11, qD3GovoizeFs7AXkp)); 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 12, qD3GovoizeFs7AXkp)); 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 13, qD3GovoizeFs7AXkp)); 
 MGnP4e4uOPe3m.push_vector(sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 14, qD3GovoizeFs7AXkp)); 
 rnljU5JXsuiOQ3NOp60FB.setTimeEvent(0,
 sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 7, qD3GovoizeFs7AXkp),
 sq_GetLevelData(rnljU5JXsuiOQ3NOp60FB, 235, 6, qD3GovoizeFs7AXkp), true); 
 RemoveAllAni(rnljU5JXsuiOQ3NOp60FB); 
 PHn9LyQF4U6fi.set_vector(0, 4); 
 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rnljU5JXsuiOQ3NOp60FB, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rnljU5JXsuiOQ3NOp60FB, "character/swordman/meteorsword/ap_meteorsword_stateoflimit.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(rnljU5JXsuiOQ3NOp60FB, "character/swordman/meteorsword/ap_meteorsword_stateoflimit.nut");
 CNSquirrelAppendage.sq_AppendAppendage(rnljU5JXsuiOQ3NOp60FB, rnljU5JXsuiOQ3NOp60FB, 248, true, "character/swordman/meteorsword/ap_meteorsword_stateoflimit.nut", true); 
 }
 }
 return true;
 case 4:
 if(!rnljU5JXsuiOQ3NOp60FB.isExistTimeEvent(0)) 
 {
 PHn9LyQF4U6fi.set_vector(5, sq_GetCurrentTime(rnljU5JXsuiOQ3NOp60FB.sq_GetCurrentAni())); 
 PHn9LyQF4U6fi.set_vector(0, 5); 
 }
 return true;
 case 5:
 local XoO4SYCsu508CAt9mm9 = 300; 
 local QE8ll9_HIYb7P = sq_GetCurrentTime(rnljU5JXsuiOQ3NOp60FB.sq_GetCurrentAni()) - PHn9LyQF4U6fi.get_vector(5) + XoO4SYCsu508CAt9mm9 / 2; 
 local PRaCb2QPi0giVKqP8Gv = sq_GetUniformVelocity(rnljU5JXsuiOQ3NOp60FB.getXPos(),
 PHn9LyQF4U6fi.get_vector(1), QE8ll9_HIYb7P, XoO4SYCsu508CAt9mm9); 
 local j9s2kayyWn6NN7M = sq_GetUniformVelocity(rnljU5JXsuiOQ3NOp60FB.getYPos(),
 PHn9LyQF4U6fi.get_vector(2), QE8ll9_HIYb7P, XoO4SYCsu508CAt9mm9); 
 rnljU5JXsuiOQ3NOp60FB.sq_SetCameraScrollPosition(PRaCb2QPi0giVKqP8Gv, j9s2kayyWn6NN7M, 0); 
 if(QE8ll9_HIYb7P >= XoO4SYCsu508CAt9mm9) 
 {
 PHn9LyQF4U6fi.set_vector(0, 6); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(1);
 sq_SendChangeSkillEffectPacket(rnljU5JXsuiOQ3NOp60FB, 235); 
 }
 return true;
 case 6:
 case 7:
 rnljU5JXsuiOQ3NOp60FB.sq_SetCameraScrollPosition(PHn9LyQF4U6fi.get_vector(1), PHn9LyQF4U6fi.get_vector(2), 0); 
 return true;
 }
 }
 return false;
} ;

 
function onEndCurrentAni_swordman_meteorsword(N46TK2Nn6Awa9YUcY)
{
 if(!N46TK2Nn6Awa9YUcY) return; 
 if(!N46TK2Nn6Awa9YUcY.sq_IsMyControlObject()) return; 
 local s96w70tlKbWhS = N46TK2Nn6Awa9YUcY.getSkillSubState(); 
 switch(s96w70tlKbWhS)
 {
 case 0:
 case 2:
 N46TK2Nn6Awa9YUcY.sq_IntVectClear();
 N46TK2Nn6Awa9YUcY.sq_IntVectPush(s96w70tlKbWhS + 1);
 N46TK2Nn6Awa9YUcY.sq_AddSetStatePacket(235, STATE_PRIORITY_USER, true);
 break;
 case 5:
 N46TK2Nn6Awa9YUcY.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;



