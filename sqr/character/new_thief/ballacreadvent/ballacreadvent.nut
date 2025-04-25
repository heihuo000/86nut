
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C





 
function checkExecutableSkill_thief_ballacreadvent(P17_Ie67RvIkHnpfoMfPp0)
{
 if(!P17_Ie67RvIkHnpfoMfPp0) return false; 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 local XfsYmB3qtYof_mmblqAAafN = P17_Ie67RvIkHnpfoMfPp0.getMyPassiveObject(25012, 0); 
 if(!XfsYmB3qtYof_mmblqAAafN) 
 {
 if(P17_Ie67RvIkHnpfoMfPp0.isMessage()) 
 sq_AddMessage(71100);
 P17_Ie67RvIkHnpfoMfPp0.startCantUseSkillWarning(); 
 return false;
 }
 switch(XfsYmB3qtYof_mmblqAAafN.getState())
 {
 case 3:
 case 4:
 break;
 default: 
 return false;
 }
 local PNzQS9_bU5yEsnnqmdlFbqaG = P17_Ie67RvIkHnpfoMfPp0.sq_IsUseSkill(225); 
 if(PNzQS9_bU5yEsnnqmdlFbqaG) 
 {
 P17_Ie67RvIkHnpfoMfPp0.sq_IntVectClear();
 P17_Ie67RvIkHnpfoMfPp0.sq_IntVectPush(0); 
 P17_Ie67RvIkHnpfoMfPp0.sq_AddSetStatePacket(225, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} 

 
function checkCommandEnable_thief_ballacreadvent(zebrUf85bpwk)
{
 if(!zebrUf85bpwk) return false; 
 local Fp6rhQKtOvlY = zebrUf85bpwk.getMyPassiveObject(25012, 0); 
 if(!Fp6rhQKtOvlY) return false; 
 local TMJNfY3L4tl = zebrUf85bpwk.sq_GetState(); 
 if(TMJNfY3L4tl == STATE_STAND) 
 return true; 
 if(TMJNfY3L4tl == STATE_ATTACK) 
 {
 return zebrUf85bpwk.sq_IsCommandEnable(225); 
 }
 return true; 
} 

 
function onSetState_thief_ballacreadvent(zebrUf85bpwk, Fp6rhQKtOvlY, TMJNfY3L4tl, UPEZnSzjrt4aFf)
{
 if(!zebrUf85bpwk) return; 
 zebrUf85bpwk.sq_StopMove(); 
 local aNYI5nmGqumVvgiY = zebrUf85bpwk.sq_GetVectorData(TMJNfY3L4tl, 0); 
 zebrUf85bpwk.setSkillSubState(aNYI5nmGqumVvgiY); 
 switch(aNYI5nmGqumVvgiY)
 {
 case 0:
 zebrUf85bpwk.sq_SetCurrentAnimation(134);
 sq_CreateDrawOnlyObject(zebrUf85bpwk, "character/thief/effect/animation/ballacreadvent/casting/casting02_groundn.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 if(zebrUf85bpwk.sq_IsMyControlObject()) 
 {
 
 zebrUf85bpwk.sq_StartWrite();
 zebrUf85bpwk.sq_WriteDword(225);
 zebrUf85bpwk.sq_WriteDword(1);
 zebrUf85bpwk.sq_WriteDword(zebrUf85bpwk.sq_GetBonusRateWithPassive(225, 225, 0, 1.0)); 
 sq_SendCreatePassiveObjectPacket(zebrUf85bpwk, 24378, 0, 0, -1, 0, zebrUf85bpwk.getDirection()); 
 
 zebrUf85bpwk.sq_StartWrite();
 zebrUf85bpwk.sq_WriteDword(225);
 zebrUf85bpwk.sq_WriteDword(2);
 zebrUf85bpwk.sq_WriteDword(zebrUf85bpwk.sq_GetBonusRateWithPassive(225, 225, 1, 1.0)); 
 zebrUf85bpwk.sq_WriteDword(200); 
 zebrUf85bpwk.sq_WriteDword(zebrUf85bpwk.sq_GetBonusRateWithPassive(225, 225, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacket(zebrUf85bpwk, 24378, 0, 150, -1, 0, zebrUf85bpwk.getDirection()); 
 }
 local OCFKys9S_yL = zebrUf85bpwk.getMyPassiveObject(25012, 0); 
 if(OCFKys9S_yL)
 {
 if(OCFKys9S_yL.isMyControlObject())
 OCFKys9S_yL.sendStateOnlyPacket(10); 
 setCurrentAnimationFromCutomIndex(OCFKys9S_yL, 23); 
 }
 break;
 }
 
 
 
 
 
} 

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function onEndCurrentAni_thief_ballacreadvent(rgBkTbq4k6UkzBoJ8J)
{
 if(!rgBkTbq4k6UkzBoJ8J) return;
 if(!rgBkTbq4k6UkzBoJ8J.sq_IsMyControlObject()) return;
 local M9h61NKxgPZW6llDxf2O0 = rgBkTbq4k6UkzBoJ8J.getSkillSubState(); 
 if(M9h61NKxgPZW6llDxf2O0 == 0)
 rgBkTbq4k6UkzBoJ8J.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} 

function onKeyFrameFlag_thief_ballacreadvent(rgBkTbq4k6UkzBoJ8J, M9h61NKxgPZW6llDxf2O0)
{
 if(!rgBkTbq4k6UkzBoJ8J) return false;
 local edenLzFww0 = rgBkTbq4k6UkzBoJ8J.getSkillSubState(); 
 switch(edenLzFww0)
 {
 case 0:
 switch(M9h61NKxgPZW6llDxf2O0)
 {
 case 1:
 local PggYiVzG3S = rgBkTbq4k6UkzBoJ8J.getMyPassiveObjectCount(24378); 
 for(local RcQM0wGz58SV73X = PggYiVzG3S-1; RcQM0wGz58SV73X >= 0; RcQM0wGz58SV73X-=1)
 {
 local ygIrbZQk436rkmXB = rgBkTbq4k6UkzBoJ8J.getMyPassiveObject(24378, RcQM0wGz58SV73X); 
 if(ygIrbZQk436rkmXB &&
 ygIrbZQk436rkmXB.getVar("skill").get_vector(0) == 225 &&
 ygIrbZQk436rkmXB.getVar("subType").get_vector(0) == 2)
 {
 local AGIMZlEfPCLXzi = sq_CreateDrawOnlyObject(ygIrbZQk436rkmXB, "character/thief/effect/animation/ballacreadvent/casting/flooreffect_d01.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 ygIrbZQk436rkmXB.getVar("aniobj1").push_obj_vector(AGIMZlEfPCLXzi);
 break;
 }
 }
 break;
 case 2:
 local PggYiVzG3S = rgBkTbq4k6UkzBoJ8J.getMyPassiveObjectCount(24378); 
 for(local RcQM0wGz58SV73X = PggYiVzG3S-1; RcQM0wGz58SV73X >= 0; RcQM0wGz58SV73X-=1)
 {
 local ygIrbZQk436rkmXB = rgBkTbq4k6UkzBoJ8J.getMyPassiveObject(24378, RcQM0wGz58SV73X); 
 if(ygIrbZQk436rkmXB &&
 ygIrbZQk436rkmXB.getVar("skill").get_vector(0) == 225 &&
 ygIrbZQk436rkmXB.getVar("subType").get_vector(0) == 2)
 {
 if(ygIrbZQk436rkmXB.isMyControlObject()) 
 {
 local AGIMZlEfPCLXzi = sq_CreateDrawOnlyObject(ygIrbZQk436rkmXB, "character/thief/effect/animation/ballacreadvent/bg/bgstart_set07d02.ani", ENUM_DRAWLAYER_NORMAL, false);; 
 sq_setCurrentAxisPos(AGIMZlEfPCLXzi, 1, ygIrbZQk436rkmXB.getYPos() -2 ); 
 AGIMZlEfPCLXzi.addCustomAnimation(sq_CreateAnimation("", "character/thief/effect/animation/ballacreadvent/bg/bg_set07d02.ani")); 
 ygIrbZQk436rkmXB.getVar("aniobj2").push_obj_vector(AGIMZlEfPCLXzi);
 }
 break;
 }
 }
 break;
 }
 break;
 }
 return true;
} 


