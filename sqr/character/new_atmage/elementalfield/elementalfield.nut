
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_atmage_elementalfield(B74PVUwp1h)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!B74PVUwp1h) return false; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_IsUseSkill(243); 
 if(Wp5xWEER1lYn77EGo1qZc1yH) 
 {
 B74PVUwp1h.sq_IntVectClear();
 B74PVUwp1h.sq_IntVectPush(0); 
 B74PVUwp1h.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atmage_elementalfield(B74PVUwp1h)
{
 if(!B74PVUwp1h) return false; 
return true; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_GetState(); 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_STAND) 
 return true; 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_ATTACK) 
 {
 return B74PVUwp1h.sq_IsCommandEnable(243); 
 }
 return true; 
} ;

 
function onSetState_atmage_elementalfield(B74PVUwp1h, Wp5xWEER1lYn77EGo1qZc1yH, Pu4_oeBhaVMEmOM5, BmumNWaLZiLblx4u3Vd)
{
 if(!B74PVUwp1h) return; 
 B74PVUwp1h.sq_StopMove(); 
 local UAuP9GeRePaeGL5UmK = B74PVUwp1h.sq_GetVectorData(Pu4_oeBhaVMEmOM5, 0); 
 B74PVUwp1h.setSkillSubState(UAuP9GeRePaeGL5UmK); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 B74PVUwp1h.sq_SetCurrentAnimation(97);
 break;
 }
 B74PVUwp1h.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atmage_elementalfield(B74PVUwp1h, Wp5xWEER1lYn77EGo1qZc1yH)
{
 if(!B74PVUwp1h) return;
 local Pu4_oeBhaVMEmOM5 = B74PVUwp1h.getSkillSubState(); 
 switch(Pu4_oeBhaVMEmOM5)
 {
 case 0:
 switch(Wp5xWEER1lYn77EGo1qZc1yH)
 {
 case 1:
 if(B74PVUwp1h.sq_IsMyControlObject())
 sq_flashScreen(B74PVUwp1h, 100, 250, 0, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 sq_SetMyShake(B74PVUwp1h, 3, 160); 
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 local BmumNWaLZiLblx4u3Vd = B74PVUwp1h.sq_GetIntData(243, 0); 
 local UAuP9GeRePaeGL5UmK = BmumNWaLZiLblx4u3Vd/400.0; 
 local OA8hC4ZLkCdvFEb1epnj = sq_GetSkillLevel(B74PVUwp1h, 243); 
 B74PVUwp1h.sq_StartWrite();
 B74PVUwp1h.sq_WriteDword(243); 
 B74PVUwp1h.sq_WriteDword(1); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(243, 243, 2, 1.0)); 
 B74PVUwp1h.sq_WriteFloat(UAuP9GeRePaeGL5UmK); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetLevelData(243, 0, OA8hC4ZLkCdvFEb1epnj)); 
 B74PVUwp1h.sq_SendCreatePassiveObjectPacket(24379, 0, 0, 0, 0);
 
 
 B74PVUwp1h.sq_StartWrite();
 B74PVUwp1h.sq_WriteWord(1);
 sq_SendChangeSkillEffectPacket(B74PVUwp1h, 243); 
 
 }
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atmage_elementalfield(kWix2gOqnzUJ6QKXC0j18e)
{
 if(!kWix2gOqnzUJ6QKXC0j18e) return;
 if(!kWix2gOqnzUJ6QKXC0j18e.sq_IsMyControlObject()) return;
 local YDc6k6IJbhxxKXHQvlDTp = kWix2gOqnzUJ6QKXC0j18e.getSkillSubState(); 
 switch(YDc6k6IJbhxxKXHQvlDTp)
 {
 case 0:
 kWix2gOqnzUJ6QKXC0j18e.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


function onChangeSkillEffect_atmage_elementalfield(kWix2gOqnzUJ6QKXC0j18e, YDc6k6IJbhxxKXHQvlDTp, wr4nkP_IBP8HIPnou3)
{
 if(!kWix2gOqnzUJ6QKXC0j18e) return;
 local I8jR6005kCmdmx3Ao1XYNJ = wr4nkP_IBP8HIPnou3.readWord();
 switch(I8jR6005kCmdmx3Ao1XYNJ)
 {
 case 1:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(kWix2gOqnzUJ6QKXC0j18e, "character/new_atmage/elementalfield/ap_elementalfield.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(kWix2gOqnzUJ6QKXC0j18e, "character/new_atmage/elementalfield/ap_elementalfield.nut");
 local nSs2e62rwPFUhEQNnkTnFf = sq_GetSkillLevel(kWix2gOqnzUJ6QKXC0j18e, 243); 
 local TsRMyifhZDoNZSB = CNSquirrelAppendage.sq_AppendAppendage(kWix2gOqnzUJ6QKXC0j18e, kWix2gOqnzUJ6QKXC0j18e, 243, true, "character/new_atmage/elementalfield/ap_elementalfield.nut", false);
 TsRMyifhZDoNZSB.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(kWix2gOqnzUJ6QKXC0j18e), 243, nSs2e62rwPFUhEQNnkTnFf); 
 TsRMyifhZDoNZSB.sq_SetValidTime(kWix2gOqnzUJ6QKXC0j18e.sq_GetLevelData(243, 1, nSs2e62rwPFUhEQNnkTnFf)); 
 CNSquirrelAppendage.sq_Append(TsRMyifhZDoNZSB, kWix2gOqnzUJ6QKXC0j18e, kWix2gOqnzUJ6QKXC0j18e);
 break;
 }
} ;


