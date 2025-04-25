function sq_AddFunctionName(CQpD3h6zWLidQICggQ)
{
	CQpD3h6zWLidQICggQ.sq_AddFunctionName("onStart", "onStart_appendage_License")
	CQpD3h6zWLidQICggQ.sq_AddFunctionName("onEnd", "onEnd_appendage_License")
	CQpD3h6zWLidQICggQ.sq_AddFunctionName("proc", "proc_appendage_License")
	
}

function onStart_appendage_License(CQNyh1xMED7JjEWgaQ)
{
	if(!CQNyh1xMED7JjEWgaQ) return;
	
	local CQkA4SpvRO9pYPqPHV = CQNyh1xMED7JjEWgaQ.getParent();
	if(!CQkA4SpvRO9pYPqPHV) 
	{
		CQNyh1xMED7JjEWgaQ.setValid(false);
		return;
	}
	
	local CQbZRfaSby6lpoL = CQNyh1xMED7JjEWgaQ.sq_GetSourceChrTarget();
	
}

function onEnd_appendage_License(CQFPDnUvPVadPx)
{
	if(!CQFPDnUvPVadPx) return;
	
	local CQguYEf95xh1EJJB = CQFPDnUvPVadPx.getParent();
	if(!CQguYEf95xh1EJJB) 
	{
		CQFPDnUvPVadPx.setValid(false);
		return;
	}
	local CQoUVZCCirDKyv25Ni = sq_GetCNRDObjectToSQRCharacter(CQguYEf95xh1EJJB);
	
	
}

function proc_appendage_License(CQ1kW8sWVXcXs4)
{
	if(!CQ1kW8sWVXcXs4) return;
	if(!CQ1kW8sWVXcXs4.getParent())
	{
		CQ1kW8sWVXcXs4.setValid(false);
		return;
	}
	local CQU68vkxQl6SiuM8 = CQ1kW8sWVXcXs4.getSource();
	local CQHCWo16GaEor7M4RN = sq_GetCNRDObjectToSQRCharacter(CQU68vkxQl6SiuM8);
	
	local CQ4S7JSIdKgQoGN = sq_GetSkillLevel(CQHCWo16GaEor7M4RN, 123);
	local CQQiI6rwskScWc = sq_GetLevelData(CQHCWo16GaEor7M4RN,123, 1, CQ4S7JSIdKgQoGN)/10;
	
	local CQLmlcl52pcRqKBg = CQ1kW8sWVXcXs4.sq_getChangeStatus("License");
	if(!CQLmlcl52pcRqKBg)
		CQLmlcl52pcRqKBg = CQ1kW8sWVXcXs4.sq_AddChangeStatus("License",CQHCWo16GaEor7M4RN, CQHCWo16GaEor7M4RN, 0, 10, false, CQQiI6rwskScWc);
	else
	{
		if(CQHCWo16GaEor7M4RN.getWeaponSubType() == 1)
		{
			CQLmlcl52pcRqKBg.clearParameter();
			CQLmlcl52pcRqKBg.addParameter(10, false, CQQiI6rwskScWc.tofloat());
		}
		else
			CQLmlcl52pcRqKBg.clearParameter();
	}
}

