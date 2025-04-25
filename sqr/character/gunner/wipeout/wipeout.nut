
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_wipeout(_teXW7KIjhfe5Igv)
{
 if(!_teXW7KIjhfe5Igv) return false; 
 local w1gIC7ZCnmyIfqlLgpYoNS2 = _teXW7KIjhfe5Igv.sq_IsUseSkill(237); 
 if(w1gIC7ZCnmyIfqlLgpYoNS2) 
 {
 _teXW7KIjhfe5Igv.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_wipeout(AjE7QoZUawKehXfuJltvW)
{
 if(!AjE7QoZUawKehXfuJltvW) return false; 
 local SkepzYQigZuM0CeIJar = AjE7QoZUawKehXfuJltvW.sq_GetState(); 
 if(SkepzYQigZuM0CeIJar == STATE_STAND) 
 return true; 
 if(SkepzYQigZuM0CeIJar == STATE_ATTACK) 
 {
 return AjE7QoZUawKehXfuJltvW.sq_IsCommandEnable(237); 
 }
 return true; 
} ;

 
function onSetState_gunner_wipeout(AjE7QoZUawKehXfuJltvW, SkepzYQigZuM0CeIJar, faU0lOPUA8, Jq4OqVuHr52GMVj)
{
 if(!AjE7QoZUawKehXfuJltvW) return; 
 AjE7QoZUawKehXfuJltvW.sq_StopMove(); 
 AjE7QoZUawKehXfuJltvW.sq_SetCurrentAnimation(118); 
} ;

 
function onKeyFrameFlag_gunner_wipeout(AjE7QoZUawKehXfuJltvW, SkepzYQigZuM0CeIJar)
{
 if(!AjE7QoZUawKehXfuJltvW) return false;
 switch(SkepzYQigZuM0CeIJar)
 {
 case 1:
 
 sq_CreateDrawOnlyObject(AjE7QoZUawKehXfuJltvW, "character/gunner/effect/animation/wipeout/wipeoutattack01back_11.ani", ENUM_DRAWLAYER_BOTTOM, true);
 
 sq_CreateDrawOnlyObject(AjE7QoZUawKehXfuJltvW, "character/gunner/effect/animation/wipeout/wipeoutfront_06.ani", ENUM_DRAWLAYER_NORMAL, true);
 if(AjE7QoZUawKehXfuJltvW.sq_IsMyControlObject())
 {
 sq_SetMyShake(AjE7QoZUawKehXfuJltvW, 10, 300); 
 AjE7QoZUawKehXfuJltvW.sq_StartWrite();
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(237); 
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(1); 
 AjE7QoZUawKehXfuJltvW.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 case 5:
 
 sq_CreateDrawOnlyObject(AjE7QoZUawKehXfuJltvW, "character/gunner/effect/animation/wipeout/wipeoutglowback_01.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 sq_AddDrawOnlyAniFromParent(AjE7QoZUawKehXfuJltvW, "character/gunner/effect/animation/wipeout/wipeoutattack02back_01.ani", 0, -1, 0);
 if(AjE7QoZUawKehXfuJltvW.sq_IsMyControlObject())
 {
 local faU0lOPUA8 = sq_GetSkillLevel(AjE7QoZUawKehXfuJltvW, 237); 
 AjE7QoZUawKehXfuJltvW.sq_StartWrite();
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(237); 
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(2); 
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(AjE7QoZUawKehXfuJltvW.sq_GetBonusRateWithPassive(237, 237, 0, 1.0)); 
 AjE7QoZUawKehXfuJltvW.sq_WriteDword(sq_GetLevelData(AjE7QoZUawKehXfuJltvW, 237, 1, faU0lOPUA8)); 
 AjE7QoZUawKehXfuJltvW.sq_SendCreatePassiveObjectPacket(24371, 0, 0, 0, 0); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_gunner_wipeout(H5t7YwkcS13cbWAi3otRrLnz)
{
 if(!H5t7YwkcS13cbWAi3otRrLnz) return;
 if(H5t7YwkcS13cbWAi3otRrLnz.sq_IsMyControlObject())
 H5t7YwkcS13cbWAi3otRrLnz.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;
