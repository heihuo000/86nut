
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_overfreezeextension")
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_atmage_overfreezeextension")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atmage_overfreezeextension")
}



function proc_appendage_atmage_overfreezeextension(DN6B0AS7d2YJSMKsSL)
{
 if(!DN6B0AS7d2YJSMKsSL) return;
 local gMENAd0ViZvuhrYLdIpS5s = DN6B0AS7d2YJSMKsSL.getParent();
 if(!gMENAd0ViZvuhrYLdIpS5s || gMENAd0ViZvuhrYLdIpS5s.isDead())
 {
 DN6B0AS7d2YJSMKsSL.setValid(false);
 return;
 }
 local fwOCOeFq9yr = gMENAd0ViZvuhrYLdIpS5s.getCurrentAnimation(); 
 if(fwOCOeFq9yr)
 {
 local Y70fQ_GxyKDyR67 = sq_ALPHA(180); 
 local Ol8AVXsF1kpPcOd1w = sq_RGB(0, 50, 255); 
 local rSdaPSiLJjhzoE5ovO6zjU = GRAPHICEFFECT_LINEARDODGE;
 fwOCOeFq9yr.setEffectLayer(true, rSdaPSiLJjhzoE5ovO6zjU, true, Ol8AVXsF1kpPcOd1w, Y70fQ_GxyKDyR67, true, false); 
 
 local sd9I5MbxS3D2f7aPfz43C = sq_AniLayerListSize(fwOCOeFq9yr);
 for(local R8ITeeYCPkf_9Nm = 0; R8ITeeYCPkf_9Nm < sd9I5MbxS3D2f7aPfz43C; R8ITeeYCPkf_9Nm++)
 {
 local aZpVYhbmPw = sq_getAniLayerListObject(fwOCOeFq9yr, R8ITeeYCPkf_9Nm); 
 if(aZpVYhbmPw)
 {
 local MA0dRJJH0_kD = aZpVYhbmPw.GetCurrentFrame().GetGraphicEffect(); 
 if(MA0dRJJH0_kD != GRAPHICEFFECT_LINEARDODGE) 
 aZpVYhbmPw.setEffectLayer(true, rSdaPSiLJjhzoE5ovO6zjU, true, Ol8AVXsF1kpPcOd1w, Y70fQ_GxyKDyR67, true, false);
 }
 }
 }
} ;

function drawAppend_appendage_atmage_overfreezeextension(ulpO7loMZ5f8mxrT, hRuY8re0Cr, N3rkQZvFCZuWvUN5, wBYSXC9udAMy6OrtL1JZVmY, vAw11S_w7iMNnY384qt9bnGq)
{
 if(!ulpO7loMZ5f8mxrT) return;
 local zTT7r_ziIs = ulpO7loMZ5f8mxrT.getParent();
 if(!zTT7r_ziIs)
 {
 ulpO7loMZ5f8mxrT.setValid(false);
 return;
 }
 if(hRuY8re0Cr)
 {
 local D7yWSG8JPyUe = ulpO7loMZ5f8mxrT.getVar().GetAnimationMap("atoverfreezeextension", "character/mage/effect/animation/atoverfreezeextension/atoverfreezeextension_hold_ice1.ani");
 sq_AnimationProc(D7yWSG8JPyUe);
 sq_drawCurrentFrame(D7yWSG8JPyUe, N3rkQZvFCZuWvUN5, wBYSXC9udAMy6OrtL1JZVmY, false);
 }
} ;

function onEnd_appendage_atmage_overfreezeextension(ulpO7loMZ5f8mxrT)
{
 if(!ulpO7loMZ5f8mxrT) return;
 local hRuY8re0Cr = ulpO7loMZ5f8mxrT.getParent();
 if(!hRuY8re0Cr)
 {
 ulpO7loMZ5f8mxrT.setValid(false);
 return;
 }
 CreateAniRate(hRuY8re0Cr, "character/mage/effect/animation/atoverfreezeextension/atoverfreezeextension_hold_appear.ani", ENUM_DRAWLAYER_NORMAL, hRuY8re0Cr.getXPos(), hRuY8re0Cr.getYPos(), hRuY8re0Cr.getZPos(), false, false); 
} ;

