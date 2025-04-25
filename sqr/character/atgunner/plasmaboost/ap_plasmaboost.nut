
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atgunner_plasmaboost")
    appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_plasmaboost")
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_atgunner_plasmaboost")
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_atgunner_plasmaboost")
}




function onStart_appendage_atgunner_plasmaboost(Wi5uC8oEzzx76GL)
{
 if(!Wi5uC8oEzzx76GL) return;
 Wi5uC8oEzzx76GL.sq_DeleteEffectFront(); 
 Wi5uC8oEzzx76GL.sq_AddEffectFront("character/gunner/effect/animation/plasmaboost/monster/hit_loop.ani"); 
} ;

function onDamageParent_appendage_atgunner_plasmaboost(Wi5uC8oEzzx76GL, oBlx5ZiP8HrWMdFK36Xxz, wd5Spgpa4kg, CB2doT0f86C)
{
 if(!Wi5uC8oEzzx76GL) return;
 local O7IR4_Cgu4V5hsQXjGAD = Wi5uC8oEzzx76GL.getSource(); 
 if(!O7IR4_Cgu4V5hsQXjGAD) return;
 local XlJGOHyx7NVk = Wi5uC8oEzzx76GL.getParent();
 if(!XlJGOHyx7NVk)
 {
 Wi5uC8oEzzx76GL.setValid(false);
 return;
 }
 if(isSameObject(O7IR4_Cgu4V5hsQXjGAD, oBlx5ZiP8HrWMdFK36Xxz)) 
 {
 local yeIUu4b0HH1BBB3 = Wi5uC8oEzzx76GL.getTimer(); 
 if(yeIUu4b0HH1BBB3)
 {
 yeIUu4b0HH1BBB3.Reset(); 
 yeIUu4b0HH1BBB3.Start(10000, 0); 
 }
 }
} ;

function proc_appendage_atgunner_plasmaboost(Wi5uC8oEzzx76GL)
{
 if(!Wi5uC8oEzzx76GL) return;
 local oBlx5ZiP8HrWMdFK36Xxz = Wi5uC8oEzzx76GL.getParent();
 if(!oBlx5ZiP8HrWMdFK36Xxz)
 {
 Wi5uC8oEzzx76GL.setValid(false);
 return;
 }
 if(Wi5uC8oEzzx76GL.getVar().size_vector() > 0)
 if(Wi5uC8oEzzx76GL.getTimer().Get() >= Wi5uC8oEzzx76GL.getVar().get_vector(0)) 
 {
 Wi5uC8oEzzx76GL.setValid(false);
 return;
 }
} ;

function onEnd_appendage_atgunner_plasmaboost(BSo21LHz_vekX)
{
 if(!BSo21LHz_vekX) return;
 local f3zduxDjveFOvA = BSo21LHz_vekX.getParent();
 if(!f3zduxDjveFOvA)
 {
 BSo21LHz_vekX.setValid(false);
 return;
 }
 local CAZksnCOYb = sq_CreateAnimation("", "character/gunner/effect/animation/plasmaboost/monster/hit_end.ani"); 
 local fa0ovkpCgJYK6dkcy6upd4j = sq_CreatePooledObject(CAZksnCOYb, true); 
 sq_SetCurrentDirection(fa0ovkpCgJYK6dkcy6upd4j, sq_GetDirection(f3zduxDjveFOvA)); 
 fa0ovkpCgJYK6dkcy6upd4j.setCurrentPos(sq_GetXPos(f3zduxDjveFOvA), sq_GetYPos(f3zduxDjveFOvA) + 1, sq_GetZPos(f3zduxDjveFOvA)); 
 fa0ovkpCgJYK6dkcy6upd4j = sq_SetEnumDrawLayer(fa0ovkpCgJYK6dkcy6upd4j, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(f3zduxDjveFOvA, fa0ovkpCgJYK6dkcy6upd4j, OBJECTTYPE_DRAWONLY, false); 
 sq_moveWithParent(f3zduxDjveFOvA, fa0ovkpCgJYK6dkcy6upd4j); 
} ;

