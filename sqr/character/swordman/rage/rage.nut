
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_swordman_rage(VB3s80J9Jljb3qxLq4)
{
 if(!VB3s80J9Jljb3qxLq4) return false; 
 local k6G7y12cNQ = VB3s80J9Jljb3qxLq4.sq_IsUseSkill(232); 
 if(k6G7y12cNQ) 
 {
 VB3s80J9Jljb3qxLq4.sq_IntVectClear();
 VB3s80J9Jljb3qxLq4.sq_IntVectPush(0); 
 VB3s80J9Jljb3qxLq4.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;


 
function checkCommandEnable_swordman_rage(VB3s80J9Jljb3qxLq4)
{
 if(!VB3s80J9Jljb3qxLq4) return false; 
 
 local k6G7y12cNQ = VB3s80J9Jljb3qxLq4.sq_GetState(); 
 if(k6G7y12cNQ == STATE_STAND) 
 return true; 
 if(k6G7y12cNQ == STATE_ATTACK) 
 {
 return VB3s80J9Jljb3qxLq4.sq_IsCommandEnable(232); 
 }
 return true; 
} ;


 
function onSetState_swordman_rage(VB3s80J9Jljb3qxLq4, k6G7y12cNQ, _GaTARfk3rKy9ofqQYm2o0A7, uJHp5vZmLxErhkKcP)
{
 if(!VB3s80J9Jljb3qxLq4) return; 
 local JxLYHZLzJg = VB3s80J9Jljb3qxLq4.sq_GetVectorData(_GaTARfk3rKy9ofqQYm2o0A7, 0); 
 VB3s80J9Jljb3qxLq4.setSkillSubState(JxLYHZLzJg); 
 switch(JxLYHZLzJg)
 {
 case 0:
 VB3s80J9Jljb3qxLq4.sq_StopMove(); 
 local PN3r9RFn7NONUiHSNq = VB3s80J9Jljb3qxLq4.sq_GetIntData(232, 1); 
 local Snn0BRRl1BkRU = VB3s80J9Jljb3qxLq4.sq_GetIntData(232, 0); 
 VB3s80J9Jljb3qxLq4.getVar().clear_vector();
 local wevn0yH3BE35vwf_7 = VB3s80J9Jljb3qxLq4.getVar(); 
 wevn0yH3BE35vwf_7.push_vector(0); 
 wevn0yH3BE35vwf_7.push_vector(5); 
 wevn0yH3BE35vwf_7.push_vector(100); 
 wevn0yH3BE35vwf_7.push_vector(100 + PN3r9RFn7NONUiHSNq * 5); 
 wevn0yH3BE35vwf_7.push_vector(Snn0BRRl1BkRU); 
 
 RemoveAllAni(VB3s80J9Jljb3qxLq4);
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(129);
 
 sq_CreateDrawOnlyObject(VB3s80J9Jljb3qxLq4, "character/swordman/effect/animation/rage/start/ragestartcast_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 1:
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(130);
 break;
 case 2:
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(131);
 break;
 case 3:
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(132);
 break;
 case 4:
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(133);
 break;
 case 5:
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAnimation(134);
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAttackInfo(89); 
 VB3s80J9Jljb3qxLq4.sq_SetCurrentAttackBonusRate(VB3s80J9Jljb3qxLq4.sq_GetBonusRateWithPassive(232, 232, 2, 1.0)); 
 break;
 }
 switch(JxLYHZLzJg)
 {
 case 1:
 case 2:
 case 3:
 case 4:
 
 VB3s80J9Jljb3qxLq4.getVar().set_vector(4, VB3s80J9Jljb3qxLq4.getVar().get_vector(4) - 1);
 
 if(VB3s80J9Jljb3qxLq4.sq_IsMyControlObject())
 {
 VB3s80J9Jljb3qxLq4.sq_StartWrite();
 VB3s80J9Jljb3qxLq4.sq_WriteDword(232); 
 VB3s80J9Jljb3qxLq4.sq_WriteDword(JxLYHZLzJg); 
 VB3s80J9Jljb3qxLq4.sq_WriteDword(VB3s80J9Jljb3qxLq4.sq_GetBonusRateWithPassive(232, 232, 1, 1.0)); 
 VB3s80J9Jljb3qxLq4.sq_WriteDword(
 sq_GetUniformVelocity(
 VB3s80J9Jljb3qxLq4.getVar().get_vector(2),
 VB3s80J9Jljb3qxLq4.getVar().get_vector(3),
 VB3s80J9Jljb3qxLq4.getVar().get_vector(0),
 VB3s80J9Jljb3qxLq4.getVar().get_vector(1))
 ); 
 VB3s80J9Jljb3qxLq4.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 
 local jWI07N7QbqDEUs0xY4peBCj = ["01/rageloop01shadow_00.ani",
 "02/rageloop02shadow_00.ani",
 "03/rageloop03shadow_00.ani",
 "04/rageloop04shadow_00.ani"];
 
 local YBNK7l51Hbp5F15nkkO = sq_AddDrawOnlyAniFromParent(VB3s80J9Jljb3qxLq4, "character/swordman/effect/animation/rage/loop/" + jWI07N7QbqDEUs0xY4peBCj[JxLYHZLzJg - 1], 0, -1, 0);
 VB3s80J9Jljb3qxLq4.getVar("aniobj").push_obj_vector(YBNK7l51Hbp5F15nkkO); 
 
 if(VB3s80J9Jljb3qxLq4.getVar("aniobj").get_obj_vector_size() <= 8)
 {
 local gsVO41bpUCNgw2hq0ul = ["01/rageloop01traceloop_01.ani",
 "02/rageloop02traceloop_00.ani",
 "03/rageloop03traceloop_01.ani",
 "04/rageloop04traceloop_00.ani"];
 local tSF91VITMDS = sq_AddDrawOnlyAniFromParent(VB3s80J9Jljb3qxLq4, "character/swordman/effect/animation/rage/loop/" + gsVO41bpUCNgw2hq0ul[JxLYHZLzJg - 1], 0, -1, 0);
 sq_moveWithParent(VB3s80J9Jljb3qxLq4, tSF91VITMDS); 
 VB3s80J9Jljb3qxLq4.getVar("aniobj").push_obj_vector(tSF91VITMDS); 
 }
 break;
 }
} ;


 
function onKeyFrameFlag_swordman_rage(c_vFwykB3ZWKJuHsr, cIml7jnrbdarQ8XTzHorH)
{
 if(!c_vFwykB3ZWKJuHsr) return false;
 local loivKWmHZdUGQPBBL5 = c_vFwykB3ZWKJuHsr.getSkillSubState(); 
 switch(loivKWmHZdUGQPBBL5)
 {
 case 0:
 if(cIml7jnrbdarQ8XTzHorH == 1)
 {
 if(c_vFwykB3ZWKJuHsr.sq_IsMyControlObject())
 {
 c_vFwykB3ZWKJuHsr.sq_StartWrite();
 c_vFwykB3ZWKJuHsr.sq_WriteDword(232); 
 c_vFwykB3ZWKJuHsr.sq_WriteDword(loivKWmHZdUGQPBBL5); 
 c_vFwykB3ZWKJuHsr.sq_WriteDword(c_vFwykB3ZWKJuHsr.sq_GetBonusRateWithPassive(232, 232, 0, 1.0)); 
 c_vFwykB3ZWKJuHsr.sq_WriteDword(
 sq_GetUniformVelocity(
 c_vFwykB3ZWKJuHsr.getVar().get_vector(2),
 c_vFwykB3ZWKJuHsr.getVar().get_vector(3),
 c_vFwykB3ZWKJuHsr.getVar().get_vector(0),
 c_vFwykB3ZWKJuHsr.getVar().get_vector(1))
 ); 
 c_vFwykB3ZWKJuHsr.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 sq_SetMyShake(c_vFwykB3ZWKJuHsr, 3, 100); 
 }
 
 sq_CreateDrawOnlyObject(c_vFwykB3ZWKJuHsr, "character/swordman/effect/animation/rage/start/ragestartfront_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 }
 break;
 case 5:
 if(cIml7jnrbdarQ8XTzHorH == 2)
 {
 RemoveAllAni(c_vFwykB3ZWKJuHsr); 
 sq_SetMyShake(c_vFwykB3ZWKJuHsr, 3, 100); 
 }
 break;
 }
 return true;
} ;

 
function onProcCon_swordman_rage(QY7Di8_FxOGqNNwfkEhG)
{
 if(!QY7Di8_FxOGqNNwfkEhG) return;
 sq_SetKeyxEnable(QY7Di8_FxOGqNNwfkEhG, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(QY7Di8_FxOGqNNwfkEhG, E_JUMP_COMMAND)) 
 QY7Di8_FxOGqNNwfkEhG.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 QY7Di8_FxOGqNNwfkEhG.setSkillCommandEnable(232, true); 
 local ANzxLAVoYAWU = QY7Di8_FxOGqNNwfkEhG.sq_IsEnterSkill(232); 
 sq_SetKeyxEnable(QY7Di8_FxOGqNNwfkEhG, E_ATTACK_COMMAND, true); 
 local JcjbjgN1FL992K_NT = sq_IsEnterCommand(QY7Di8_FxOGqNNwfkEhG, E_ATTACK_COMMAND); 
 if(ANzxLAVoYAWU == -1 && !JcjbjgN1FL992K_NT) return;
 local CBbGOYojg4xJMe = QY7Di8_FxOGqNNwfkEhG.getVar(); 
 local Q9IBCw1K8X6psHXBa = CBbGOYojg4xJMe.get_vector(0); 
 local cOAV0FSy0M = CBbGOYojg4xJMe.get_vector(1); 
 
 if(Q9IBCw1K8X6psHXBa < cOAV0FSy0M)
 {
 CBbGOYojg4xJMe.set_vector(0, Q9IBCw1K8X6psHXBa + 1); 
 local ENXBUnIo0A9L5gXEdBEc8qH = sq_GetUniformVelocity(
 CBbGOYojg4xJMe.get_vector(2),
 CBbGOYojg4xJMe.get_vector(3),
 Q9IBCw1K8X6psHXBa + 1,
 cOAV0FSy0M); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(ENXBUnIo0A9L5gXEdBEc8qH);
 sq_SendChangeSkillEffectPacket(QY7Di8_FxOGqNNwfkEhG, 232); 
 }
} ;


function onEndState_swordman_rage(aJn_uo1Sgx, ooqw6d2EB5gn1D)
{
 if(!aJn_uo1Sgx) return;
 if(ooqw6d2EB5gn1D != 232)
 {
 RemoveAllAni(aJn_uo1Sgx); 
 }
} ;

 
function onEndCurrentAni_swordman_rage(aJn_uo1Sgx)
{
 if(!aJn_uo1Sgx) return; 
 if(!aJn_uo1Sgx.sq_IsMyControlObject())return;
 local ooqw6d2EB5gn1D = aJn_uo1Sgx.getSkillSubState(); 
 switch(ooqw6d2EB5gn1D)
 {
 case 0:
 break;
 case 5:
 aJn_uo1Sgx.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 return;
 default:
 local OsqmN253cSauvUhwWoy = aJn_uo1Sgx.getVar().get_vector(4); 
 if(OsqmN253cSauvUhwWoy > 0)
 {
 if(ooqw6d2EB5gn1D == 4) 
 {
 aJn_uo1Sgx.sq_IntVectClear();
 aJn_uo1Sgx.sq_IntVectPush(1);
 aJn_uo1Sgx.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true);
 }
 else 
 break;
 }
 else 
 {
 aJn_uo1Sgx.sq_IntVectClear();
 aJn_uo1Sgx.sq_IntVectPush(5);
 aJn_uo1Sgx.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true);
 }
 return;
 }
 aJn_uo1Sgx.sq_IntVectClear();
 aJn_uo1Sgx.sq_IntVectPush(ooqw6d2EB5gn1D + 1);
 aJn_uo1Sgx.sq_AddSetStatePacket(232, STATE_PRIORITY_USER, true);
} ;


function onChangeSkillEffect_swordman_rage(YaADf1nEVn0z5YnhYljVDVD, vvBxy6C4lo9qnJ1wm, helIbZ5mRLe97YnysK43d)
{
 if(!YaADf1nEVn0z5YnhYljVDVD) return;
 if(vvBxy6C4lo9qnJ1wm == 232)
 {
 local OB0GvfKJjtd0TQ2AM4hIx3 = helIbZ5mRLe97YnysK43d.readDword() / 100.0; 
 YaADf1nEVn0z5YnhYljVDVD.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * OB0GvfKJjtd0TQ2AM4hIx3).tointeger(), 1.0, 1.0); 
 }
} ;



