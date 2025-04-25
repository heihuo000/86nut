
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_sestoelemento(fMrbKZyiFY0)
{
 if(!fMrbKZyiFY0) return false; 
 local f_qymQQUOix3z9I7MEKrv = fMrbKZyiFY0.sq_IsUseSkill(253); 
 if(f_qymQQUOix3z9I7MEKrv) 
 {
 
 fMrbKZyiFY0.sq_IsEnterSkillLastKeyUnits(253);
 fMrbKZyiFY0.sq_IntVectClear();
 fMrbKZyiFY0.sq_IntVectPush(0); 
 fMrbKZyiFY0.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_sestoelemento(fMrbKZyiFY0)
{
 if(!fMrbKZyiFY0) return false; 
 local f_qymQQUOix3z9I7MEKrv = fMrbKZyiFY0.sq_GetState(); 
 if(f_qymQQUOix3z9I7MEKrv == STATE_STAND) 
 return true; 
 if(f_qymQQUOix3z9I7MEKrv == STATE_ATTACK) 
 {
 return fMrbKZyiFY0.sq_IsCommandEnable(253); 
 }
 return true; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_mage_sestoelemento(PljpNED8aOP43cbnL_gYfHO, y3_u39GyX_aFwiNBL, rQ3zhJ7SyAj_nKAXeCEv, pCxq4qAfQ2l)
{
 if(!PljpNED8aOP43cbnL_gYfHO) return; 
 PljpNED8aOP43cbnL_gYfHO.sq_StopMove(); 
 local SS8zTT98oC3JXkx3i53as = PljpNED8aOP43cbnL_gYfHO.sq_GetVectorData(rQ3zhJ7SyAj_nKAXeCEv, 0); 
 PljpNED8aOP43cbnL_gYfHO.setSkillSubState(SS8zTT98oC3JXkx3i53as); 
 switch(SS8zTT98oC3JXkx3i53as)
 {
 case 0: 
 PljpNED8aOP43cbnL_gYfHO.sq_SetCurrentAnimation(120); 
 local XUmoaYggYONrJ5Wknu = sq_GetSkillLevel(PljpNED8aOP43cbnL_gYfHO, 253); 
 local xFiKYuRII6cM8k7K = sq_GetCastTime(PljpNED8aOP43cbnL_gYfHO, 253, XUmoaYggYONrJ5Wknu); 
 sq_StartDrawCastGauge(PljpNED8aOP43cbnL_gYfHO, xFiKYuRII6cM8k7K, true); 
 local CdpcACydLIWglKbFK = PljpNED8aOP43cbnL_gYfHO.sq_GetLevelData(253, 5, XUmoaYggYONrJ5Wknu); 
 local JEHC1IMIi9PJDPr8beBNTZ1x = PljpNED8aOP43cbnL_gYfHO.getCurrentAnimation(); 
 local T2oyyMeuzpyTMsRv3R6T1 = JEHC1IMIi9PJDPr8beBNTZ1x.getDelaySum(false); 
 
 PljpNED8aOP43cbnL_gYfHO.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
 local XwpasKXaVWa7lYIl2wbmphB = JEHC1IMIi9PJDPr8beBNTZ1x.getDelaySum(false); 
 local RLalWyVKDY97VVTsd = XwpasKXaVWa7lYIl2wbmphB.tofloat() / T2oyyMeuzpyTMsRv3R6T1.tofloat(); 
 local xYaKXNJEWC7l = (xFiKYuRII6cM8k7K.tofloat() * RLalWyVKDY97VVTsd).tointeger(); 
 PljpNED8aOP43cbnL_gYfHO.getVar().setBool(0, false); 
 PljpNED8aOP43cbnL_gYfHO.getVar().clear_vector(); 
 PljpNED8aOP43cbnL_gYfHO.getVar().push_vector(xYaKXNJEWC7l); 
 PljpNED8aOP43cbnL_gYfHO.getVar().push_vector(CdpcACydLIWglKbFK); 
 break;
 case 1: 
 local nrJDzvlPUUxdFvQv6nw = PljpNED8aOP43cbnL_gYfHO.sq_GetVectorData(rQ3zhJ7SyAj_nKAXeCEv, 1); 
 local xFiKYuRII6cM8k7K = PljpNED8aOP43cbnL_gYfHO.getVar().get_vector(0); 
 local CdpcACydLIWglKbFK = PljpNED8aOP43cbnL_gYfHO.getVar().get_vector(1); 
 PljpNED8aOP43cbnL_gYfHO.sq_SetCurrentAnimation(119); 
 local XUmoaYggYONrJ5Wknu = sq_GetSkillLevel(PljpNED8aOP43cbnL_gYfHO, 253); 
 local KYkBgdoAaaaeLVdCqTG2Q = PljpNED8aOP43cbnL_gYfHO.sq_GetLevelData(253, 3, XUmoaYggYONrJ5Wknu); 
 local qj5YU4UIa4kdE = PljpNED8aOP43cbnL_gYfHO.sq_GetLevelData(253, 4, XUmoaYggYONrJ5Wknu); 
 local On_QMP7QsZTtzJK1N0 = sq_GetUniformVelocity(KYkBgdoAaaaeLVdCqTG2Q, qj5YU4UIa4kdE, nrJDzvlPUUxdFvQv6nw - xFiKYuRII6cM8k7K, CdpcACydLIWglKbFK); 
 PljpNED8aOP43cbnL_gYfHO.getVar().clear_vector(); 
 PljpNED8aOP43cbnL_gYfHO.getVar().push_vector(On_QMP7QsZTtzJK1N0); 
 PljpNED8aOP43cbnL_gYfHO.sq_PlaySound("WZ_SESTOELEMENTO_CAST");
 break;
 case 2: 
 PljpNED8aOP43cbnL_gYfHO.sq_SetCurrentAnimation(121);
 PljpNED8aOP43cbnL_gYfHO.sq_PlaySound("WZ_SESTOELEMENTO");
 break;
 case 3: 
 PljpNED8aOP43cbnL_gYfHO.sq_SetCurrentAnimation(122);
 break;
 }
 if(SS8zTT98oC3JXkx3i53as != 0) 
 PljpNED8aOP43cbnL_gYfHO.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_mage_sestoelemento(icLS0JfVn7CfJWZ2VIF2Jl, ARr1YFhgQx_3M64ApfOw)
{
 if(!icLS0JfVn7CfJWZ2VIF2Jl)return false;
 local EXg_l5RvyE0UDq7GGP89P = icLS0JfVn7CfJWZ2VIF2Jl.getSkillSubState(); 
 switch(EXg_l5RvyE0UDq7GGP89P)
 {
 case 1: 
 if(ARr1YFhgQx_3M64ApfOw == 2)
 {
 if(icLS0JfVn7CfJWZ2VIF2Jl.sq_IsMyControlObject())
 {
 local CKbXVKNxY7iVqP = sq_GetSkillLevel(icLS0JfVn7CfJWZ2VIF2Jl, 253); 
 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_StartWrite();
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(253); 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetBonusRateWithPassive(253, 253, 1, 1.0)); 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetBonusRateWithPassive(253, 253, 2, 1.0)); 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.sq_GetLevelData(253, 0, CKbXVKNxY7iVqP)); 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_WriteDword(icLS0JfVn7CfJWZ2VIF2Jl.getVar().get_vector(0)); 
 icLS0JfVn7CfJWZ2VIF2Jl.sq_SendCreatePassiveObjectPacket(24372, 0, 290, -150, 0);
 }
 }
 break;
 case 3: 
 if(ARr1YFhgQx_3M64ApfOw == 1)
 {
 if(icLS0JfVn7CfJWZ2VIF2Jl.sq_IsMyControlObject()) 
 {
 local eeODLaLMfrBBVcYQ24e_bk = icLS0JfVn7CfJWZ2VIF2Jl.getMyPassiveObjectCount(24372); 
 if(eeODLaLMfrBBVcYQ24e_bk > 0)
 {
 for(local oFnDNZhJ0gMDvjfL02 = 0; oFnDNZhJ0gMDvjfL02 < eeODLaLMfrBBVcYQ24e_bk; oFnDNZhJ0gMDvjfL02++)
 {
 local oI_C2_0ntLNAoWYn_anC6Nf = icLS0JfVn7CfJWZ2VIF2Jl.getMyPassiveObject(24372, oFnDNZhJ0gMDvjfL02); 
 if(!oI_C2_0ntLNAoWYn_anC6Nf) continue; 
 if(oI_C2_0ntLNAoWYn_anC6Nf.getVar("skill").get_vector(0) == 253
 && oI_C2_0ntLNAoWYn_anC6Nf.getVar("state").get_vector(0) != 10)
 {
 
 local RNP89YeeNUoLqLvFNswM2TU = sq_GetGlobalIntVector();
 sq_IntVectorClear(RNP89YeeNUoLqLvFNswM2TU);
 oI_C2_0ntLNAoWYn_anC6Nf.addSetStatePacket(10, RNP89YeeNUoLqLvFNswM2TU, STATE_PRIORITY_AUTO, false, "");
 }
 }
 }
 }
 }
 break;
 }
 return true;
} ;

function onEndState_mage_sestoelemento(BsXM5XNAZSWIoct, rMMifh9oLR9TTSDxYh5C8)
{
 if(!BsXM5XNAZSWIoct) return;
 if(rMMifh9oLR9TTSDxYh5C8 != 253)
 sq_EndDrawCastGauge(BsXM5XNAZSWIoct); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(BsXM5XNAZSWIoct, "character/mage/appendage/ap_chargingeffect.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(BsXM5XNAZSWIoct, "character/mage/appendage/ap_chargingeffect.nut");
} ;

function onProcCon_mage_sestoelemento(BsXM5XNAZSWIoct)
{
 if(!BsXM5XNAZSWIoct) return;
 local rMMifh9oLR9TTSDxYh5C8 = BsXM5XNAZSWIoct.getSkillSubState(); 
 if(rMMifh9oLR9TTSDxYh5C8 == 0)
 {
 local vgkEvQCZ7QY = BsXM5XNAZSWIoct.getVar().get_vector(0); 
 local KUJ11beW7zAa68M72Z = BsXM5XNAZSWIoct.sq_GetStateTimer(); 
 
 if(KUJ11beW7zAa68M72Z >= vgkEvQCZ7QY)
 {
 if(BsXM5XNAZSWIoct.isDownSkillLastKey()) 
 {
 
 if(BsXM5XNAZSWIoct.getVar().getBool(0) == false)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(BsXM5XNAZSWIoct.getVar().get_vector(1)); 
 sq_SendChangeSkillEffectPacket(BsXM5XNAZSWIoct, 253); 
 BsXM5XNAZSWIoct.getVar().setBool(0, true); 
 }
 }
 else
 {
 BsXM5XNAZSWIoct.sq_IntVectClear();
 BsXM5XNAZSWIoct.sq_IntVectPush(1); 
 BsXM5XNAZSWIoct.sq_IntVectPush(KUJ11beW7zAa68M72Z);
 BsXM5XNAZSWIoct.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true); 
 }
 }
 }
} ;

 
function onEndCurrentAni_mage_sestoelemento(w1vNwFvQpQG0jeWHiG)
{
 if(!w1vNwFvQpQG0jeWHiG) return;
 if(!w1vNwFvQpQG0jeWHiG.sq_IsMyControlObject()) return;
 local xMTMsGideEeVBktkWuj1w3s1 = w1vNwFvQpQG0jeWHiG.getSkillSubState(); 
 if(xMTMsGideEeVBktkWuj1w3s1 == 2)
 {
 w1vNwFvQpQG0jeWHiG.sq_IntVectClear();
 w1vNwFvQpQG0jeWHiG.sq_IntVectPush(3); 
 w1vNwFvQpQG0jeWHiG.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true); 
 }
 else if(xMTMsGideEeVBktkWuj1w3s1 == 3)
 w1vNwFvQpQG0jeWHiG.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function getScrollBasisPos_mage_sestoelemento(w1vNwFvQpQG0jeWHiG)
{
 if(!w1vNwFvQpQG0jeWHiG) return;
 if(!w1vNwFvQpQG0jeWHiG.sq_IsMyControlObject()) return;
 local xMTMsGideEeVBktkWuj1w3s1 = w1vNwFvQpQG0jeWHiG.getSkillSubState(); 
 switch(xMTMsGideEeVBktkWuj1w3s1)
 {
 case 1:
 case 2:
 local skEES9Fe9tRg2wqXjpN7YLm = (xMTMsGideEeVBktkWuj1w3s1 == 1)
 ?w1vNwFvQpQG0jeWHiG.sq_GetStateTimer()
 : 200; 
 local F0mKFGsRR37d = sq_GetDistancePos(w1vNwFvQpQG0jeWHiG.getXPos(), 
 w1vNwFvQpQG0jeWHiG.getDirection(), 
 sq_GetUniformVelocity(0, 300, skEES9Fe9tRg2wqXjpN7YLm, 200)); 
 w1vNwFvQpQG0jeWHiG.sq_SetCameraScrollPosition(F0mKFGsRR37d, w1vNwFvQpQG0jeWHiG.getYPos(), 0); 
 return true;
 case 3:
 local FkzhAGeE3n5u7SAfXid = w1vNwFvQpQG0jeWHiG.sq_GetCurrentAni(); 
 local skEES9Fe9tRg2wqXjpN7YLm = sq_GetCurrentTime(FkzhAGeE3n5u7SAfXid); 
 local nzWU3EuPFScyXUZxpzaE = FkzhAGeE3n5u7SAfXid.getDelaySum(0, 0); 
 local F0mKFGsRR37d = sq_GetDistancePos(w1vNwFvQpQG0jeWHiG.getXPos(),
 w1vNwFvQpQG0jeWHiG.getDirection(),
 sq_GetUniformVelocity(380, 0, skEES9Fe9tRg2wqXjpN7YLm, nzWU3EuPFScyXUZxpzaE)); 
 w1vNwFvQpQG0jeWHiG.sq_SetCameraScrollPosition(F0mKFGsRR37d, w1vNwFvQpQG0jeWHiG.getYPos(), 0); 
 return true;
 }
 return false;
} ;


