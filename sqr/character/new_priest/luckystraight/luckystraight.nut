
//�Y�T�˽檯�A��nut��?�����w���ݡC�u�R���w�A�t�?�ݭn��?�̥i�H�pô��
//�?�̡G�C�t60 QQ506807329   ���?NUT�s�?�g��?�� ����о�?500�?��C�t�?1000�ǶO��¦��j���A�?��?�� �Ҧp�G�����?�?�� ����? �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI��?�������A���?�i�H���?�C


function onAfterSetState_priest_luckystraight(sU8CLRdMpaanBAL4G6jjS5, pcEolYLCcjWOp, LODl3iH48Y, S48Z4i48kBjyaCalhH)
{
 if (!sU8CLRdMpaanBAL4G6jjS5) return;

 if(CNSquirrelAppendage.sq_IsAppendAppendage(sU8CLRdMpaanBAL4G6jjS5, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 sU8CLRdMpaanBAL4G6jjS5.sq_SetCurrentAnimation(202); 
 local l2n2MgYMIGh = sq_GetCurrentAnimation(sU8CLRdMpaanBAL4G6jjS5); 
 sq_Rewind(l2n2MgYMIGh); 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(sU8CLRdMpaanBAL4G6jjS5, "appendage/character/ap_holymace.nut"))
 {
	 ChangQing_751675335_BodyHolyMace(sU8CLRdMpaanBAL4G6jjS5, "luckystraight")
	  }
} ;
