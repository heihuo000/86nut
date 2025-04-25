
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_swingexx(kvFttSUPBrlioea)
{
 if(!kvFttSUPBrlioea) return false; 
 local gigNp9psrgn5VEtZXTS = kvFttSUPBrlioea.sq_IsUseSkill(244); 
 if(gigNp9psrgn5VEtZXTS) 
 {
 kvFttSUPBrlioea.sq_AddSetStatePacket(244, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_swingexx(qOelrVIIJ0BiEhafeOQ5t)
{
 if(!qOelrVIIJ0BiEhafeOQ5t) return false; 
 local CXc9zvHvlporzUjneEQjyP = qOelrVIIJ0BiEhafeOQ5t.sq_GetState(); 
 if(CXc9zvHvlporzUjneEQjyP == STATE_STAND) 
 return true; 
 if(CXc9zvHvlporzUjneEQjyP == STATE_ATTACK) 
 {
 return qOelrVIIJ0BiEhafeOQ5t.sq_IsCommandEnable(244); 
 }
 return true; 
} ;

 
function onSetState_mage_swingexx(qOelrVIIJ0BiEhafeOQ5t, CXc9zvHvlporzUjneEQjyP, G1aFCTlbpvqHpB3lwZamRMgV, NYcNcGW9CA78PXL_DMO)
{
 if(!qOelrVIIJ0BiEhafeOQ5t) return; 
 qOelrVIIJ0BiEhafeOQ5t.sq_StopMove(); 
 if(!setCurrentAnimation_mage_avatar(qOelrVIIJ0BiEhafeOQ5t, "NNNEWSWING_BODY.ani")) 
 qOelrVIIJ0BiEhafeOQ5t.sq_SetCurrentAnimation(92);
 local Z7W8qhnVwfFTf8 = qOelrVIIJ0BiEhafeOQ5t.getCurrentAnimation(); 
 local _BQHOmYgrBpzMlmK_UTGJ4dF = Z7W8qhnVwfFTf8.getDelaySum(false); 
 qOelrVIIJ0BiEhafeOQ5t.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local gUMnBxSQBZ2 = Z7W8qhnVwfFTf8.getDelaySum(false); 
 local p0PePfeKBmzW = _BQHOmYgrBpzMlmK_UTGJ4dF.tofloat() / gUMnBxSQBZ2.tofloat() * 100.0; 
 CreateAniRate(qOelrVIIJ0BiEhafeOQ5t, "character/mage/effect/animation/swingex/newswingeff_eff_08.ani", ENUM_DRAWLAYER_NORMAL, qOelrVIIJ0BiEhafeOQ5t.getXPos(), qOelrVIIJ0BiEhafeOQ5t.getYPos(), qOelrVIIJ0BiEhafeOQ5t.getZPos(), false, p0PePfeKBmzW); 
 CreateAniRate(qOelrVIIJ0BiEhafeOQ5t, "character/mage/effect/animation/swingex/nnnewswing_light.ani", ENUM_DRAWLAYER_NORMAL, qOelrVIIJ0BiEhafeOQ5t.getXPos(), qOelrVIIJ0BiEhafeOQ5t.getYPos(), qOelrVIIJ0BiEhafeOQ5t.getZPos(), false, p0PePfeKBmzW); 
} ;

 
function onKeyFrameFlag_mage_swingexx(vehraTrnf3TQjCIUc6, tCg8f92SYX3hsUl)
{
 if(!vehraTrnf3TQjCIUc6) return false;
 if(tCg8f92SYX3hsUl == 1)
 {
 vehraTrnf3TQjCIUc6.sq_SetCurrentAttackInfo(43); 
 local tT6P8S0BTeK = vehraTrnf3TQjCIUc6.sq_GetBonusRateWithPassive(244, 244, 0, 1.0); 
 vehraTrnf3TQjCIUc6.sq_SetCurrentAttackBonusRate(tT6P8S0BTeK); 
 sq_SetMyShake(vehraTrnf3TQjCIUc6, 7, 160);
 vehraTrnf3TQjCIUc6.resetHitObjectList();
 }
 return true;
} ;

function onProcCon_mage_swingexx(ufHkoHybiK8QA6IhjnQeJ5PV)
{
 if(!ufHkoHybiK8QA6IhjnQeJ5PV) return;
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 125).isInCoolTime())
 { 
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(125, true); 
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(125) != -1) 
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(125); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear(); 
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0); 
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(51, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 13).isInCoolTime())
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(13, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(13) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(13); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(13);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(24, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 66).isInCoolTime())
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(66, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(66) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(66); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(27, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 10).isInCoolTime())
 { 
 if(ufHkoHybiK8QA6IhjnQeJ5PV.getMyPassiveObjectCount(23002) > 0 
 || ufHkoHybiK8QA6IhjnQeJ5PV.getMyPassiveObjectCount(23003) > 0
 || ufHkoHybiK8QA6IhjnQeJ5PV.getMyPassiveObjectCount(23004) > 0
 || ufHkoHybiK8QA6IhjnQeJ5PV.getMyPassiveObjectCount(23005) > 0
 || ufHkoHybiK8QA6IhjnQeJ5PV.getMyPassiveObjectCount(23006) > 0)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(10, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(10) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(10); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(28, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 68).isInCoolTime())
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(68, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(68) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(68); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(68);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(25, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 69).isInCoolTime())
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(69, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(69) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(69); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(29, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(ufHkoHybiK8QA6IhjnQeJ5PV, 112).isInCoolTime())
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.setSkillCommandEnable(112, true);
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsEnterSkill(112) != -1)
 {
 local JU4FNEF42GsnKGjw = ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsUseSkill(112); 
 if(JU4FNEF42GsnKGjw)
 {
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectClear();
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_IntVectPush(0);
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(47, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} ;

 
function onEndCurrentAni_mage_swingexx(qXzYzSfw2p2raOgwFYFm)
{
 if(!qXzYzSfw2p2raOgwFYFm) return;
 if(qXzYzSfw2p2raOgwFYFm.sq_IsMyControlObject())
 qXzYzSfw2p2raOgwFYFm.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

