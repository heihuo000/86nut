
//�Y�T�˽檯�A��nut��?�����w���ݡC�u�R���w�A�t�?�ݭn��?�̥i�H�pô��
//�?�̡G�C�t60 QQ506807329   ���?NUT�s�?�g��?�� ����о�?500�?��C�t�?1000�ǶO��¦��j���A�?��?�� �Ҧp�G�����?�?�� ����? �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI��?�������A���?�i�H���?�C


function onAfterSetState_priest_bladeofpurewhite(O5osjcUv2FAVq, ZLU_t5nZ74ocUe62iBCOxB7, g46Mc_ZLdLogQiKQUDNt, VJzj0cG0lf)
{
 if (!O5osjcUv2FAVq) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 O5osjcUv2FAVq.sq_SetCurrentAnimation(204); 
 local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq); 
 sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY); 
 }
else if(CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(O5osjcUv2FAVq, "BladeOfPureWhite")
} ;
