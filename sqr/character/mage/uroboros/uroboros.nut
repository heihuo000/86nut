
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function checkExecutableSkill_mage_uroboros(uwmt2Mm24n2Y2GEQKWfP5UTu)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return false; 
 local t8M_PXBs_53uwX = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IsUseSkill(134); 
 if(t8M_PXBs_53uwX) 
 {
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectClear();
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IntVectPush(0);
 uwmt2Mm24n2Y2GEQKWfP5UTu.sq_AddSetStatePacket(134, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_uroboros(uwmt2Mm24n2Y2GEQKWfP5UTu)
{
 if(!uwmt2Mm24n2Y2GEQKWfP5UTu) return false; 
 local t8M_PXBs_53uwX = uwmt2Mm24n2Y2GEQKWfP5UTu.sq_GetState(); 
 if(t8M_PXBs_53uwX == STATE_STAND) 
 return true; 
 if(t8M_PXBs_53uwX == STATE_ATTACK) 
 {
 return uwmt2Mm24n2Y2GEQKWfP5UTu.sq_IsCommandEnable(134); 
 }
 return true; 
} ;

 
function onSetState_mage_uroboros(EUS09I5XEWSNJpMZ80wPDe, DM_j74uKMPtAxxSky4f7vva, ozWuUOO3aD, wquMHdADyE)
{
 if(!EUS09I5XEWSNJpMZ80wPDe) return; 
 local QhgmVTg5drTBuTx0wi = EUS09I5XEWSNJpMZ80wPDe.sq_GetVectorData(ozWuUOO3aD, 0); 
 EUS09I5XEWSNJpMZ80wPDe.setSkillSubState(QhgmVTg5drTBuTx0wi); 
 EUS09I5XEWSNJpMZ80wPDe.sq_SetCurrentAttackInfo(50); 
 local phIlPu_6nS = EUS09I5XEWSNJpMZ80wPDe.sq_GetBonusRateWithPassive(134, 134, 1, 1.0); 
 EUS09I5XEWSNJpMZ80wPDe.sq_SetCurrentAttackBonusRate(phIlPu_6nS); 
 switch(QhgmVTg5drTBuTx0wi)
 {
 case 0: 
 EUS09I5XEWSNJpMZ80wPDe.sq_StopMove(); 
 EUS09I5XEWSNJpMZ80wPDe.sq_SetCurrentAnimation(130);
 EUS09I5XEWSNJpMZ80wPDe.sq_PlaySound("WZ_UROBOROS");
 EUS09I5XEWSNJpMZ80wPDe.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * 1.5).tointeger(), 1.0, 1.0); 
 break;
 case 1: 
 EUS09I5XEWSNJpMZ80wPDe.sq_SetCurrentAnimation(131);
 local F5jWNeL6D4YyjHgt0assn = sq_GetSkillLevel(EUS09I5XEWSNJpMZ80wPDe, 134); 
 local dlwGBUpBbKpQxmvUU = EUS09I5XEWSNJpMZ80wPDe.sq_GetLevelData(134, 0, F5jWNeL6D4YyjHgt0assn); 
 local i5cNv9iTs2MDrj = EUS09I5XEWSNJpMZ80wPDe.sq_GetLevelData(134, 2, F5jWNeL6D4YyjHgt0assn); 
 local dLMjqyeFJbHVJ = EUS09I5XEWSNJpMZ80wPDe.sq_GetLevelData(134, 3, F5jWNeL6D4YyjHgt0assn); 
 local KOsY2ex_iV1boa = EUS09I5XEWSNJpMZ80wPDe.sq_GetLevelData(134, 5, F5jWNeL6D4YyjHgt0assn); 
 
 
 EUS09I5XEWSNJpMZ80wPDe.setTimeEvent(0, dlwGBUpBbKpQxmvUU, 1, false); 
 
 EUS09I5XEWSNJpMZ80wPDe.setTimeEvent(1, 300, 0, false); 
 local NDRXdtObyv2BoY = getElementType_jsqq506807329(EUS09I5XEWSNJpMZ80wPDe,true); 
 if(NDRXdtObyv2BoY != ENUM_ELEMENT_NONE) 
 {
 EUS09I5XEWSNJpMZ80wPDe.setTimeEvent(2, KOsY2ex_iV1boa, 0, false); 
 EUS09I5XEWSNJpMZ80wPDe.sq_AddStateLayerAnimation(2, EUS09I5XEWSNJpMZ80wPDe.sq_CreateCNRDAnimation("effect/animation/uroboros/attack/attackset02_center.ani"), 0, -175); 
 }
 
 EUS09I5XEWSNJpMZ80wPDe.getVar().clear_timer_vector();
 EUS09I5XEWSNJpMZ80wPDe.getVar().push_timer_vector();
 local SrjpvaT7qrAuQ3gR = EUS09I5XEWSNJpMZ80wPDe.getVar().get_timer_vector(0);
 SrjpvaT7qrAuQ3gR.setParameter(i5cNv9iTs2MDrj, -1); 
 SrjpvaT7qrAuQ3gR.resetInstant(0); 
 
 EUS09I5XEWSNJpMZ80wPDe.getVar().push_timer_vector();
 local XvLSw2x57w580uwpKtG6_HNp = EUS09I5XEWSNJpMZ80wPDe.getVar().get_timer_vector(1);
 XvLSw2x57w580uwpKtG6_HNp.setParameter(10, -1); 
 XvLSw2x57w580uwpKtG6_HNp.resetInstant(0); 
 EUS09I5XEWSNJpMZ80wPDe.getVar().clear_vector();
 local nUEM7xKL54DHUvwBrg8 = EUS09I5XEWSNJpMZ80wPDe.getVar(); 
 nUEM7xKL54DHUvwBrg8.push_vector(NDRXdtObyv2BoY); 
 nUEM7xKL54DHUvwBrg8.push_vector(0); 
 nUEM7xKL54DHUvwBrg8.push_vector(0); 
 nUEM7xKL54DHUvwBrg8.push_vector(5); 
 nUEM7xKL54DHUvwBrg8.push_vector(i5cNv9iTs2MDrj); 
 nUEM7xKL54DHUvwBrg8.push_vector(dLMjqyeFJbHVJ); 
 nUEM7xKL54DHUvwBrg8.push_vector(150); 
 nUEM7xKL54DHUvwBrg8.push_vector(250); 
 nUEM7xKL54DHUvwBrg8.push_vector(sq_GetObjectTime(EUS09I5XEWSNJpMZ80wPDe)); 
 
 local MqNmBAHWbN3mn6PfL6 = sq_AttractToMe(EUS09I5XEWSNJpMZ80wPDe, 350, 0, 250);
 EUS09I5XEWSNJpMZ80wPDe.getVar().setAppendage(0, MqNmBAHWbN3mn6PfL6); 
 break;
 case 2: 
 EUS09I5XEWSNJpMZ80wPDe.sq_SetCurrentAnimation(132); 
 EUS09I5XEWSNJpMZ80wPDe.sq_AddStateLayerAnimation(-1, EUS09I5XEWSNJpMZ80wPDe.sq_CreateCNRDAnimation("effect/animation/uroboros/idle/dustunder_01.ani"), 0, 0); 
 EUS09I5XEWSNJpMZ80wPDe.sq_AddStateLayerAnimation(1, EUS09I5XEWSNJpMZ80wPDe.sq_CreateCNRDAnimation("effect/animation/uroboros/idle/dustupper_01.ani"), 0, 0); 
 local NDRXdtObyv2BoY = EUS09I5XEWSNJpMZ80wPDe.getVar().get_vector(0);
 if(NDRXdtObyv2BoY != ENUM_ELEMENT_NONE) 
 EUS09I5XEWSNJpMZ80wPDe.sq_AddStateLayerAnimation(2, EUS09I5XEWSNJpMZ80wPDe.sq_CreateCNRDAnimation("effect/animation/uroboros/attack/attackset02_center.ani"), 0, -175); 
 
 local GjHSUoO32gYu = sq_CreateDrawOnlyObject(EUS09I5XEWSNJpMZ80wPDe, "character/mage/effect/animation/uroboros/idle/shockwave.ani_01.ani", ENUM_DRAWLAYER_BOTTOM, true);
 sq_moveWithParent(EUS09I5XEWSNJpMZ80wPDe, GjHSUoO32gYu); 
 EUS09I5XEWSNJpMZ80wPDe.getVar("aniobj").clear_obj_vector(); 
 EUS09I5XEWSNJpMZ80wPDe.getVar("aniobj").push_obj_vector(GjHSUoO32gYu); 
 break;
 }
} ;

function onProc_mage_uroboros(ufHkoHybiK8QA6IhjnQeJ5PV)
{
 if(!ufHkoHybiK8QA6IhjnQeJ5PV) return;
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.getSkillSubState(); 
 if(JU4FNEF42GsnKGjw < 1) return;
 local G5opvdZvRMKv = ufHkoHybiK8QA6IhjnQeJ5PV.getVar(); 
 local wYZ0c8qSptd = sq_GetObjectTime(ufHkoHybiK8QA6IhjnQeJ5PV); 
 local AosKQAq0UaTY7oawu = G5opvdZvRMKv.get_timer_vector(0); 
 if(AosKQAq0UaTY7oawu)
 if(AosKQAq0UaTY7oawu.isOnEvent(wYZ0c8qSptd) == true)
 ufHkoHybiK8QA6IhjnQeJ5PV.resetHitObjectList(); 
 local IVnBFIYJpi1hlKC = G5opvdZvRMKv.get_timer_vector(1);
 if(IVnBFIYJpi1hlKC)
 if(IVnBFIYJpi1hlKC.isOnEvent(wYZ0c8qSptd) == true)
 {
 local K3nY2yIvjI0tZrH_xMEkNA = G5opvdZvRMKv.get_vector(1); 
 if(K3nY2yIvjI0tZrH_xMEkNA == 0)return;
 local OwAkX_uZFPazuTEof = wYZ0c8qSptd- G5opvdZvRMKv.get_vector(8); 
 local eb5UkN5l2Vxyx = 500; 
 local rbCzpGGv9GrvmAndZUteCr = ufHkoHybiK8QA6IhjnQeJ5PV.getXPos() + sq_GetUniformVelocity(0, 6 * K3nY2yIvjI0tZrH_xMEkNA, OwAkX_uZFPazuTEof, eb5UkN5l2Vxyx); 
 if(ufHkoHybiK8QA6IhjnQeJ5PV.isMovablePos(rbCzpGGv9GrvmAndZUteCr, ufHkoHybiK8QA6IhjnQeJ5PV.getYPos()))
 sq_setCurrentAxisPos(ufHkoHybiK8QA6IhjnQeJ5PV, 0, rbCzpGGv9GrvmAndZUteCr); 
 }
} ;

function onProcCon_mage_uroboros(JmtUiMivqTRQ4o)
{
 if(!JmtUiMivqTRQ4o) return;
 local usMFaSFpvPmQcULJrxRx = JmtUiMivqTRQ4o.getSkillSubState(); 
 if(usMFaSFpvPmQcULJrxRx < 1) return;
 local bWXOTpmvfSDC0fJE7P = JmtUiMivqTRQ4o.getVar(); 
 local qyPBPgFKpGj6kG4UA = bWXOTpmvfSDC0fJE7P.get_vector(1); 
 local tIltF8MFUco = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL); 
 local s6S6xdPTqo = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL); 
 
 if(tIltF8MFUco && s6S6xdPTqo
 || !tIltF8MFUco && !s6S6xdPTqo) 
 {
 if(qyPBPgFKpGj6kG4UA != 0) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_SendChangeSkillEffectPacket(JmtUiMivqTRQ4o, 134); 
 }
 }
 else if(tIltF8MFUco) 
 {
 if(qyPBPgFKpGj6kG4UA != -1) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(3); 
 sq_SendChangeSkillEffectPacket(JmtUiMivqTRQ4o, 134); 
 }
 }
 else if(s6S6xdPTqo) 
 {
 if(qyPBPgFKpGj6kG4UA != 1) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(4); 
 sq_SendChangeSkillEffectPacket(JmtUiMivqTRQ4o, 134); 
 }
 }
 local nuONTa6VI4v225FlWMVPon = bWXOTpmvfSDC0fJE7P.get_timer_vector(0); 
 if(!nuONTa6VI4v225FlWMVPon)return;
 sq_SetKeyxEnable(JmtUiMivqTRQ4o, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(JmtUiMivqTRQ4o, E_ATTACK_COMMAND)) 
 {
 local YpdaaPB6VDJMB = bWXOTpmvfSDC0fJE7P.get_vector(2); 
 local oazmmWNI4P0 = bWXOTpmvfSDC0fJE7P.get_vector(3); 
 if(YpdaaPB6VDJMB < oazmmWNI4P0) 
 {
 YpdaaPB6VDJMB += 1; 
 bWXOTpmvfSDC0fJE7P.set_vector(2, YpdaaPB6VDJMB); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetUniformVelocity(bWXOTpmvfSDC0fJE7P.get_vector(4), bWXOTpmvfSDC0fJE7P.get_vector(5), YpdaaPB6VDJMB, oazmmWNI4P0)); 
 sq_BinaryWriteDword(sq_GetUniformVelocity(bWXOTpmvfSDC0fJE7P.get_vector(6), bWXOTpmvfSDC0fJE7P.get_vector(7), YpdaaPB6VDJMB, oazmmWNI4P0)); 
 sq_SendChangeSkillEffectPacket(JmtUiMivqTRQ4o, 134); 
 }
 }
 if(usMFaSFpvPmQcULJrxRx < 2)return;
 sq_SetKeyxEnable(JmtUiMivqTRQ4o, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(JmtUiMivqTRQ4o, E_JUMP_COMMAND)) 
 onEndEff_mage_uroboros(JmtUiMivqTRQ4o); 
} ;

function onKeyFrameFlag_mage_uroboros(jO3kxWde8bnr_c, nLtWk2mg1p65eOKV)
{
 if(!jO3kxWde8bnr_c) return false;
 local IIcOGz00jRDDXhxh5Pm2 = jO3kxWde8bnr_c.getSkillSubState(); 
 if(IIcOGz00jRDDXhxh5Pm2 == 0)
 {
 if(nLtWk2mg1p65eOKV == 1)
 jO3kxWde8bnr_c.sq_PlaySound("WZ_UROBOROS_RIDE");
 else if(nLtWk2mg1p65eOKV == 2)
 {
 sq_SetMyShake(jO3kxWde8bnr_c, 3, 80);
 sq_SetMyShake(jO3kxWde8bnr_c, 1, 400);
 jO3kxWde8bnr_c.sq_PlaySound("UROBOROS_ROTATE_LOOP", 9006); 
 }
 }
 return true;
} ;

function onTimeEvent_mage_uroboros(qXzYzSfw2p2raOgwFYFm, gMQEL0RWS992iwNOr5oLFQrN, FMeQDUA8OPVZ3WSSQi9Zw2)
{
 if(!qXzYzSfw2p2raOgwFYFm) return false;
 switch(gMQEL0RWS992iwNOr5oLFQrN)
 {
 case 0:
 onEndEff_mage_uroboros(qXzYzSfw2p2raOgwFYFm); 
 break;
 case 1:
 local bxQmxOwIDES81j1Mx = qXzYzSfw2p2raOgwFYFm.getVar().get_vector(1); 
 if(bxQmxOwIDES81j1Mx == 0) return false; 
 local Cml2H9cb6ep35UIl = sq_AddDrawOnlyAniFromParent(qXzYzSfw2p2raOgwFYFm, "character/mage/effect/animation/uroboros/move/movedustbig_01.ani", 0, -1, 0);
 sq_SetCurrentDirection(Cml2H9cb6ep35UIl, (bxQmxOwIDES81j1Mx == 1)? ENUM_DIRECTION_RIGHT: ENUM_DIRECTION_LEFT); 
 break;
 case 2: 
 local te6ukb2qipzPsmoUxiz3h = qXzYzSfw2p2raOgwFYFm.getVar().get_vector(0); 
 if(te6ukb2qipzPsmoUxiz3h == ENUM_ELEMENT_NONE) return false; 
 local v4BWMgOv4kQYVFf9l2h = sq_FindTarget(qXzYzSfw2p2raOgwFYFm, -330, 330, 110, 100); 
 if(!v4BWMgOv4kQYVFf9l2h)return false; 
 local EK1GDT0gEgtgdjD2pJnYlDr = qXzYzSfw2p2raOgwFYFm.getDirection(); 
 local oURvosJjTv = qXzYzSfw2p2raOgwFYFm.getXPos(); 
 local T38JafaCIew = v4BWMgOv4kQYVFf9l2h.getXPos(); 
 local Q0sJRcSjDRMY51 = v4BWMgOv4kQYVFf9l2h.getYPos(); 
 local yumGAHoe_q_ro7KbH = sq_Atan2(sq_Abs(oURvosJjTv - T38JafaCIew).tofloat(), 175.0); 
 if(oURvosJjTv > T38JafaCIew && EK1GDT0gEgtgdjD2pJnYlDr == ENUM_DIRECTION_RIGHT ||
 oURvosJjTv < T38JafaCIew && EK1GDT0gEgtgdjD2pJnYlDr == ENUM_DIRECTION_LEFT)
 yumGAHoe_q_ro7KbH /= -1; 
 local z7cBvrVX6dB4xApLtY8hkxrG = ["Fire.ani", "Ice.ani", "Dark.ani", "Light.ani"];
 local Cml2H9cb6ep35UIl = sq_AddDrawOnlyAniFromParent(qXzYzSfw2p2raOgwFYFm, "passiveobject/script_sqr_nut_qq506807329/mage/animation/uroboros/attackset03_" + z7cBvrVX6dB4xApLtY8hkxrG[te6ukb2qipzPsmoUxiz3h], 0, 0, 175); 
 sq_moveWithParent(qXzYzSfw2p2raOgwFYFm, Cml2H9cb6ep35UIl); 
 sq_SetCustomRotate(Cml2H9cb6ep35UIl, yumGAHoe_q_ro7KbH); 
 qXzYzSfw2p2raOgwFYFm.getVar("aniobj").push_obj_vector(Cml2H9cb6ep35UIl); 
 qXzYzSfw2p2raOgwFYFm.sq_PlaySound("R_UROBOROS_SPARK"); 
 if(qXzYzSfw2p2raOgwFYFm.sq_IsMyControlObject())
 {
 
 qXzYzSfw2p2raOgwFYFm.sq_StartWrite();
 qXzYzSfw2p2raOgwFYFm.sq_WriteDword(134); 
 qXzYzSfw2p2raOgwFYFm.sq_WriteDword(1); 
 qXzYzSfw2p2raOgwFYFm.sq_WriteDword(te6ukb2qipzPsmoUxiz3h);
 qXzYzSfw2p2raOgwFYFm.sq_WriteDword(qXzYzSfw2p2raOgwFYFm.sq_GetBonusRateWithPassive(134, 134, 4, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(qXzYzSfw2p2raOgwFYFm, 24372, 0, T38JafaCIew, Q0sJRcSjDRMY51, 0);
 }
 break;
 }
 return false;
} ;

 
function onEndCurrentAni_mage_uroboros(HScZbHN_fBPvD)
{
 if(!HScZbHN_fBPvD) return;
 if(!HScZbHN_fBPvD.sq_IsMyControlObject()) return;
 local FBVVMHcrgeJi7Wl6b2r = HScZbHN_fBPvD.getSkillSubState(); 
 if(FBVVMHcrgeJi7Wl6b2r != 2)
 {
 HScZbHN_fBPvD.sq_IntVectClear();
 HScZbHN_fBPvD.sq_IntVectPush(FBVVMHcrgeJi7Wl6b2r + 1); 
 HScZbHN_fBPvD.sq_AddSetStatePacket(134, STATE_PRIORITY_USER, true); 
 }
} ;

function onEndState_mage_uroboros(mVC6v__MuPrv6GAUKd, BjCMS7121s1A)
{
 if(!mVC6v__MuPrv6GAUKd) return;
 if(BjCMS7121s1A != 134) 
 {
 RemoveAllAni(mVC6v__MuPrv6GAUKd); 
 mVC6v__MuPrv6GAUKd.stopSound(9006); 
 
 local UiC9T_LYfJOjliP7v = mVC6v__MuPrv6GAUKd.getVar().getAppendage(0); 
 if(UiC9T_LYfJOjliP7v) 
 UiC9T_LYfJOjliP7v.setValid(false); 
 }
} ;

function onChangeSkillEffect_mage_uroboros(mVC6v__MuPrv6GAUKd, BjCMS7121s1A, UiC9T_LYfJOjliP7v)
{
 if(!mVC6v__MuPrv6GAUKd) return;
 local olQSqmBqMxBNTyMACHZW2Kx = UiC9T_LYfJOjliP7v.readWord(); 
 switch(olQSqmBqMxBNTyMACHZW2Kx)
 {
 case 1: 
 local TWemoJpCckKoXK7sw = mVC6v__MuPrv6GAUKd.getVar().get_timer_vector(0); 
 if(TWemoJpCckKoXK7sw)
 TWemoJpCckKoXK7sw.setEventTerm(UiC9T_LYfJOjliP7v.readDword()); 
 mVC6v__MuPrv6GAUKd.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * (UiC9T_LYfJOjliP7v.readDword() / 100.0)).tointeger(), 1.0, 1.0); 
 break;
 case 2: 
 mVC6v__MuPrv6GAUKd.getVar().set_vector(1, 0); 
 break;
 case 3: 
 mVC6v__MuPrv6GAUKd.getVar().set_vector(8, sq_GetObjectTime(mVC6v__MuPrv6GAUKd)); 
 mVC6v__MuPrv6GAUKd.getVar().set_vector(1, -1); 
 break;
 case 4: 
 mVC6v__MuPrv6GAUKd.getVar().set_vector(8, sq_GetObjectTime(mVC6v__MuPrv6GAUKd)); 
 mVC6v__MuPrv6GAUKd.getVar().set_vector(1, 1); 
 break;
 }
} ;

 
function onEndEff_mage_uroboros(Cj7ZROvJGDVJXo6N)
{
 
 if(Cj7ZROvJGDVJXo6N.sq_IsMyControlObject())
 {
 Cj7ZROvJGDVJXo6N.sq_StartWrite();
 Cj7ZROvJGDVJXo6N.sq_WriteDword(134); 
 Cj7ZROvJGDVJXo6N.sq_WriteDword(2); 
 Cj7ZROvJGDVJXo6N.sq_WriteDword(Cj7ZROvJGDVJXo6N.sq_GetBonusRateWithPassive(134, 134, 6, 1.0)); 
 Cj7ZROvJGDVJXo6N.sq_SendCreatePassiveObjectPacket(24372, 0, 0, 0, 0);
 Cj7ZROvJGDVJXo6N.sq_AddSetStatePacket(20, STATE_PRIORITY_USER, false); 
 }
} ;


