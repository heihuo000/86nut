
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onChangeState", "onChangeState_appendage_fighter_hurricanesupersuplex") 
 appendage.sq_AddFunctionName("proc", "proc_appendage_fighter_hurricanesupersuplex") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_fighter_hurricanesupersuplex") 
}



function onChangeState_appendage_fighter_hurricanesupersuplex(MLojvncWu1FIed, kq5eKpu40HLt4A, dGpAPoC_LAtJwfdMYt4Hp, q2NPGiWYakKlDMgzT1)
{
 if(!MLojvncWu1FIed) return;
 local ptzRz5OYJe_0VxUD = MLojvncWu1FIed.getParent(); 
 local G0cRgrhG_PWfWw = MLojvncWu1FIed.getSource(); 
 if(!G0cRgrhG_PWfWw || !ptzRz5OYJe_0VxUD) return;
 MLojvncWu1FIed.getVar("state").clear_vector(); 
 MLojvncWu1FIed.getVar("state").push_vector(dGpAPoC_LAtJwfdMYt4Hp); 
 switch(dGpAPoC_LAtJwfdMYt4Hp)
 {
 case 1:
 MLojvncWu1FIed.getVar().clear_vector(); 
 MLojvncWu1FIed.getVar().push_vector(MLojvncWu1FIed.getTimer().Get()); 
 MLojvncWu1FIed.getVar().push_vector(100); 
 MLojvncWu1FIed.getVar().push_vector(50); 
 MLojvncWu1FIed.getVar().push_vector(ptzRz5OYJe_0VxUD.getXPos()); 
 MLojvncWu1FIed.getVar().push_vector(ptzRz5OYJe_0VxUD.getYPos()); 
 MLojvncWu1FIed.getVar().push_vector(ptzRz5OYJe_0VxUD.getZPos()); 
 break;
 case 2:
 MLojvncWu1FIed.getVar().clear_vector(); 
 MLojvncWu1FIed.getVar().push_vector(MLojvncWu1FIed.getTimer().Get()); 
 MLojvncWu1FIed.getVar().push_vector(300); 
 MLojvncWu1FIed.getVar().push_vector(ptzRz5OYJe_0VxUD.getZPos()); 
 MLojvncWu1FIed.getVar().push_vector(600); 
 break;
 case 3:
 ptzRz5OYJe_0VxUD.setCustomRotate(true, sq_ToRadian(180.0)); 
 sq_setCurrentAxisPos(ptzRz5OYJe_0VxUD, 2, ptzRz5OYJe_0VxUD.getZPos() + sq_GetObjectHeight(ptzRz5OYJe_0VxUD)); 
 break;
 }
} ;

function proc_appendage_fighter_hurricanesupersuplex(tnCjEk3kIKM_a4Ud)
{
 if(!tnCjEk3kIKM_a4Ud) return;
 local BeMCcC3SvkRPyhu = tnCjEk3kIKM_a4Ud.getParent(); 
 local R4M2ozbJQII = tnCjEk3kIKM_a4Ud.getSource(); 
 if(!R4M2ozbJQII || !BeMCcC3SvkRPyhu || R4M2ozbJQII.getState() != 239 || sq_GetCNRDObjectToSQRCharacter(R4M2ozbJQII).getSkillSubState() == 5)
 {
 tnCjEk3kIKM_a4Ud.setValid(false);
 return;
 }
 local W8uqji6aynQRKY50jOk = tnCjEk3kIKM_a4Ud.getVar("state").get_vector(0); 
 switch(W8uqji6aynQRKY50jOk)
 {
 case 1:
 local SCD0Oa5zU8sHehtd = tnCjEk3kIKM_a4Ud.getVar(); 
 local noNpBK0xswTf = tnCjEk3kIKM_a4Ud.getTimer().Get() - SCD0Oa5zU8sHehtd.get_vector(0); 
 local vLyuVEduz5eTY6eSk = SCD0Oa5zU8sHehtd.get_vector(1); 
 local vPJNjx8F4Dvd9k59 = sq_GetUniformVelocity(SCD0Oa5zU8sHehtd.get_vector(3),
 sq_GetDistancePos(R4M2ozbJQII.getXPos(), R4M2ozbJQII.getDirection(), SCD0Oa5zU8sHehtd.get_vector(2)), noNpBK0xswTf, vLyuVEduz5eTY6eSk);
 local mQVzR0V_eDUiAGAXPrTU = sq_GetUniformVelocity(SCD0Oa5zU8sHehtd.get_vector(4), R4M2ozbJQII.getYPos(), noNpBK0xswTf, vLyuVEduz5eTY6eSk); 
 local bS79bWA6BSncgPwc = sq_GetUniformVelocity(SCD0Oa5zU8sHehtd.get_vector(5), R4M2ozbJQII.getZPos(), noNpBK0xswTf, vLyuVEduz5eTY6eSk); 
 BeMCcC3SvkRPyhu.setCurrentPos(vPJNjx8F4Dvd9k59, mQVzR0V_eDUiAGAXPrTU, bS79bWA6BSncgPwc); 
 break;
 case 2:
 if(tnCjEk3kIKM_a4Ud.getVar().size_vector() <= 0)return;
 local SCD0Oa5zU8sHehtd = tnCjEk3kIKM_a4Ud.getVar(); 
 local noNpBK0xswTf = tnCjEk3kIKM_a4Ud.getTimer().Get() - SCD0Oa5zU8sHehtd.get_vector(0); 
 local vLyuVEduz5eTY6eSk = SCD0Oa5zU8sHehtd.get_vector(1); 
 local bS79bWA6BSncgPwc = sq_GetUniformVelocity(SCD0Oa5zU8sHehtd.get_vector(2), SCD0Oa5zU8sHehtd.get_vector(3), noNpBK0xswTf, vLyuVEduz5eTY6eSk); 
 sq_setCurrentAxisPos(BeMCcC3SvkRPyhu, 2, bS79bWA6BSncgPwc); 
 if(noNpBK0xswTf >= vLyuVEduz5eTY6eSk) 
 tnCjEk3kIKM_a4Ud.getVar().clear_vector(); 
 break;
 }
} ;

function onEnd_appendage_fighter_hurricanesupersuplex(RQdLYUYtCiqp6q1)
{
 if(!RQdLYUYtCiqp6q1) return;
 local bTWsf9CtiUz2lc0WYnGqN5 = RQdLYUYtCiqp6q1.getParent();
 if(!bTWsf9CtiUz2lc0WYnGqN5)
 {
 RQdLYUYtCiqp6q1.setValid(false);
 return;
 }
 bTWsf9CtiUz2lc0WYnGqN5.setCustomRotate(false, 0.0); 
 sq_SimpleMoveToNearMovablePos(bTWsf9CtiUz2lc0WYnGqN5, 200); 
} ;

