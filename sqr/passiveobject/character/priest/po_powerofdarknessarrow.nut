
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function setCustomData_po_PowerOfDarknessArrow(dBdti5nwhuR5006xo,n_7yYxdeEU)
{ 
 local v6S8UHYru7pDA = n_7yYxdeEU.readFloat();
 local UikNsQ14Fd9h_iZZ4zLN = n_7yYxdeEU.readDword();
 sq_SetCustomRotate(dBdti5nwhuR5006xo,v6S8UHYru7pDA);
 
 
 local oZNswki2Bqtdv3eVyi5wdpgN = sq_GetCurrentAttackInfo(dBdti5nwhuR5006xo);
 sq_SetCurrentAttackBonusRate(oZNswki2Bqtdv3eVyi5wdpgN, UikNsQ14Fd9h_iZZ4zLN); 
} ;

function onKeyFrameFlag_po_PowerOfDarknessArrow(kEMtfM61J5Jh8OlvvXz6,mcvoKHyqLurXcqssmP6f)
{ 
 if(mcvoKHyqLurXcqssmP6f == 1) {
 kEMtfM61J5Jh8OlvvXz6.sq_setShake(kEMtfM61J5Jh8OlvvXz6,3,150); 
 }
 return true;
} ;

function onEndCurrentAni_po_PowerOfDarknessArrow(wGgld97_AZa)
{
 sq_SendDestroyPacketPassiveObject(wGgld97_AZa);
} ;
