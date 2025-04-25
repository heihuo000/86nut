
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_fireworks_my")
}



function proc_appendage_atfighter_fireworks_my(iQ30byZ0uepv5rLGok7s)
{
 if(!iQ30byZ0uepv5rLGok7s) return;
 local VLR_BxOVtU3cH_jI = iQ30byZ0uepv5rLGok7s.getParent();
 if(!VLR_BxOVtU3cH_jI)
 {
 iQ30byZ0uepv5rLGok7s.setValid(false);
 return;
 }
 local LACQH4kJryZYhczuitPj = iQ30byZ0uepv5rLGok7s.getTimer().Get(); 
 local YDw51bu1ir = 400; 
 if(LACQH4kJryZYhczuitPj / YDw51bu1ir >= 4) 
 {
 iQ30byZ0uepv5rLGok7s.setValid(false);
 return;
 }
 local yQWfkL6FeqPyHiHq = LACQH4kJryZYhczuitPj% YDw51bu1ir; 
 local dbDOoOyMAcFnwGB2kn = 0; 
 local C6Hj7VtKLbdGrdIFAlAHLd = 200; 
 local Sdpy0dFegPMixj7R = (LACQH4kJryZYhczuitPj/ YDw51bu1ir%2 == 0)
 ?sq_GetUniformVelocity(dbDOoOyMAcFnwGB2kn, C6Hj7VtKLbdGrdIFAlAHLd, yQWfkL6FeqPyHiHq, YDw51bu1ir)
 :sq_GetUniformVelocity(C6Hj7VtKLbdGrdIFAlAHLd, dbDOoOyMAcFnwGB2kn, yQWfkL6FeqPyHiHq, YDw51bu1ir); 
 local rLflfIQwc1eQIAMnI63HU = sq_ALPHA(Sdpy0dFegPMixj7R); 
 local m5aN4t5rdEGNA = sq_RGB(255, 255, 255); 
 local _NaYA3vaQRIM0AFa4J6Kgi7h = VLR_BxOVtU3cH_jI.getCurrentAnimation(); 
 if(!_NaYA3vaQRIM0AFa4J6Kgi7h)
 {
 iQ30byZ0uepv5rLGok7s.setValid(false);
 return;
 }
 if(_NaYA3vaQRIM0AFa4J6Kgi7h.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 _NaYA3vaQRIM0AFa4J6Kgi7h.setEffectLayer(true, GRAPHICEFFECT_NONE, true, m5aN4t5rdEGNA, rLflfIQwc1eQIAMnI63HU, true, false); 
 local l6iUWDA__mADg4EIqvI = sq_AniLayerListSize(_NaYA3vaQRIM0AFa4J6Kgi7h); 
 for(local ytsj2nMLCEOJC2 = 0; ytsj2nMLCEOJC2 < l6iUWDA__mADg4EIqvI; ytsj2nMLCEOJC2++)
 {
 local NtT_KN_0w2nUSx9 = sq_getAniLayerListObject(_NaYA3vaQRIM0AFa4J6Kgi7h, ytsj2nMLCEOJC2); 
 if(NtT_KN_0w2nUSx9)
 if(NtT_KN_0w2nUSx9.GetCurrentFrame().GetGraphicEffect() != GRAPHICEFFECT_LINEARDODGE) 
 NtT_KN_0w2nUSx9.setEffectLayer(true, GRAPHICEFFECT_NONE, true, m5aN4t5rdEGNA, rLflfIQwc1eQIAMnI63HU, true, false); 
 }
} ;

