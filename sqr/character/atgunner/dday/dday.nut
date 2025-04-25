
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_dday(nbQfOGveQGCejCH)
{
 if(!nbQfOGveQGCejCH) return false; 
 local KOYRmdjs9JBtbgjP7o5kx = nbQfOGveQGCejCH.sq_IsUseSkill(244); 
 if(KOYRmdjs9JBtbgjP7o5kx) 
 {
 local XJzCbE2CE6YJ = nbQfOGveQGCejCH.getZPos(); 
 local L3CF66ytZKoY = nbQfOGveQGCejCH.getState(); 
 if(XJzCbE2CE6YJ > 0 && (L3CF66ytZKoY == 6 || L3CF66ytZKoY == 7)) 
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(1); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 }
 else
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, true); 
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_dday(oP_EINnqzQheA7JxA8LA)
{
 if(!oP_EINnqzQheA7JxA8LA) return false; 
 local e0ClQKYjoT9vZFIgV = oP_EINnqzQheA7JxA8LA.sq_GetState(); 
 if(e0ClQKYjoT9vZFIgV == STATE_STAND) 
 return true; 
 if(e0ClQKYjoT9vZFIgV == STATE_ATTACK) 
 {
 return oP_EINnqzQheA7JxA8LA.sq_IsCommandEnable(244); 
 }
 return true; 
} ;

 
function onSetState_atgunner_dday(oP_EINnqzQheA7JxA8LA, e0ClQKYjoT9vZFIgV, uC4d28dLYDOdzp7r6O5q67XA, NyULa85GqAKj)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!oP_EINnqzQheA7JxA8LA) return; 
 oP_EINnqzQheA7JxA8LA.getVar().clear_vector(); 
 oP_EINnqzQheA7JxA8LA.sq_StopMove(); 
 local MD5PwZOBqJhYI_oFL01p = oP_EINnqzQheA7JxA8LA.sq_GetVectorData(uC4d28dLYDOdzp7r6O5q67XA, 0); 
 oP_EINnqzQheA7JxA8LA.setSkillSubState(MD5PwZOBqJhYI_oFL01p); 
 switch(MD5PwZOBqJhYI_oFL01p)
 {
 case 0:
 oP_EINnqzQheA7JxA8LA.sq_SetCurrentAnimation(125);
 break;
 case 1:
 oP_EINnqzQheA7JxA8LA.sq_ZStop(); 
 oP_EINnqzQheA7JxA8LA.sq_SetCurrentAnimation(61);
 break;
 }
 oP_EINnqzQheA7JxA8LA.sq_PlaySound("FG_D_DAY"); 
 sq_SetCustomDamageType(oP_EINnqzQheA7JxA8LA, true, 2); 
 oP_EINnqzQheA7JxA8LA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_dday(LXhJU8Q9ffZ, rpHeYm3ZjSEz)
{
 if(!LXhJU8Q9ffZ) return false;
 if(!LXhJU8Q9ffZ.sq_IsMyControlObject())return true;
 local lD4prLQVzxBoU3hdtqxtF = LXhJU8Q9ffZ.getSkillSubState(); 
 if(rpHeYm3ZjSEz == 1)
 {
 
 
 local dZmm6QaY5oV = 1; 
 if(lD4prLQVzxBoU3hdtqxtF == 1) dZmm6QaY5oV = 2; 
 local kfcKqvpuEJL = 40; 
 LXhJU8Q9ffZ.sq_StartWrite();
 LXhJU8Q9ffZ.sq_WriteDword(244); 
 LXhJU8Q9ffZ.sq_WriteDword(1); 
 LXhJU8Q9ffZ.sq_WriteDword(dZmm6QaY5oV); 
 LXhJU8Q9ffZ.sq_WriteDword(LXhJU8Q9ffZ.sq_GetBonusRateWithPassive(244, 244, 0, 1.0)); 
 LXhJU8Q9ffZ.sq_WriteDword(kfcKqvpuEJL); 
 if(lD4prLQVzxBoU3hdtqxtF == 1)
 LXhJU8Q9ffZ.sq_SendCreatePassiveObjectPacket(24376, 0, 35, 0, 68);
 else
 LXhJU8Q9ffZ.sq_SendCreatePassiveObjectPacket(24376, 0, 48, 0, 76);
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_dday(fgEWFK60XjEcZHwvNMLZ6oJ)
{
 if(!fgEWFK60XjEcZHwvNMLZ6oJ) return;
 if(!fgEWFK60XjEcZHwvNMLZ6oJ.sq_IsMyControlObject()) return;
 local xt3rgAGEoO7fvymCvHLgkXsI = fgEWFK60XjEcZHwvNMLZ6oJ.getSkillSubState(); 
 switch(xt3rgAGEoO7fvymCvHLgkXsI)
 {
 case 0:
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 1:
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_IntVectClear();
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_IntVectPush(1);
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_IntVectPush(0);
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_IntVectPush(250);
 fgEWFK60XjEcZHwvNMLZ6oJ.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 break;
 }
} ;

function onEndState_atgunner_dday(fgEWFK60XjEcZHwvNMLZ6oJ, xt3rgAGEoO7fvymCvHLgkXsI)
{
 if(!fgEWFK60XjEcZHwvNMLZ6oJ) return;
 sq_SetCustomDamageType(fgEWFK60XjEcZHwvNMLZ6oJ, false, 2); 
} ;


