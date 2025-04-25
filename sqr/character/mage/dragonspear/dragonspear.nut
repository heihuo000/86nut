
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function onAfterSetState_mage_MageDragonSpear(Fp93LB0PE55_ZaiLs, zUS2p0sAZsT_iRUS_sa9, BieI5XW1TL, JnanPO09O73U4)
{
 if(!Fp93LB0PE55_ZaiLs) return;
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Fp93LB0PE55_ZaiLs, "character/mage/avatar/ap_avatar.nut"))
 {
 local Kza7aBbeTlhnsr6SPtl = Fp93LB0PE55_ZaiLs.sq_GetVectorData(BieI5XW1TL, 0); 
 local pPp72oawkCLW84ij = setCurrentAnimation_avatar_eff(Fp93LB0PE55_ZaiLs, "DragonSpear",true); 
 switch(Kza7aBbeTlhnsr6SPtl)
 {
 case 1:
 case 2: 
 pPp72oawkCLW84ij.setCurrentFrameWithChildLayer(11); 
 break;
 }
 
 if(pPp72oawkCLW84ij)
 Fp93LB0PE55_ZaiLs.setCurrentAnimation(pPp72oawkCLW84ij); 
 }
} ;
