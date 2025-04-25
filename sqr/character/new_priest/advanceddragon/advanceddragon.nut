
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_advanceddragon(n3njwnPcS7ttSI)
{
 if(!n3njwnPcS7ttSI) return false;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(n3njwnPcS7ttSI, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut")
 && !CNSquirrelAppendage.sq_IsAppendAppendage(n3njwnPcS7ttSI, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) return false;
 local BBOExBviDDEhX7uF5V3gfpA = n3njwnPcS7ttSI.sq_IsUseSkill(241); 
 if(BBOExBviDDEhX7uF5V3gfpA) 
 {
 n3njwnPcS7ttSI.sq_IntVectClear();
 if(CNSquirrelAppendage.sq_IsAppendAppendage(n3njwnPcS7ttSI, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut"))
 n3njwnPcS7ttSI.sq_IntVectPush(0); 
 else
 n3njwnPcS7ttSI.sq_IntVectPush(1); 
 n3njwnPcS7ttSI.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_advanceddragon(fCQTuWpa5SVneWuU5MHAzl)
{
 if(!fCQTuWpa5SVneWuU5MHAzl) return false;
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(fCQTuWpa5SVneWuU5MHAzl, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut")
 && !CNSquirrelAppendage.sq_IsAppendAppendage(fCQTuWpa5SVneWuU5MHAzl, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) return false;
 local x_1vZNEqM6zjpsGQO0z0 = fCQTuWpa5SVneWuU5MHAzl.sq_GetState(); 
 if(x_1vZNEqM6zjpsGQO0z0 == STATE_STAND) 
 return true; 
 if(x_1vZNEqM6zjpsGQO0z0 == STATE_ATTACK) 
 {
 return fCQTuWpa5SVneWuU5MHAzl.sq_IsCommandEnable(241); 
 }
 return true; 
} ;

 
function onSetState_priest_advanceddragon(wSELsYZ8jfRKYcEk, f0M0h7_tjTLHN, XoZzyfKuF3da3TnP7C, BlxBjTTRRC11alJAmD2f3fMt)
{
 if(!wSELsYZ8jfRKYcEk) return; 
 wSELsYZ8jfRKYcEk.sq_StopMove(); 
 local I43sUObBH25hszHEArdD22K = wSELsYZ8jfRKYcEk.sq_GetVectorData(XoZzyfKuF3da3TnP7C, 0); 
 wSELsYZ8jfRKYcEk.setSkillSubState(I43sUObBH25hszHEArdD22K); 
 wSELsYZ8jfRKYcEk.sq_PlaySound("PR_ADVANCED_DRAGON");
 switch(I43sUObBH25hszHEArdD22K)
 {
 case 0:
 wSELsYZ8jfRKYcEk.sq_SetCurrentAnimation(133);
 wSELsYZ8jfRKYcEk.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 1:
 wSELsYZ8jfRKYcEk.sq_SetCurrentAnimation(134);
 local VMB5nVmxu1Dmm = wSELsYZ8jfRKYcEk.getCurrentAnimation(); 
 local Nex5cjSstprDa9 = VMB5nVmxu1Dmm.getDelaySum(false); 
 wSELsYZ8jfRKYcEk.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local nZWrJjIDlgZzW8aIu1k = VMB5nVmxu1Dmm.getDelaySum(false); 
 local oiNnlxmSTLFEh = Nex5cjSstprDa9.tofloat() / nZWrJjIDlgZzW8aIu1k.tofloat() * 100.0; 
 wSELsYZ8jfRKYcEk.getVar().setFloat(0, oiNnlxmSTLFEh); 
 local H9wdSLuk2IRB9eXEBAZXzw = wSELsYZ8jfRKYcEk.getXPos(); 
 local eDsLV7QEu4SdqvCiQ0PyuVc = wSELsYZ8jfRKYcEk.getYPos(); 
 local zK2V2AvgEr7Qh0a = wSELsYZ8jfRKYcEk.getZPos(); 
 CreateAniRate(wSELsYZ8jfRKYcEk, "character/priest/effect/animation/advanceddragon_passion/magiccircle/magiccircle_light1.ani", ENUM_DRAWLAYER_BOTTOM, H9wdSLuk2IRB9eXEBAZXzw, eDsLV7QEu4SdqvCiQ0PyuVc, zK2V2AvgEr7Qh0a, false, oiNnlxmSTLFEh); 
 CreateAniRate(wSELsYZ8jfRKYcEk, "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_passion/front/attack_dust_front_normal.ani", ENUM_DRAWLAYER_NORMAL, H9wdSLuk2IRB9eXEBAZXzw, eDsLV7QEu4SdqvCiQ0PyuVc, zK2V2AvgEr7Qh0a, false, oiNnlxmSTLFEh); 
 if(wSELsYZ8jfRKYcEk.sq_IsMyControlObject())
 {
 wSELsYZ8jfRKYcEk.sq_StartWrite();
 wSELsYZ8jfRKYcEk.sq_WriteDword(241); 
 wSELsYZ8jfRKYcEk.sq_WriteDword(2); 
 wSELsYZ8jfRKYcEk.sq_WriteFloat(oiNnlxmSTLFEh); 
 wSELsYZ8jfRKYcEk.sq_WriteDword(wSELsYZ8jfRKYcEk.sq_GetBonusRateWithPassive(241, 241, 5, 1.0)); 
 wSELsYZ8jfRKYcEk.sq_SendCreatePassiveObjectPacket(24374, 0, 0, -1, 0);
 }
 break;
 }
} ;

function onKeyFrameFlag_priest_advanceddragon(uEc4Ug7l2vV6xc3o12, Ts31OiFgbmYjw)
{
 if(!uEc4Ug7l2vV6xc3o12) return false;
 local GbrFJSuNzqZBwCFju2e0N = uEc4Ug7l2vV6xc3o12.getSkillSubState(); 
 if(GbrFJSuNzqZBwCFju2e0N == 1)
 {
 if(Ts31OiFgbmYjw == 1)
 {
 CreateAniRate(uEc4Ug7l2vV6xc3o12, "character/priest/effect/animation/advanceddragon_passion/dust/attack_dusta7.ani", ENUM_DRAWLAYER_NORMAL, uEc4Ug7l2vV6xc3o12.getXPos(), uEc4Ug7l2vV6xc3o12.getYPos(), uEc4Ug7l2vV6xc3o12.getZPos(), false, uEc4Ug7l2vV6xc3o12.getVar().getFloat(0));
 }
 }
 return true;
} ;

 
function onEndCurrentAni_priest_advanceddragon(si73DiUoxd7hEehayZtIB)
{
 if(!si73DiUoxd7hEehayZtIB) return;
 if(!si73DiUoxd7hEehayZtIB.sq_IsMyControlObject()) return;
 local ZArlW6b6QTQWZZ = si73DiUoxd7hEehayZtIB.getSkillSubState(); 
 if(ZArlW6b6QTQWZZ == 0)
 {
 local id3meUrtPgHbL0AawGCjfKa = sq_GetSkillLevel(si73DiUoxd7hEehayZtIB, 241); 
 si73DiUoxd7hEehayZtIB.sq_StartWrite();
 si73DiUoxd7hEehayZtIB.sq_WriteDword(241); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(1); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(si73DiUoxd7hEehayZtIB.sq_GetLevelData(241, 0, id3meUrtPgHbL0AawGCjfKa)); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(si73DiUoxd7hEehayZtIB.sq_GetLevelData(241, 1, id3meUrtPgHbL0AawGCjfKa)); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(si73DiUoxd7hEehayZtIB.sq_GetLevelData(241, 2, id3meUrtPgHbL0AawGCjfKa)); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(si73DiUoxd7hEehayZtIB.sq_GetBonusRateWithPassive(241, 241, 3, 1.0)); 
 si73DiUoxd7hEehayZtIB.sq_WriteDword(si73DiUoxd7hEehayZtIB.sq_GetBonusRateWithPassive(241, 241, 4, 1.0)); 
 si73DiUoxd7hEehayZtIB.sq_SendCreatePassiveObjectPacket(24374, 0, 200, 0, 0);
 }
 si73DiUoxd7hEehayZtIB.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


