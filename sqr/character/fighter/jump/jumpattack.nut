
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


function onAfterSetState_FighterJumpAttack(KY6A2GbaUE9L2zFCtmgk6, vI8NqbJdIY91, TrWQ1wVWg_zmGk, x2FOIYthW4R0)
{
 if(!KY6A2GbaUE9L2zFCtmgk6) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(KY6A2GbaUE9L2zFCtmgk6, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 sq_CreateDrawOnlyObject(KY6A2GbaUE9L2zFCtmgk6, "character/fighter/effect/animation/poisonsnake/jump_b_boom01_normal_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
} ;

function onKeyFrameFlag_FighterJumpAttack(s8oc9v3qeYKqKN9rbMe, HIY9FLlUCXTIbuVM)
{
 if(!s8oc9v3qeYKqKN9rbMe) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(s8oc9v3qeYKqKN9rbMe, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 if(HIY9FLlUCXTIbuVM == 1)
 {
 if(s8oc9v3qeYKqKN9rbMe.sq_IsMyControlObject())
 {
 sq_SetMyShake(s8oc9v3qeYKqKN9rbMe, 1, 100);
 sq_flashScreen(s8oc9v3qeYKqKN9rbMe, 0, 0, 200, 70, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 }
 return true;
} ;

