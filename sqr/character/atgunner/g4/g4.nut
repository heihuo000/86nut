
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_g4(NfDEvwlcEC_mxO)
{
 if(!NfDEvwlcEC_mxO) return false; 
 if(!checkPassiveObjectIsSub_qq506807329_atgunner_g4(NfDEvwlcEC_mxO))
 return false;
 local vplKviQdJmi = NfDEvwlcEC_mxO.sq_IsUseSkill(246); 
 if(vplKviQdJmi) 
 {
 NfDEvwlcEC_mxO.sq_IntVectClear();
 NfDEvwlcEC_mxO.sq_IntVectPush(0); 
 NfDEvwlcEC_mxO.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_g4(zLNgEXMd8NOL)
{
 if(!zLNgEXMd8NOL) return false; 
 local szPELYvN6WprwP = zLNgEXMd8NOL.sq_GetState(); 
 if(szPELYvN6WprwP == STATE_STAND) 
 return true; 
 if(szPELYvN6WprwP == STATE_ATTACK) 
 {
 return zLNgEXMd8NOL.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_atgunner_g4(zLNgEXMd8NOL, szPELYvN6WprwP, RBuyszSSdXi2Kw1uAf74, fqpAOeyuYqkwoGeIlb)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!zLNgEXMd8NOL) return; 
 local nOdOQRYF5smK3Y7pFBvTux = zLNgEXMd8NOL.sq_GetVectorData(RBuyszSSdXi2Kw1uAf74, 0); 
 zLNgEXMd8NOL.setSkillSubState(nOdOQRYF5smK3Y7pFBvTux); 
 switch(nOdOQRYF5smK3Y7pFBvTux)
 {
 case 0:
 zLNgEXMd8NOL.getVar().clear_vector(); 
 zLNgEXMd8NOL.sq_StopMove(); 
 zLNgEXMd8NOL.sq_SetCurrentAnimation(137);
 local APJLmgJmoJoEKZlA7 = sq_GetSkillLevel(zLNgEXMd8NOL, 246); 
 local vqV6agvwxh = sq_GetCastTime(zLNgEXMd8NOL, 246, APJLmgJmoJoEKZlA7); 
 local NXmMrU_AD6gyDu1S2ijar = sq_GetCurrentAnimation(zLNgEXMd8NOL); 
 local YKanWhlsfCjHsVP = sq_GetFrameStartTime(NXmMrU_AD6gyDu1S2ijar, 3); 
 local Urz_dB1VqJoRzX35bnp = YKanWhlsfCjHsVP.tofloat() / vqV6agvwxh.tofloat(); 
 zLNgEXMd8NOL.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, Urz_dB1VqJoRzX35bnp, Urz_dB1VqJoRzX35bnp);
 sq_StartDrawCastGauge(zLNgEXMd8NOL, YKanWhlsfCjHsVP, true);
 break;
 case 1:
 zLNgEXMd8NOL.sq_SetCurrentAnimation(138);
 zLNgEXMd8NOL.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 if(zLNgEXMd8NOL.sq_IsMyControlObject())
 {
 
 local APJLmgJmoJoEKZlA7 = sq_GetSkillLevel(zLNgEXMd8NOL, 246); 
 zLNgEXMd8NOL.sq_StartWrite();
 zLNgEXMd8NOL.sq_WriteDword(246); 
 zLNgEXMd8NOL.sq_WriteDword(1); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetBonusRateWithPassive(246, 246, 1, 1.0)); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetBonusRateWithPassive(246, 246, 3, 1.0)); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetLevelData(246, 0, APJLmgJmoJoEKZlA7)); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetLevelData(246, 2, APJLmgJmoJoEKZlA7)); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetLevelData(246, 4, APJLmgJmoJoEKZlA7)); 
 zLNgEXMd8NOL.sq_WriteDword(zLNgEXMd8NOL.sq_GetLevelData(246, 5, APJLmgJmoJoEKZlA7)); 
 zLNgEXMd8NOL.sq_SendCreatePassiveObjectPacket(24376, 0, 0, 0, 0);
 }
 zLNgEXMd8NOL.sq_PlaySound("FG_G4"); 
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_g4(oP_EINnqzQheA7JxA8LA)
{
 if(!oP_EINnqzQheA7JxA8LA) return;
 if(!oP_EINnqzQheA7JxA8LA.sq_IsMyControlObject()) return;
 local e0ClQKYjoT9vZFIgV = oP_EINnqzQheA7JxA8LA.getSkillSubState(); 
 switch(e0ClQKYjoT9vZFIgV)
 {
 case 0:
 oP_EINnqzQheA7JxA8LA.sq_IntVectClear();
 oP_EINnqzQheA7JxA8LA.sq_IntVectPush(1); 
 oP_EINnqzQheA7JxA8LA.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 oP_EINnqzQheA7JxA8LA.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onEndState_atgunner_g4(oP_EINnqzQheA7JxA8LA, e0ClQKYjoT9vZFIgV)
{
 if(!oP_EINnqzQheA7JxA8LA) return;
 if(e0ClQKYjoT9vZFIgV != 246)
 sq_EndDrawCastGauge(oP_EINnqzQheA7JxA8LA); 
} ;

function setSonPassiveObjectIsProc_qq506807329_atgunner_g4(oP_EINnqzQheA7JxA8LA)
{
 local e0ClQKYjoT9vZFIgV = oP_EINnqzQheA7JxA8LA.getMyPassiveObjectCount(24376); 
 for(local uC4d28dLYDOdzp7r6O5q67XA = 0; uC4d28dLYDOdzp7r6O5q67XA < e0ClQKYjoT9vZFIgV; uC4d28dLYDOdzp7r6O5q67XA++)
 {
 local NyULa85GqAKj = oP_EINnqzQheA7JxA8LA.getMyPassiveObject(24376, uC4d28dLYDOdzp7r6O5q67XA); 
 if(!NyULa85GqAKj)continue;
 sq_BinaryStartWrite();
 sq_BinaryWriteBool(false);
 sq_SendChangeSkillEffectPacket(NyULa85GqAKj, 246); 
 }
} ;

function checkPassiveObjectIsSub_qq506807329_atgunner_g4(LXhJU8Q9ffZ)
{
 local rpHeYm3ZjSEz = onGetMyPassiveObject_My(LXhJU8Q9ffZ, 24376, 246, 1); 
 if(rpHeYm3ZjSEz)
 {
 if(rpHeYm3ZjSEz.getState() == 13) return false; 
 local lD4prLQVzxBoU3hdtqxtF = 0; 
 local dZmm6QaY5oV = rpHeYm3ZjSEz.getMyPassiveObjectCount(24376); 
 for(local kfcKqvpuEJL = 0; kfcKqvpuEJL < dZmm6QaY5oV; kfcKqvpuEJL++)
 {
 local _vYbeW7yVtbeATS0WGgTdQO = rpHeYm3ZjSEz.getMyPassiveObject(24376, kfcKqvpuEJL); 
 if(!_vYbeW7yVtbeATS0WGgTdQO)continue;
 if(_vYbeW7yVtbeATS0WGgTdQO.getVar("isProc").getBool(0) == true)
 switch(_vYbeW7yVtbeATS0WGgTdQO.getState())
 {
 case 13:
 case 16:
 lD4prLQVzxBoU3hdtqxtF++; 
 break;
 }
 }
 
 if(lD4prLQVzxBoU3hdtqxtF != dZmm6QaY5oV) return false;
 local Zf_NCbcg0T = LXhJU8Q9ffZ.getXPos(); 
 local TVGzxqI96Jp7vSoYGk = LXhJU8Q9ffZ.getYPos(); 
 local RhGRUHWqahP8w = LXhJU8Q9ffZ.getDirection(); 
 
 local rq5GsXxUkEe = rpHeYm3ZjSEz.getVar("isHome").get_vector(0);
 if(rq5GsXxUkEe == 1)
 {
 local fzeELOBF6wFo7TZ0dA = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL); 
 local A82lQrLlnAZNwj7 = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL); 
 
 
 local uNOb1egMXgFUO0xaUy = LXhJU8Q9ffZ.sq_GetLevelData(246, 5, sq_GetSkillLevel(LXhJU8Q9ffZ, 246));
 
 local vr1Eh0yg2rrEZ_6S2 = 2; 
 
 local sscA4mejwSnumoVCOs6 = -1;
 
 if(RhGRUHWqahP8w == ENUM_DIRECTION_LEFT && fzeELOBF6wFo7TZ0dA
 || RhGRUHWqahP8w == ENUM_DIRECTION_RIGHT && A82lQrLlnAZNwj7)
 {
 Zf_NCbcg0T = LXhJU8Q9ffZ.sq_findNearLinearMovableXPos(sq_GetDistancePos(Zf_NCbcg0T, RhGRUHWqahP8w, uNOb1egMXgFUO0xaUy), TVGzxqI96Jp7vSoYGk, Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk, 5); 
 sscA4mejwSnumoVCOs6 = RhGRUHWqahP8w; 
 }
 
 else if(RhGRUHWqahP8w == ENUM_DIRECTION_LEFT && A82lQrLlnAZNwj7
 || RhGRUHWqahP8w == ENUM_DIRECTION_RIGHT && fzeELOBF6wFo7TZ0dA)
 {
 Zf_NCbcg0T = LXhJU8Q9ffZ.sq_findNearLinearMovableXPos(sq_GetDistancePos(Zf_NCbcg0T, RhGRUHWqahP8w, uNOb1egMXgFUO0xaUy / -1), TVGzxqI96Jp7vSoYGk, Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk, 5); 
 sscA4mejwSnumoVCOs6 = sq_GetOppositeDirection(RhGRUHWqahP8w); 
 }
 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 {
 
 TVGzxqI96Jp7vSoYGk = LXhJU8Q9ffZ.sq_findNearLinearMovableYPos(Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk - uNOb1egMXgFUO0xaUy, Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk, 5);
 sscA4mejwSnumoVCOs6 = ENUM_DIRECTION_UP; 
 }
 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
 {
 
 TVGzxqI96Jp7vSoYGk = LXhJU8Q9ffZ.sq_findNearLinearMovableYPos(Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk + uNOb1egMXgFUO0xaUy, Zf_NCbcg0T, TVGzxqI96Jp7vSoYGk, 5);
 sscA4mejwSnumoVCOs6 = ENUM_DIRECTION_DOWN; 
 }
 else 
 {
 return false; 
 }
 
 setSonPassiveObjectIsProc_qq506807329_atgunner_g4(rpHeYm3ZjSEz);
 local jbDGsSUDCUEykUl = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(jbDGsSUDCUEykUl); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, vr1Eh0yg2rrEZ_6S2); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, Zf_NCbcg0T); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, TVGzxqI96Jp7vSoYGk); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, sscA4mejwSnumoVCOs6); 
 rpHeYm3ZjSEz.addSetStatePacket(12, jbDGsSUDCUEykUl, STATE_PRIORITY_AUTO, false, ""); 
 }
 else if(rq5GsXxUkEe == 2)
 {
 
 setSonPassiveObjectIsProc_qq506807329_atgunner_g4(rpHeYm3ZjSEz);
 local vr1Eh0yg2rrEZ_6S2 = 1; 
 local sscA4mejwSnumoVCOs6 =
 (Zf_NCbcg0T > sq_GetXPos(rpHeYm3ZjSEz))
 ? ENUM_DIRECTION_RIGHT
 : ENUM_DIRECTION_LEFT; 
 local jbDGsSUDCUEykUl = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(jbDGsSUDCUEykUl); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, vr1Eh0yg2rrEZ_6S2); 
 sq_IntVectorPush(jbDGsSUDCUEykUl, sscA4mejwSnumoVCOs6); 
 rpHeYm3ZjSEz.addSetStatePacket(12, jbDGsSUDCUEykUl, STATE_PRIORITY_AUTO, false, ""); 
 }
 rpHeYm3ZjSEz.flushSetStatePacket(); 
 return false;
 }
 return true;
} ;



