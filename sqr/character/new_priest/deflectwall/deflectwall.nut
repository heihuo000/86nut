
//�Y�T�˽檯�A��nut��?�����w���ݡC�u�R���w�A�t�?�ݭn��?�̥i�H�pô��
//�?�̡G�C�t60 QQ506807329   ���?NUT�s�?�g��?�� ����о�?500�?��C�t�?1000�ǶO��¦��j���A�?��?�� �Ҧp�G�����?�?�� ����? �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI��?�������A���?�i�H���?�C


function onAfterSetState_priest_deflectwall(FSCacgtdzRBtomrZ, Lte97N6t9ZD4xlhIbJRy1ZL, D0awhJXgMnG9GiRGG6dc, h_qbnSAWTKNdxk7E)
{
 if (!FSCacgtdzRBtomrZ) return;

 if(CNSquirrelAppendage.sq_IsAppendAppendage(FSCacgtdzRBtomrZ, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 FSCacgtdzRBtomrZ.sq_SetCurrentAnimation(207); 
 local KpMf5VTyXurJlVvduk19TL5 = sq_GetCurrentAnimation(FSCacgtdzRBtomrZ); 
 sq_Rewind(KpMf5VTyXurJlVvduk19TL5); 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(FSCacgtdzRBtomrZ, "appendage/character/ap_holymace.nut"))
 ChangQing_751675335_BodyHolyMace(FSCacgtdzRBtomrZ, "DeflectWall")
} ;
