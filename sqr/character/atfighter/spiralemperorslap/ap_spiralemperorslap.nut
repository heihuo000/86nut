
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_spiralemperorslap")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atfighter_spiralemperorslap")
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_atfighter_spiralemperorslap")
}


function proc_appendage_atfighter_spiralemperorslap(bQX_GVbvnPClzp)
{
 if(!bQX_GVbvnPClzp) return;
 local CNN8OuTdAHX6gJmqlJo1l5TR = bQX_GVbvnPClzp.getParent(); 
 local FFs6szUswla5 = bQX_GVbvnPClzp.getSource(); 
 if(!CNN8OuTdAHX6gJmqlJo1l5TR || !FFs6szUswla5 || FFs6szUswla5.getState()!= 220)
 {
 bQX_GVbvnPClzp.setValid(false);
 return;
 }
 local X2Gt9wCH9I_nzRwi = bQX_GVbvnPClzp.getTimer().Get();
 local Kpp_NzoyhstDrft51 = 100; 
 local dttVzAaW6dmLKx3IT1DkCQcM = X2Gt9wCH9I_nzRwi % Kpp_NzoyhstDrft51; 
 local LI2VpSzkUB3uZJQYddBIb = (X2Gt9wCH9I_nzRwi/ Kpp_NzoyhstDrft51 % 2 == 0)?0:255; 
 local FPbPrpW2UPywR3oUD = sq_GetUniformVelocity(140, 90, dttVzAaW6dmLKx3IT1DkCQcM, Kpp_NzoyhstDrft51); 
 local tjwn_jSweDmrmorsBpg = sq_ALPHA(FPbPrpW2UPywR3oUD); 
 local EqKTia1OrbfIQsW7pw = sq_RGB(LI2VpSzkUB3uZJQYddBIb, LI2VpSzkUB3uZJQYddBIb, LI2VpSzkUB3uZJQYddBIb); 
 local uN26JxlqBMi6Mie3VQnu = CNN8OuTdAHX6gJmqlJo1l5TR.getCurrentAnimation(); 
 if(uN26JxlqBMi6Mie3VQnu)
 {
 if(uN26JxlqBMi6Mie3VQnu.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 uN26JxlqBMi6Mie3VQnu.setEffectLayer(true, GRAPHICEFFECT_NONE, true, EqKTia1OrbfIQsW7pw, tjwn_jSweDmrmorsBpg, true, false); 
 local x3NUgZTrI62SQiRc309 = sq_AniLayerListSize(uN26JxlqBMi6Mie3VQnu); 
 for(local o5PVjghfiUbDV4PC4klWHB = 0; o5PVjghfiUbDV4PC4klWHB < x3NUgZTrI62SQiRc309; o5PVjghfiUbDV4PC4klWHB++)
 {
 local Xysh0QmZmgkco = sq_getAniLayerListObject(uN26JxlqBMi6Mie3VQnu, o5PVjghfiUbDV4PC4klWHB); 
 if(Xysh0QmZmgkco)
 if(Xysh0QmZmgkco.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 Xysh0QmZmgkco.setEffectLayer(true, GRAPHICEFFECT_NONE, true, EqKTia1OrbfIQsW7pw, tjwn_jSweDmrmorsBpg, true, false); 
 }
 }
} ;

function onEnd_appendage_atfighter_spiralemperorslap(KNPkDuWzso)
{
 if(!KNPkDuWzso) return;
 local b7OBdFHvN62bZghBtWfWpRl = KNPkDuWzso.getParent(); 
 if(!b7OBdFHvN62bZghBtWfWpRl)
 {
 KNPkDuWzso.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(b7OBdFHvN62bZghBtWfWpRl, 200); 
} ;

function drawAppend_appendage_atfighter_spiralemperorslap(KNPkDuWzso, b7OBdFHvN62bZghBtWfWpRl, MX7HOR6NMvdwzhwA, BiCFjK2dadZMIQG, hMlU0Ha05nd2txJjRuf)
{
 if(!KNPkDuWzso) return;
 local RRn25lgit_iVbvq = KNPkDuWzso.getParent();
 if(!RRn25lgit_iVbvq)
 {
 KNPkDuWzso.setValid(false);
 return;
 }
 if(b7OBdFHvN62bZghBtWfWpRl)
 {
 local D5s7NXILx07Kblsk = KNPkDuWzso.getVar().GetAnimationMap("monster_loop_electronic", "character/fighter/effect/animation/atspiralemperorslap/monster/monster_loop_electronic.ani");
 sq_AnimationProc(D5s7NXILx07Kblsk);
 sq_drawCurrentFrame(D5s7NXILx07Kblsk, MX7HOR6NMvdwzhwA, BiCFjK2dadZMIQG- sq_GetObjectHeight(RRn25lgit_iVbvq) / 2, hMlU0Ha05nd2txJjRuf);
 }
} ;

