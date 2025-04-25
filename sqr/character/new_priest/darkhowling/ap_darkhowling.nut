
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_priest_darkhowling") 
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_priest_darkhowling") 
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_priest_darkhowling")
}



function onStart_appendage_priest_darkhowling(J_wcCgJV8Ev1v_7JbjRw0w)
{
 if(!J_wcCgJV8Ev1v_7JbjRw0w) return;
 local NUuJ3tGslVjBSMtArUMp = J_wcCgJV8Ev1v_7JbjRw0w.getParent(); 
 local qOL0BFf3z0KEotJYnDIsu = sq_GetCNRDObjectToSQRCharacter(J_wcCgJV8Ev1v_7JbjRw0w.getSource()); 
 if(!NUuJ3tGslVjBSMtArUMp || !qOL0BFf3z0KEotJYnDIsu)
 {
 J_wcCgJV8Ev1v_7JbjRw0w.setValid(false);
 return;
 }
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().clear_vector(); 
 if(sq_IsBoss(NUuJ3tGslVjBSMtArUMp)) 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().push_vector(qOL0BFf3z0KEotJYnDIsu.sq_GetLevelData(136, 9, sq_GetSkillLevel(qOL0BFf3z0KEotJYnDIsu, 136))); 
 else if(sq_IsNamed(NUuJ3tGslVjBSMtArUMp)) 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().push_vector(qOL0BFf3z0KEotJYnDIsu.sq_GetLevelData(136, 8, sq_GetSkillLevel(qOL0BFf3z0KEotJYnDIsu, 136))); 
 else 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().push_vector(qOL0BFf3z0KEotJYnDIsu.sq_GetLevelData(136, 7, sq_GetSkillLevel(qOL0BFf3z0KEotJYnDIsu, 136))); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("state").clear_vector(); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar("state").push_vector(1); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().setBool(0, false); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().setBool(1, false); 
 J_wcCgJV8Ev1v_7JbjRw0w.getVar().setBool(2, false); 
} ;

function drawAppend_appendage_priest_darkhowling(AvJP5sNmX4hT6WJRZbH, ofBWJaqE3WXHZYaf8Q, ydE8XOy5Ry, WAdRlpmtZSqdvpwWDluzco, Dent2XWtnse49lue1)
{
 if(!AvJP5sNmX4hT6WJRZbH) return;
 local COuV_5JP7xTdGdttTjC5va = AvJP5sNmX4hT6WJRZbH.getParent();
 if(!COuV_5JP7xTdGdttTjC5va)
 {
 AvJP5sNmX4hT6WJRZbH.setValid(false);
 return;
 }
 if(!ofBWJaqE3WXHZYaf8Q)return; 
 local WR0pt19cuyYWQy = null; 
 local alhaF6WwnKKVGJiVimjSo = AvJP5sNmX4hT6WJRZbH.getVar("state").get_vector(0); 
 switch(alhaF6WwnKKVGJiVimjSo)
 {
 case 1:
 WR0pt19cuyYWQy = AvJP5sNmX4hT6WJRZbH.getVar().GetAnimationMap("hit_debuff", "character/priest/effect/animation/darkhowling/hit_debuff.ani");
 if(sq_IsEnd(WR0pt19cuyYWQy)) 
 {
 sq_Rewind(WR0pt19cuyYWQy); 
 AvJP5sNmX4hT6WJRZbH.getVar("state").clear_vector(); 
 AvJP5sNmX4hT6WJRZbH.getVar("state").push_vector(2); 
 return;
 }
 else if(AvJP5sNmX4hT6WJRZbH.getVar().getBool(0) == false) 
 {
 if(sq_GetAnimationFrameIndex(WR0pt19cuyYWQy) >= 4) 
 {
 local HWINMg78DTMKrzUemwVlllg6 = AvJP5sNmX4hT6WJRZbH.getSource(); 
 if(!HWINMg78DTMKrzUemwVlllg6)
 {
 AvJP5sNmX4hT6WJRZbH.setValid(false);
 return;
 }
 AvJP5sNmX4hT6WJRZbH.getVar().setBool(0, true); 
 if(sq_IsMyControlObject(HWINMg78DTMKrzUemwVlllg6)) 
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(136); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(AvJP5sNmX4hT6WJRZbH.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacketPos(HWINMg78DTMKrzUemwVlllg6, 24374, 0, COuV_5JP7xTdGdttTjC5va.getXPos(), COuV_5JP7xTdGdttTjC5va.getYPos(), COuV_5JP7xTdGdttTjC5va.getZPos() + sq_GetObjectHeight(COuV_5JP7xTdGdttTjC5va) + 20);
 }
 }
 }
 break;
 case 2:
 WR0pt19cuyYWQy = AvJP5sNmX4hT6WJRZbH.getVar().GetAnimationMap("loop_debuff", "character/priest/effect/animation/darkhowling/loop_debuff.ani");
 local OMpf19cctUHRH7r = AvJP5sNmX4hT6WJRZbH.getTimer().Get(); 
 local c5eBNRHu50 = AvJP5sNmX4hT6WJRZbH.getVar("endTime").get_vector(0); 
 if(OMpf19cctUHRH7r >= c5eBNRHu50) 
 {
 AvJP5sNmX4hT6WJRZbH.getVar("state").clear_vector(); 
 AvJP5sNmX4hT6WJRZbH.getVar("state").push_vector(3); 
 return;
 }
 if(AvJP5sNmX4hT6WJRZbH.getVar().getBool(1) == false) 
 if(OMpf19cctUHRH7r > c5eBNRHu50 / 2) 
 {
 AvJP5sNmX4hT6WJRZbH.getVar().setBool(0, false); 
 AvJP5sNmX4hT6WJRZbH.getVar().setBool(1, true); 
 }
 break;
 case 3:
 WR0pt19cuyYWQy = AvJP5sNmX4hT6WJRZbH.getVar().GetAnimationMap("disappear_debuff", "character/priest/effect/animation/darkhowling/disappear_debuff.ani");
 if(sq_IsEnd(WR0pt19cuyYWQy)) 
 {
 AvJP5sNmX4hT6WJRZbH.setValid(false);
 return;
 }
 break;
 }
 if(WR0pt19cuyYWQy != null)
 {
 if(COuV_5JP7xTdGdttTjC5va.getDirection()== ENUM_DIRECTION_RIGHT)
 WR0pt19cuyYWQy.setImageRateFromOriginal(-1.0, 1.0);
 else
 WR0pt19cuyYWQy.setImageRateFromOriginal(1.0, 1.0);
 sq_AnimationProc(WR0pt19cuyYWQy);
 sq_drawCurrentFrame(WR0pt19cuyYWQy, ydE8XOy5Ry, WAdRlpmtZSqdvpwWDluzco - sq_GetObjectHeight(COuV_5JP7xTdGdttTjC5va) - 20, Dent2XWtnse49lue1);
 }
} ;

function onDamageParent_appendage_priest_darkhowling(dh9fxoGISRXeOIENS1j, NULchLBUnbdkMb8vz, hBSS6Vxpil5k1uO, SmnYNRd88rultw)
{
 if(!dh9fxoGISRXeOIENS1j) return;
 
 if(SmnYNRd88rultw || dh9fxoGISRXeOIENS1j.getVar("state").get_vector(0) != 2 || dh9fxoGISRXeOIENS1j.getVar().getBool(1) == false)return;
 local txgAxDemV15QcW6v5O = dh9fxoGISRXeOIENS1j.getParent(); 
 if(!txgAxDemV15QcW6v5O)
 {
 dh9fxoGISRXeOIENS1j.setValid(false);
 return;
 }
 if(dh9fxoGISRXeOIENS1j.getVar().getBool(2) == false)
 {
 dh9fxoGISRXeOIENS1j.getVar().setBool(2, true); 
 dh9fxoGISRXeOIENS1j.getVar("state").clear_vector(); 
 dh9fxoGISRXeOIENS1j.getVar("state").push_vector(1); 
 }
} ;

