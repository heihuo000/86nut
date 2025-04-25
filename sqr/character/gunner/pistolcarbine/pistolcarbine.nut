
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_pistolcarbine(yOnIjqP2YVzQc6UAnCH)
{
 if(!yOnIjqP2YVzQc6UAnCH) return false; 
 local RALtAxtOZm = yOnIjqP2YVzQc6UAnCH.sq_IsUseSkill(241); 
 if(RALtAxtOZm) 
 {
 yOnIjqP2YVzQc6UAnCH.sq_IntVectClear();
 yOnIjqP2YVzQc6UAnCH.sq_IntVectPush(0); 
 yOnIjqP2YVzQc6UAnCH.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_pistolcarbine(JXNChsS1mO)
{
 if(!JXNChsS1mO) return false; 
 local TJoYzzs19zkzG1y87SxJvpAE = JXNChsS1mO.sq_GetState(); 
 if(TJoYzzs19zkzG1y87SxJvpAE == STATE_STAND) 
 return true; 
 if(TJoYzzs19zkzG1y87SxJvpAE == STATE_ATTACK) 
 {
 return JXNChsS1mO.sq_IsCommandEnable(241); 
 }
 return true; 
} ;

 
function onSetState_gunner_pistolcarbine(JXNChsS1mO, TJoYzzs19zkzG1y87SxJvpAE, esnknfke_zt5jW, blenfkqZqeRu5Zlu5Y)
{
 if(!JXNChsS1mO) return; 
 JXNChsS1mO.sq_StopMove(); 
 local v8GQW60uGm03O9Z = JXNChsS1mO.sq_GetVectorData(esnknfke_zt5jW, 0); 
 JXNChsS1mO.setSkillSubState(v8GQW60uGm03O9Z); 
 switch(v8GQW60uGm03O9Z)
 {
 case 0:
 JXNChsS1mO.sq_SetCurrentAnimation(150); 
 local r7euLZlgyC7dane = sq_GetLevelData(JXNChsS1mO, 241, 0, sq_GetSkillLevel(JXNChsS1mO, 241)); 
 JXNChsS1mO.getVar().clear_vector(); 
 JXNChsS1mO.getVar().push_vector(17); 
 
 sq_CreateDrawOnlyObject(JXNChsS1mO, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/pistolcarbine/duststart_1.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 1:
 JXNChsS1mO.sq_SetCurrentAnimation(151); 
 
 local v3wlYLWldwdp = sq_CreateDrawOnlyObject(JXNChsS1mO, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/pistolcarbine/dustloop_1.ani", ENUM_DRAWLAYER_NORMAL, true);
 sq_moveWithParent(JXNChsS1mO, v3wlYLWldwdp); 
 RemoveAllAni(JXNChsS1mO); 
 JXNChsS1mO.getVar("aniobj").push_obj_vector(v3wlYLWldwdp); 
 break;
 case 2:
 JXNChsS1mO.sq_SetCurrentAnimation(152); 
 
 sq_CreateDrawOnlyObject(JXNChsS1mO, "passiveobject/script_sqr_nut_qq506807329/gunner/animation/pistolcarbine/dustend_1.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 }
 JXNChsS1mO.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onKeyFrameFlag_gunner_pistolcarbine(CmQCctoK_mqZB, wcIw1u5UoJNXdIPV0M5mMMwT)
{
 if(!CmQCctoK_mqZB) return false;
 local d97Bno0P7vrn = CmQCctoK_mqZB.getSkillSubState(); 
 switch(d97Bno0P7vrn)
 {
 case 0:
 case 1:
 case 2:
 if(CmQCctoK_mqZB.sq_IsMyControlObject())
 {
 local Gh8tiABWZE84nwGg12a31F6B = ENUM_ELEMENT_NONE; 
 
 local FnNwtqvf1rIkSOkOndbML = CmQCctoK_mqZB.sq_GetDefaultAttackInfo(0); 
 for(local yra5zZvBMoqxbe_jTlEOvM6B = ENUM_ELEMENT_FIRE; yra5zZvBMoqxbe_jTlEOvM6B < ENUM_ELEMENT_NONE; yra5zZvBMoqxbe_jTlEOvM6B++)
 if(FnNwtqvf1rIkSOkOndbML.isValidElement(yra5zZvBMoqxbe_jTlEOvM6B)) 
 {
 Gh8tiABWZE84nwGg12a31F6B = yra5zZvBMoqxbe_jTlEOvM6B; 
 break;
 }
 
 CmQCctoK_mqZB.sq_StartWrite();
 CmQCctoK_mqZB.sq_WriteDword(241); 
 CmQCctoK_mqZB.sq_WriteDword(CmQCctoK_mqZB.sq_GetBonusRateWithPassive(241, 241, 0, 1.0)); 
 CmQCctoK_mqZB.sq_WriteWord(Gh8tiABWZE84nwGg12a31F6B); 
 CmQCctoK_mqZB.sq_SendCreatePassiveObjectPacket(24371, 0, 70, 0, 
 (wcIw1u5UoJNXdIPV0M5mMMwT == 1)?100: 120 
 ); 
 }
 CmQCctoK_mqZB.getVar().set_vector(0, CmQCctoK_mqZB.getVar().get_vector(0) - 1); 
 if(d97Bno0P7vrn != 2) 
 if(CmQCctoK_mqZB.getVar().get_vector(0) <= 0) 
 if(CmQCctoK_mqZB.sq_IsMyControlObject())
 {
 CmQCctoK_mqZB.sq_IntVectClear();
 CmQCctoK_mqZB.sq_IntVectPush(2); 
 CmQCctoK_mqZB.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_gunner_pistolcarbine(_teXW7KIjhfe5Igv)
{
 if(!_teXW7KIjhfe5Igv) return;
 if(!_teXW7KIjhfe5Igv.sq_IsMyControlObject()) return;
 local w1gIC7ZCnmyIfqlLgpYoNS2 = _teXW7KIjhfe5Igv.getSkillSubState(); 
 switch(w1gIC7ZCnmyIfqlLgpYoNS2)
 {
 case 0:
 _teXW7KIjhfe5Igv.sq_IntVectClear();
 _teXW7KIjhfe5Igv.sq_IntVectPush(w1gIC7ZCnmyIfqlLgpYoNS2+1); 
 _teXW7KIjhfe5Igv.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, true); 
 break;
 case 2:
 _teXW7KIjhfe5Igv.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onProc_gunner_pistolcarbine(AjE7QoZUawKehXfuJltvW)
{
 if(!AjE7QoZUawKehXfuJltvW) return;
 local SkepzYQigZuM0CeIJar = AjE7QoZUawKehXfuJltvW.getSkillSubState(); 
 if(SkepzYQigZuM0CeIJar == 1)
 {
 local faU0lOPUA8 = AjE7QoZUawKehXfuJltvW.getVar("aniobj").get_obj_vector(0); 
 if(faU0lOPUA8)
 {
 local Jq4OqVuHr52GMVj = faU0lOPUA8.getCurrentAnimation(); 
 if(sq_IsEnd(Jq4OqVuHr52GMVj))sq_Rewind(Jq4OqVuHr52GMVj); 
 }
 local n38ECoEdgDeKSBCbyblHVe2 = AjE7QoZUawKehXfuJltvW.getCurrentAnimation(); 
 if(n38ECoEdgDeKSBCbyblHVe2 && sq_IsEnd(n38ECoEdgDeKSBCbyblHVe2)) sq_Rewind(n38ECoEdgDeKSBCbyblHVe2); 
 }
} ;

function onEndState_gunner_pistolcarbine(xW1dmlCTtMs, D5fMSZjRbao0)
{
 if(!xW1dmlCTtMs) return;
 RemoveAllAni(xW1dmlCTtMs); 
} ;

