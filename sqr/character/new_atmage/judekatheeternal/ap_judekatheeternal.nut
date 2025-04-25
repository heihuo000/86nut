
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_judekatheeternal")
}


function proc_appendage_atmage_judekatheeternal(VpsVevLGrP3l0gmhemHve5RG)
{
 if(!VpsVevLGrP3l0gmhemHve5RG) return;
 local jshGhWsSonPBC = VpsVevLGrP3l0gmhemHve5RG.getParent();
 local PmmiLp0UuMd6oKDDJUbOLqzM = VpsVevLGrP3l0gmhemHve5RG.getSource(); 
 if(!jshGhWsSonPBC || !PmmiLp0UuMd6oKDDJUbOLqzM || PmmiLp0UuMd6oKDDJUbOLqzM.getState() == 14)
 {
 VpsVevLGrP3l0gmhemHve5RG.setValid(false);
 return;
 }
 local uPIOJKluE9BRGScrT5kkpo = jshGhWsSonPBC.getCurrentAnimation(); 
 if(uPIOJKluE9BRGScrT5kkpo)
 {
 local _bP2jr5c6QlSWaMj8 = sq_ALPHA(180); 
 local KIIH81V2xt52nvHtIw6G23v = sq_RGB(0, 50, 255); 
 local L3d0XXYYobxWGwhO7fP = GRAPHICEFFECT_LINEARDODGE;
 uPIOJKluE9BRGScrT5kkpo.setEffectLayer(true, L3d0XXYYobxWGwhO7fP, true, KIIH81V2xt52nvHtIw6G23v, _bP2jr5c6QlSWaMj8, true, false); 
 
 local v41BVdRFaaLFq3_4UC8Qmj = sq_AniLayerListSize(uPIOJKluE9BRGScrT5kkpo);
 for(local q2rkvFhIUpUtS2h4niZaN = 0; q2rkvFhIUpUtS2h4niZaN < v41BVdRFaaLFq3_4UC8Qmj; q2rkvFhIUpUtS2h4niZaN++)
 {
 local SkAea2etqi_s1COV70VT = sq_getAniLayerListObject(uPIOJKluE9BRGScrT5kkpo, q2rkvFhIUpUtS2h4niZaN); 
 if(SkAea2etqi_s1COV70VT)
 {
 local mxJt2uJWpI6S = SkAea2etqi_s1COV70VT.GetCurrentFrame().GetGraphicEffect(); 
 if(mxJt2uJWpI6S != GRAPHICEFFECT_LINEARDODGE) 
 SkAea2etqi_s1COV70VT.setEffectLayer(true, L3d0XXYYobxWGwhO7fP, true, KIIH81V2xt52nvHtIw6G23v, _bP2jr5c6QlSWaMj8, true, false);
 }
 }
 }
} ;

