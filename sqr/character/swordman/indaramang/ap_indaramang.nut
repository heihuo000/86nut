
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_indaramang")
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_indaramang")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_swordman_indaramang")
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_indaramang")
}




function drawAppend_appendage_swordman_indaramang(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL, Lg5L09fqGboonPtenroLCL, qDL4NHNuixmrwJl, AjnzkoolEKmEau0XB24695js)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return;
 local g0GMv3d5iEkdhCOzhl7usV = BDG7Zw9YR9pEdLh2Q7G.getParent();
 local nUu9DdFE0r = BDG7Zw9YR9pEdLh2Q7G.getSource();
 if(!g0GMv3d5iEkdhCOzhl7usV || !nUu9DdFE0r)
 {
 BDG7Zw9YR9pEdLh2Q7G.setValid(false);
 return;
 }
 if(!zg2mVaNKGPiNWW0s5DqnmL) return; 
 local oocz6Geb3YQbb7dTSRo = null; 
 switch(BDG7Zw9YR9pEdLh2Q7G.getVar("state").get_vector(0))
 {
 case 1:
 oocz6Geb3YQbb7dTSRo = BDG7Zw9YR9pEdLh2Q7G.getVar().GetAnimationMap("start_electric_ball_start", "character/swordman/effect/animation/indaramang/start_electric_ball_start.ani");
 if(sq_IsEnd(oocz6Geb3YQbb7dTSRo))
 {
 local Qa_spuXWAxM = sq_CreatePooledObject(BDG7Zw9YR9pEdLh2Q7G.getVar().get_ani_vector(0), true); 
 sq_SetCurrentDirection(Qa_spuXWAxM, ENUM_DIRECTION_RIGHT); 
 Qa_spuXWAxM = sq_SetEnumDrawLayer(Qa_spuXWAxM, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(nUu9DdFE0r, Qa_spuXWAxM, OBJECTTYPE_DRAWONLY, false); 
 BDG7Zw9YR9pEdLh2Q7G.getVar("aniobj").clear_obj_vector(); 
 BDG7Zw9YR9pEdLh2Q7G.getVar("aniobj").push_obj_vector(Qa_spuXWAxM); 
 BDG7Zw9YR9pEdLh2Q7G.getVar("state").set_vector(0, 2); 
 BDG7Zw9YR9pEdLh2Q7G.getVar().clear_ani_vector(); 
 return;
 }
 break;
 case 2:
 oocz6Geb3YQbb7dTSRo = BDG7Zw9YR9pEdLh2Q7G.getVar().GetAnimationMap("loop_electric_ball", "character/swordman/effect/animation/indaramang/loop_electric_ball.ani");
 break;
 }
 if(oocz6Geb3YQbb7dTSRo != null)
 {
 sq_AnimationProc(oocz6Geb3YQbb7dTSRo);
 sq_drawCurrentFrame(oocz6Geb3YQbb7dTSRo, Lg5L09fqGboonPtenroLCL, qDL4NHNuixmrwJl - BDG7Zw9YR9pEdLh2Q7G.getVar("state").get_vector(1), false);
 }
} ;

function onStart_appendage_swordman_indaramang(wkj7M4Oc4_vCxmD4GNHNNE)
{
 if(!wkj7M4Oc4_vCxmD4GNHNNE)return;
 local ULMqjDqkkfhd1r4DsqEawIR = wkj7M4Oc4_vCxmD4GNHNNE.getParent();
 if(!ULMqjDqkkfhd1r4DsqEawIR)
 {
 wkj7M4Oc4_vCxmD4GNHNNE.setValid(false);
 return;
 }
 local eyM8aKcZhmHu_Xi = sq_GetObjectHeight(ULMqjDqkkfhd1r4DsqEawIR); 
 local Cm5n4rSLAwzFdoICtR79 = 90.0; 
 local w6QLbBlhHFkZZjEW5oJc6 = eyM8aKcZhmHu_Xi / Cm5n4rSLAwzFdoICtR79; 
 
 local ifOb6LX1dD8BZlcY = wkj7M4Oc4_vCxmD4GNHNNE.getVar().GetAnimationMap("start_electric_ball_start", "character/swordman/effect/animation/indaramang/start_electric_ball_start.ani");
 
 local gozCh1XzZ4a9soYUE = sq_CreateAnimation("", "character/swordman/effect/animation/indaramang/loop_electric_wave.ani");
 
 local sq0JQvFjYSVbq6hSmeTxPsG3 = wkj7M4Oc4_vCxmD4GNHNNE.getVar().GetAnimationMap("loop_electric_ball", "character/swordman/effect/animation/indaramang/loop_electric_ball.ani");
 ifOb6LX1dD8BZlcY.setImageRateFromOriginal(w6QLbBlhHFkZZjEW5oJc6, w6QLbBlhHFkZZjEW5oJc6); 
 ifOb6LX1dD8BZlcY.setAutoLayerWorkAnimationAddSizeRate(w6QLbBlhHFkZZjEW5oJc6); 
 gozCh1XzZ4a9soYUE.setImageRateFromOriginal(w6QLbBlhHFkZZjEW5oJc6, w6QLbBlhHFkZZjEW5oJc6); 
 gozCh1XzZ4a9soYUE.setAutoLayerWorkAnimationAddSizeRate(w6QLbBlhHFkZZjEW5oJc6); 
 sq0JQvFjYSVbq6hSmeTxPsG3.setImageRateFromOriginal(w6QLbBlhHFkZZjEW5oJc6, w6QLbBlhHFkZZjEW5oJc6); 
 sq0JQvFjYSVbq6hSmeTxPsG3.setAutoLayerWorkAnimationAddSizeRate(w6QLbBlhHFkZZjEW5oJc6); 
 wkj7M4Oc4_vCxmD4GNHNNE.getVar("state").clear_vector(); 
 wkj7M4Oc4_vCxmD4GNHNNE.getVar("state").push_vector(1); 
 wkj7M4Oc4_vCxmD4GNHNNE.getVar("state").push_vector(eyM8aKcZhmHu_Xi / 2); 
 wkj7M4Oc4_vCxmD4GNHNNE.getVar().clear_ani_vector(); 
 wkj7M4Oc4_vCxmD4GNHNNE.getVar().push_ani_vector(gozCh1XzZ4a9soYUE); 
} ;
function proc_appendage_swordman_indaramang(u6173NuscH)
{
 if(!u6173NuscH)return;
 local dEu861GH5mLITGRfMAEW = u6173NuscH.getParent();
 local itOIsgf8FdJv_wJ4dQ6KqOl = u6173NuscH.getSource();
 if(!itOIsgf8FdJv_wJ4dQ6KqOl || !dEu861GH5mLITGRfMAEW || dEu861GH5mLITGRfMAEW.isDead())
 {
 u6173NuscH.setValid(false);
 return;
 }
 local cgpjQiWXtH5fmj = u6173NuscH.getVar("aniobj").get_obj_vector(0); 
 if(cgpjQiWXtH5fmj)
 cgpjQiWXtH5fmj.setCurrentPos(dEu861GH5mLITGRfMAEW.getXPos(), dEu861GH5mLITGRfMAEW.getYPos(), 0);
} ;
function onEnd_appendage_swordman_indaramang(Kils27ipgRrtVz7)
{
 if(!Kils27ipgRrtVz7)return;
 RemoveAllAni(Kils27ipgRrtVz7); 
} ;


