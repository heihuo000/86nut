
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_pistolcarbine(O3SmO3MKwQlta_kjL)
{
 if(!O3SmO3MKwQlta_kjL) return false; 
 local PkIc6vuZDAByP7tZxGqEn2Z2 = O3SmO3MKwQlta_kjL.sq_IsUseSkill(241); 
 if(PkIc6vuZDAByP7tZxGqEn2Z2) 
 {
 local bKlk64uZ0STF9 = O3SmO3MKwQlta_kjL.getState(); 
 switch(bKlk64uZ0STF9)
 {
 case 6:
 case 7:
 O3SmO3MKwQlta_kjL.sq_IntVectClear();
 O3SmO3MKwQlta_kjL.sq_IntVectPush(3); 
 O3SmO3MKwQlta_kjL.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 break;
 default:
 O3SmO3MKwQlta_kjL.sq_IntVectClear();
 O3SmO3MKwQlta_kjL.sq_IntVectPush(0); 
 O3SmO3MKwQlta_kjL.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 break;
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_pistolcarbine(O3SmO3MKwQlta_kjL)
{
 if(!O3SmO3MKwQlta_kjL) return false; 
 local PkIc6vuZDAByP7tZxGqEn2Z2 = O3SmO3MKwQlta_kjL.sq_GetState(); 
 if(PkIc6vuZDAByP7tZxGqEn2Z2 == STATE_STAND) 
 return true; 
 if(PkIc6vuZDAByP7tZxGqEn2Z2 == STATE_ATTACK) 
 {
 return O3SmO3MKwQlta_kjL.sq_IsCommandEnable(241); 
 }
 return true; 
} ;

 
function onSetState_atgunner_pistolcarbine(lyqFIr_J4fBtTek8GfKmRe, tmRIqJ9BnTzw34dTaae3, BXUUw75T0Kr9n5t3bJ_VjhQ, qf4lAbtj9H9T)
{
 if(!lyqFIr_J4fBtTek8GfKmRe) return; 
 lyqFIr_J4fBtTek8GfKmRe.sq_StopMove(); 
 lyqFIr_J4fBtTek8GfKmRe.sq_ZStop(); 
 local w_P3pbFy2c_7QGxe8lbpcYG3 = lyqFIr_J4fBtTek8GfKmRe.sq_GetVectorData(BXUUw75T0Kr9n5t3bJ_VjhQ, 0); 
 lyqFIr_J4fBtTek8GfKmRe.setSkillSubState(w_P3pbFy2c_7QGxe8lbpcYG3); 
 switch(w_P3pbFy2c_7QGxe8lbpcYG3)
 {
 case 0:
 case 3:
 lyqFIr_J4fBtTek8GfKmRe.getVar().clear_vector(); 
 local CxEG0AVQ6cKiZ7LGBML = lyqFIr_J4fBtTek8GfKmRe.getVar(); 
 CxEG0AVQ6cKiZ7LGBML.push_vector(0); 
 CxEG0AVQ6cKiZ7LGBML.push_vector(3); 
 lyqFIr_J4fBtTek8GfKmRe.getVar("aniobj").clear_obj_vector(); 
 onAddPooledObj_atgunner_pistolcarbine(lyqFIr_J4fBtTek8GfKmRe, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pistolcarbine/duststart_1.ani", lyqFIr_J4fBtTek8GfKmRe.getXPos(), lyqFIr_J4fBtTek8GfKmRe.getYPos());
 break;
 case 1:
 case 4:
 if(lyqFIr_J4fBtTek8GfKmRe.getVar("aniobj").get_obj_vector_size() <= 0)
 {
 local k9PAt0fEsld = onAddPooledObj_atgunner_pistolcarbine(lyqFIr_J4fBtTek8GfKmRe, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pistolcarbine/dustloop_1.ani", lyqFIr_J4fBtTek8GfKmRe.getXPos(), lyqFIr_J4fBtTek8GfKmRe.getYPos());
 lyqFIr_J4fBtTek8GfKmRe.getVar("aniobj").push_obj_vector(k9PAt0fEsld); 
 }
 
 lyqFIr_J4fBtTek8GfKmRe.getVar().set_vector(0, lyqFIr_J4fBtTek8GfKmRe.getVar().get_vector(0) + 1);
 break;
 case 2:
 case 5:
 RemoveAllAni(lyqFIr_J4fBtTek8GfKmRe); 
 onAddPooledObj_atgunner_pistolcarbine(lyqFIr_J4fBtTek8GfKmRe, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pistolcarbine/dustend_1.ani", lyqFIr_J4fBtTek8GfKmRe.getXPos(), lyqFIr_J4fBtTek8GfKmRe.getYPos());
 break;
 }
 switch(w_P3pbFy2c_7QGxe8lbpcYG3)
 {
 case 0:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(127);
 break;
 case 1:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(128);
 break;
 case 2:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(129);
 break;
 case 3:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(130);
 break;
 case 4:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(131);
 break;
 case 5:
 lyqFIr_J4fBtTek8GfKmRe.sq_SetCurrentAnimation(132);
 break;
 }
 lyqFIr_J4fBtTek8GfKmRe.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onEndState_atgunner_pistolcarbine(bCFFF6nYve, EDXFq1rLUtkv)
{
 if(!bCFFF6nYve) return;
 if(EDXFq1rLUtkv != 241)
 RemoveAllAni(bCFFF6nYve); 
} ;

function onKeyFrameFlag_atgunner_pistolcarbine(bCFFF6nYve, EDXFq1rLUtkv)
{
 if(!bCFFF6nYve) return false;
 local QiXPGW60jov = bCFFF6nYve.getSkillSubState(); 
 if(bCFFF6nYve.sq_IsMyControlObject())
 switch(EDXFq1rLUtkv)
 {
 case 0:
 case 1:
 local aYy8BVmrtlqIiP4qa3G0 = 1; 
 local OocrHLC687xf3Md = 70; 
 local DAoZpZ37el4bBUdxbsnfAC74 = 100; 
 local u6aUarSOeWpv75Dyg0f = ENUM_ELEMENT_NONE; 
 if(QiXPGW60jov > 2)
 {
 aYy8BVmrtlqIiP4qa3G0 = 2;
 switch(EDXFq1rLUtkv)
 {
 case 0:OocrHLC687xf3Md = 58; DAoZpZ37el4bBUdxbsnfAC74 = 45; break;
 case 1:OocrHLC687xf3Md = 45; DAoZpZ37el4bBUdxbsnfAC74 = 45; break;
 }
 }
 else if(EDXFq1rLUtkv == 1)
 DAoZpZ37el4bBUdxbsnfAC74 = 80;
 
 local x9lD0KPk_tHRttwFPlZta = bCFFF6nYve.sq_GetDefaultAttackInfo(0); 
 for(local F53NhuD8dCAouNYmYxcpPB = ENUM_ELEMENT_FIRE; F53NhuD8dCAouNYmYxcpPB < ENUM_ELEMENT_NONE; F53NhuD8dCAouNYmYxcpPB++)
 if(x9lD0KPk_tHRttwFPlZta.isValidElement(F53NhuD8dCAouNYmYxcpPB)) 
 {
 u6aUarSOeWpv75Dyg0f = F53NhuD8dCAouNYmYxcpPB; 
 break;
 }
 bCFFF6nYve.sq_StartWrite();
 bCFFF6nYve.sq_WriteDword(241); 
 bCFFF6nYve.sq_WriteDword(1); 
 bCFFF6nYve.sq_WriteDword(bCFFF6nYve.sq_GetBonusRateWithPassive(241, 241, 0, 1.0)); 
 bCFFF6nYve.sq_WriteDword(aYy8BVmrtlqIiP4qa3G0); 
 bCFFF6nYve.sq_WriteDword(u6aUarSOeWpv75Dyg0f); 
 bCFFF6nYve.sq_SendCreatePassiveObjectPacket(24376, 0, OocrHLC687xf3Md, -1, DAoZpZ37el4bBUdxbsnfAC74);
 break;
 }
 
 if(QiXPGW60jov > 2 && (EDXFq1rLUtkv == 0 || EDXFq1rLUtkv == 1))
 {
 local AoXX_vB88lQhfP3klYLLX = sq_GetDistancePos(bCFFF6nYve.getXPos(), bCFFF6nYve.getDirection(), -1); 
 if(bCFFF6nYve.isMovablePos(AoXX_vB88lQhfP3klYLLX, bCFFF6nYve.getYPos()))
 sq_setCurrentAxisPos(bCFFF6nYve, 0, AoXX_vB88lQhfP3klYLLX); 
 sq_setCurrentAxisPos(bCFFF6nYve, 2, bCFFF6nYve.getZPos() + 1); 
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_pistolcarbine(EQhFZ_6cB2sKX)
{
 if(!EQhFZ_6cB2sKX) return;
 if(!EQhFZ_6cB2sKX.sq_IsMyControlObject()) return;
 local oey3LGJUdqkB6oD2iz = EQhFZ_6cB2sKX.getSkillSubState(); 
 switch(oey3LGJUdqkB6oD2iz)
 {
 case 1:
 case 4:
 if(EQhFZ_6cB2sKX.getVar().get_vector(0) < EQhFZ_6cB2sKX.getVar().get_vector(1)) 
 {
 EQhFZ_6cB2sKX.sq_IntVectClear();
 EQhFZ_6cB2sKX.sq_IntVectPush(oey3LGJUdqkB6oD2iz); 
 EQhFZ_6cB2sKX.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 }
 else
 {
 EQhFZ_6cB2sKX.sq_IntVectClear();
 EQhFZ_6cB2sKX.sq_IntVectPush(oey3LGJUdqkB6oD2iz + 1); 
 EQhFZ_6cB2sKX.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 }
 break;
 case 2:
 EQhFZ_6cB2sKX.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 5:
 EQhFZ_6cB2sKX.sq_IntVectClear();
 EQhFZ_6cB2sKX.sq_IntVectPush(1);
 EQhFZ_6cB2sKX.sq_IntVectPush(0);
 EQhFZ_6cB2sKX.sq_IntVectPush(1);
 EQhFZ_6cB2sKX.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 break;
 default:
 EQhFZ_6cB2sKX.sq_IntVectClear();
 EQhFZ_6cB2sKX.sq_IntVectPush(oey3LGJUdqkB6oD2iz + 1); 
 EQhFZ_6cB2sKX.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 break;
 }
} ;

function onAddPooledObj_atgunner_pistolcarbine(dDH0Lq8zKJJKtG9Vqx, BSgBPPI1OT, mCWImYtOVr_HZ_RkXoxwyaCl, LH5iq9jHXsVubtxIlmKVVx)
{
 local yoFArzIq08LPK9kD3Q__YOwd = sq_CreateAnimation("", BSgBPPI1OT); 
 local qxGD3bXdZN = sq_CreatePooledObject(yoFArzIq08LPK9kD3Q__YOwd, true); 
 sq_SetCurrentDirection(qxGD3bXdZN, dDH0Lq8zKJJKtG9Vqx.getDirection()); 
 qxGD3bXdZN.setCurrentPos(mCWImYtOVr_HZ_RkXoxwyaCl, LH5iq9jHXsVubtxIlmKVVx, 0); 
 qxGD3bXdZN = sq_SetEnumDrawLayer(qxGD3bXdZN, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(dDH0Lq8zKJJKtG9Vqx, qxGD3bXdZN, OBJECTTYPE_DRAWONLY, false); 
 return qxGD3bXdZN;
} ;


