
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_mage_Magewhip(icLS0JfVn7CfJWZ2VIF2Jl, ARr1YFhgQx_3M64ApfOw, EXg_l5RvyE0UDq7GGP89P, CKbXVKNxY7iVqP)
{
 if (!icLS0JfVn7CfJWZ2VIF2Jl) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(icLS0JfVn7CfJWZ2VIF2Jl, "character/mage/avatar/ap_avatar.nut"))
 {
 local eeODLaLMfrBBVcYQ24e_bk = icLS0JfVn7CfJWZ2VIF2Jl.sq_GetVectorData(EXg_l5RvyE0UDq7GGP89P, 0); 
 local oFnDNZhJ0gMDvjfL02 = null; 
 switch (eeODLaLMfrBBVcYQ24e_bk) 
 {
 case 20:
 oFnDNZhJ0gMDvjfL02 = setCurrentAnimation_avatar_eff(icLS0JfVn7CfJWZ2VIF2Jl,"Whip",true);
 break;
 case 13:
 oFnDNZhJ0gMDvjfL02 = setCurrentAnimation_avatar_eff(icLS0JfVn7CfJWZ2VIF2Jl,"Swing",true);
 break;
 case 117:
 oFnDNZhJ0gMDvjfL02 = setCurrentAnimation_avatar_eff(icLS0JfVn7CfJWZ2VIF2Jl,"SwingEx",true);
 break;
 }
 if(oFnDNZhJ0gMDvjfL02!=null)
 icLS0JfVn7CfJWZ2VIF2Jl.setCurrentAnimation(oFnDNZhJ0gMDvjfL02); 
 }
} ;
