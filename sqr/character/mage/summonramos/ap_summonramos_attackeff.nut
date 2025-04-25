
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_mage_summonramos_attackeff") 
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_mage_summonramos_attackeff")
}


function onStart_appendage_mage_summonramos_attackeff(HScZbHN_fBPvD)
{
 if(!HScZbHN_fBPvD) return;
 HScZbHN_fBPvD.getVar("state").clear_vector(); 
 HScZbHN_fBPvD.getVar("state").push_vector(1); 
} ;

function drawAppend_appendage_mage_summonramos_attackeff(HScZbHN_fBPvD, FBVVMHcrgeJi7Wl6b2r, sXAuFfVUX_fKzmh2NJan, Tdp2uIdnuhUp5fLrU9EXH, cH_Gmej9OPYNTb)
{
 if(!HScZbHN_fBPvD) return;
 local svIm8TQIbgwnHoUO = sq_GetCNRDObjectToActiveObject(HScZbHN_fBPvD.getSource());
 local VuNx3z8q86INT7AaFlR = HScZbHN_fBPvD.getParent();
 if(!svIm8TQIbgwnHoUO || !VuNx3z8q86INT7AaFlR)
 {
 HScZbHN_fBPvD.setValid(false);
 return;
 }
 if(!FBVVMHcrgeJi7Wl6b2r)return; 
 local kIUH8lhfTWL10_3fQV93nh0 = HScZbHN_fBPvD.getVar("state").get_vector(0); 
 switch(kIUH8lhfTWL10_3fQV93nh0)
 {
 case 1:
 local CAZult2J2GarW8dW3S = svIm8TQIbgwnHoUO.getAttackIndex(); 
 if(CAZult2J2GarW8dW3S < 11 || CAZult2J2GarW8dW3S >= 12)
 {
 HScZbHN_fBPvD.getVar("state").set_vector(0,2); 
 return;
 }
 local EyYBY4dAKoQfVI8Ch = HScZbHN_fBPvD.getVar().GetAnimationMap("2dotdamage_loop", "monster/character/mage/ramos/animation/meal/2dotdamage_loop.ani");
 sq_AnimationProc(EyYBY4dAKoQfVI8Ch);
 sq_drawCurrentFrame(EyYBY4dAKoQfVI8Ch, sXAuFfVUX_fKzmh2NJan, Tdp2uIdnuhUp5fLrU9EXH, cH_Gmej9OPYNTb);
 break;
 case 2:
 local EyYBY4dAKoQfVI8Ch = HScZbHN_fBPvD.getVar().GetAnimationMap("2dotdamage_end", "monster/character/mage/ramos/animation/meal/2dotdamage_end.ani");
 sq_AnimationProc(EyYBY4dAKoQfVI8Ch);
 sq_drawCurrentFrame(EyYBY4dAKoQfVI8Ch, sXAuFfVUX_fKzmh2NJan, Tdp2uIdnuhUp5fLrU9EXH, cH_Gmej9OPYNTb);
 if(sq_IsEnd(EyYBY4dAKoQfVI8Ch))
 {
 HScZbHN_fBPvD.setValid(false);
 return;
 }
 break;
 }
} ;

