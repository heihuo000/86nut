
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_mage_returntobm(Kw2ueYy2ttgyOaPO9zQ)
{
 if(!Kw2ueYy2ttgyOaPO9zQ) return false; 
 local yOrPg6R0hU9CwR = Kw2ueYy2ttgyOaPO9zQ.sq_IsUseSkill(246); 
 if(yOrPg6R0hU9CwR) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Kw2ueYy2ttgyOaPO9zQ, "character/mage/avatar/ap_avatar.nut"))
 {
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectClear();
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectPush(0);
 Kw2ueYy2ttgyOaPO9zQ.sq_AddSetStatePacket(246, STATE_PRIORITY_USER, true); 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(Kw2ueYy2ttgyOaPO9zQ, "character/mage/appendage/ap_bellatrix.nut"))
 {
 
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectClear();
 Kw2ueYy2ttgyOaPO9zQ.sq_IntVectPush(0);
 Kw2ueYy2ttgyOaPO9zQ.sq_AddSetStatePacket(32, STATE_PRIORITY_USER, true); 
 }
 else
 return false;
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_returntobm(WdlxwJi181Zy2vOk3XFh1hGo)
{
 if(!WdlxwJi181Zy2vOk3XFh1hGo) return false; 
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(WdlxwJi181Zy2vOk3XFh1hGo, "character/mage/avatar/ap_avatar.nut")
 && !CNSquirrelAppendage.sq_IsAppendAppendage(WdlxwJi181Zy2vOk3XFh1hGo, "character/mage/appendage/ap_bellatrix.nut"))
 return false;
 local ZbjiQddQrSmTLEIElssi = WdlxwJi181Zy2vOk3XFh1hGo.sq_GetState(); 
 if(ZbjiQddQrSmTLEIElssi == STATE_STAND) 
 return true; 
 if(ZbjiQddQrSmTLEIElssi == STATE_ATTACK) 
 {
 return WdlxwJi181Zy2vOk3XFh1hGo.sq_IsCommandEnable(246); 
 }
 return true; 
} ;

 
function onSetState_mage_returntobm(VKYuonGZY4WnJ14AdpQhOV, GaSJmd7pgB, c_Lk8eF22yxDIdx6, K9G6MGXVnPtvnSrWfE5ZVqf)
{
 if(!VKYuonGZY4WnJ14AdpQhOV) return; 
 local PXFin3x5uyctqdjwMcQ = VKYuonGZY4WnJ14AdpQhOV.sq_GetVectorData(c_Lk8eF22yxDIdx6, 0); 
 VKYuonGZY4WnJ14AdpQhOV.setSkillSubState(PXFin3x5uyctqdjwMcQ); 
 VKYuonGZY4WnJ14AdpQhOV.sq_StopMove(); 
 switch(PXFin3x5uyctqdjwMcQ)
 {
 case 0: 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar.nut");
 if(CNSquirrelAppendage.sq_IsAppendAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar_icon.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(VKYuonGZY4WnJ14AdpQhOV, "character/mage/avatar/ap_avatar_icon.nut");
 VKYuonGZY4WnJ14AdpQhOV.sq_SetCurrentAnimation(95);
 VKYuonGZY4WnJ14AdpQhOV.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 case 1: 
 VKYuonGZY4WnJ14AdpQhOV.sq_SetCurrentAnimation(96); 
 local EbcciwpAgtBTDqj50 = VKYuonGZY4WnJ14AdpQhOV.getCurrentAnimation(); 
 local xxy8upuMj1wCXjQX49g = EbcciwpAgtBTDqj50.getDelaySum(false); 
 VKYuonGZY4WnJ14AdpQhOV.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local _fASO1oKl_Vsqd = EbcciwpAgtBTDqj50.getDelaySum(false); 
 local yyhiwtoSonz = xxy8upuMj1wCXjQX49g.tofloat() / _fASO1oKl_Vsqd.tofloat() * 100.0; 
 local W3L6iIPE0Ackt1 = sq_CreateDrawOnlyObject(VKYuonGZY4WnJ14AdpQhOV, "character/mage/effect/animation/bellatrix/changecast.ani", ENUM_DRAWLAYER_NORMAL, true); 
 W3L6iIPE0Ackt1.getCurrentAnimation().setSpeedRate(yyhiwtoSonz); 
 break;
 }
} ;

function onKeyFrameFlag_mage_returntobm(jrxOuXKJzTQnxj3ee, MYmsrXCuYh8C)
{
 if(!jrxOuXKJzTQnxj3ee) return false;
 local fDRFcUCoDUsY7UYezOHo4 = jrxOuXKJzTQnxj3ee.getSkillSubState(); 
 switch(fDRFcUCoDUsY7UYezOHo4)
 {
 case 0:
 if(MYmsrXCuYh8C == 1 && jrxOuXKJzTQnxj3ee.sq_IsMyControlObject())
 sq_flashScreen(jrxOuXKJzTQnxj3ee, 60, 0, 180, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 1:
 if(MYmsrXCuYh8C == 1) 
 {
 if(jrxOuXKJzTQnxj3ee.sq_IsMyControlObject())
 {
 jrxOuXKJzTQnxj3ee.sq_IntVectClear();
 jrxOuXKJzTQnxj3ee.sq_IntVectPush(2); 
 jrxOuXKJzTQnxj3ee.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_mage_returntobm(cZ6OdFhUXxFLE7jtj0MS)
{
 if(!cZ6OdFhUXxFLE7jtj0MS) return;
 if(cZ6OdFhUXxFLE7jtj0MS.sq_IsMyControlObject())
 cZ6OdFhUXxFLE7jtj0MS.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


