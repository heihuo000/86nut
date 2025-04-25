
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_supernova") 
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_supernova") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_supernova") 
}


function onStart_appendage_gunner_supernova(sfqIv3iZ5DUZRG1DDSJ89N)
{
 if(!sfqIv3iZ5DUZRG1DDSJ89N) return;
 local gU8kuJ1FnIMiPiC4NON8 = sfqIv3iZ5DUZRG1DDSJ89N.getParent(); 
 if(!gU8kuJ1FnIMiPiC4NON8 && gU8kuJ1FnIMiPiC4NON8.isDead())
 {
 sfqIv3iZ5DUZRG1DDSJ89N.setValid(false);
 return;
 }
 sfqIv3iZ5DUZRG1DDSJ89N.getVar().clear_vector(); 
 local amznhsssceI = sfqIv3iZ5DUZRG1DDSJ89N.getVar(); 
 amznhsssceI.push_vector(gU8kuJ1FnIMiPiC4NON8.getXPos()); 
 amznhsssceI.push_vector(gU8kuJ1FnIMiPiC4NON8.getYPos()); 
 amznhsssceI.push_vector(gU8kuJ1FnIMiPiC4NON8.getZPos()); 
 sfqIv3iZ5DUZRG1DDSJ89N.getVar().setBool(0, false); 
 
 sfqIv3iZ5DUZRG1DDSJ89N.getVar().clear_timer_vector();
 sfqIv3iZ5DUZRG1DDSJ89N.getVar().push_timer_vector();
 local PX0fR024M7eYv = sfqIv3iZ5DUZRG1DDSJ89N.getVar().get_timer_vector(0);
 PX0fR024M7eYv.setParameter(800, -1); 
 PX0fR024M7eYv.resetInstant(0); 
 PX0fR024M7eYv.setEventOnStart(true);
 
 sq_EffectLayerAppendageOnlyBody(gU8kuJ1FnIMiPiC4NON8, sq_RGB(0, 0, 0), 255, 1300, 0, 999999); 
} ;

 
function proc_appendage_gunner_supernova(YS_8xhaJXsYZie1tEE)
{
 if(!YS_8xhaJXsYZie1tEE)return;
 local x0gZhuYu6EJrh = YS_8xhaJXsYZie1tEE.getParent(); 
 if(!x0gZhuYu6EJrh || x0gZhuYu6EJrh.isDead()) 
 {
 YS_8xhaJXsYZie1tEE.setValid(false); 
 return; 
 }
 local oYt4gtvWuSMglMUR4 = YS_8xhaJXsYZie1tEE.getSource(); 
 if(!oYt4gtvWuSMglMUR4 && YS_8xhaJXsYZie1tEE.getVar().getBool(0) == false) 
 {
 local Y1EmrLQLJ8tt37yg7bF9t = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/lastpang_blowdown.ani"); 
 Y1EmrLQLJ8tt37yg7bF9t.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/lastpang_blowup.ani"), true);
 Y1EmrLQLJ8tt37yg7bF9t.addLayerAnimation(2, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/lastpang_smoke.ani"), true);
 local SFARX1GIQzn3EgL = sq_CreatePooledObject(Y1EmrLQLJ8tt37yg7bF9t, true); 
 sq_SetCurrentDirection(SFARX1GIQzn3EgL, x0gZhuYu6EJrh.getDirection()); 
 SFARX1GIQzn3EgL.setCurrentPos(x0gZhuYu6EJrh.getXPos(), x0gZhuYu6EJrh.getYPos(), x0gZhuYu6EJrh.getZPos() + sq_GetObjectHeight(x0gZhuYu6EJrh) / 2); 
 SFARX1GIQzn3EgL = sq_SetEnumDrawLayer(SFARX1GIQzn3EgL, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(x0gZhuYu6EJrh, SFARX1GIQzn3EgL, OBJECTTYPE_DRAWONLY, false); 
 YS_8xhaJXsYZie1tEE.getVar().setBool(0, true); 
 }
 if(YS_8xhaJXsYZie1tEE.getVar().size_vector() != 1) 
 {
 local bfcvhgf2IL83K9KVnr = oYt4gtvWuSMglMUR4.getState(); 
 switch(bfcvhgf2IL83K9KVnr)
 {
 case 11: 
 case 12: 
 local KJQMm49nSU_vKc = YS_8xhaJXsYZie1tEE.getVar(); 
 sq_SetCurrentPos(x0gZhuYu6EJrh, KJQMm49nSU_vKc.get_vector(0), KJQMm49nSU_vKc.get_vector(1), KJQMm49nSU_vKc.get_vector(2)); 
 local tjYPMpjIB2ZAKkRRvg = YS_8xhaJXsYZie1tEE.getVar().get_timer_vector(0);
 if(tjYPMpjIB2ZAKkRRvg && tjYPMpjIB2ZAKkRRvg.isOnEvent(YS_8xhaJXsYZie1tEE.getTimer().Get()) == true)
 sq_SetPause(x0gZhuYu6EJrh, PAUSETYPE_OBJECT, 1000); 
 break;
 case 13: 
 YS_8xhaJXsYZie1tEE.getVar().clear_vector(); 
 local rSLhVkuJRd = YS_8xhaJXsYZie1tEE.getTimer().Get(); 
 YS_8xhaJXsYZie1tEE.getVar().push_vector(rSLhVkuJRd + 1100); 
 sq_EffectLayerAppendageOnlyBody(x0gZhuYu6EJrh, sq_RGB(0, 0, 0), 255, 0, 0, 1100); 
 return; 
 }
 }
 else 
 {
 local rSLhVkuJRd = YS_8xhaJXsYZie1tEE.getTimer().Get(); 
 if(rSLhVkuJRd >= YS_8xhaJXsYZie1tEE.getVar().get_vector(0))
 {
 YS_8xhaJXsYZie1tEE.setValid(false); 
 return; 
 }
 else
 {
 if(x0gZhuYu6EJrh.getState() != STATE_HOLD
 && x0gZhuYu6EJrh.isMyControlObject()
 && !x0gZhuYu6EJrh.isDead()
 && x0gZhuYu6EJrh.getState() != STATE_DIE)
 {
 sq_IntVectorClear(sq_GetGlobalIntVector());
 sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
 sq_IntVectorPush(sq_GetGlobalIntVector(), 0);
 sq_AddSetStatePacketActiveObject(x0gZhuYu6EJrh, STATE_HOLD, sq_GetGlobalIntVector(), STATE_PRIORITY_FORCE);
 }
 }
 }
} ;


function onEnd_appendage_gunner_supernova(xW1dmlCTtMs)
{
 if(!xW1dmlCTtMs) return;
 local D5fMSZjRbao0 = xW1dmlCTtMs.getParent(); 
 if(!D5fMSZjRbao0)
 {
 xW1dmlCTtMs.setValid(false);
 return;
 }
 
 if(D5fMSZjRbao0.getState() == STATE_HOLD && D5fMSZjRbao0.isMyControlObject())
 D5fMSZjRbao0.sendStateOnlyPacket(STATE_STAND);
 sq_EffectLayerAppendageOnlyBody(D5fMSZjRbao0, sq_RGB(0, 0, 0), 0, 0, 0, 10); 
} ;

