
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_magneticfield(ISk3Sw9NO0QcvrqNGJy)
{
 if(!ISk3Sw9NO0QcvrqNGJy) return false; 
 local NO15NSZ39mt = ISk3Sw9NO0QcvrqNGJy.sq_IsUseSkill(248); 
 if(NO15NSZ39mt) 
 {
 ISk3Sw9NO0QcvrqNGJy.sq_IntVectClear();
 ISk3Sw9NO0QcvrqNGJy.sq_IntVectPush(0); 
 ISk3Sw9NO0QcvrqNGJy.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_magneticfield(etTHKCUHt3oHaObu)
{
 if(!etTHKCUHt3oHaObu) return false; 
 local d37RtunETwe = etTHKCUHt3oHaObu.sq_GetState(); 
 if(d37RtunETwe == STATE_STAND) 
 return true; 
 if(d37RtunETwe == STATE_ATTACK) 
 {
 return etTHKCUHt3oHaObu.sq_IsCommandEnable(248); 
 }
 return true; 
} ;

 
function onSetState_atgunner_magneticfield(etTHKCUHt3oHaObu, d37RtunETwe, ywvx6qpnou_QI, oJX5o4Dc9rAH)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!etTHKCUHt3oHaObu) return; 
 local M5rrAxW8LFsrntPG_4bV36 = etTHKCUHt3oHaObu.sq_GetVectorData(ywvx6qpnou_QI, 0); 
 etTHKCUHt3oHaObu.setSkillSubState(M5rrAxW8LFsrntPG_4bV36); 
 switch(M5rrAxW8LFsrntPG_4bV36)
 {
 case 0:
 etTHKCUHt3oHaObu.sq_StopMove(); 
 etTHKCUHt3oHaObu.sq_SetCurrentAnimation(135);
 etTHKCUHt3oHaObu.sq_PlaySound("FG_LSHOT_03"); 
 break;
 case 1:
 etTHKCUHt3oHaObu.sq_SetCurrentAnimation(136);
 sq_SetMyShake(etTHKCUHt3oHaObu, 4, 100); 
 if(etTHKCUHt3oHaObu.sq_IsMyControlObject())
 {
 local DmX7zW1pAidal52u672o = sq_GetSkillLevel(etTHKCUHt3oHaObu, 248); 
 etTHKCUHt3oHaObu.sq_StartWrite();
 etTHKCUHt3oHaObu.sq_WriteDword(248); 
 etTHKCUHt3oHaObu.sq_WriteDword(1); 
 etTHKCUHt3oHaObu.sq_WriteDword(etTHKCUHt3oHaObu.sq_GetBonusRateWithPassive(248, 248, 0, 1.0)); 
 etTHKCUHt3oHaObu.sq_WriteDword(etTHKCUHt3oHaObu.sq_GetLevelData(248, 1, DmX7zW1pAidal52u672o)); 
 etTHKCUHt3oHaObu.sq_WriteDword(etTHKCUHt3oHaObu.sq_GetLevelData(248, 2, DmX7zW1pAidal52u672o)); 
 etTHKCUHt3oHaObu.sq_WriteDword(etTHKCUHt3oHaObu.sq_GetLevelData(248, 3, DmX7zW1pAidal52u672o)); 
 etTHKCUHt3oHaObu.sq_SendCreatePassiveObjectPacket(24376, 0, 60, -1, 88);
 }
 etTHKCUHt3oHaObu.getVar().clear_vector(); 
 local RLAK3Iq8eZ = etTHKCUHt3oHaObu.getVar(); 
 RLAK3Iq8eZ.push_vector(etTHKCUHt3oHaObu.getXPos()); 
 RLAK3Iq8eZ.push_vector(-50); 
 break;
 }
 etTHKCUHt3oHaObu.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onProc_atgunner_magneticfield(iCuHBGtYYXc7lhXoa54)
{
 if(!iCuHBGtYYXc7lhXoa54) return;
 local dz5WnogDendMy = iCuHBGtYYXc7lhXoa54.getSkillSubState(); 
 switch(dz5WnogDendMy)
 {
 case 1:
 if(iCuHBGtYYXc7lhXoa54.getVar().size_vector() <= 0)break;
 local QMUELGekIv7kmpqfxIvBjYHY = iCuHBGtYYXc7lhXoa54.getCurrentAnimation(); 
 local Ojzl7bvLvXCRO = sq_GetCurrentTime(QMUELGekIv7kmpqfxIvBjYHY); 
 local g2GFQz7A4WJ4Y = QMUELGekIv7kmpqfxIvBjYHY.getDelaySum(0, 2); 
 local jvKq0srgPMmMEm3h = iCuHBGtYYXc7lhXoa54.getVar().get_vector(0); 
 local FSzyXRLtr9CsL = iCuHBGtYYXc7lhXoa54.getVar().get_vector(1); 
 local rL3m03SRf0ZaHtEKnIT = sq_GetAccel(0, FSzyXRLtr9CsL, Ojzl7bvLvXCRO, g2GFQz7A4WJ4Y, true);
 local tperjXMBGwo2Js = sq_GetDistancePos(jvKq0srgPMmMEm3h, iCuHBGtYYXc7lhXoa54.getDirection(), rL3m03SRf0ZaHtEKnIT); 
 if(iCuHBGtYYXc7lhXoa54.isMovablePos(tperjXMBGwo2Js, iCuHBGtYYXc7lhXoa54.getYPos()))
 sq_setCurrentAxisPos(iCuHBGtYYXc7lhXoa54, 0, tperjXMBGwo2Js); 
 else
 iCuHBGtYYXc7lhXoa54.getVar().clear_vector(); 
 break;
 }
} ;

 
function onEndCurrentAni_atgunner_magneticfield(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return;
 if(!K5U2VMuTmU.sq_IsMyControlObject()) return;
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.getSkillSubState(); 
 switch(uFEX1yvudqwU9K3ow5lmjYve)
 {
 case 0:
 K5U2VMuTmU.sq_IntVectClear();
 K5U2VMuTmU.sq_IntVectPush(1); 
 K5U2VMuTmU.sq_AddSetStatePacket(248, STATE_PRIORITY_USER, true); 
 break;
 case 1:
 K5U2VMuTmU.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


