
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_thief_nicolasblackarachnia")
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_nicolasblackarachnia")
 
}




function drawAppend_appendage_thief_nicolasblackarachnia(o3mkAjPCLBZSWTYLdUD6S, B3XcINIaSmti6qcspHY, ZbKjNHiFMnMW_v7vbtASr, ppvpbxf0fNk_FgexnL, CsrQRoW3MH44CnadnXTi)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return;
 local cNq0q_APp2IL5aeNPZ0Bk = o3mkAjPCLBZSWTYLdUD6S.getParent();
 if(!cNq0q_APp2IL5aeNPZ0Bk)
 {
 o3mkAjPCLBZSWTYLdUD6S.setValid(false);
 return;
 }
 if(!B3XcINIaSmti6qcspHY)return; 
 local apZvkl2YWCWZxf3 = o3mkAjPCLBZSWTYLdUD6S.getVar().GetAnimationMap("smallweb_normal", "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/smallweb_normal.ani");
 if(sq_IsEnd(apZvkl2YWCWZxf3))
 apZvkl2YWCWZxf3 = o3mkAjPCLBZSWTYLdUD6S.getVar().GetAnimationMap("smallwebloop_normal", "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/smallwebloop_normal.ani");
 sq_AnimationProc(apZvkl2YWCWZxf3);
 sq_drawCurrentFrame(apZvkl2YWCWZxf3, ZbKjNHiFMnMW_v7vbtASr, ppvpbxf0fNk_FgexnL, CsrQRoW3MH44CnadnXTi);
} 


function proc_appendage_thief_nicolasblackarachnia(o3mkAjPCLBZSWTYLdUD6S)
{
 if(!o3mkAjPCLBZSWTYLdUD6S) return;
 local B3XcINIaSmti6qcspHY = o3mkAjPCLBZSWTYLdUD6S.getParent();
 if(!B3XcINIaSmti6qcspHY)
 {
 o3mkAjPCLBZSWTYLdUD6S.setValid(false);
 return;
 }
 if(o3mkAjPCLBZSWTYLdUD6S.getVar().getBool(0) != true)
 {
 local ZbKjNHiFMnMW_v7vbtASr = o3mkAjPCLBZSWTYLdUD6S.getSource(); 
 if(ZbKjNHiFMnMW_v7vbtASr)
 {
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(ZbKjNHiFMnMW_v7vbtASr)) >= 7)
 {
 o3mkAjPCLBZSWTYLdUD6S.getVar().setBool(0, true); 
 sq_MoveToAppendage(B3XcINIaSmti6qcspHY, ZbKjNHiFMnMW_v7vbtASr, ZbKjNHiFMnMW_v7vbtASr, 0, 0, 0, 150, true, o3mkAjPCLBZSWTYLdUD6S); 
 }
 }
 }
 else
 {
 }
} 

