
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_gunner_suppressingfire(fpBFMyPFwAsS1_9QIBJxjC)
{
 if(!fpBFMyPFwAsS1_9QIBJxjC) return false; 
 local kDJyA4rLvdLG4nl6qE9 = fpBFMyPFwAsS1_9QIBJxjC.sq_IsUseSkill(238); 
 if(kDJyA4rLvdLG4nl6qE9) 
 {
 fpBFMyPFwAsS1_9QIBJxjC.sq_IntVectClear();
 fpBFMyPFwAsS1_9QIBJxjC.sq_IntVectPush(0); 
 fpBFMyPFwAsS1_9QIBJxjC.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_gunner_suppressingfire(Ncd0NhSD5bJA)
{
 if(!Ncd0NhSD5bJA) return false; 
 local p9pEf1EsTrC3Wq9 = Ncd0NhSD5bJA.sq_GetState(); 
 if(p9pEf1EsTrC3Wq9 == STATE_STAND) 
 return true; 
 if(p9pEf1EsTrC3Wq9 == STATE_ATTACK) 
 {
 return Ncd0NhSD5bJA.sq_IsCommandEnable(238); 
 }
 return true; 
} ;

 
function onSetState_gunner_suppressingfire(Ncd0NhSD5bJA, p9pEf1EsTrC3Wq9, u4BSlcalewl3p2FnvZ6U7loB, LpilBdyWHNlX_XIJLje)
{
 if(!Ncd0NhSD5bJA) return; 
 Ncd0NhSD5bJA.sq_StopMove(); 
 local R2WjfnO3xJUF_5Ew20 = Ncd0NhSD5bJA.sq_GetVectorData(u4BSlcalewl3p2FnvZ6U7loB, 0); 
 Ncd0NhSD5bJA.setSkillSubState(R2WjfnO3xJUF_5Ew20); 
 switch(R2WjfnO3xJUF_5Ew20)
 {
 case 0: 
 Ncd0NhSD5bJA.getVar().clear_vector();
 Ncd0NhSD5bJA.sq_SetCurrentAnimation(119); 
 Ncd0NhSD5bJA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 1: 
 Ncd0NhSD5bJA.sq_SetCurrentAnimation(120); 
 Ncd0NhSD5bJA.sq_SetCurrentAttackInfo(28); 
 local Kezx5sYv_jKy1 = Ncd0NhSD5bJA.sq_GetBonusRateWithPassive(238, 238, 0, 1.0); 
 Ncd0NhSD5bJA.sq_SetCurrentAttackBonusRate(Kezx5sYv_jKy1); 
 local x6GPK5hYw6N = sq_GetSkillLevel(Ncd0NhSD5bJA, 238); 
 local PXXovFKqfg5nc5 = Ncd0NhSD5bJA.sq_GetLevelData(238, 3, x6GPK5hYw6N); 
 Ncd0NhSD5bJA.getVar().clear_timer_vector();
 Ncd0NhSD5bJA.getVar().push_timer_vector();
 local wPTTWTIE_GleVKq0dvHT = Ncd0NhSD5bJA.getVar().get_timer_vector(0);
 wPTTWTIE_GleVKq0dvHT.setParameter(PXXovFKqfg5nc5, -1); 
 wPTTWTIE_GleVKq0dvHT.resetInstant(0);
 if(Ncd0NhSD5bJA.sq_IsMyControlObject())
 {
 local IOX3hLP_1urDdgVbzgR_o = Ncd0NhSD5bJA.sq_GetLevelData(238, 2, x6GPK5hYw6N); 
 local Q3WVaefA1IkNh1AQwFNENbt = Ncd0NhSD5bJA.sq_GetLevelData(238, 4, x6GPK5hYw6N); 
 local RztzX8eYlOrKzznv = 280; 
 local hybahMCFZeJ2UBNHqdK = 100; 
 local CJXcDvIHX7Oyk_UoO5qxaU0V = 3; 
 local IDDy2o7InPls1mZ = 0; 
 Ncd0NhSD5bJA.getVar().clear_vector();
 local yXSxWWIiY64egR = Ncd0NhSD5bJA.getVar(); 
 yXSxWWIiY64egR.push_vector(IOX3hLP_1urDdgVbzgR_o);
 yXSxWWIiY64egR.push_vector(PXXovFKqfg5nc5);
 yXSxWWIiY64egR.push_vector(Q3WVaefA1IkNh1AQwFNENbt);
 yXSxWWIiY64egR.push_vector(RztzX8eYlOrKzznv);
 yXSxWWIiY64egR.push_vector(hybahMCFZeJ2UBNHqdK);
 yXSxWWIiY64egR.push_vector(CJXcDvIHX7Oyk_UoO5qxaU0V);
 yXSxWWIiY64egR.push_vector(IDDy2o7InPls1mZ);
 }
 break;
 case 2: 
 Ncd0NhSD5bJA.sq_SetCurrentAnimation(121); 
 Ncd0NhSD5bJA.sq_SetCurrentAttackInfo(29); 
 local Kezx5sYv_jKy1 = Ncd0NhSD5bJA.sq_GetBonusRateWithPassive(238, 238, 1, 1.0); 
 Ncd0NhSD5bJA.sq_SetCurrentAttackBonusRate(Kezx5sYv_jKy1); 
 sq_AddDrawOnlyAniFromParent(Ncd0NhSD5bJA, "character/gunner/effect/animation/atsuppressingfire/03_finish/dust/suppressingfire_finish_dust01.ani", 0, 0, 0); 
 sq_AddDrawOnlyAniFromParent(Ncd0NhSD5bJA, "character/gunner/effect/animation/suppressingfire/03_finish/front/suppressingfire_finish_front.ani", 0, 0, 0); 
 break;
 }
} ;

 
function onKeyFrameFlag_gunner_suppressingfire(iJQ_8eKkBrtfWQLf33, Ln7ZMVXQiL)
{
 if(!iJQ_8eKkBrtfWQLf33) return false;
 local cZp6wUOHg2 = iJQ_8eKkBrtfWQLf33.getSkillSubState(); 
 switch(cZp6wUOHg2)
 {
 case 2:
 if(Ln7ZMVXQiL == 1)
 sq_SetMyShake(iJQ_8eKkBrtfWQLf33, 5, 200); 
 break;
 }
 return true;
} ;


function onProc_gunner_suppressingfire(L00r7dZjK_PfVFL6MctMxHl)
{
 if(!L00r7dZjK_PfVFL6MctMxHl) return;
 local sYcODVEpOIZVEmzaPC = L00r7dZjK_PfVFL6MctMxHl.getSkillSubState(); 
 if(sYcODVEpOIZVEmzaPC == 1)
 {
 local Vt36PMqWMKil1nl_zLwTCfh = L00r7dZjK_PfVFL6MctMxHl.getVar().get_timer_vector(0);
 if(Vt36PMqWMKil1nl_zLwTCfh)
 {
 if(Vt36PMqWMKil1nl_zLwTCfh.isOnEvent(L00r7dZjK_PfVFL6MctMxHl.sq_GetStateTimer()) == true) 
 L00r7dZjK_PfVFL6MctMxHl.resetHitObjectList(); 
 }
 }
} ;

 
function onProcCon_gunner_suppressingfire(L00r7dZjK_PfVFL6MctMxHl)
{
 if(!L00r7dZjK_PfVFL6MctMxHl) return;
 local sYcODVEpOIZVEmzaPC = L00r7dZjK_PfVFL6MctMxHl.getSkillSubState(); 
 if(sYcODVEpOIZVEmzaPC == 1)
 {
 local Vt36PMqWMKil1nl_zLwTCfh = L00r7dZjK_PfVFL6MctMxHl.getVar(); 
 
 if(L00r7dZjK_PfVFL6MctMxHl.sq_GetStateTimer() >= Vt36PMqWMKil1nl_zLwTCfh.get_vector(0))
 {
 L00r7dZjK_PfVFL6MctMxHl.sq_IntVectClear();
 L00r7dZjK_PfVFL6MctMxHl.sq_IntVectPush(2); 
 L00r7dZjK_PfVFL6MctMxHl.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return;
 }
 sq_SetKeyxEnable(L00r7dZjK_PfVFL6MctMxHl, E_JUMP_COMMAND, true); 
 if(sq_IsEnterCommand(L00r7dZjK_PfVFL6MctMxHl, E_JUMP_COMMAND)) 
 {
 L00r7dZjK_PfVFL6MctMxHl.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 sq_SetKeyxEnable(L00r7dZjK_PfVFL6MctMxHl, E_ATTACK_COMMAND, true); 
 L00r7dZjK_PfVFL6MctMxHl.setSkillCommandEnable(238, true); 
 if(sq_IsEnterCommand(L00r7dZjK_PfVFL6MctMxHl, E_ATTACK_COMMAND) || L00r7dZjK_PfVFL6MctMxHl.sq_IsEnterSkill(238) != -1)
 {
 local dCVxj1XynBnaqnDPWaR = Vt36PMqWMKil1nl_zLwTCfh.get_vector(6); 
 local vtKgqm0lnoBnHgLG = Vt36PMqWMKil1nl_zLwTCfh.get_vector(5); 
 if(dCVxj1XynBnaqnDPWaR < vtKgqm0lnoBnHgLG) 
 {
 dCVxj1XynBnaqnDPWaR += 1; 
 Vt36PMqWMKil1nl_zLwTCfh.set_vector(6, dCVxj1XynBnaqnDPWaR); 
 local AwNB2C4_8H = sq_GetUniformVelocity(Vt36PMqWMKil1nl_zLwTCfh.get_vector(1), Vt36PMqWMKil1nl_zLwTCfh.get_vector(2), dCVxj1XynBnaqnDPWaR, vtKgqm0lnoBnHgLG); 
 local yl3WANt03naL0kOu00vFUNY = sq_GetUniformVelocity(Vt36PMqWMKil1nl_zLwTCfh.get_vector(4), Vt36PMqWMKil1nl_zLwTCfh.get_vector(3), dCVxj1XynBnaqnDPWaR, vtKgqm0lnoBnHgLG); 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(AwNB2C4_8H);
 sq_BinaryWriteDword(yl3WANt03naL0kOu00vFUNY);
 sq_SendChangeSkillEffectPacket(L00r7dZjK_PfVFL6MctMxHl, 238); 
 }
 }
 }
} ;

 
function onEndCurrentAni_gunner_suppressingfire(IL2kejltqRjUfIrL7)
{
 if(!IL2kejltqRjUfIrL7) return;
 if(!IL2kejltqRjUfIrL7.isMyControlObject()) return;
 local vr0DZ9l4EURi_rX5CLTE9 = IL2kejltqRjUfIrL7.getSkillSubState(); 
 if(vr0DZ9l4EURi_rX5CLTE9 != 2)
 {
 IL2kejltqRjUfIrL7.sq_IntVectClear();
 IL2kejltqRjUfIrL7.sq_IntVectPush(vr0DZ9l4EURi_rX5CLTE9+1); 
 IL2kejltqRjUfIrL7.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 }else
 IL2kejltqRjUfIrL7.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
 
 
 
function onAttack_gunner_suppressingfire(wdtrp8_5OU8_ww, ojqtrIo7R6NCJOHByu, RoLqUVBhZEJ84D, zn2xITAtE6st)
{
 if(!wdtrp8_5OU8_ww) return;
 
 if(zn2xITAtE6st || !ojqtrIo7R6NCJOHByu.isObjectType(OBJECTTYPE_ACTIVE)) return;
 local xXPXPKRooycp = sq_CreateAnimation("", "character/gunner/effect/animation/hiteffect/updefault.ani"); 
 xXPXPKRooycp.setImageRateFromOriginal(-1.0, 1.0);
 xXPXPKRooycp.addLayerAnimation(1, sq_CreateAnimation("", "character/gunner/effect/animation/suppressingfire/02_loop/suppressingfire_blow001.ani"), true); 
 local ghvGNZ8YauCDm = sq_GetCenterZPos(RoLqUVBhZEJ84D); 
 local K3u3sIF1_ZBjtqZ4pnqk = sq_CreatePooledObject(xXPXPKRooycp, true); 
 sq_SetCurrentDirection(K3u3sIF1_ZBjtqZ4pnqk, wdtrp8_5OU8_ww.getDirection()); 
 K3u3sIF1_ZBjtqZ4pnqk.setCurrentPos(ojqtrIo7R6NCJOHByu.getXPos(), ojqtrIo7R6NCJOHByu.getYPos() + 1, ojqtrIo7R6NCJOHByu.getZPos() + ghvGNZ8YauCDm + sq_getRandom(ghvGNZ8YauCDm / 2 / -1, ghvGNZ8YauCDm / 2)); 
 K3u3sIF1_ZBjtqZ4pnqk = sq_SetEnumDrawLayer(K3u3sIF1_ZBjtqZ4pnqk, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(wdtrp8_5OU8_ww, K3u3sIF1_ZBjtqZ4pnqk, OBJECTTYPE_DRAWONLY, false); 
} ;


function onChangeSkillEffect_gunner_suppressingfire(DbTkop04ElR_cgQXsEja, qPegPHyQPqUYCunDCSe, RI2VQasotSUAX4O)
{
 if(!DbTkop04ElR_cgQXsEja) return;
 local n2mxDxZoBaQ717jKtB3pUi = DbTkop04ElR_cgQXsEja.getSkillSubState();
 if(n2mxDxZoBaQ717jKtB3pUi == 1)
 {
 local xxNdNcBDKbPpLePR5GAMuA = RI2VQasotSUAX4O.readDword(); 
 local f7sHvN0j9wyw0 = (RI2VQasotSUAX4O.readDword()).tofloat() / 100.0; 
 local uVG0nAWpGnTcpMcVpnTuOt = DbTkop04ElR_cgQXsEja.getVar().get_timer_vector(0); 
 if(uVG0nAWpGnTcpMcVpnTuOt)
 uVG0nAWpGnTcpMcVpnTuOt.setEventTerm(xxNdNcBDKbPpLePR5GAMuA); 
 DbTkop04ElR_cgQXsEja.sq_SetStaticSpeedInfo(0, 0, 0, (1000 * f7sHvN0j9wyw0).tointeger(), 0.0, 0.0); 
 }
} ;

