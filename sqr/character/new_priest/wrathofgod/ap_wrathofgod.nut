
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_wrathofgod") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_wrathofgod") 
}



 
function proc_appendage_priest_wrathofgod(NWg2zccXnMd_0k50)
{
 if(!NWg2zccXnMd_0k50) return;
 local pRa14PPTaW = NWg2zccXnMd_0k50.getParent(); 
 local h0tjB7rCFadYWSxsrRywDRkO = NWg2zccXnMd_0k50.getSource(); 
 if(!pRa14PPTaW || !h0tjB7rCFadYWSxsrRywDRkO)
 {
 NWg2zccXnMd_0k50.setValid(false);
 return;
 }
 if(NWg2zccXnMd_0k50.getVar().size_vector() >0)
 {
 local bgZLUh9XbEnAV3Zt = NWg2zccXnMd_0k50.getTimer().Get(); 
 local sIHMPuQfc05j = 500; 
 local PQvNcAa27VrA = NWg2zccXnMd_0k50.getVar(); 
 local oBEomfBQhAX = PQvNcAa27VrA.get_vector(0); 
 local D7pcqg4zsBNtNm8C8 = PQvNcAa27VrA.get_vector(1); 
 local GWtT7RDelPz = PQvNcAa27VrA.get_vector(2); 
 local fJExFR1nBn8iArMfs0t = PQvNcAa27VrA.get_vector(3); 
 local boMpu40UPB = PQvNcAa27VrA.get_vector(4); 
 local l_PU8RzDvXWqrzBCXThLlxk = sq_GetUniformVelocity(PQvNcAa27VrA.get_vector(0), PQvNcAa27VrA.get_vector(3), bgZLUh9XbEnAV3Zt, sIHMPuQfc05j); 
 local MLotPRsHMEFi = sq_GetUniformVelocity(PQvNcAa27VrA.get_vector(1), PQvNcAa27VrA.get_vector(4), bgZLUh9XbEnAV3Zt, sIHMPuQfc05j); 
 local EKALtP9K7S = (bgZLUh9XbEnAV3Zt < sIHMPuQfc05j / 2)
 ? PQvNcAa27VrA.get_vector(2) + 100 * sq_SinTable(sq_GetUniformVelocity(0, 90, bgZLUh9XbEnAV3Zt, sIHMPuQfc05j))
 : (PQvNcAa27VrA.get_vector(2) + 100) * sq_SinTable(sq_GetUniformVelocity(90, 180, bgZLUh9XbEnAV3Zt, sIHMPuQfc05j)); 
 pRa14PPTaW.setCurrentPos(l_PU8RzDvXWqrzBCXThLlxk, MLotPRsHMEFi, EKALtP9K7S.tointeger()); 
 if(bgZLUh9XbEnAV3Zt >= sIHMPuQfc05j) 
 NWg2zccXnMd_0k50.setValid(false);
 }
} ;

 
function onEnd_appendage_priest_wrathofgod(dxLOEFUc71tEtkFyt9tV0Y9)
{
 if(!dxLOEFUc71tEtkFyt9tV0Y9) return;
 local xXDsZErYIbM1SqH6q = dxLOEFUc71tEtkFyt9tV0Y9.getParent(); 
 if(!xXDsZErYIbM1SqH6q) 
 {
 dxLOEFUc71tEtkFyt9tV0Y9.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(xXDsZErYIbM1SqH6q, 200); 
} ;


