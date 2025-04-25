
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_mage_moonshadow(qOelrVIIJ0BiEhafeOQ5t)
{
 if(!qOelrVIIJ0BiEhafeOQ5t) return false; 
 local CXc9zvHvlporzUjneEQjyP = qOelrVIIJ0BiEhafeOQ5t.sq_IsUseSkill(135); 
 if(CXc9zvHvlporzUjneEQjyP) 
 {
 qOelrVIIJ0BiEhafeOQ5t.sq_AddSetStatePacket(135, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_mage_moonshadow(qOelrVIIJ0BiEhafeOQ5t)
{
 if(!qOelrVIIJ0BiEhafeOQ5t) return false; 
 local CXc9zvHvlporzUjneEQjyP = qOelrVIIJ0BiEhafeOQ5t.sq_GetState(); 
 if(CXc9zvHvlporzUjneEQjyP == STATE_STAND) 
 return true; 
 if(CXc9zvHvlporzUjneEQjyP == STATE_ATTACK) 
 {
 return qOelrVIIJ0BiEhafeOQ5t.sq_IsCommandEnable(135); 
 }
 return true; 
} ;

 
function onSetState_mage_moonshadow(vehraTrnf3TQjCIUc6, tCg8f92SYX3hsUl, tT6P8S0BTeK, HDYhdWaY2324u)
{
 if(!vehraTrnf3TQjCIUc6) return; 
 vehraTrnf3TQjCIUc6.sq_StopMove(); 
 vehraTrnf3TQjCIUc6.sq_SetCurrentAnimation(138); 
 sq_StartDrawCastGauge(vehraTrnf3TQjCIUc6, 0, true); 
 
 vehraTrnf3TQjCIUc6.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_mage_moonshadow(vehraTrnf3TQjCIUc6, tCg8f92SYX3hsUl)
{
 if(!vehraTrnf3TQjCIUc6) return false;
 if(tCg8f92SYX3hsUl == 1 && vehraTrnf3TQjCIUc6.sq_IsMyControlObject())
 {
 local tT6P8S0BTeK = sq_GetSkillLevel(vehraTrnf3TQjCIUc6, 135); 
 
 vehraTrnf3TQjCIUc6.sq_StartWrite();
 vehraTrnf3TQjCIUc6.sq_WriteDword(135); 
 vehraTrnf3TQjCIUc6.sq_WriteDword(vehraTrnf3TQjCIUc6.sq_GetBonusRateWithPassive(135, 135, 2, 1.0)); 
 vehraTrnf3TQjCIUc6.sq_WriteDword(vehraTrnf3TQjCIUc6.sq_GetLevelData(135, 0, tT6P8S0BTeK)); 
 vehraTrnf3TQjCIUc6.sq_WriteDword(vehraTrnf3TQjCIUc6.sq_GetLevelData(135, 1, tT6P8S0BTeK)); 
 vehraTrnf3TQjCIUc6.sq_SendCreatePassiveObjectPacket(24372, 0, 200, 0, 0);
 }
 return true;
} ;

 
function onEndCurrentAni_mage_moonshadow(ufHkoHybiK8QA6IhjnQeJ5PV)
{
 if(!ufHkoHybiK8QA6IhjnQeJ5PV) return;
 if(ufHkoHybiK8QA6IhjnQeJ5PV.sq_IsMyControlObject())
 ufHkoHybiK8QA6IhjnQeJ5PV.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


