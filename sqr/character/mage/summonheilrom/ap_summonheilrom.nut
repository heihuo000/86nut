
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_summonheilrom") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_mage_summonheilrom") 
}


function proc_appendage_mage_summonheilrom(gW08DmrGKyDjX0rH)
{
 if(!gW08DmrGKyDjX0rH) return;
 local rgE2wfu7IAROhqX = gW08DmrGKyDjX0rH.getParent(); 
 if(!rgE2wfu7IAROhqX)
 {
 gW08DmrGKyDjX0rH.setValid(false);
 return;
 }
 local Fy4yy58t4s3TH = gW08DmrGKyDjX0rH.getTimer().Get(); 
 if(Fy4yy58t4s3TH < 500)return;
 local Gv9nv5Kf5rS04JW6k5K = gW08DmrGKyDjX0rH.getVar("sqrChr").get_obj_vector(0);
 if(!Gv9nv5Kf5rS04JW6k5K || Gv9nv5Kf5rS04JW6k5K.getState() == STATE_DIE) 
 {
 gW08DmrGKyDjX0rH.setValid(false);
 return;
 }
 local iD8W7_ugNKaE = gW08DmrGKyDjX0rH.getVar("buffPx").get_timer_vector(0);
 if(iD8W7_ugNKaE)
 if(iD8W7_ugNKaE.isOnEvent(Fy4yy58t4s3TH) == true) 
 {
 Gv9nv5Kf5rS04JW6k5K = sq_GetCNRDObjectToSQRCharacter(Gv9nv5Kf5rS04JW6k5K); 
 if(!Gv9nv5Kf5rS04JW6k5K)return;
 local tN6nLYJfg9Lxt0 = sq_GetSkillLevel(Gv9nv5Kf5rS04JW6k5K, 138); 
 local IMXMFTz0gmkvJz = sq_GetLevelData(Gv9nv5Kf5rS04JW6k5K, 138, 2, tN6nLYJfg9Lxt0); 
 local dX8O_ZcnQj2GDEi6 = sq_GetLevelData(Gv9nv5Kf5rS04JW6k5K, 138, 3, tN6nLYJfg9Lxt0).tofloat(); 
 local _NS_NsJYRNP_j8_CMVNdb1h = sq_GetLevelData(Gv9nv5Kf5rS04JW6k5K, 138, 4, tN6nLYJfg9Lxt0).tofloat(); 
 local vpnSJIg6lmbK = sq_GetLevelData(Gv9nv5Kf5rS04JW6k5K, 138, 5, tN6nLYJfg9Lxt0).tofloat(); 
 local cunp3fCFnqo2XFIpSdNn = sq_GetLevelData(Gv9nv5Kf5rS04JW6k5K, 138, 6, tN6nLYJfg9Lxt0).tofloat(); 
 local TYG4HVQEbLW8wQYj2zT = rgE2wfu7IAROhqX.getXPos(); 
 local lL9uPVCIGOemp6JEA = rgE2wfu7IAROhqX.getYPos(); 
 local dksq1oIXOr2XI = rgE2wfu7IAROhqX.getObjectManager(); 
 for(local j2uOvnsX1ZHHY1J4A2YGtrq = 0; j2uOvnsX1ZHHY1J4A2YGtrq < dksq1oIXOr2XI.getCollisionObjectNumber(); j2uOvnsX1ZHHY1J4A2YGtrq++)
 {
 local ZKmJrIYX0auu = dksq1oIXOr2XI.getCollisionObject(j2uOvnsX1ZHHY1J4A2YGtrq); 
 if(ZKmJrIYX0auu 
 && ZKmJrIYX0auu.isObjectType(OBJECTTYPE_CHARACTER) 
 && !Gv9nv5Kf5rS04JW6k5K.isEnemy(ZKmJrIYX0auu) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(ZKmJrIYX0auu, "character/mage/summonheilrom/ap_summonheilrom_buff.nut")) 
 {
 local i6eXsjldeTY4Rx_tXY6Z4J = sq_GetCNRDObjectToActiveObject(ZKmJrIYX0auu); 
 if(!i6eXsjldeTY4Rx_tXY6Z4J || i6eXsjldeTY4Rx_tXY6Z4J.isDead())continue; 
 
 local MvUatCHsDmtWBzCXFPHT = i6eXsjldeTY4Rx_tXY6Z4J.getXPos(); local VDQrYU7Y9gDoj = i6eXsjldeTY4Rx_tXY6Z4J.getYPos();
 if(sqrt((TYG4HVQEbLW8wQYj2zT - MvUatCHsDmtWBzCXFPHT) * (TYG4HVQEbLW8wQYj2zT - MvUatCHsDmtWBzCXFPHT) + (lL9uPVCIGOemp6JEA - VDQrYU7Y9gDoj) * (lL9uPVCIGOemp6JEA - VDQrYU7Y9gDoj)).tointeger() <= IMXMFTz0gmkvJz)
 {
 local xU6tlgoZvhX3S = CNSquirrelAppendage.sq_AppendAppendage(i6eXsjldeTY4Rx_tXY6Z4J, rgE2wfu7IAROhqX, 138, false, "character/mage/summonheilrom/ap_summonheilrom_buff.nut", false);
 xU6tlgoZvhX3S.setAppendCauseSkill(BUFF_CAUSE_SKILL, ENUM_CHARACTERJOB_MAGE, 138, tN6nLYJfg9Lxt0); 
 CNSquirrelAppendage.sq_AppendAppendageID(xU6tlgoZvhX3S, i6eXsjldeTY4Rx_tXY6Z4J, rgE2wfu7IAROhqX, 138, true); 
 local Gp9uel4S57mtIURqlovtbrIx = xU6tlgoZvhX3S.sq_getChangeStatus("changeStatus"); 
 if(!Gp9uel4S57mtIURqlovtbrIx) 
 Gp9uel4S57mtIURqlovtbrIx = xU6tlgoZvhX3S.sq_AddChangeStatusAppendageID(i6eXsjldeTY4Rx_tXY6Z4J, rgE2wfu7IAROhqX, 0, CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, 0, APID_COMMON);
 if(Gp9uel4S57mtIURqlovtbrIx) 
 {
 Gp9uel4S57mtIURqlovtbrIx.clearParameter(); 
 Gp9uel4S57mtIURqlovtbrIx.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, dX8O_ZcnQj2GDEi6);
 Gp9uel4S57mtIURqlovtbrIx.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, vpnSJIg6lmbK);
 Gp9uel4S57mtIURqlovtbrIx.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, _NS_NsJYRNP_j8_CMVNdb1h);
 Gp9uel4S57mtIURqlovtbrIx.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, cunp3fCFnqo2XFIpSdNn);
 }
 xU6tlgoZvhX3S.getVar().clear_vector(); 
 xU6tlgoZvhX3S.getVar().push_vector(IMXMFTz0gmkvJz); 
 xU6tlgoZvhX3S.getVar().clear_timer_vector();
 xU6tlgoZvhX3S.getVar().push_timer_vector();
 local gC1ywaEX9XJyv6N = xU6tlgoZvhX3S.getVar().get_timer_vector(0);
 gC1ywaEX9XJyv6N.setParameter(500, -1); 
 gC1ywaEX9XJyv6N.resetInstant(0); 
 }
 }
 }
 }
} ;

function onEnd_appendage_mage_summonheilrom(Zo4mCIfkvcq2GHCsR)
{
 if(!Zo4mCIfkvcq2GHCsR) return;
 local H664rxQvMQh7VPQQpBo = Zo4mCIfkvcq2GHCsR.getParent(); 
 if(!H664rxQvMQh7VPQQpBo)
 {
 Zo4mCIfkvcq2GHCsR.setValid(false);
 return;
 }
 H664rxQvMQh7VPQQpBo.sendDestroyPacket(true); 
} ;

