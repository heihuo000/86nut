
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_mage_avatar(SIIxfEfI_IoLoCj)
{
 if(!SIIxfEfI_IoLoCj) return false; 
 local QQFTyZzfnqNnrzIi8 = CNSquirrelAppendage.sq_GetAppendage(SIIxfEfI_IoLoCj, "character/mage/avatar/ap_avatar.nut"); 
 if(QQFTyZzfnqNnrzIi8) 
 {
 
 if(QQFTyZzfnqNnrzIi8.getVar("skill").getBool(0) == false)
 {
 SIIxfEfI_IoLoCj.sq_IntVectClear();
 SIIxfEfI_IoLoCj.sq_IntVectPush(1); 
 SIIxfEfI_IoLoCj.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 return true;
 }
 else 
 return false;
 }
 local bCXxHiJVd1ZSkBIm3MAe7Jt = SIIxfEfI_IoLoCj.sq_IsUseSkill(245); 
 if(bCXxHiJVd1ZSkBIm3MAe7Jt) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(SIIxfEfI_IoLoCj, "character/mage/appendage/ap_bellatrix.nut")) 
 {
 
 SIIxfEfI_IoLoCj.sq_IntVectClear();
 SIIxfEfI_IoLoCj.sq_IntVectPush(0); 
 SIIxfEfI_IoLoCj.sq_IntVectPush(0); 
 SIIxfEfI_IoLoCj.sq_AddSetStatePacket(32, STATE_PRIORITY_USER, true);
 }
 else
 {
 SIIxfEfI_IoLoCj.sq_IntVectClear();
 SIIxfEfI_IoLoCj.sq_IntVectPush(0); 
 SIIxfEfI_IoLoCj.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_avatar(y4vVsBkYGiu)
{
 if(!y4vVsBkYGiu) return false; 
 local BajBskwX5oTc8UFg_i79B2 = y4vVsBkYGiu.sq_GetState(); 
 if(BajBskwX5oTc8UFg_i79B2 == STATE_STAND) 
 return true; 
 if(BajBskwX5oTc8UFg_i79B2 == STATE_ATTACK) 
 {
 return y4vVsBkYGiu.sq_IsCommandEnable(245); 
 }
 return true; 
} ;

 
function onSetState_mage_avatar(y4vVsBkYGiu, BajBskwX5oTc8UFg_i79B2, vON_KPy_X3TV4CixtyE_Gj, HYq2Yv97CZ)
{
 if(!y4vVsBkYGiu) return; 
 y4vVsBkYGiu.sq_StopMove(); 
 local _yflaqKpAlxAOzOGZ = y4vVsBkYGiu.sq_GetVectorData(vON_KPy_X3TV4CixtyE_Gj, 0); 
 y4vVsBkYGiu.setSkillSubState(_yflaqKpAlxAOzOGZ); 
 switch(_yflaqKpAlxAOzOGZ)
 {
 case 0: 
 y4vVsBkYGiu.sq_SetCurrentAnimation(93); 
 y4vVsBkYGiu.sq_SetCurrentAttackInfo(44); 
 local k310IqaUUQzSBP2QV26FVk8 = y4vVsBkYGiu.sq_GetBonusRateWithPassive(245, 245, 7, 1.0); 
 y4vVsBkYGiu.sq_SetCurrentAttackBonusRate(k310IqaUUQzSBP2QV26FVk8); 
 break;
 case 1: 
 local AmoClQNPurWJz_nr7 = CNSquirrelAppendage.sq_GetAppendage(y4vVsBkYGiu, "character/mage/avatar/ap_avatar.nut"); 
 if(AmoClQNPurWJz_nr7) 
 AmoClQNPurWJz_nr7.getVar("skill").setBool(0, true); 
 y4vVsBkYGiu.stopSound(9001); 
 y4vVsBkYGiu.sq_SetCurrentAnimation(94); 
 break;
 case 2: 
 y4vVsBkYGiu.sq_SetCurrentAnimation(97); 
 y4vVsBkYGiu.sq_SetCurrentAttackInfo(44); 
 local k310IqaUUQzSBP2QV26FVk8 = y4vVsBkYGiu.sq_GetBonusRateWithPassive(245, 245, 7, 1.0); 
 y4vVsBkYGiu.sq_SetCurrentAttackBonusRate(k310IqaUUQzSBP2QV26FVk8); 
 y4vVsBkYGiu.sq_PlaySound("WZ_AVATAR_READY"); 
 break;
 }
 
 local s6EScP8e6BxXYiNK = y4vVsBkYGiu.getCurrentAnimation(); 
 local S3bra2o19yOCNUjaOjfT = s6EScP8e6BxXYiNK.getDelaySum(false); 
 y4vVsBkYGiu.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local mFRv1WwGlIC = s6EScP8e6BxXYiNK.getDelaySum(false); 
 local LE4srX4aPs = S3bra2o19yOCNUjaOjfT.tofloat() / mFRv1WwGlIC.tofloat() * 100.0; 
 switch(_yflaqKpAlxAOzOGZ)
 {
 case 0:
 case 2:
 
 local bi9u3mBLQeQruCIoj = sq_CreateDrawOnlyObject(y4vVsBkYGiu, "character/mage/effect/animation/avatar/avatarready_end_floor.ani", ENUM_DRAWLAYER_BOTTOM, true);
 if(bi9u3mBLQeQruCIoj)
 (bi9u3mBLQeQruCIoj.getCurrentAnimation()).setSpeedRate(LE4srX4aPs + 15.0); 
 break;
 case 1:
 if(y4vVsBkYGiu.sq_IsMyControlObject())
 {
 local sInDL64d_cc = sq_GetSkillLevel(y4vVsBkYGiu, 245); 
 y4vVsBkYGiu.sq_StartWrite();
 y4vVsBkYGiu.sq_WriteDword(245); 
 y4vVsBkYGiu.sq_WriteDword(y4vVsBkYGiu.sq_GetBonusRateWithPassive(245, 245, 8, 1.0)); 
 y4vVsBkYGiu.sq_WriteDword(y4vVsBkYGiu.sq_GetBonusRateWithPassive(245, 245, 9, 1.0)); 
 y4vVsBkYGiu.sq_WriteFloat(LE4srX4aPs); 
 y4vVsBkYGiu.sq_SendCreatePassiveObjectPacket(24372, 0, 0, 0, 0); 
 }
 break;
 }
} ;

 
function onKeyFrameFlag_mage_avatar(hhSCvAbaYBUxeP80D, p8pDoQ0MevC)
{
 if(!hhSCvAbaYBUxeP80D) return false;
 local n5cIvFNQelBO = hhSCvAbaYBUxeP80D.getSkillSubState(); 
 switch(n5cIvFNQelBO)
 {
 case 0:
 if(hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
 if(p8pDoQ0MevC == 1)
 sq_flashScreen(hhSCvAbaYBUxeP80D, 120, 0, 120, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 else if(p8pDoQ0MevC == 2)
 {
 sq_SetMyShake(hhSCvAbaYBUxeP80D, 3, 160);
 sq_flashScreen(hhSCvAbaYBUxeP80D, 0, 0, 240, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 case 1:
 if(p8pDoQ0MevC == 1)
 sq_flashScreen(hhSCvAbaYBUxeP80D, 0, 80, 80, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 else if(p8pDoQ0MevC == 2)
 {
 hhSCvAbaYBUxeP80D.sq_PlaySound("WZ_AVATAR_FINISH");
 if(hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
 {
 sq_SetMyShake(hhSCvAbaYBUxeP80D, 5, 240);
 sq_flashScreen(hhSCvAbaYBUxeP80D, 80, 0, 160, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);
 }
 }
 break;
 case 2:
 if(p8pDoQ0MevC == 1)
 {
 if(hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
 {
 sq_SetShake(hhSCvAbaYBUxeP80D, 2, 120);
 sq_flashScreen(hhSCvAbaYBUxeP80D, 120, 0, 120, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 else if(p8pDoQ0MevC == 2)
 {
 hhSCvAbaYBUxeP80D.sq_PlaySound("WZ_AVATAR_CHANGE");
 if(hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
 {
 sq_SetMyShake(hhSCvAbaYBUxeP80D, 3, 160);
 sq_flashScreen(hhSCvAbaYBUxeP80D, 0, 0, 240, 153, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_avatar(x4fCER595FZFajc20Nw)
{
 if(!x4fCER595FZFajc20Nw) return;
 if(!x4fCER595FZFajc20Nw.sq_IsMyControlObject()) return;
 local V08RBRh4ZERnu = x4fCER595FZFajc20Nw.getSkillSubState(); 
 switch(V08RBRh4ZERnu)
 {
 case 0: 
 case 2: 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_SendChangeSkillEffectPacket(x4fCER595FZFajc20Nw, 245); 
 break;
 }
 x4fCER595FZFajc20Nw.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


 
function onAppendApEff_qq506807329_mage_avatar(tyF8WF78_m)
{
 if(!tyF8WF78_m) return;
 local HTExDVgffJOPwyg = sq_GetSkillLevel(tyF8WF78_m, 245); 
 local QDvJ_U6nP_RZb0 = sq_GetLevelData(tyF8WF78_m, 245, 0, HTExDVgffJOPwyg); 
 local jf3ATPaBEllkefbWXez = sq_GetLevelData(tyF8WF78_m, 245, 1, HTExDVgffJOPwyg).tofloat() * sq_GetAbilityConvertRate(tyF8WF78_m, CONVERT_TABLE_TYPE_HP); 
 local zzAg7n3DFovKftgs8vA = sq_GetLevelData(tyF8WF78_m, 245, 2, HTExDVgffJOPwyg); 
 local pHCgbtCwwgAU3gyKRYE = sq_GetLevelData(tyF8WF78_m, 245, 3, HTExDVgffJOPwyg); 
 local OnqpVE4NMwl = sq_GetLevelData(tyF8WF78_m, 245, 4, HTExDVgffJOPwyg); 
 local bLlnmdLZRZWgmJF = sq_GetLevelData(tyF8WF78_m, 245, 6, HTExDVgffJOPwyg); 
 local _nPxXYBEYWlCqNe_BdteBOoi = CNSquirrelAppendage.sq_AppendAppendage(tyF8WF78_m, tyF8WF78_m, 245, false, "character/mage/avatar/ap_avatar_icon.nut", false); 
 _nPxXYBEYWlCqNe_BdteBOoi.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_MAGE, 245, HTExDVgffJOPwyg); 
 CNSquirrelAppendage.sq_AppendAppendageID(_nPxXYBEYWlCqNe_BdteBOoi, tyF8WF78_m, tyF8WF78_m, 245, false); 
 _nPxXYBEYWlCqNe_BdteBOoi.sq_SetValidTime(QDvJ_U6nP_RZb0); 
 local DzDNFS6H5MkzMxGVJZNXBO = _nPxXYBEYWlCqNe_BdteBOoi.sq_getChangeStatus("changeStatus"); 
 if(!DzDNFS6H5MkzMxGVJZNXBO) 
 DzDNFS6H5MkzMxGVJZNXBO = _nPxXYBEYWlCqNe_BdteBOoi.sq_AddChangeStatusAppendageID(tyF8WF78_m, tyF8WF78_m, 0, CHANGE_STATUS_TYPE_HP_MAX, false, 0, APID_COMMON);
 if(DzDNFS6H5MkzMxGVJZNXBO) 
 {
 DzDNFS6H5MkzMxGVJZNXBO.clearParameter(); 
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_HP_MAX, false, jf3ATPaBEllkefbWXez.tofloat());
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_DEFENSE, false, zzAg7n3DFovKftgs8vA.tofloat());
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_DEFENSE, false, zzAg7n3DFovKftgs8vA.tofloat());
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, pHCgbtCwwgAU3gyKRYE.tofloat());
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, OnqpVE4NMwl.tofloat());
 DzDNFS6H5MkzMxGVJZNXBO.addParameter(CHANGE_STATUS_TYPE_ACTIVESTATUS_TOLERANCE_ALL, false, bLlnmdLZRZWgmJF.tofloat());
 }
 local PWleEW2oykUqwqYZKd65 = CNSquirrelAppendage.sq_AppendAppendage(tyF8WF78_m, tyF8WF78_m, 245, true, "character/mage/avatar/ap_avatar.nut", false); 
 CNSquirrelAppendage.sq_AppendAppendageID(PWleEW2oykUqwqYZKd65, tyF8WF78_m, tyF8WF78_m, 246, false); 
} ;



 


 
function setCurrentAnimation_mage_avatar(X6HdYKIBae466vJb3Y, IdY8GzGkxRLrZKvWT1)
{
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(X6HdYKIBae466vJb3Y, "character/mage/avatar/ap_avatar.nut"))
 return false;
 local RE4cT9kPfpbhFE2KrrM1 = -1; 
 switch(IdY8GzGkxRLrZKvWT1.tolower()) 
 {
 case "chaserclusterbodystart_09.ani": RE4cT9kPfpbhFE2KrrM1 = 100; break;
 case "chaserclusterbodyend_06.ani": RE4cT9kPfpbhFE2KrrM1 = 101; break;
 case "avatardance_a.ani": RE4cT9kPfpbhFE2KrrM1 = 102; break;
 case "avatardance_b.ani": RE4cT9kPfpbhFE2KrrM1 = 103; break;
 case "avatardance_c.ani": RE4cT9kPfpbhFE2KrrM1 = 104; break;
 case "avatardance_d.ani": RE4cT9kPfpbhFE2KrrM1 = 105; break;
 case "avatardance_e01.ani": RE4cT9kPfpbhFE2KrrM1 = 106; break;
 case "avatardance_e02.ani": RE4cT9kPfpbhFE2KrrM1 = 107; break;
 case "avatardance_f01.ani": RE4cT9kPfpbhFE2KrrM1 = 108; break;
 case "avatardance_f02.ani": RE4cT9kPfpbhFE2KrrM1 = 109; break;
 case "nnnewswing_body.ani": RE4cT9kPfpbhFE2KrrM1 = 110; break;
 }
 if(RE4cT9kPfpbhFE2KrrM1 != -1)
 X6HdYKIBae466vJb3Y.sq_SetCurrentAnimation(RE4cT9kPfpbhFE2KrrM1); 
 else
 return false;
 return true; 
} ;

 
function setCurrentAnimation_avatar_eff(MDkdSAyFS2ujtrenicQAN, MJhlT2WpfdRsVa9_qhUt9cP, ZsR0D8s3G4GWBo)
{
 
 local sekYCFZiZho = null;
 sekYCFZiZho = MDkdSAyFS2ujtrenicQAN.getVar().GetAnimationMap("mage_avatar_" + MJhlT2WpfdRsVa9_qhUt9cP, "character/mage/effect/animation/avatar/js60qq506807329_skin/" + MJhlT2WpfdRsVa9_qhUt9cP + ".ani");
 if(sekYCFZiZho && ZsR0D8s3G4GWBo)
 sq_Rewind(sekYCFZiZho); 
 return sekYCFZiZho; 
} ;



