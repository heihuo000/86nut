
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_bloodsnatch")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_swordman_bloodsnatch")
}



 
function proc_appendage_swordman_bloodsnatch(AcF2yrW5Icy7Oi)
{
 if (!AcF2yrW5Icy7Oi) return;
 local otyGuZBljNaPyTRZ4d = AcF2yrW5Icy7Oi.getParent(); 
 local JTnWVAkrIZ = sq_GetCNRDObjectToSQRCharacter(AcF2yrW5Icy7Oi.getSource()); 
 if (!JTnWVAkrIZ || !otyGuZBljNaPyTRZ4d || JTnWVAkrIZ.getState() != 233) {
 AcF2yrW5Icy7Oi.setValid(false);
 return;
 }
 local mPMGuajOEhA2f4Cxsk = JTnWVAkrIZ.getSkillSubState(); 
 local IqSTxVERp4 = JTnWVAkrIZ.getXPos(); 
 local PymZzWSlfoldSY3Wwv0y5S = JTnWVAkrIZ.getYPos(); 
 local fdA4xZYO6TFPcxxEpAZ = JTnWVAkrIZ.getZPos(); 
 local GwH0_kak7pG = JTnWVAkrIZ.getDirection(); 
 switch (mPMGuajOEhA2f4Cxsk)
 {
 case 1:
 case 2:
 case 3:
 
 local CEovAvumPWsPNVm7OCIve = sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, 80);
 otyGuZBljNaPyTRZ4d.setCurrentPos(CEovAvumPWsPNVm7OCIve, PymZzWSlfoldSY3Wwv0y5S, fdA4xZYO6TFPcxxEpAZ); 
 break;
 case 4:
 local X5nA53nrQGH3HZeNZGza = sq_GetCurrentFrameIndex(JTnWVAkrIZ); 
 if (X5nA53nrQGH3HZeNZGza <= 1)
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, -25), PymZzWSlfoldSY3Wwv0y5S, fdA4xZYO6TFPcxxEpAZ);
 }
 else if (X5nA53nrQGH3HZeNZGza <= 2)
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, -15), PymZzWSlfoldSY3Wwv0y5S, fdA4xZYO6TFPcxxEpAZ);
 }
 else if (X5nA53nrQGH3HZeNZGza <= 3)
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, -20), PymZzWSlfoldSY3Wwv0y5S - 1, fdA4xZYO6TFPcxxEpAZ + 10);
 otyGuZBljNaPyTRZ4d.setCurrentDirection(GwH0_kak7pG); 
 }
 else if (X5nA53nrQGH3HZeNZGza > 3)
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, -45), PymZzWSlfoldSY3Wwv0y5S - 1, fdA4xZYO6TFPcxxEpAZ + 75);
 
 otyGuZBljNaPyTRZ4d.setCurrentDirection(sq_GetOppositeDirection(GwH0_kak7pG));
 }
 break;
 case 5:
 local X5nA53nrQGH3HZeNZGza = sq_GetCurrentFrameIndex(JTnWVAkrIZ); 
 if (X5nA53nrQGH3HZeNZGza < 4)
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, -35), PymZzWSlfoldSY3Wwv0y5S - 1, fdA4xZYO6TFPcxxEpAZ + 75);
 }
 else
 { 
 otyGuZBljNaPyTRZ4d.setCurrentPos(sq_GetDistancePos(IqSTxVERp4, GwH0_kak7pG, 80), PymZzWSlfoldSY3Wwv0y5S - 1, 0);
 AcF2yrW5Icy7Oi.setValid(false); 
 }
 break;
 }
} ;

 
function onEnd_appendage_swordman_bloodsnatch(msHupiwX08VkqwCVdv0cjZ)
{
 if (!msHupiwX08VkqwCVdv0cjZ) return;
 local wwAKtcMyMnzJQQTEHc60UVz = msHupiwX08VkqwCVdv0cjZ.getParent();
 if (!wwAKtcMyMnzJQQTEHc60UVz) {
 msHupiwX08VkqwCVdv0cjZ.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(wwAKtcMyMnzJQQTEHc60UVz, 200);
} ;

