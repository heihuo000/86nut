
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_atfighter_fireworks")
    appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_fireworks")
}



function getImmuneTypeDamageRate_appendage_atfighter_fireworks(JJI83yl5418, wrAPoUa86Ub8e_QYWVG, dvqsaCZHlnbuiDoHJ)
{
 if(!JJI83yl5418) return wrAPoUa86Ub8e_QYWVG;
 local FGne07pmV3YGx8eEjv3 = JJI83yl5418.getParent();
 if(!FGne07pmV3YGx8eEjv3)
 {
 JJI83yl5418.setValid(false);
 return wrAPoUa86Ub8e_QYWVG;
 }
 local xgFcUm9uKjISHMe0 = JJI83yl5418.sq_var.get_obj_vector(0); 
 if(!xgFcUm9uKjISHMe0)
 return wrAPoUa86Ub8e_QYWVG;
 local wv21DMJqT3g4YsFDktd12vkN = wrAPoUa86Ub8e_QYWVG; 
 if(isSameObject(JJI83yl5418.sq_var.get_obj_vector(0), dvqsaCZHlnbuiDoHJ)) 
 {
 local ScdX_vBwTg = getActiveStatusCount_atfighter_fireworks(FGne07pmV3YGx8eEjv3); 
 local wfEhNs2vSew4X_fSK_Vv43_3 = JJI83yl5418.sq_var.get_vector(0); 
 wv21DMJqT3g4YsFDktd12vkN += ScdX_vBwTg * wfEhNs2vSew4X_fSK_Vv43_3; 
 }
 return wv21DMJqT3g4YsFDktd12vkN;
} ;

function proc_appendage_atfighter_fireworks(aaXXqN_BW4JMJP61W477FeDW)
{
 if(!aaXXqN_BW4JMJP61W477FeDW) return;
 local CZGUzDnESHSnzhaE8tqxZb = aaXXqN_BW4JMJP61W477FeDW.getParent();
 local KdcOWe9_no3i5w = aaXXqN_BW4JMJP61W477FeDW.getSource(); 
 if(!CZGUzDnESHSnzhaE8tqxZb||!KdcOWe9_no3i5w)
 {
 aaXXqN_BW4JMJP61W477FeDW.setValid(false);
 return;
 }
 local uood4Csz7UFcYN = aaXXqN_BW4JMJP61W477FeDW.getTimer(); 
 if(uood4Csz7UFcYN)
 {
 switch(aaXXqN_BW4JMJP61W477FeDW.getVar("state").get_vector(0)) 
 {
 case 1:
 setAniEff_appendage_atfighter_fireworks(aaXXqN_BW4JMJP61W477FeDW, CZGUzDnESHSnzhaE8tqxZb, uood4Csz7UFcYN, 255, 255, 255, 0, 180, 500, false); 
 break;
 case 2:
 setAniEff_appendage_atfighter_fireworks(aaXXqN_BW4JMJP61W477FeDW, CZGUzDnESHSnzhaE8tqxZb, uood4Csz7UFcYN, 0, 0, 0, 220, 0, 200, true); 
 break;
 }
 }
} ;

function setAniEff_appendage_atfighter_fireworks(Ccp7980CcLaN9X, FvcayOCdq8T, smf_M0sc0lrxE4i2EQaFJ, sOsLhWM98_csGd7ZsNHj5oo1, pkZSWHLBisUT7WSvLatM, gVCAtdMkKCha9r, yhnqRgv0lttd, CrM41jCvN0, nXcjjuaMgWjzD3s, FCzv00CnTBsoPpT9gePAX6Q)
{
 local CyMzzAe1UnqW = smf_M0sc0lrxE4i2EQaFJ.Get(); 
 local QdlMBFzC2y5Bu5QsW = nXcjjuaMgWjzD3s; 
 if(CyMzzAe1UnqW <= QdlMBFzC2y5Bu5QsW || !FCzv00CnTBsoPpT9gePAX6Q) 
 {
 local OauES1l4XSaEw82TZJuDBp7u = sq_GetUniformVelocity(yhnqRgv0lttd, CrM41jCvN0, CyMzzAe1UnqW, QdlMBFzC2y5Bu5QsW); 
 local qXbeYRU4nbitZWjbLXPWk3 = sq_ALPHA(OauES1l4XSaEw82TZJuDBp7u); 
 local CReA4J2sr_DS8CLt7TnREDjM = sq_RGB(sOsLhWM98_csGd7ZsNHj5oo1, pkZSWHLBisUT7WSvLatM, gVCAtdMkKCha9r); 
 local Ly4jgUjBBRQlL = FvcayOCdq8T.getCurrentAnimation(); 
 if(Ly4jgUjBBRQlL.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 Ly4jgUjBBRQlL.setEffectLayer(true, GRAPHICEFFECT_NONE, true, CReA4J2sr_DS8CLt7TnREDjM, qXbeYRU4nbitZWjbLXPWk3, true, false); 
 local dvw4t7KoE0YWNZjs8re = sq_AniLayerListSize(Ly4jgUjBBRQlL); 
 for(local sWNVHasGwooDy1p7h = 0; sWNVHasGwooDy1p7h < dvw4t7KoE0YWNZjs8re; sWNVHasGwooDy1p7h++)
 {
 local pZgmT4SFPbbWcfyggTmu = sq_getAniLayerListObject(Ly4jgUjBBRQlL, sWNVHasGwooDy1p7h); 
 if(pZgmT4SFPbbWcfyggTmu)
 if(pZgmT4SFPbbWcfyggTmu.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 pZgmT4SFPbbWcfyggTmu.setEffectLayer(true, GRAPHICEFFECT_NONE, true, CReA4J2sr_DS8CLt7TnREDjM, qXbeYRU4nbitZWjbLXPWk3, true, false); 
 }
 }
 else
 {
 smf_M0sc0lrxE4i2EQaFJ.Reset(); 
 smf_M0sc0lrxE4i2EQaFJ.Start(10000, 0); 
 }
} ;

