
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_mage_jackfrosticewater(jrxOuXKJzTQnxj3ee)
{
 if(!jrxOuXKJzTQnxj3ee) return false; 
 local MYmsrXCuYh8C = jrxOuXKJzTQnxj3ee.sq_IsUseSkill(132); 
 if(MYmsrXCuYh8C) 
 {
 jrxOuXKJzTQnxj3ee.sq_IntVectClear();
 jrxOuXKJzTQnxj3ee.sq_IntVectPush(0); 
 jrxOuXKJzTQnxj3ee.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_jackfrosticewater(jrxOuXKJzTQnxj3ee)
{
 if(!jrxOuXKJzTQnxj3ee) return false; 
 local MYmsrXCuYh8C = jrxOuXKJzTQnxj3ee.sq_GetState(); 
 if(MYmsrXCuYh8C == STATE_STAND) 
 return true; 
 if(MYmsrXCuYh8C == STATE_ATTACK) 
 {
 return jrxOuXKJzTQnxj3ee.sq_IsCommandEnable(132); 
 }
 return true; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_mage_jackfrosticewater(SIIxfEfI_IoLoCj, QQFTyZzfnqNnrzIi8, bCXxHiJVd1ZSkBIm3MAe7Jt, VeYJxb00PjxvW1)
{
 if(!SIIxfEfI_IoLoCj) return; 
 local QGpvkxGA0LThPnVSEUQmW = SIIxfEfI_IoLoCj.sq_GetVectorData(bCXxHiJVd1ZSkBIm3MAe7Jt, 0); 
 SIIxfEfI_IoLoCj.setSkillSubState(QGpvkxGA0LThPnVSEUQmW); 
 switch(QGpvkxGA0LThPnVSEUQmW)
 {
 case 0:
 SIIxfEfI_IoLoCj.sq_StopMove(); 
 SIIxfEfI_IoLoCj.sq_ZStop(); 
 SIIxfEfI_IoLoCj.sq_SetCurrentAnimation(133); 
 local qlJ1Z20zwN2rthHpGJ7 = sq_GetSkillLevel(SIIxfEfI_IoLoCj, 132); 
 local OMJ7ilFULJ1z9ZGKU = sq_GetLevelData(SIIxfEfI_IoLoCj, 132, 1, qlJ1Z20zwN2rthHpGJ7); 
 local USPnIIfcabBpZSk8 = sq_GetLevelData(SIIxfEfI_IoLoCj, 132, 2, qlJ1Z20zwN2rthHpGJ7); 
 SIIxfEfI_IoLoCj.getVar().clear_vector(); 
 local eROAjysEsBQ4dWNRhrfS6i8A = SIIxfEfI_IoLoCj.getVar(); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(0); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(5); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(OMJ7ilFULJ1z9ZGKU); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(USPnIIfcabBpZSk8); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(100); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(150); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(sq_GetDistancePos(SIIxfEfI_IoLoCj.getXPos(), SIIxfEfI_IoLoCj.getDirection(), 175)); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(SIIxfEfI_IoLoCj.getYPos()); 
 if(SIIxfEfI_IoLoCj.sq_IsMyControlObject())
 {
 SIIxfEfI_IoLoCj.sq_StartWrite();
 SIIxfEfI_IoLoCj.sq_WriteDword(132); 
 SIIxfEfI_IoLoCj.sq_WriteDword(1); 
 SIIxfEfI_IoLoCj.sq_WriteDword(SIIxfEfI_IoLoCj.sq_GetBonusRateWithPassive(132, 132, 3, 1.0)); 
 SIIxfEfI_IoLoCj.sq_WriteDword(SIIxfEfI_IoLoCj.sq_GetBonusRateWithPassive(132, 132, 5, 1.0)); 
 SIIxfEfI_IoLoCj.sq_WriteDword(SIIxfEfI_IoLoCj.sq_GetBonusRateWithPassive(132, 132, 4, 1.0)); 
 SIIxfEfI_IoLoCj.sq_WriteDword(sq_GetLevelData(SIIxfEfI_IoLoCj, 132, 0, qlJ1Z20zwN2rthHpGJ7)); 
 SIIxfEfI_IoLoCj.sq_WriteDword(OMJ7ilFULJ1z9ZGKU); 
 SIIxfEfI_IoLoCj.sq_SendCreatePassiveObjectPacket(24372, 0, 175, 0, 0);
 }
 break;
 case 1:
 SIIxfEfI_IoLoCj.sq_SetCurrentAnimation(134); 
 sq_CreateDrawOnlyObject(SIIxfEfI_IoLoCj, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewatercast_smoke.ani", ENUM_DRAWLAYER_NORMAL, true); 
 local uyAmNi10XDtMYecgBsAFj = SIIxfEfI_IoLoCj.sq_GetVectorData(bCXxHiJVd1ZSkBIm3MAe7Jt, 1); 
 local BMUzn3gZSxNNo0E2gUn4zJPT = SIIxfEfI_IoLoCj.sq_GetVectorData(bCXxHiJVd1ZSkBIm3MAe7Jt, 2); 
 sq_setCurrentAxisPos(SIIxfEfI_IoLoCj, 0, uyAmNi10XDtMYecgBsAFj); 
 sq_setCurrentAxisPos(SIIxfEfI_IoLoCj, 1, BMUzn3gZSxNNo0E2gUn4zJPT); 
 sq_AddDrawOnlyAniFromParent(SIIxfEfI_IoLoCj, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewatercast_smoke.ani", 0, 2, 210); 
 break;
 case 2:
 SIIxfEfI_IoLoCj.sq_SetCurrentAnimation(135); 
 break;
 case 3:
 SIIxfEfI_IoLoCj.sq_SetCurrentAnimation(136); 
 local qLf9BgNdqpSZxPMR10A1I = SIIxfEfI_IoLoCj.getXPos(); 
 local QFXB4ydc6y1Pbw1PG5_W7IJ = sq_GetDistancePos(qLf9BgNdqpSZxPMR10A1I, SIIxfEfI_IoLoCj.getDirection(), -94); 
 sq_setCurrentAxisPos(SIIxfEfI_IoLoCj, 0, QFXB4ydc6y1Pbw1PG5_W7IJ); 
 sq_setCurrentAxisPos(SIIxfEfI_IoLoCj, 2, 278); 
 local VBQlkH_R36dQ = SIIxfEfI_IoLoCj.sq_findNearLinearMovableXPos(sq_GetDistancePos(qLf9BgNdqpSZxPMR10A1I, SIIxfEfI_IoLoCj.getDirection(), -175),
 SIIxfEfI_IoLoCj.getYPos(), SIIxfEfI_IoLoCj.getXPos(), SIIxfEfI_IoLoCj.getYPos(), 10); 
 SIIxfEfI_IoLoCj.getVar().clear_vector(); 
 local eROAjysEsBQ4dWNRhrfS6i8A = SIIxfEfI_IoLoCj.getVar(); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(QFXB4ydc6y1Pbw1PG5_W7IJ); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(278); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(VBQlkH_R36dQ); 
 eROAjysEsBQ4dWNRhrfS6i8A.push_vector(0); 
 break;
 case 4:
 SIIxfEfI_IoLoCj.sq_SetCurrentAnimation(137); 
 break;
 }
} ;

function onProc_mage_jackfrosticewater(hhSCvAbaYBUxeP80D)
{
 if(!hhSCvAbaYBUxeP80D) return;
 local p8pDoQ0MevC = hhSCvAbaYBUxeP80D.getSkillSubState(); 
 switch(p8pDoQ0MevC)
 {
 case 3:
 local n5cIvFNQelBO = hhSCvAbaYBUxeP80D.sq_GetStateTimer(); 
 local YYAX77xjoL = 400; 
 local ov6qXbb1hx = hhSCvAbaYBUxeP80D.getVar(); 
 local Y_ced3eVAwWDOVi44 = sq_GetUniformVelocity(ov6qXbb1hx.get_vector(0), ov6qXbb1hx.get_vector(2), n5cIvFNQelBO, YYAX77xjoL);
 local vAqezb_UFUYCVpv6 = sq_GetUniformVelocity(ov6qXbb1hx.get_vector(1), ov6qXbb1hx.get_vector(3), n5cIvFNQelBO, YYAX77xjoL);
 sq_setCurrentAxisPos(hhSCvAbaYBUxeP80D, 0, Y_ced3eVAwWDOVi44); 
 sq_setCurrentAxisPos(hhSCvAbaYBUxeP80D, 2, vAqezb_UFUYCVpv6); 
 if(hhSCvAbaYBUxeP80D.sq_IsMyControlObject())
 if(n5cIvFNQelBO >= YYAX77xjoL)
 {
 hhSCvAbaYBUxeP80D.sq_IntVectClear();
 hhSCvAbaYBUxeP80D.sq_IntVectPush(4); 
 hhSCvAbaYBUxeP80D.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

function onProcCon_mage_jackfrosticewater(_Qq8cXmomAqxvC8AOnfutz)
{
 if(!_Qq8cXmomAqxvC8AOnfutz) return;
 local ipA6VG4UvXir2LaiAhLH1Sw = _Qq8cXmomAqxvC8AOnfutz.getSkillSubState(); 
 switch(ipA6VG4UvXir2LaiAhLH1Sw)
 {
 case 1:
 case 2: 
 local AtsTC8tWvI0H = _Qq8cXmomAqxvC8AOnfutz.getVar().get_obj_vector(0); 
 if(!AtsTC8tWvI0H)return; 
 sq_SetKeyxEnable(_Qq8cXmomAqxvC8AOnfutz, E_ATTACK_COMMAND, true); 
 if(sq_IsEnterCommand(_Qq8cXmomAqxvC8AOnfutz, E_ATTACK_COMMAND)) 
 {
 local HRcx4TQyO5ZgiTLdYLh7Q = _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(0); 
 local SlkSfUUIsKxvBDfa = _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(1); 
 if(HRcx4TQyO5ZgiTLdYLh7Q < SlkSfUUIsKxvBDfa) 
 {
 HRcx4TQyO5ZgiTLdYLh7Q += 1;
 _Qq8cXmomAqxvC8AOnfutz.getVar().set_vector(0, HRcx4TQyO5ZgiTLdYLh7Q); 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetUniformVelocity(_Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(2), _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(3), HRcx4TQyO5ZgiTLdYLh7Q, SlkSfUUIsKxvBDfa)); 
 sq_BinaryWriteDword(sq_GetUniformVelocity(_Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(4), _Qq8cXmomAqxvC8AOnfutz.getVar().get_vector(5), HRcx4TQyO5ZgiTLdYLh7Q, SlkSfUUIsKxvBDfa)); 
 sq_SendChangeSkillEffectPacket(_Qq8cXmomAqxvC8AOnfutz, 132); 
 }
 }
 break;
 }
} ;

function onKeyFrameFlag_mage_jackfrosticewater(x4fCER595FZFajc20Nw, V08RBRh4ZERnu)
{
 if(!x4fCER595FZFajc20Nw) return false;
 local Zz5XFymlvVNog9r5g = x4fCER595FZFajc20Nw.getSkillSubState(); 
 switch(Zz5XFymlvVNog9r5g)
 {
 case 2: 
 if(V08RBRh4ZERnu == 1) 
 {
 if(x4fCER595FZFajc20Nw.sq_IsMyControlObject())
 {
 x4fCER595FZFajc20Nw.sq_IntVectClear();
 x4fCER595FZFajc20Nw.sq_IntVectPush(3); 
 x4fCER595FZFajc20Nw.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_jackfrosticewater(tyF8WF78_m)
{
 if(!tyF8WF78_m) return;
 if(!tyF8WF78_m.sq_IsMyControlObject()) return;
 local HTExDVgffJOPwyg = tyF8WF78_m.getSkillSubState(); 
 switch(HTExDVgffJOPwyg)
 {
 case 1:
 case 2:
 case 3:
 tyF8WF78_m.sq_IntVectClear();
 tyF8WF78_m.sq_IntVectPush(HTExDVgffJOPwyg + 1); 
 tyF8WF78_m.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 break;
 case 4:
 tyF8WF78_m.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onChangeSkillEffect_mage_jackfrosticewater(HkedQN97XdLFMHz, LJQcSjpSb9tCYj3j4, fMXfNHlS8G8qXikGH4PR)
{
 if(!HkedQN97XdLFMHz) return;
 local z8kJjPtlzpkPimvWzLS = HkedQN97XdLFMHz.getSkillSubState();
 switch(z8kJjPtlzpkPimvWzLS)
 {
 case 1:
 case 2: 
 local qicEduNzKW = fMXfNHlS8G8qXikGH4PR.readWord(); 
 switch(qicEduNzKW)
 {
 case 1:
 local Sk4ZJlnb5toUcIlEOVesrNWE = fMXfNHlS8G8qXikGH4PR.readDword(); 
 local IHzqDSEKsAi = (fMXfNHlS8G8qXikGH4PR.readDword()).tofloat(); 
 HkedQN97XdLFMHz.sq_SetStaticSpeedInfo(0, 0, 0, (1000 * (IHzqDSEKsAi / 100.0)).tointeger(), 0.0, 0.0); 
 local AU9VaUHOE0VXT = sq_GetCNRDObjectToCollisionObject(HkedQN97XdLFMHz.getVar().get_obj_vector(0)); 
 if(AU9VaUHOE0VXT && AU9VaUHOE0VXT.getVar("state").get_vector(0) < 12) 
 {
 local RTuSSKkGrR4fp = AU9VaUHOE0VXT.getVar().get_timer_vector(0); 
 if(RTuSSKkGrR4fp)RTuSSKkGrR4fp.setEventTerm(Sk4ZJlnb5toUcIlEOVesrNWE); 
 local AH9Bwh1u3jXiDVlRZ = sq_GetCurrentAnimation(AU9VaUHOE0VXT); 
 if(AH9Bwh1u3jXiDVlRZ) AH9Bwh1u3jXiDVlRZ.setSpeedRate(IHzqDSEKsAi); 
 local WbeNWQ_kDLzbKNdd0G = AU9VaUHOE0VXT.getMyPassiveObject(24372, 0); 
 if(WbeNWQ_kDLzbKNdd0G && WbeNWQ_kDLzbKNdd0G.getVar("state").get_vector(0) < 12) 
 {
 local MPyroWKLz4vdWPcKFuArmB = sq_GetCurrentAnimation(WbeNWQ_kDLzbKNdd0G); 
 if(MPyroWKLz4vdWPcKFuArmB) MPyroWKLz4vdWPcKFuArmB.setSpeedRate(IHzqDSEKsAi); 
 }
 }
 break;
 }
 break;
 }
} ;

 

