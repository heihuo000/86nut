
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C
 
function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_mage_chargingeffect")
}


function drawAppend_appendage_mage_chargingeffect(PQTqYWyoPjv4ektK, vQHyclEdSW, a1CxAVeoauXhYfVpTwmp7_2k, urq71HC_i5Ic2au, NbAbwqLQ8Mweo)
{
 if(!PQTqYWyoPjv4ektK) return;
 local sMz9RP1qpl_hfitHEKo4wz = PQTqYWyoPjv4ektK.getParent(); 
 if(!sMz9RP1qpl_hfitHEKo4wz || sMz9RP1qpl_hfitHEKo4wz.getState() == STATE_STAND)
 {
 PQTqYWyoPjv4ektK.setValid(false);
 return;
 }
 if(!vQHyclEdSW) return; 
 local V9NdWM3ROIkZO1 = PQTqYWyoPjv4ektK.getVar("state").get_vector(0); 
 if(!V9NdWM3ROIkZO1)return;
 switch(V9NdWM3ROIkZO1)
 {
 case 1: 
 local SnrFtonDFQsafsCtUAUm0Yd = PQTqYWyoPjv4ektK.getVar().GetAnimationMap("allelementalmagiconcharge2_1", "character/mage/effect/animation/chargingeffect/allelementalmagiconcharge2_1.ani");
 local puJiOBhbFP8AKgy1 = PQTqYWyoPjv4ektK.getTimer().Get(); 
 
 if(puJiOBhbFP8AKgy1 >= PQTqYWyoPjv4ektK.getVar("limitTime").get_vector(0))
 {
 PQTqYWyoPjv4ektK.getVar("state").clear_vector(); 
 PQTqYWyoPjv4ektK.getVar("state").push_vector(2); 
 sMz9RP1qpl_hfitHEKo4wz.sq_PlaySound("ENERGY_CHARGE_END"); 
 return;
 }
 else
 {
 sq_AnimationProc(SnrFtonDFQsafsCtUAUm0Yd);
 sq_drawCurrentFrame(SnrFtonDFQsafsCtUAUm0Yd, a1CxAVeoauXhYfVpTwmp7_2k, urq71HC_i5Ic2au - 85, NbAbwqLQ8Mweo);
 }
 break;
 case 2: 
 local SnrFtonDFQsafsCtUAUm0Yd = PQTqYWyoPjv4ektK.getVar().GetAnimationMap("allelementalmagicfullcharge2_1", "character/mage/effect/animation/chargingeffect/allelementalmagicfullcharge2_1.ani");
 if(sq_IsEnd(SnrFtonDFQsafsCtUAUm0Yd))
 {
 PQTqYWyoPjv4ektK.setValid(false);
 return;
 }
 else
 {
 sq_AnimationProc(SnrFtonDFQsafsCtUAUm0Yd);
 sq_drawCurrentFrame(SnrFtonDFQsafsCtUAUm0Yd, a1CxAVeoauXhYfVpTwmp7_2k, urq71HC_i5Ic2au - 85, NbAbwqLQ8Mweo);
 }
 break;
 }
} ;
