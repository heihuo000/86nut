
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_mage_thegate")
    appendage.sq_AddFunctionName("onChangeState", "onChangeState_mage_thegate")
}


function drawAppend_appendage_mage_thegate(NNIm0QViBsdsVvifLlFt, j2vvqw9fm5wdhYEjY35B, mNPdm_2UZdnZ0TCw2J, HXgywMbKYBrhOu7, tFqWe6OUARxg1IyErOwI5O)
{
 if(!NNIm0QViBsdsVvifLlFt) return;
 local z28gPUNKEXGJgZyeUe = NNIm0QViBsdsVvifLlFt.getParent(); 
 if(!z28gPUNKEXGJgZyeUe || z28gPUNKEXGJgZyeUe.getState() == STATE_STAND)
 {
 NNIm0QViBsdsVvifLlFt.setValid(false);
 return;
 }
 if(!j2vvqw9fm5wdhYEjY35B) return; 
 local Wmc8JNOWw_5jAfyGm4PN = NNIm0QViBsdsVvifLlFt.getVar("state").get_vector(0); 
 
 if(!Wmc8JNOWw_5jAfyGm4PN)
 {
 NNIm0QViBsdsVvifLlFt.getVar("state").clear_vector(); 
 NNIm0QViBsdsVvifLlFt.getVar("state").push_vector(1); 
 local HDLcrLKPMcccfe_LXpj14DKv = 0.75; 
 local rz95I7NrAPFRTE6KL = NNIm0QViBsdsVvifLlFt.getVar().GetAnimationMap("cast_start_maincircle", "character/mage/effect/animation/thegate/cast_start_maincircle.ani");
 local QQCfqyVYDoNC0 = NNIm0QViBsdsVvifLlFt.getVar().GetAnimationMap("cast_loop_maincircle", "character/mage/effect/animation/thegate/cast_loop_maincircle.ani");
 
 rz95I7NrAPFRTE6KL.setImageRateFromOriginal(HDLcrLKPMcccfe_LXpj14DKv, HDLcrLKPMcccfe_LXpj14DKv); 
 rz95I7NrAPFRTE6KL.setAutoLayerWorkAnimationAddSizeRate(HDLcrLKPMcccfe_LXpj14DKv); 
 QQCfqyVYDoNC0.setImageRateFromOriginal(HDLcrLKPMcccfe_LXpj14DKv, HDLcrLKPMcccfe_LXpj14DKv); 
 QQCfqyVYDoNC0.setAutoLayerWorkAnimationAddSizeRate(HDLcrLKPMcccfe_LXpj14DKv); 
 }
 local k2qgOTogniRzetuIawemdBn = 105; 
 local hXq1dYuHPLpWlO9tV62R = -65; 
 switch(Wmc8JNOWw_5jAfyGm4PN)
 {
 case 1: 
 local S2Ih4MDOlngxz6Gxi1X1G = NNIm0QViBsdsVvifLlFt.getVar().GetAnimationMap("cast_start_maincircle", "character/mage/effect/animation/thegate/cast_start_maincircle.ani");
 if(sq_IsEnd(S2Ih4MDOlngxz6Gxi1X1G))
 {
 NNIm0QViBsdsVvifLlFt.getVar("state").clear_vector(); 
 NNIm0QViBsdsVvifLlFt.getVar("state").push_vector(Wmc8JNOWw_5jAfyGm4PN + 1); 
 }
 else
 {
 sq_AnimationProc(S2Ih4MDOlngxz6Gxi1X1G);
 sq_drawCurrentFrame(S2Ih4MDOlngxz6Gxi1X1G, mNPdm_2UZdnZ0TCw2J + sq_GetDistancePos(0, z28gPUNKEXGJgZyeUe.getDirection(), k2qgOTogniRzetuIawemdBn), HXgywMbKYBrhOu7 + hXq1dYuHPLpWlO9tV62R, tFqWe6OUARxg1IyErOwI5O);
 }
 break;
 case 2: 
 local S2Ih4MDOlngxz6Gxi1X1G = NNIm0QViBsdsVvifLlFt.getVar().GetAnimationMap("cast_loop_maincircle", "character/mage/effect/animation/thegate/cast_loop_maincircle.ani");
 sq_AnimationProc(S2Ih4MDOlngxz6Gxi1X1G);
 sq_drawCurrentFrame(S2Ih4MDOlngxz6Gxi1X1G, mNPdm_2UZdnZ0TCw2J + sq_GetDistancePos(0, z28gPUNKEXGJgZyeUe.getDirection(), k2qgOTogniRzetuIawemdBn), HXgywMbKYBrhOu7 + hXq1dYuHPLpWlO9tV62R, tFqWe6OUARxg1IyErOwI5O);
 break;
 }
 
 if(z28gPUNKEXGJgZyeUe.isMyControlObject())
 {
 local V7MEsST59RVBOA = NNIm0QViBsdsVvifLlFt.getVar().GetAnimationMap("cast_icon", "character/mage/effect/animation/thegate/icon_qq506807329/cast_icon.ani");
 sq_AnimationProc(V7MEsST59RVBOA);
 sq_drawCurrentFrame(V7MEsST59RVBOA, mNPdm_2UZdnZ0TCw2J, HXgywMbKYBrhOu7 - 75, false);
 }
} ;

function onChangeState_mage_thegate(b0804Gb4wSnYOEEKVqw, oN3I2arn7HIvBhgGdk, nzTEwrFm8f_i8gczzBlMAQ, Nd42OprHcxaP8bdZxyD5w7bb)
{
 if(!b0804Gb4wSnYOEEKVqw) return;
 switch(nzTEwrFm8f_i8gczzBlMAQ)
 {
 case 1:
 local bVCKCz6LxIy = b0804Gb4wSnYOEEKVqw.getParent(); 
 if(bVCKCz6LxIy)
 {
 
 local p4yCncGGYdV = sq_AddDrawOnlyAniFromParent(bVCKCz6LxIy, "character/mage/effect/animation/thegate/cast_end_maincircle.ani", 105, 0, 65);
 local rMPNcGJJvCu = p4yCncGGYdV.getCurrentAnimation(); 
 if(rMPNcGJJvCu)
 {
 rMPNcGJJvCu.setImageRateFromOriginal(0.75, 0.75); 
 rMPNcGJJvCu.setAutoLayerWorkAnimationAddSizeRate(0.75); 
 }
 }
 b0804Gb4wSnYOEEKVqw.setValid(false); 
 break;
 }
} ;
