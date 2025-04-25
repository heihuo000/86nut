
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function setState_po_qq506807329new_fighter_24373(iijoGFHKQvmV0NPdP, _Jk2SkAcO_qe, c1fL11wE3lhlxCBWWCY2e)
{
 if(!iijoGFHKQvmV0NPdP) return;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 iijoGFHKQvmV0NPdP.getVar("state").clear_vector(); 
 iijoGFHKQvmV0NPdP.getVar("state").push_vector(_Jk2SkAcO_qe);
 local P36bMmp4HIfS9X = iijoGFHKQvmV0NPdP.getVar("skill").get_vector(0);
 switch(P36bMmp4HIfS9X)
 {
 case 237: 
 switch(_Jk2SkAcO_qe)
 {
 case 10:
 sq_moveWithParent(iijoGFHKQvmV0NPdP, iijoGFHKQvmV0NPdP); 
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/elbowthrowsub/shockwave_end_01_d.ani");
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 sq_SetMyShake(iijoGFHKQvmV0NPdP, 8, 220); 
 break;
 }
 break;
 case 234: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 switch(kDc3Ro_TO4PS1Nc)
 {
 case 1: 
 switch(_Jk2SkAcO_qe)
 {
 case 10:
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/dragonmine/poisonend_dragonmine_bottom.ani");
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 break;
 }
 break;
 }
 break;
 case 225: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 switch(kDc3Ro_TO4PS1Nc)
 {
 case 1: 
 switch(_Jk2SkAcO_qe)
 {
 case 10:
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/shoot_dragon.ani");
 sq_AddfRotateAngle(yOanmBf2QubGX75cqm5, iijoGFHKQvmV0NPdP.getVar().getFloat(0)); 
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 break;
 case 11:
 sq_SetCustomRotate(iijoGFHKQvmV0NPdP, 0.0); 
 sq_SetCurrentPos(iijoGFHKQvmV0NPdP, iijoGFHKQvmV0NPdP.getVar().get_vector(3), iijoGFHKQvmV0NPdP.getVar().get_vector(4), 0); 
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/floor_explosion.ani");
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 sq_CreateDrawOnlyObject(iijoGFHKQvmV0NPdP, "passiveobject/script_sqr_nut_qq506807329/fighter/animation/lightdragonthirteen/explosion_s_expl_small.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 break;
 }
 break;
 case 226: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 switch(kDc3Ro_TO4PS1Nc)
 {
 case 1:
 switch(_Jk2SkAcO_qe)
 {
 case 10:
 local X2mudb_5NI3gVJG = ["illusion1_illusion_body1.ani", "illusion2_illusion_body2.ani"];
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/fighter/animation/saintillusion/", X2mudb_5NI3gVJG[iijoGFHKQvmV0NPdP.getVar().get_vector(0) - 1]);
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 break;
 case 11:
 local X2mudb_5NI3gVJG = ["explode1_charge_explode.ani", "explode2_charge_explode.ani"];
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("passiveobject/script_sqr_nut_qq506807329/fighter/animation/saintillusion/", X2mudb_5NI3gVJG[iijoGFHKQvmV0NPdP.getVar().get_vector(0) - 1]);
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 sq_SetCurrentAttackInfoFromCustomIndex(iijoGFHKQvmV0NPdP, 2); 
 local KasASgEfGSbWD = iijoGFHKQvmV0NPdP.getVar().get_vector(3); 
 local FKHpeqFMmHQuLieEWdMuX = iijoGFHKQvmV0NPdP.getXPos(); 
 local wNKoEvyqN5ipT1TlMH = iijoGFHKQvmV0NPdP.getYPos(); 
 local LDbqcvsqw9qRbKwG = iijoGFHKQvmV0NPdP.getYPos(); 
 local nCmuAgKxMmRqN9f8G4FcGs = iijoGFHKQvmV0NPdP.getObjectManager(); 
 for(local gs31FzSzlrF_4uw6fUIvB = 0; gs31FzSzlrF_4uw6fUIvB < nCmuAgKxMmRqN9f8G4FcGs.getCollisionObjectNumber(); gs31FzSzlrF_4uw6fUIvB++)
 {
 local qt_FcPFhp369oCIf40t5 = nCmuAgKxMmRqN9f8G4FcGs.getCollisionObject(gs31FzSzlrF_4uw6fUIvB); 
 if(qt_FcPFhp369oCIf40t5
 && !iijoGFHKQvmV0NPdP.isEnemy(qt_FcPFhp369oCIf40t5)
 && qt_FcPFhp369oCIf40t5.isObjectType(OBJECTTYPE_CHARACTER)) 
 {
 local Nq9pLRNhJ6JF = sq_GetCNRDObjectToActiveObject(qt_FcPFhp369oCIf40t5); 
 if(!Nq9pLRNhJ6JF.isDead())
 {
 if(sq_Abs(FKHpeqFMmHQuLieEWdMuX - Nq9pLRNhJ6JF.getXPos()) < 100
 && sq_Abs(wNKoEvyqN5ipT1TlMH - Nq9pLRNhJ6JF.getYPos()) <= 40
 && sq_Abs(LDbqcvsqw9qRbKwG - Nq9pLRNhJ6JF.getZPos()) <= 120)
 Nq9pLRNhJ6JF.setHp(Nq9pLRNhJ6JF.getHp() + KasASgEfGSbWD, null, true); 
 }
 }
 }
 sq_SetMyShake(iijoGFHKQvmV0NPdP, 2, 100); 
 break;
 }
 break;
 }
 break;
 case 233: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 switch(kDc3Ro_TO4PS1Nc)
 {
 case 2:
 case 3:
 case 4: 
 switch(_Jk2SkAcO_qe)
 {
 case 10: 
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "character/fighter/effect/animation/poisonexplosion/flower_01_d.ani");
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 break;
 case 11: 
 sq_moveWithParent(iijoGFHKQvmV0NPdP, iijoGFHKQvmV0NPdP); 
 local yOanmBf2QubGX75cqm5 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/fighter/animation/poisonexplosion/explosion_01_shockwave_d.ani");
 iijoGFHKQvmV0NPdP.setCurrentAnimation(yOanmBf2QubGX75cqm5); 
 local hFwvsVZ3jF = sq_GetCNRDObjectToCollisionObject(iijoGFHKQvmV0NPdP.getParent()); 
 if(hFwvsVZ3jF)
 {
 local YyInUnT5zj_Em6APuEy = hFwvsVZ3jF.getVar(); 
 local DjOi59nOib3TRUFTU = YyInUnT5zj_Em6APuEy.get_vector(0); 
 if(kDc3Ro_TO4PS1Nc == 3) 
 DjOi59nOib3TRUFTU *= (1.0 - YyInUnT5zj_Em6APuEy.get_vector(3) / 100.0); 
 else if(kDc3Ro_TO4PS1Nc == 4) 
 DjOi59nOib3TRUFTU *= (1.0 - YyInUnT5zj_Em6APuEy.get_vector(4) / 100.0); 
 local DIFllEpqEj = sq_GetCustomAttackInfo(iijoGFHKQvmV0NPdP, 14); 
 sq_SetCurrentAttackBonusRate(DIFllEpqEj, DjOi59nOib3TRUFTU.tointeger()); 
 sq_SetChangeStatusIntoAttackInfo(DIFllEpqEj, 0, ACTIVESTATUS_POISON, YyInUnT5zj_Em6APuEy.get_vector(7), YyInUnT5zj_Em6APuEy.get_vector(8), YyInUnT5zj_Em6APuEy.get_vector(9), YyInUnT5zj_Em6APuEy.get_vector(10)); 
 sq_SetChangeStatusIntoAttackInfo(DIFllEpqEj, 1, ACTIVESTATUS_BURN, YyInUnT5zj_Em6APuEy.get_vector(11), YyInUnT5zj_Em6APuEy.get_vector(12), YyInUnT5zj_Em6APuEy.get_vector(13), YyInUnT5zj_Em6APuEy.get_vector(14)); 
 sq_SetCurrentAttackInfo(iijoGFHKQvmV0NPdP, DIFllEpqEj); 
 }
 if(iijoGFHKQvmV0NPdP.isMyControlObject())
 {
 sq_SetMyShake(iijoGFHKQvmV0NPdP, 10, 300); 
 sq_flashScreen(iijoGFHKQvmV0NPdP, 50, 50, 50, 200, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 break;
 }
 break;
 }
 break;
 }
} ;
 
