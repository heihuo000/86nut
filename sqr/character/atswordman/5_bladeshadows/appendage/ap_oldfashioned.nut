function sq_AddFunctionName(CQlTLy3Kv1Z3tyV9pu)
{
	CQlTLy3Kv1Z3tyV9pu.sq_AddFunctionName("onStart", "onStart_appendage_OldFashioned")
	CQlTLy3Kv1Z3tyV9pu.sq_AddFunctionName("onEnd", "onEnd_appendage_OldFashioned")
	CQlTLy3Kv1Z3tyV9pu.sq_AddFunctionName("proc", "proc_appendage_OldFashioned")
	
}

function onStart_appendage_OldFashioned(CQI7QGoELgqXQ6C)
{
	if(!CQI7QGoELgqXQ6C) return;
	
	local CQ7V33vjhi1SbiCRB = CQI7QGoELgqXQ6C.getParent();
	if(!CQ7V33vjhi1SbiCRB) 
	{
		CQI7QGoELgqXQ6C.setValid(false);
		return;
	}
	
	local CQrDpl82ANyow8 = CQI7QGoELgqXQ6C.sq_GetSourceChrTarget();
	
}

function onEnd_appendage_OldFashioned(CQCo3WLG6Y9wnHZj)
{
	if(!CQCo3WLG6Y9wnHZj) return;
	
	local CQcppSpnmtIcxYZfci = CQCo3WLG6Y9wnHZj.getParent();
	if(!CQcppSpnmtIcxYZfci) 
	{
		CQCo3WLG6Y9wnHZj.setValid(false);
		return;
	}
	local CQAQg1bRBVkRjL4 = sq_GetCNRDObjectToSQRCharacter(CQcppSpnmtIcxYZfci);
	
	
}

function proc_appendage_OldFashioned(CQdxFkBNzxG4cu4hw)
{
	if(!CQdxFkBNzxG4cu4hw) return;
	if(!CQdxFkBNzxG4cu4hw.getParent())
	{
		CQdxFkBNzxG4cu4hw.setValid(false);
		return;
	}
	local CQydbwOuEIbXk7 = CQdxFkBNzxG4cu4hw.getSource();
	local CQNMNPwYfZVSfp2T = sq_GetCNRDObjectToSQRCharacter(CQydbwOuEIbXk7);
	
	local CQbHyBj9rleGTc2bKD = sq_GetSkillLevel(CQNMNPwYfZVSfp2T, 122);
	local CQFaBgMAKa4aRJ1 = sq_GetLevelData(CQNMNPwYfZVSfp2T,122, 0, CQbHyBj9rleGTc2bKD)/10;
	local CQgetqArvKor7vMmM = sq_GetLevelData(CQNMNPwYfZVSfp2T,122, 1, CQbHyBj9rleGTc2bKD)*10;
	
	local CQoc9sxzOjRbg5 = CQdxFkBNzxG4cu4hw.sq_getChangeStatus("OldFashioned");
	if(!CQoc9sxzOjRbg5)
		CQoc9sxzOjRbg5 = CQdxFkBNzxG4cu4hw.sq_AddChangeStatus("OldFashioned",CQNMNPwYfZVSfp2T, CQNMNPwYfZVSfp2T, 0, 53, true, CQFaBgMAKa4aRJ1);
	else
	{
		if(CQNMNPwYfZVSfp2T.getWeaponSubType() == 1)
		{
			CQoc9sxzOjRbg5.clearParameter();
			CQoc9sxzOjRbg5.addParameter(53, true, CQFaBgMAKa4aRJ1.tofloat());
			CQoc9sxzOjRbg5.addParameter(33, true, -CQgetqArvKor7vMmM.tofloat());
		}
		else
			CQoc9sxzOjRbg5.clearParameter();
	}
}
