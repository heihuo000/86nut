
//�Y�T�˽檯�A��nut��?�����w���ݡC�u�R���w�A�t�?�ݭn��?�̥i�H�pô��
//�?�̡G�C�t60 QQ506807329   ���?NUT�s�?�g��?�� ����о�?500�?��C�t�?1000�ǶO��¦��j���A�?��?�� �Ҧp�G�����?�?�� ����? �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI��?�������A���?�i�H���?�C



if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onAfterSetState_priest_apocalypse(dh9fxoGISRXeOIENS1j, NULchLBUnbdkMb8vz, hBSS6Vxpil5k1uO, SmnYNRd88rultw)
{
 if (!dh9fxoGISRXeOIENS1j) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(dh9fxoGISRXeOIENS1j, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 local txgAxDemV15QcW6v5O = null; 
 local LmMHgYWREZU155X0NRbt = dh9fxoGISRXeOIENS1j.sq_GetVectorData(hBSS6Vxpil5k1uO, 0); 
 switch (LmMHgYWREZU155X0NRbt)
 {
 case 0:
 txgAxDemV15QcW6v5O = 210;
 break;
 }
 if(txgAxDemV15QcW6v5O != null)
 {
 dh9fxoGISRXeOIENS1j.sq_SetCurrentAnimation(txgAxDemV15QcW6v5O); 
 local Q0ETL2Kn2OqPvs_6Y = sq_GetCurrentAnimation(dh9fxoGISRXeOIENS1j); 
 sq_Rewind(Q0ETL2Kn2OqPvs_6Y); 
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(dh9fxoGISRXeOIENS1j, "appendage/character/ap_holymace.nut"))
 {
 ChangQing_751675335_BodyHolyMace(dh9fxoGISRXeOIENS1j, "Apocalypse")
 }
} ;
