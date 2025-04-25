
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_gravitygrenade(oP_EINnqzQheA7JxA8LA)
{
 if(!oP_EINnqzQheA7JxA8LA) return false; 
 local e0ClQKYjoT9vZFIgV = oP_EINnqzQheA7JxA8LA.sq_IsUseSkill(240); 
 if(e0ClQKYjoT9vZFIgV) 
 {
 local uC4d28dLYDOdzp7r6O5q67XA = oP_EINnqzQheA7JxA8LA.getZPos(); 
 local NyULa85GqAKj = oP_EINnqzQheA7JxA8LA.getState(); 
 if(uC4d28dLYDOdzp7r6O5q67XA > 0 && (NyULa85GqAKj == 6 || NyULa85GqAKj == 7)) 
 {
 oP_EINnqzQheA7JxA8LA.sq_IntVectClear();
 oP_EINnqzQheA7JxA8LA.sq_IntVectPush(1); 
 oP_EINnqzQheA7JxA8LA.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 }
 else
 {
 oP_EINnqzQheA7JxA8LA.sq_IntVectClear();
 oP_EINnqzQheA7JxA8LA.sq_IntVectPush(0); 
 oP_EINnqzQheA7JxA8LA.sq_AddSetStatePacket(240, STATE_PRIORITY_USER, true); 
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_gravitygrenade(LXhJU8Q9ffZ)
{
 if(!LXhJU8Q9ffZ) return false; 
 local rpHeYm3ZjSEz = LXhJU8Q9ffZ.sq_GetState(); 
 if(rpHeYm3ZjSEz == STATE_STAND) 
 return true; 
 if(rpHeYm3ZjSEz == STATE_ATTACK) 
 {
 return LXhJU8Q9ffZ.sq_IsCommandEnable(240); 
 }
 return true; 
} ;

 
function onSetState_atgunner_gravitygrenade(LXhJU8Q9ffZ, rpHeYm3ZjSEz, lD4prLQVzxBoU3hdtqxtF, dZmm6QaY5oV)
{
 if(!LXhJU8Q9ffZ) return; 
 LXhJU8Q9ffZ.getVar().clear_vector(); 
 LXhJU8Q9ffZ.sq_StopMove(); 
 local kfcKqvpuEJL = LXhJU8Q9ffZ.sq_GetVectorData(lD4prLQVzxBoU3hdtqxtF, 0); 
 LXhJU8Q9ffZ.setSkillSubState(kfcKqvpuEJL); 
 switch(kfcKqvpuEJL)
 {
 case 0:
 LXhJU8Q9ffZ.sq_SetCurrentAnimation(125);
 break;
 case 1:
 LXhJU8Q9ffZ.sq_ZStop(); 
 LXhJU8Q9ffZ.sq_SetCurrentAnimation(61);
 break;
 }
 LXhJU8Q9ffZ.sq_PlaySound("FG_GRENADE"); 
 LXhJU8Q9ffZ.sq_SetSuperArmor(POD_VAR_SUPERARMOR); 
 LXhJU8Q9ffZ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_gravitygrenade(fgEWFK60XjEcZHwvNMLZ6oJ, xt3rgAGEoO7fvymCvHLgkXsI)
{
 if(!fgEWFK60XjEcZHwvNMLZ6oJ) return false;
 if(!fgEWFK60XjEcZHwvNMLZ6oJ.sq_IsMyControlObject())return true;
 local ja0RaGNnUrnGZRqE_ewIHM = fgEWFK60XjEcZHwvNMLZ6oJ.getSkillSubState(); 
 if(xt3rgAGEoO7fvymCvHLgkXsI == 1)
 {
 
 
 
 
 local cBdoklvxXdd4jG_MXqJJ = 1; 
 switch(ja0RaGNnUrnGZRqE_ewIHM)
 {
 case 0:
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 cBdoklvxXdd4jG_MXqJJ = 3; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 cBdoklvxXdd4jG_MXqJJ = 4; 
 break;
 case 1:
 cBdoklvxXdd4jG_MXqJJ = 2; 
 break;
 }
 local w7TwODlOq0 = 120; 
 local jEWIMvv59P = sq_GetSkillLevel(fgEWFK60XjEcZHwvNMLZ6oJ, 240); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_StartWrite();
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(240); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(1); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(fgEWFK60XjEcZHwvNMLZ6oJ.sq_GetLevelData(240, 0, jEWIMvv59P)); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(fgEWFK60XjEcZHwvNMLZ6oJ.sq_GetLevelData(240, 1, jEWIMvv59P)); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(fgEWFK60XjEcZHwvNMLZ6oJ.sq_GetBonusRateWithPassive(240, 240, 2, 1.0)); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(fgEWFK60XjEcZHwvNMLZ6oJ.sq_GetBonusRateWithPassive(240, 240, 3, 1.0)); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(cBdoklvxXdd4jG_MXqJJ); 
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_WriteDword(w7TwODlOq0); 
 if(ja0RaGNnUrnGZRqE_ewIHM == 1)
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_SendCreatePassiveObjectPacket(24376, 0, 35, 0, 68);
 else
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_SendCreatePassiveObjectPacket(24376, 0, 48, 0, 76);
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_gravitygrenade(Bm1HD18_Gr5ce0)
{
 if(!Bm1HD18_Gr5ce0) return;
 if(!Bm1HD18_Gr5ce0.sq_IsMyControlObject()) return;
 local dZh301_kvU_N = Bm1HD18_Gr5ce0.getSkillSubState(); 
 switch(dZh301_kvU_N)
 {
 case 0:
 Bm1HD18_Gr5ce0.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 1:
 Bm1HD18_Gr5ce0.sq_IntVectClear();
 Bm1HD18_Gr5ce0.sq_IntVectPush(1);
 Bm1HD18_Gr5ce0.sq_IntVectPush(0);
 Bm1HD18_Gr5ce0.sq_IntVectPush(250);
 Bm1HD18_Gr5ce0.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 break;
 }
} ;

function onEndState_atgunner_gravitygrenade(ISk3Sw9NO0QcvrqNGJy, NO15NSZ39mt)
{
 if(!ISk3Sw9NO0QcvrqNGJy) return;
 ISk3Sw9NO0QcvrqNGJy.sq_RemoveSuperArmor(POD_VAR_SUPERARMOR); 
} ;



