
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_poisonexplosion(XeUjjYBSHwm)
{
 if(!XeUjjYBSHwm) return false; 
 local rUNpBueAO1yMZe1 = XeUjjYBSHwm.sq_IsUseSkill(233); 
 if(rUNpBueAO1yMZe1) 
 {
 XeUjjYBSHwm.sq_IntVectClear();
 XeUjjYBSHwm.sq_IntVectPush(0); 
 XeUjjYBSHwm.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_poisonexplosion(Tg5ThJMAPN4fhLB1)
{
 if(!Tg5ThJMAPN4fhLB1) return false; 
 local AgLRPJnqNVVUuoDVc4LIjsr = Tg5ThJMAPN4fhLB1.sq_GetState(); 
 if(AgLRPJnqNVVUuoDVc4LIjsr == STATE_STAND) 
 return true; 
 if(AgLRPJnqNVVUuoDVc4LIjsr == STATE_ATTACK) 
 {
 return Tg5ThJMAPN4fhLB1.sq_IsCommandEnable(233); 
 }
 return true; 
} ;

 
function onSetState_fighter_poisonexplosion(Tg5ThJMAPN4fhLB1, AgLRPJnqNVVUuoDVc4LIjsr, fxl8ZjD54n, N1GKnnzkX34zUolCG4sk)
{
 if(!Tg5ThJMAPN4fhLB1) return; 
 Tg5ThJMAPN4fhLB1.sq_StopMove(); 
 Tg5ThJMAPN4fhLB1.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local pGfyfhonqJWORHZ = Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 0); 
 Tg5ThJMAPN4fhLB1.setSkillSubState(pGfyfhonqJWORHZ); 
 switch(pGfyfhonqJWORHZ)
 {
 case 0: 
 Tg5ThJMAPN4fhLB1.sq_SetCurrentAnimation(123);
 Tg5ThJMAPN4fhLB1.sq_SetCurrentAttackInfo(70); 
 Tg5ThJMAPN4fhLB1.getVar().clear_vector(); 
 Tg5ThJMAPN4fhLB1.getVar().clear_obj_vector(); 
 Tg5ThJMAPN4fhLB1.getVar().setBool(0, false); 
 Tg5ThJMAPN4fhLB1.getVar().setBool(1, false); 
 break;
 case 1: 
 Tg5ThJMAPN4fhLB1.sq_SetCurrentAnimation(124);
 local sa8BXp0w1FJjvN0A6aFt = Tg5ThJMAPN4fhLB1.getVar(); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(Tg5ThJMAPN4fhLB1.getXPos()); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(Tg5ThJMAPN4fhLB1.getZPos()); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(30); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(-1); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(-1); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(0); 
 sa8BXp0w1FJjvN0A6aFt.push_vector(2); 
 if(Tg5ThJMAPN4fhLB1.sq_IsMyControlObject())
 {
 local Uq9wXPrzS3xnrQSe = sq_GetSkillLevel(Tg5ThJMAPN4fhLB1, 233); 
 
 Tg5ThJMAPN4fhLB1.sq_StartWrite();
 Tg5ThJMAPN4fhLB1.sq_WriteDword(233); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(1); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 1)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 2)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 3)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 4)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetVectorData(fxl8ZjD54n, 5)); 
 if(Tg5ThJMAPN4fhLB1.getVar().getBool(1) == true) 
 {
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 0, 1.0)+
 Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 16, 1.0)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 1, 1.0)+
 Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 17, 1.0)); 
 }
 else
 {
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 0, 1.0)); 
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetBonusRateWithPassive(233, 233, 1, 1.0)); 
 }
 
 for(local bLFwtWmL1eJLEo2Uu = 2; bLFwtWmL1eJLEo2Uu < 16; bLFwtWmL1eJLEo2Uu++)
 Tg5ThJMAPN4fhLB1.sq_WriteDword(Tg5ThJMAPN4fhLB1.sq_GetLevelData(233, bLFwtWmL1eJLEo2Uu, Uq9wXPrzS3xnrQSe));
 Tg5ThJMAPN4fhLB1.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 break;
 }
} ;

function onKeyFrameFlag_fighter_poisonexplosion(nCALmF6gxkNM, nYHtGWtDC5ws1uzx3J8ZPlxJ)
{
 if(!nCALmF6gxkNM) return false;
 local I6AZpQJhTgh8OdKTjnHnv = nCALmF6gxkNM.getSkillSubState(); 
 if(I6AZpQJhTgh8OdKTjnHnv == 1)
 {
 if(nYHtGWtDC5ws1uzx3J8ZPlxJ == 1) 
 {
 local WTXkWJ7y0wMlqccZWc = nCALmF6gxkNM.getVar(); 
 WTXkWJ7y0wMlqccZWc.set_vector(1, nCALmF6gxkNM.getZPos()); 
 WTXkWJ7y0wMlqccZWc.set_vector(2, nCALmF6gxkNM.getZPos() / -1); 
 WTXkWJ7y0wMlqccZWc.set_vector(3, 0); 
 WTXkWJ7y0wMlqccZWc.set_vector(4, 2); 
 WTXkWJ7y0wMlqccZWc.set_vector(5, 3); 
 WTXkWJ7y0wMlqccZWc.set_vector(6, 7); 
 }
 }
 return true;
} ;

function onAttack_fighter_poisonexplosion(ZgBRUcTy1z, jFN17behrllaY_CmEmWD, fN6C4s9EXz0x, WZKfZzuXTm)
{
 if(!ZgBRUcTy1z) return;
 if(!jFN17behrllaY_CmEmWD.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local riTSB1UjIv3HL73w = ZgBRUcTy1z.getSkillSubState(); 
 if(riTSB1UjIv3HL73w == 0)
 {
 if(ZgBRUcTy1z.getVar().getBool(0) == false) 
 {
 ZgBRUcTy1z.getVar().setBool(0, true); 
 ZgBRUcTy1z.sq_AddStateLayerAnimation(1, ZgBRUcTy1z.sq_CreateCNRDAnimation("effect/animation/poisonexplosion/poisonexplosion_start_attack_d.ani"), 0, 0); 
 }
 ZgBRUcTy1z.getVar().push_obj_vector(jFN17behrllaY_CmEmWD); 
 if(ZgBRUcTy1z.getVar().getBool(1) == false) 
 if(sq_IsValidActiveStatus(sq_GetCNRDObjectToActiveObject(jFN17behrllaY_CmEmWD), ACTIVESTATUS_POISON))
 ZgBRUcTy1z.getVar().setBool(1, true); 
 }
} ;

 
function onProc_fighter_poisonexplosion(RQdLYUYtCiqp6q1)
{
 if(!RQdLYUYtCiqp6q1) return;
 local bTWsf9CtiUz2lc0WYnGqN5 = RQdLYUYtCiqp6q1.getSkillSubState(); 
 switch(bTWsf9CtiUz2lc0WYnGqN5)
 {
 case 1:
 local CsRHV8N8jcAUL = RQdLYUYtCiqp6q1.getVar(); 
 local Z0hY8QMeRDju = RQdLYUYtCiqp6q1.getCurrentAnimation(); 
 local OnfLZdhO_Ss_5an3nO = sq_GetCurrentTime(Z0hY8QMeRDju); 
 local ukGngcJvuIPKhYmpQ2TLax = Z0hY8QMeRDju.getDelaySum(false); 
 local Zy4U2uk853W98K0M = CsRHV8N8jcAUL.get_vector(0); 
 if(Zy4U2uk853W98K0M != 0) 
 {
 local eK90iXVab0M0CKc = sq_GetDistancePos(Zy4U2uk853W98K0M,
 RQdLYUYtCiqp6q1.getDirection(),
 sq_GetAccel(0, -200, OnfLZdhO_Ss_5an3nO, ukGngcJvuIPKhYmpQ2TLax, true)); 
 if(RQdLYUYtCiqp6q1.isMovablePos(eK90iXVab0M0CKc, RQdLYUYtCiqp6q1.getYPos())) 
 sq_setCurrentAxisPos(RQdLYUYtCiqp6q1, 0, eK90iXVab0M0CKc); 
 else 
 CsRHV8N8jcAUL.set_vector(0, 0); 
 }
 OnfLZdhO_Ss_5an3nO -= Z0hY8QMeRDju.getDelaySum(CsRHV8N8jcAUL.get_vector(3), CsRHV8N8jcAUL.get_vector(4)); 
 ukGngcJvuIPKhYmpQ2TLax = Z0hY8QMeRDju.getDelaySum(CsRHV8N8jcAUL.get_vector(5), CsRHV8N8jcAUL.get_vector(6)); 
 local MBopJGyHnRGGvkzm3iH = CsRHV8N8jcAUL.get_vector(1) + sq_GetUniformVelocity(0, CsRHV8N8jcAUL.get_vector(2), OnfLZdhO_Ss_5an3nO, ukGngcJvuIPKhYmpQ2TLax);
 sq_setCurrentAxisPos(RQdLYUYtCiqp6q1, 2, MBopJGyHnRGGvkzm3iH); 
 break;
 }
} ;

 
function onEndCurrentAni_fighter_poisonexplosion(fSD5TJIeH3Ypkf0Qf4Fzo)
{
 if(!fSD5TJIeH3Ypkf0Qf4Fzo) return;
 if(!fSD5TJIeH3Ypkf0Qf4Fzo.sq_IsMyControlObject()) return;
 local QFmkglshr238xjLJawFDRd = fSD5TJIeH3Ypkf0Qf4Fzo.getSkillSubState(); 
 switch(QFmkglshr238xjLJawFDRd)
 {
 case 0:
 local cfMEWXvj3khuN = fSD5TJIeH3Ypkf0Qf4Fzo.getVar();
 for(local sltLhJRyoZWObSEUv = 0; sltLhJRyoZWObSEUv < cfMEWXvj3khuN.get_obj_vector_size(); sltLhJRyoZWObSEUv++)
 {
 local imq3hKAvOE0O5 = cfMEWXvj3khuN.get_obj_vector(sltLhJRyoZWObSEUv); 
 if(!imq3hKAvOE0O5)continue;
 local Cp7PnCrvW956 = sq_GetCNRDObjectToActiveObject(imq3hKAvOE0O5); 
 if(!Cp7PnCrvW956.isDead()) 
 {
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectClear();
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(sq_GetGroup(Cp7PnCrvW956)); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(sq_GetUniqueId(Cp7PnCrvW956)); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(Cp7PnCrvW956.getXPos()); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(Cp7PnCrvW956.getYPos()); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_IntVectPush(Cp7PnCrvW956.getZPos() + sq_GetObjectHeight(Cp7PnCrvW956) / 2); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 break;
 }
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

