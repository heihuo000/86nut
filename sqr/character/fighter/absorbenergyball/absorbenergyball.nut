
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_fighter_absorbenergyball(OVYsFOhwZbcXk47jWfe9)
{
 if(!OVYsFOhwZbcXk47jWfe9) return false; 
 local YYJCeFCRuUkpf = OVYsFOhwZbcXk47jWfe9.sq_IsUseSkill(227); 
 if(YYJCeFCRuUkpf) 
 {
 OVYsFOhwZbcXk47jWfe9.sq_IntVectClear();
 OVYsFOhwZbcXk47jWfe9.sq_IntVectPush(0); 
 OVYsFOhwZbcXk47jWfe9.sq_AddSetStatePacket(227, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_absorbenergyball(OVYsFOhwZbcXk47jWfe9)
{
 if(!OVYsFOhwZbcXk47jWfe9) return false; 
 local YYJCeFCRuUkpf = OVYsFOhwZbcXk47jWfe9.sq_GetState(); 
 if(YYJCeFCRuUkpf == STATE_STAND) 
 return true; 
 if(YYJCeFCRuUkpf == STATE_ATTACK) 
 {
 return OVYsFOhwZbcXk47jWfe9.sq_IsCommandEnable(227); 
 }
 return true; 
} ;

 
function onSetState_fighter_absorbenergyball(ejL6XjV2hQretQxPZD, iC7Xom653I, IzUEHsz5nTY1y_hBuREKim, oTCvmnFsLaEBAbRD8uGydxZ)
{
 if(!ejL6XjV2hQretQxPZD) return; 
 local VZRJllKb4bbMXHCbSpFIT2Y = ejL6XjV2hQretQxPZD.sq_GetVectorData(IzUEHsz5nTY1y_hBuREKim, 0); 
 ejL6XjV2hQretQxPZD.setSkillSubState(VZRJllKb4bbMXHCbSpFIT2Y); 
 switch(VZRJllKb4bbMXHCbSpFIT2Y)
 {
 case 0: 
 ejL6XjV2hQretQxPZD.sq_StopMove(); 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(106);
 local OLzWzaQYA2EUVNZj = ejL6XjV2hQretQxPZD.getCurrentAnimation(); 
 local rZe_TLpduc3OetLre = OLzWzaQYA2EUVNZj.getDelaySum(false); 
 ejL6XjV2hQretQxPZD.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local YMu4ANLtKrtE = OLzWzaQYA2EUVNZj.getDelaySum(false); 
 local vdrQqlj__9yeJvNbHSlOS = rZe_TLpduc3OetLre.tofloat() / YMu4ANLtKrtE.tofloat() * 100.0; 
 
 local br09y8j167YORa = sq_CreateDrawOnlyObject(ejL6XjV2hQretQxPZD, "character/fighter/effect/animation/inhaledenergyshot/lv2_ballunioncomplete.ani", ENUM_DRAWLAYER_NORMAL, true);
 local OOSFeEH0LXlXI2lDX09V_m0r = sq_CreateDrawOnlyObject(ejL6XjV2hQretQxPZD, "character/fighter/effect/animation/inhaledenergyshot/lv2_charge_normal.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(ejL6XjV2hQretQxPZD, br09y8j167YORa); 
 sq_moveWithParent(ejL6XjV2hQretQxPZD, OOSFeEH0LXlXI2lDX09V_m0r); 
 local TN37n7ZRnq3IVm = sq_AddDrawOnlyAniFromParent(ejL6XjV2hQretQxPZD, "character/fighter/effect/animation/inhaledenergyshot/absorbenergyball_charge_dust_front.ani", 0, -1, 0); 
 sq_moveWithParent(ejL6XjV2hQretQxPZD, TN37n7ZRnq3IVm); 
 RemoveAllAni(ejL6XjV2hQretQxPZD); 
 ejL6XjV2hQretQxPZD.getVar("aniobj").push_obj_vector(TN37n7ZRnq3IVm); 
 
 (TN37n7ZRnq3IVm.getCurrentAnimation()).setSpeedRate(vdrQqlj__9yeJvNbHSlOS);
 (br09y8j167YORa.getCurrentAnimation()).setSpeedRate(vdrQqlj__9yeJvNbHSlOS);
 (OOSFeEH0LXlXI2lDX09V_m0r.getCurrentAnimation()).setSpeedRate(vdrQqlj__9yeJvNbHSlOS);
 
 
 ejL6XjV2hQretQxPZD.getVar("move").clear_vector(); 
 ejL6XjV2hQretQxPZD.getVar("move").push_vector(sq_GetObjectTime(ejL6XjV2hQretQxPZD)); 
 ejL6XjV2hQretQxPZD.getVar("move").push_vector(ejL6XjV2hQretQxPZD.getXPos()); 
 ejL6XjV2hQretQxPZD.getVar("move").push_vector(sq_GetDistancePos(ejL6XjV2hQretQxPZD.getXPos(), ejL6XjV2hQretQxPZD.getDirection(), 300)); 
 ejL6XjV2hQretQxPZD.getVar().clear_vector(); 
 if(ejL6XjV2hQretQxPZD.sq_IsMyControlObject())
 {
 local Ur8yFyP_TdSIxj_5Ibc = sq_flashScreen(ejL6XjV2hQretQxPZD, 200, 99990, 0, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 ejL6XjV2hQretQxPZD.getVar("flashobj").clear_obj_vector(); 
 ejL6XjV2hQretQxPZD.getVar("flashobj").push_obj_vector(Ur8yFyP_TdSIxj_5Ibc); 
 }
 break;
 case 1: 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(107);
 break;
 case 2: 
 ejL6XjV2hQretQxPZD.sq_SetCurrentAnimation(108);
 RemoveAllFlash(ejL6XjV2hQretQxPZD); 
 if(ejL6XjV2hQretQxPZD.sq_IsMyControlObject())
 sq_flashScreen(ejL6XjV2hQretQxPZD, 0, 0, 200, 150, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
} ;

 
function onKeyFrameFlag_fighter_absorbenergyball(ElpnBTbJT_hv0UHrV, cvfDCz5u7ll3tGuEb)
{
 if(!ElpnBTbJT_hv0UHrV) return false;
 local cLp0q4frXfyFVwYdS = ElpnBTbJT_hv0UHrV.getSkillSubState(); 
 switch(cLp0q4frXfyFVwYdS)
 {
 case 1:
 if(cvfDCz5u7ll3tGuEb == 1 && ElpnBTbJT_hv0UHrV.sq_IsMyControlObject())
 {
 ElpnBTbJT_hv0UHrV.sq_IntVectClear();
 ElpnBTbJT_hv0UHrV.sq_IntVectPush(cLp0q4frXfyFVwYdS + 1); 
 ElpnBTbJT_hv0UHrV.sq_AddSetStatePacket(227, STATE_PRIORITY_USER, true); 
 return true;
 }
 break;
 case 2:
 if(cvfDCz5u7ll3tGuEb == 2)
 {
 ElpnBTbJT_hv0UHrV.getVar().clear_vector(); 
 ElpnBTbJT_hv0UHrV.getVar().push_vector(ElpnBTbJT_hv0UHrV.getXPos()); 
 if(ElpnBTbJT_hv0UHrV.sq_IsMyControlObject())
 {
 ElpnBTbJT_hv0UHrV.sq_StartWrite();
 ElpnBTbJT_hv0UHrV.sq_WriteDword(227); 
 ElpnBTbJT_hv0UHrV.sq_WriteDword(ElpnBTbJT_hv0UHrV.sq_GetBonusRateWithPassive(227, 227, 2, 1.0)); 
 ElpnBTbJT_hv0UHrV.sq_WriteDword(sq_GetLevelData(ElpnBTbJT_hv0UHrV, 227, 3, sq_GetSkillLevel(ElpnBTbJT_hv0UHrV, 227))); 
 ElpnBTbJT_hv0UHrV.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 60);
 }
 RemoveAllAni(ElpnBTbJT_hv0UHrV); 
 
 local ySnJzIb4gQDWuh8oG4qgd = sq_CreateDrawOnlyObject(ElpnBTbJT_hv0UHrV, "character/fighter/effect/animation/inhaledenergyshot/absorbenergyball_dust_front.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetCurrentDirection(ySnJzIb4gQDWuh8oG4qgd, sq_GetOppositeDirection(ElpnBTbJT_hv0UHrV.getDirection())); 
 sq_CreateDrawOnlyObject(ElpnBTbJT_hv0UHrV, "character/fighter/effect/animation/inhaledenergyshot/absorbenergyball_backstep_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 }
 return true;
} ;

 
function onProc_fighter_absorbenergyball(I7Vn2b5Y4JWJ8fwyqag)
{
 if(!I7Vn2b5Y4JWJ8fwyqag) return;
 local M0Av1Ca1jcgi2kZrbwX = I7Vn2b5Y4JWJ8fwyqag.getSkillSubState(); 
 if(I7Vn2b5Y4JWJ8fwyqag.getVar().size_vector() <= 0 || M0Av1Ca1jcgi2kZrbwX!=2)return;
 local GGZmeVAG1DTZ5MIEgjv7r4 = I7Vn2b5Y4JWJ8fwyqag.getCurrentAnimation();
 local RkaFOxMO_hWLq = sq_GetCurrentTime(GGZmeVAG1DTZ5MIEgjv7r4) - GGZmeVAG1DTZ5MIEgjv7r4.getDelaySum(0, 6); 
 local pa6wv_TLvw3 = GGZmeVAG1DTZ5MIEgjv7r4.getDelaySum(7, 11); 
 local gH7YFWOna7L82a34Tzx7c = sq_GetDistancePos(I7Vn2b5Y4JWJ8fwyqag.getVar().get_vector(0),
 I7Vn2b5Y4JWJ8fwyqag.getDirection(),
 sq_GetUniformVelocity(0, -80, RkaFOxMO_hWLq, pa6wv_TLvw3)); 
 if(I7Vn2b5Y4JWJ8fwyqag.isMovablePos(gH7YFWOna7L82a34Tzx7c, I7Vn2b5Y4JWJ8fwyqag.getYPos())) 
 sq_setCurrentAxisPos(I7Vn2b5Y4JWJ8fwyqag, 0, gH7YFWOna7L82a34Tzx7c); 
 else
 I7Vn2b5Y4JWJ8fwyqag.getVar().clear_vector(); 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onEndCurrentAni_fighter_absorbenergyball(jpsD1O6TNE)
{
 if(!jpsD1O6TNE) return;
 if(!jpsD1O6TNE.sq_IsMyControlObject()) return;
 local KzQwM5SWSXO = jpsD1O6TNE.getSkillSubState(); 
 if(KzQwM5SWSXO != 2)
 {
 jpsD1O6TNE.sq_IntVectClear();
 jpsD1O6TNE.sq_IntVectPush(KzQwM5SWSXO + 1); 
 jpsD1O6TNE.sq_AddSetStatePacket(227, STATE_PRIORITY_USER, true); 
 }
} ;

function onEndState_fighter_absorbenergyball(DGnn8kTccUG8u4nigqhSQy, RNmbQfBmAHutZYxvEf)
{
 if(!DGnn8kTccUG8u4nigqhSQy) return;
 if(RNmbQfBmAHutZYxvEf != 227)
 {
 RemoveAllAni(DGnn8kTccUG8u4nigqhSQy); 
 RemoveAllFlash(DGnn8kTccUG8u4nigqhSQy); 
 }
} ;

 
function getScrollBasisPos_fighter_absorbenergyball(DGnn8kTccUG8u4nigqhSQy)
{
 if(!DGnn8kTccUG8u4nigqhSQy) return false;
 if(!DGnn8kTccUG8u4nigqhSQy.sq_IsMyControlObject()) return false;
 local RNmbQfBmAHutZYxvEf = DGnn8kTccUG8u4nigqhSQy.getVar("move").size_vector();
 if(RNmbQfBmAHutZYxvEf>0)
 {
 local xXxztJ7fEhhwizt_Qn = DGnn8kTccUG8u4nigqhSQy.getVar("move"); 
 local e7n74a0KYEXTGf2KU3csIl0 = DGnn8kTccUG8u4nigqhSQy.getCurrentAnimation();
 local isR_SYYCNOajKFj = (DGnn8kTccUG8u4nigqhSQy.getSkillSubState()!=2)
 ? sq_GetUniformVelocity(xXxztJ7fEhhwizt_Qn.get_vector(1), xXxztJ7fEhhwizt_Qn.get_vector(2), sq_GetObjectTime(DGnn8kTccUG8u4nigqhSQy) - xXxztJ7fEhhwizt_Qn.get_vector(0), 200) 
 : (sq_GetCurrentFrameIndex(DGnn8kTccUG8u4nigqhSQy)<15)
 ? sq_GetUniformVelocity(xXxztJ7fEhhwizt_Qn.get_vector(1), xXxztJ7fEhhwizt_Qn.get_vector(2), sq_GetObjectTime(DGnn8kTccUG8u4nigqhSQy) - xXxztJ7fEhhwizt_Qn.get_vector(0), 200) 
 : sq_GetUniformVelocity(xXxztJ7fEhhwizt_Qn.get_vector(2), DGnn8kTccUG8u4nigqhSQy.getXPos(), sq_GetCurrentTime(e7n74a0KYEXTGf2KU3csIl0) - e7n74a0KYEXTGf2KU3csIl0.getDelaySum(0, 14), 200);
 
 DGnn8kTccUG8u4nigqhSQy.sq_SetCameraScrollPosition(isR_SYYCNOajKFj, DGnn8kTccUG8u4nigqhSQy.getYPos(), 0); 
 return true;
 }
 return false;
} ;

