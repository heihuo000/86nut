
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_plasmaboost") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_gunner_plasmaboost") 
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_gunner_plasmaboost") 
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_gunner_plasmaboost") 
}

function onDamageParent_appendage_gunner_plasmaboost(ZRGH22KBXWc1m ,CUDM1CHPfDZebrcPB0jIkR, t71yVJp2vn8dpUYQ8k8u2VJ, OlwTxEZduFUL0YXZ3) 
{
 if(!ZRGH22KBXWc1m) return;
 local zThKe3ikiypfLquvEzYT = ZRGH22KBXWc1m.getSource(); 
 if(!zThKe3ikiypfLquvEzYT) return;
 local VUD5v_FQzbyepme6Fy = ZRGH22KBXWc1m.getParent();
 if(!VUD5v_FQzbyepme6Fy) {
 ZRGH22KBXWc1m.setValid(false);
 return;
 }
 if(isSameObject(zThKe3ikiypfLquvEzYT, CUDM1CHPfDZebrcPB0jIkR)) 
 {
 local z2aR3XVvWx3 = ZRGH22KBXWc1m.getTimer(); 
 z2aR3XVvWx3.Reset(); 
 z2aR3XVvWx3.Start(10000,0); 
 }
} ;


function onStart_appendage_gunner_plasmaboost(RHr21rZVGf_1X0XhIht)
{
 if(!RHr21rZVGf_1X0XhIht) return;
 RHr21rZVGf_1X0XhIht.sq_DeleteEffectFront(); 
 RHr21rZVGf_1X0XhIht.sq_AddEffectFront("character/gunner/effect/animation/plasmaboost/monster/hit_loop.ani"); 
} ;


function proc_appendage_gunner_plasmaboost(RHr21rZVGf_1X0XhIht)
{
 if(!RHr21rZVGf_1X0XhIht) return;
 local FkNsqNlRgR = RHr21rZVGf_1X0XhIht.getParent();
 if(!FkNsqNlRgR) {
 RHr21rZVGf_1X0XhIht.setValid(false);
 return;
 }
 if(RHr21rZVGf_1X0XhIht.getVar().size_vector()>0)
 if(RHr21rZVGf_1X0XhIht.getTimer().Get() >= RHr21rZVGf_1X0XhIht.getVar().get_vector(0)) 
 {
 RHr21rZVGf_1X0XhIht.setValid(false);
 return;
 }
} ;

function onEnd_appendage_gunner_plasmaboost(RHr21rZVGf_1X0XhIht)
{
 if(!RHr21rZVGf_1X0XhIht) return;
 local FkNsqNlRgR = RHr21rZVGf_1X0XhIht.getParent();
 if(!FkNsqNlRgR) {
 RHr21rZVGf_1X0XhIht.setValid(false);
 return;
 }
 local bHi8XGJepO4T = sq_CreateAnimation("","character/gunner/effect/animation/plasmaboost/monster/hit_end.ani"); 
 local uNGIzqZoJsL7LZL4Dynqr = sq_CreatePooledObject(bHi8XGJepO4T,true); 
 sq_SetCurrentDirection(uNGIzqZoJsL7LZL4Dynqr, sq_GetDirection(FkNsqNlRgR)); 
 uNGIzqZoJsL7LZL4Dynqr.setCurrentPos(sq_GetXPos(FkNsqNlRgR),sq_GetYPos(FkNsqNlRgR)+1,sq_GetZPos(FkNsqNlRgR)); 
 uNGIzqZoJsL7LZL4Dynqr = sq_SetEnumDrawLayer(uNGIzqZoJsL7LZL4Dynqr, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(FkNsqNlRgR, uNGIzqZoJsL7LZL4Dynqr, OBJECTTYPE_DRAWONLY, false); 
 sq_moveWithParent(FkNsqNlRgR, uNGIzqZoJsL7LZL4Dynqr); 
} ;

