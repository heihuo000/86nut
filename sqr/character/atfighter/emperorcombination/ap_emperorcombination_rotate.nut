
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_atfighter_emperorcombination_rotate") 
 appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_emperorcombination_rotate") 
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_atfighter_emperorcombination_rotate")
}


function onStart_appendage_atfighter_emperorcombination_rotate(jGyI00KoJEBs)
{
 if(!jGyI00KoJEBs) return;
 local ugttNVST1vNUH = jGyI00KoJEBs.getParent(); 
 if(!ugttNVST1vNUH)
 {
 jGyI00KoJEBs.setValid(false);
 return;
 }
 local fKUtwTvk9h77lBch3F = sq_GetDirection(ugttNVST1vNUH); 
 jGyI00KoJEBs.getVar("kong").setBool(0, false); 
 jGyI00KoJEBs.getVar("fang").setInt(1, fKUtwTvk9h77lBch3F); 
 
 local jUvos1OQnoio0ql = jGyI00KoJEBs.getVar().GetAnimationMap("enemyspineffect", "character/fighter/effect/animation/emperorcombination/enemyspineffect.ani");
 sq_Rewind(jUvos1OQnoio0ql); 
 if(jGyI00KoJEBs.getVar("fang").getInt(1) == ENUM_DIRECTION_RIGHT)
 jUvos1OQnoio0ql.setImageRateFromOriginal(1.0, 1.0); 
 else
 jUvos1OQnoio0ql.setImageRateFromOriginal(-1.0, 1.0); 
} ;

 
function proc_appendage_atfighter_emperorcombination_rotate(qMYC_wZuAgksQagN9g)
{
 if(!qMYC_wZuAgksQagN9g) return;
 local XQP6vMWzUAQ = qMYC_wZuAgksQagN9g.getParent(); 
 if(!XQP6vMWzUAQ)
 {
 qMYC_wZuAgksQagN9g.setValid(false);
 return;
 }
 local U367hpLeAgYrxZFn = qMYC_wZuAgksQagN9g.getVar().get_ani_vector(0); 
 if(!U367hpLeAgYrxZFn) 
 {
 if(XQP6vMWzUAQ.getState() == STATE_DOWN) 
 qMYC_wZuAgksQagN9g.getVar().push_ani_vector(XQP6vMWzUAQ.getCurrentAnimation()); 
 else
 {
 if(qMYC_wZuAgksQagN9g.getTimer().Get() > 150)
 {
 qMYC_wZuAgksQagN9g.setValid(false); 
 return;
 }
 }
 return; 
 }
 else 
 {
 if(qMYC_wZuAgksQagN9g.getVar("kong").getBool(0) == false) 
 {
 if(XQP6vMWzUAQ.getZPos() > 0) 
 {
 qMYC_wZuAgksQagN9g.getVar("kong").setBool(0, true); 
 }
 else if(qMYC_wZuAgksQagN9g.getTimer().Get() > 150)
 {
 qMYC_wZuAgksQagN9g.setValid(false); 
 return;
 }
 }
 else if(qMYC_wZuAgksQagN9g.getVar("kong").getBool(0) == true) 
 {
 local I9nYNFMiZ8BgO = sq_GetDirection(XQP6vMWzUAQ); 
 local E9NHoze_Yoegx = 0.0; 
 if(qMYC_wZuAgksQagN9g.getVar("fang").getInt(1) == ENUM_DIRECTION_RIGHT) 
 {
 if(I9nYNFMiZ8BgO == ENUM_DIRECTION_LEFT) 
 E9NHoze_Yoegx = 40.0; 
 else
 E9NHoze_Yoegx = 140.0; 
 }
 else
 {
 if(I9nYNFMiZ8BgO == ENUM_DIRECTION_LEFT) 
 E9NHoze_Yoegx = 140.0; 
 else
 E9NHoze_Yoegx = 40.0; 
 }
 local WRRw1t2W1FTu8KbqCG1w73v = -0.0174532 * E9NHoze_Yoegx; 
 sq_SetCurrentDirection(XQP6vMWzUAQ, sq_GetOppositeDirection(I9nYNFMiZ8BgO)); 
 sq_SetfRotateAngle(U367hpLeAgYrxZFn, WRRw1t2W1FTu8KbqCG1w73v); 
 if(XQP6vMWzUAQ.getZPos() <= 0) 
 {
 sq_SetfRotateAngle(U367hpLeAgYrxZFn, 0.0); 
 sq_SetCurrentDirection(XQP6vMWzUAQ, qMYC_wZuAgksQagN9g.getVar("fang").getInt(1)); 
 qMYC_wZuAgksQagN9g.setValid(false); 
 return;
 }
 }
 }
} ;


function drawAppend_appendage_atfighter_emperorcombination_rotate(yTiC44k6qtTYO1S_ft70w, BmCyUtO1E5JVz5jqGb0gPJwa, fPSbwi_m8O, _Jheh8RnJDnYmrkW_Fy6, TehcNcjGJdafPqB)
{
 if(!yTiC44k6qtTYO1S_ft70w) return;
 local J_QeRciO3waA = yTiC44k6qtTYO1S_ft70w.getParent(); 
 if(!J_QeRciO3waA)
 {
 yTiC44k6qtTYO1S_ft70w.setValid(false);
 return;
 }
 if(BmCyUtO1E5JVz5jqGb0gPJwa)
 {
 local _DZEsjT_IkTeS_hroK2z = yTiC44k6qtTYO1S_ft70w.getVar().GetAnimationMap("enemyspineffect", "character/fighter/effect/animation/emperorcombination/enemyspineffect.ani");
 if(!sq_IsEnd(_DZEsjT_IkTeS_hroK2z))
 {
 sq_AnimationProc(_DZEsjT_IkTeS_hroK2z);
 sq_drawCurrentFrame(_DZEsjT_IkTeS_hroK2z, fPSbwi_m8O, _Jheh8RnJDnYmrkW_Fy6, false);
 }
 }
} ;


