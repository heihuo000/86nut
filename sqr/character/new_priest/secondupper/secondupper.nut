
//�Y�T�˽檯�A��nut��?�����w���ݡC�u�R���w�A�t�?�ݭn��?�̥i�H�pô��
//�?�̡G�C�t60 QQ506807329   ���?NUT�s�?�g��?�� ����о�?500�?��C�t�?1000�ǶO��¦��j���A�?��?�� �Ҧp�G�����?�?�� ����? �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI��?�������A���?�i�H���?�C


function onAfterSetState_priest_secondupper(fWC0pHGXgo_jaV_ZPpjS0, oyQp7VZ3_l, mtYpgSMsyf3, IJmLM1eunDtlYj)
{
 if (!fWC0pHGXgo_jaV_ZPpjS0) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(fWC0pHGXgo_jaV_ZPpjS0, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 fWC0pHGXgo_jaV_ZPpjS0.sq_SetCurrentAnimation(203); 
 local AZ0spnpKOa = sq_GetCurrentAnimation(fWC0pHGXgo_jaV_ZPpjS0); 
 sq_Rewind(AZ0spnpKOa); 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(fWC0pHGXgo_jaV_ZPpjS0, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(fWC0pHGXgo_jaV_ZPpjS0, "SecondUpper")
} ;
