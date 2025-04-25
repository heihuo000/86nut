
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_mage_MageChasersExplosion(U14xiPJLmK5n, s4ziAFbTTRaE, F_y1bHd26yDqrxteK, TrBCWN5lj_bMhALDMJEb)
{
 if (!U14xiPJLmK5n) return;
 local gw77JI6vopkFBA = U14xiPJLmK5n.sq_GetVectorData(F_y1bHd26yDqrxteK, 0); 
 U14xiPJLmK5n.setSkillSubState(gw77JI6vopkFBA); 
} ;

function onKeyFrameFlag_mage_MageChasersExplosion(U14xiPJLmK5n,s4ziAFbTTRaE)
{
 if(!U14xiPJLmK5n) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(U14xiPJLmK5n, "character/mage/avatar/ap_avatar.nut"))
 {
 if(s4ziAFbTTRaE==101){
 local F_y1bHd26yDqrxteK = setCurrentAnimation_avatar_eff(U14xiPJLmK5n,"ChasersExplosion",true); 
 local TrBCWN5lj_bMhALDMJEb = U14xiPJLmK5n.getSkillSubState(); 
 if(TrBCWN5lj_bMhALDMJEb==1) 
 F_y1bHd26yDqrxteK.setCurrentFrameWithChildLayer(6); 
 else if(TrBCWN5lj_bMhALDMJEb==2)
 F_y1bHd26yDqrxteK.setCurrentFrameWithChildLayer(7); 
 U14xiPJLmK5n.setCurrentAnimation(F_y1bHd26yDqrxteK); 
 }
 }
 return true;
} ;