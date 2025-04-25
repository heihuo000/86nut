
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_swordofmind")
}


function drawAppend_appendage_swordman_swordofmind(JzOnoNNGWVpqTDw, WwrIt_fXe6HchSbqiZ7, WFs6vLMj4OGiK, bORA6H6Hde8, cJg9ZSTN8AJ7qf0V)
{
 if(!JzOnoNNGWVpqTDw) return;
 if(JzOnoNNGWVpqTDw.getVar("state").size_vector() <= 0)
 {
 JzOnoNNGWVpqTDw.getVar("state").clear_vector(); 
 JzOnoNNGWVpqTDw.getVar("state").push_vector(1);
 return;
 }
 if(!WwrIt_fXe6HchSbqiZ7) return; 
 local QpnRopJbnFo8Ok9N3z81CH = JzOnoNNGWVpqTDw.getParent();
 if(!QpnRopJbnFo8Ok9N3z81CH || QpnRopJbnFo8Ok9N3z81CH.getState()!= 234)
 {
 JzOnoNNGWVpqTDw.setValid(false);
 return;
 }
 local ICMOLvmAGq = null; 
 local ZZWJ6bmEaMdHjoI97XZCCUuX = JzOnoNNGWVpqTDw.getVar("state").get_vector(0); 
 switch(ZZWJ6bmEaMdHjoI97XZCCUuX)
 {
 case 1:
 ICMOLvmAGq = JzOnoNNGWVpqTDw.getVar().GetAnimationMap("charging", "character/swordman/effect/animation/swordofmind/charging.ani");
 break;
 case 2:
 ICMOLvmAGq = JzOnoNNGWVpqTDw.getVar().GetAnimationMap("charge_fin", "character/swordman/effect/animation/swordofmind/charge_fin.ani");
 break;
 case 3:
 ICMOLvmAGq = JzOnoNNGWVpqTDw.getVar().GetAnimationMap("charge_repeat", "character/swordman/effect/animation/swordofmind/charge_repeat.ani");
 break;
 }
 if(ICMOLvmAGq != null)
 {
 
 if(sq_IsEnd(ICMOLvmAGq))
 {
 JzOnoNNGWVpqTDw.getVar("state").set_vector(0, ZZWJ6bmEaMdHjoI97XZCCUuX+1); 
 return;
 }
 if(QpnRopJbnFo8Ok9N3z81CH.getDirection() == ENUM_DIRECTION_LEFT)
 ICMOLvmAGq.setImageRateFromOriginal(-1.0, 1.0); 
 else
 ICMOLvmAGq.setImageRateFromOriginal(1.0, 1.0); 
 sq_AnimationProc(ICMOLvmAGq);
 sq_drawCurrentFrame(ICMOLvmAGq, WFs6vLMj4OGiK, bORA6H6Hde8, false);
 }
} ;
