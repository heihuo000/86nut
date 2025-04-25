
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_chaindevider(NfDEvwlcEC_mxO)
{
 if(!NfDEvwlcEC_mxO) return false; 
 local vplKviQdJmi = NfDEvwlcEC_mxO.sq_IsUseSkill(238); 
 if(vplKviQdJmi) 
 {
 NfDEvwlcEC_mxO.sq_IntVectClear();
 NfDEvwlcEC_mxO.sq_IntVectPush(0); 
 NfDEvwlcEC_mxO.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_chaindevider(NfDEvwlcEC_mxO)
{
 if(!NfDEvwlcEC_mxO) return false; 
 local vplKviQdJmi = NfDEvwlcEC_mxO.sq_GetState(); 
 if(vplKviQdJmi == STATE_STAND) 
 return true; 
 if(vplKviQdJmi == STATE_ATTACK) 
 {
 return NfDEvwlcEC_mxO.sq_IsCommandEnable(238); 
 }
 return true; 
} ;

 
function onSetState_atgunner_chaindevider(zLNgEXMd8NOL, szPELYvN6WprwP, RBuyszSSdXi2Kw1uAf74, fqpAOeyuYqkwoGeIlb)
{
 if(!zLNgEXMd8NOL) return; 
 local nOdOQRYF5smK3Y7pFBvTux = zLNgEXMd8NOL.sq_GetVectorData(RBuyszSSdXi2Kw1uAf74, 0); 
 zLNgEXMd8NOL.setSkillSubState(nOdOQRYF5smK3Y7pFBvTux); 
 switch(nOdOQRYF5smK3Y7pFBvTux)
 {
 case 0:
 zLNgEXMd8NOL.sq_StopMove(); 
 zLNgEXMd8NOL.sq_SetCurrentAnimation(118);
 zLNgEXMd8NOL.sq_SetCurrentAttackInfo(28);
 local APJLmgJmoJoEKZlA7 = zLNgEXMd8NOL.sq_GetBonusRateWithPassive(238, 238, 0, 1.0); 
 zLNgEXMd8NOL.sq_SetCurrentAttackBonusRate(APJLmgJmoJoEKZlA7); 
 break;
 case 1:
 zLNgEXMd8NOL.sq_SetCurrentAnimation(119);
 zLNgEXMd8NOL.sq_SetCurrentAttackInfo(29);
 local APJLmgJmoJoEKZlA7 = zLNgEXMd8NOL.sq_GetBonusRateWithPassive(238, 238, 1, 1.0); 
 zLNgEXMd8NOL.sq_SetCurrentAttackBonusRate(APJLmgJmoJoEKZlA7); 
 break;
 case 2:
 zLNgEXMd8NOL.sq_SetCurrentAnimation(120);
 zLNgEXMd8NOL.sq_SetCurrentAttackInfo(30);
 local APJLmgJmoJoEKZlA7 = zLNgEXMd8NOL.sq_GetBonusRateWithPassive(238, 238, 2, 1.0); 
 zLNgEXMd8NOL.sq_SetCurrentAttackBonusRate(APJLmgJmoJoEKZlA7); 
 break;
 }
 zLNgEXMd8NOL.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onAttack_atgunner_chaindevider(r3fEW4_s2SeZEjzlv, ZTXHwLcVT5lKxU, ek0uRfaosKIJGfTU6fB0X, dLv6UkXZwiv8mMlwXVb)
{
 if(!r3fEW4_s2SeZEjzlv) return;
 if(dLv6UkXZwiv8mMlwXVb || !ZTXHwLcVT5lKxU.isObjectType(OBJECTTYPE_ACTIVE))return;
} ;

function onKeyFrameFlag_atgunner_chaindevider(nbQfOGveQGCejCH, KOYRmdjs9JBtbgjP7o5kx)
{
 if(!nbQfOGveQGCejCH) return false;
 local XJzCbE2CE6YJ = nbQfOGveQGCejCH.getSkillSubState(); 
 if(XJzCbE2CE6YJ == 2 && KOYRmdjs9JBtbgjP7o5kx == 1 && nbQfOGveQGCejCH.sq_IsMyControlObject())
 {
 sq_SetMyShake(nbQfOGveQGCejCH, 6, 100); 
 sq_flashScreen(nbQfOGveQGCejCH, 0, 0, 400, 178, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_chaindevider(nbQfOGveQGCejCH)
{
 if(!nbQfOGveQGCejCH) return;
 if(!nbQfOGveQGCejCH.sq_IsMyControlObject()) return;
 local KOYRmdjs9JBtbgjP7o5kx = nbQfOGveQGCejCH.getSkillSubState(); 
 if(KOYRmdjs9JBtbgjP7o5kx != 2)
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(KOYRmdjs9JBtbgjP7o5kx + 1); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 }
 else
 nbQfOGveQGCejCH.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;



