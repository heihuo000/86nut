
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_miraclespliter") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_miraclespliter") 
}





 
function proc_appendage_priest_miraclespliter(gbeUeaB52XY_HqGWyw)
{
 if(!gbeUeaB52XY_HqGWyw) return;
 local lN3LyWupunM8yfxf92m = gbeUeaB52XY_HqGWyw.getParent(); 
 local KVpnTPX95Y01F = gbeUeaB52XY_HqGWyw.getSource(); 
 if(!lN3LyWupunM8yfxf92m || !KVpnTPX95Y01F || KVpnTPX95Y01F.getState() != 247 || sq_GetCNRDObjectToSQRCharacter(KVpnTPX95Y01F).getSkillSubState() == 1)
 {
 gbeUeaB52XY_HqGWyw.setValid(false);
 return;
 }
 if(gbeUeaB52XY_HqGWyw.getVar().size_vector() <= 0)
 {
 
 gbeUeaB52XY_HqGWyw.getVar().clear_vector(); 
 gbeUeaB52XY_HqGWyw.getVar().push_vector(lN3LyWupunM8yfxf92m.getXPos()); 
 gbeUeaB52XY_HqGWyw.getVar().push_vector(lN3LyWupunM8yfxf92m.getYPos()); 
 gbeUeaB52XY_HqGWyw.getVar().push_vector(lN3LyWupunM8yfxf92m.getZPos()); 
 return;
 }
 else
 {
 local lEtYB4V1Ub3 = gbeUeaB52XY_HqGWyw.getTimer().Get(); 
 local vRaGTnUNGjTcrbO7rEnBa = 100; 
 local wL9c5coHyFz = gbeUeaB52XY_HqGWyw.getVar(); 
 local hiHo0ldJaBNPkjfGG4M6joW = sq_GetDistancePos(KVpnTPX95Y01F.getXPos(), sq_GetDirection(KVpnTPX95Y01F), 120); 
 local I9zwU_qL1stkpCW6Q = KVpnTPX95Y01F.getYPos() + 1; 
 local J5Xk3Y7x0wHfl_UsT = KVpnTPX95Y01F.getZPos(); 
 local Mw9sD6I6wBxXzLvVcvme5G = sq_GetUniformVelocity(wL9c5coHyFz.get_vector(0), hiHo0ldJaBNPkjfGG4M6joW, lEtYB4V1Ub3, vRaGTnUNGjTcrbO7rEnBa); 
 local aM_3YZySNu = sq_GetUniformVelocity(wL9c5coHyFz.get_vector(1), I9zwU_qL1stkpCW6Q, lEtYB4V1Ub3, vRaGTnUNGjTcrbO7rEnBa); 
 local uhszpGANzw07OBLbcqDlS = sq_GetUniformVelocity(wL9c5coHyFz.get_vector(2), J5Xk3Y7x0wHfl_UsT, lEtYB4V1Ub3, vRaGTnUNGjTcrbO7rEnBa); 
 lN3LyWupunM8yfxf92m.setCurrentPos(Mw9sD6I6wBxXzLvVcvme5G, aM_3YZySNu, uhszpGANzw07OBLbcqDlS); 
 }
} ;



 
function onEnd_appendage_priest_miraclespliter(RjUsaE7IEV)
{
 if(!RjUsaE7IEV) return;
 local U2qcJl9rNBTo1sKlT8 = RjUsaE7IEV.getParent(); 
 if(!U2qcJl9rNBTo1sKlT8) 
 {
 RjUsaE7IEV.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(U2qcJl9rNBTo1sKlT8, 200); 
} ;


