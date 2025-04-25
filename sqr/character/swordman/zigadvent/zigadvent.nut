
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function checkExecutableSkill_swordman_zigadvent(s9KvtqJTL49Z5Blmk90yJeE)
{
 if(!s9KvtqJTL49Z5Blmk90yJeE) return false; 
 local tAn1NylYr3xUw9at = s9KvtqJTL49Z5Blmk90yJeE.sq_IsUseSkill(241); 
 if(tAn1NylYr3xUw9at) 
 {
 s9KvtqJTL49Z5Blmk90yJeE.sq_AddSetStatePacket(241, STATE_PRIORITY_USER, false); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_swordman_zigadvent(CsuAraLEDLTZj9)
{
 if(!CsuAraLEDLTZj9) return false; 
 local hdQrfSXr2fcllK9T = CsuAraLEDLTZj9.sq_GetState(); 
 if(hdQrfSXr2fcllK9T == STATE_STAND) 
 return true; 
 if(hdQrfSXr2fcllK9T == STATE_ATTACK) 
 {
 return CsuAraLEDLTZj9.sq_IsCommandEnable(241); 
 }
 return true; 
} ;


 
function onSetState_swordman_zigadvent(CsuAraLEDLTZj9, hdQrfSXr2fcllK9T, UTqV5Xjvpyw, RO8uwCrs0uv07tfOLjDEenu)
{
 if(!CsuAraLEDLTZj9) return; 
 CsuAraLEDLTZj9.sq_StopMove(); 
 CsuAraLEDLTZj9.sq_SetCurrentAnimation(159); 
 
 if(CsuAraLEDLTZj9.sq_IsMyControlObject())
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(CsuAraLEDLTZj9, "character/swordman/appendage/ap_cutin_ani.nut"))
 CNSquirrelAppendage.sq_AppendAppendage(CsuAraLEDLTZj9, CsuAraLEDLTZj9, 241, true, "character/swordman/appendage/ap_cutin_ani.nut", true);
 CsuAraLEDLTZj9.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,
 SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;


 
function onKeyFrameFlag_swordman_zigadvent(jHzva3gzoCd, sTGWY_1fkklc)
{
 if(!jHzva3gzoCd) return false;
 if(sTGWY_1fkklc == 1)
 {
 local xSWVIE7_ZG = 270; 
 if(jHzva3gzoCd.sq_IsMyControlObject())
 {
 local jzV1xJZHDGfPqYN = sq_GetSkillLevel(jHzva3gzoCd, 241); 
 
 jHzva3gzoCd.sq_StartWrite();
 jHzva3gzoCd.sq_WriteDword(241); 
 jHzva3gzoCd.sq_WriteDword(1); 
 jHzva3gzoCd.sq_WriteDword(jHzva3gzoCd.sq_GetBonusRateWithPassive(241, 241, 0, 1.0)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 5, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 6, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 7, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 8, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 1, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_SendCreatePassiveObjectPacket(24370, 0, xSWVIE7_ZG, 1, 0); 
 
 jHzva3gzoCd.sq_StartWrite();
 jHzva3gzoCd.sq_WriteDword(241); 
 jHzva3gzoCd.sq_WriteDword(2); 
 jHzva3gzoCd.sq_WriteDword(jHzva3gzoCd.sq_GetBonusRateWithPassive(241, 241, 2, 1.0)); 
 jHzva3gzoCd.sq_WriteDword(jHzva3gzoCd.sq_GetBonusRateWithPassive(241, 241, 3, 1.0)); 
 jHzva3gzoCd.sq_WriteDword(jHzva3gzoCd.sq_GetBonusRateWithPassive(241, 241, 4, 1.0)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 9, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 10, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 11, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_WriteDword(sq_GetLevelData(jHzva3gzoCd, 241, 12, jzV1xJZHDGfPqYN)); 
 jHzva3gzoCd.sq_SendCreatePassiveObjectPacket(24370, 0, xSWVIE7_ZG, -1, 0); 
 sq_flashScreen(jHzva3gzoCd, 0, 80, 300, 51, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER); 
 }
 
 local ruULdNcVoGbEo = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/zigadvent/zigstart/zigstartback_start_floor.ani"); 
 local asJloe3_ZWmTP = sq_CreatePooledObject(ruULdNcVoGbEo, true); 
 sq_SetCurrentDirection(asJloe3_ZWmTP, jHzva3gzoCd.getDirection()); 
 asJloe3_ZWmTP.setCurrentPos(
 sq_GetDistancePos(jHzva3gzoCd.getXPos(), jHzva3gzoCd.getDirection(), xSWVIE7_ZG),
 jHzva3gzoCd.getYPos(),
 jHzva3gzoCd.getZPos()
 ); 
 asJloe3_ZWmTP = sq_SetEnumDrawLayer(asJloe3_ZWmTP, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(jHzva3gzoCd, asJloe3_ZWmTP, OBJECTTYPE_DRAWONLY, false); 
 }
 return true;
} ;

 
function onEndCurrentAni_swordman_zigadvent(AwoNigkk6xseL3F2cKhRoJ)
{
 if(!AwoNigkk6xseL3F2cKhRoJ) return;
 if(!AwoNigkk6xseL3F2cKhRoJ.sq_IsMyControlObject()) return;
 AwoNigkk6xseL3F2cKhRoJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


