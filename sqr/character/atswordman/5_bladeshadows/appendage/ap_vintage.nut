function sq_AddFunctionName(CQ2fPC5XjpAj8iNw)
{
	CQ2fPC5XjpAj8iNw.sq_AddFunctionName("onStart", "onStart_appendage_Vintage")
	CQ2fPC5XjpAj8iNw.sq_AddFunctionName("onEnd", "onEnd_appendage_Vintage")
	CQ2fPC5XjpAj8iNw.sq_AddFunctionName("proc", "proc_appendage_Vintage")
	
}

function onStart_appendage_Vintage(CQm1xfHsu1z638BUbF)
{
	if(!CQm1xfHsu1z638BUbF) return;
	
	local CQJJZnulCgKB9EB = CQm1xfHsu1z638BUbF.getParent();
	if(!CQJJZnulCgKB9EB) 
	{
		CQm1xfHsu1z638BUbF.setValid(false);
		return;
	}
	
	local CQ5swEc5qimG4Y = CQm1xfHsu1z638BUbF.sq_GetSourceChrTarget();
	
}

function onEnd_appendage_Vintage(CQwr5Z6KFNMaNL7b)
{
	if(!CQwr5Z6KFNMaNL7b) return;
	
	local CQZYw8sq9YtW6n7eJu = CQwr5Z6KFNMaNL7b.getParent();
	if(!CQZYw8sq9YtW6n7eJu) 
	{
		CQwr5Z6KFNMaNL7b.setValid(false);
		return;
	}
	local CQzR5vmjat7b166 = sq_GetCNRDObjectToSQRCharacter(CQZYw8sq9YtW6n7eJu);
	
	
}

function proc_appendage_Vintage(CQO3EiR21VsjCo5td)
{
	if(!CQO3EiR21VsjCo5td) return;
	if(!CQO3EiR21VsjCo5td.getParent())
	{
		CQO3EiR21VsjCo5td.setValid(false);
		return;
	}
	local CQ8LjJVoWxj6J9 = CQO3EiR21VsjCo5td.getSource();
	local CQjU8xGi6mPHYBCS7r = sq_GetCNRDObjectToSQRCharacter(CQ8LjJVoWxj6J9);
	
	local CQFRTZSM6uXTsFZd1 = sq_GetSkillLevel(CQjU8xGi6mPHYBCS7r, 121);
	local CQYyMy2DPlXaDZ3 = sq_GetLevelData(CQjU8xGi6mPHYBCS7r,121, 1, CQFRTZSM6uXTsFZd1)/10;
	local CQSnuGDy5awOLi2us = sq_GetLevelData(CQjU8xGi6mPHYBCS7r,121, 0, CQFRTZSM6uXTsFZd1)/10;
	
	local CQfjM3WYU33yF8 = CQO3EiR21VsjCo5td.sq_getChangeStatus("Vintage");
	if(!CQfjM3WYU33yF8)
		CQfjM3WYU33yF8 = CQO3EiR21VsjCo5td.sq_AddChangeStatus("Vintage",CQjU8xGi6mPHYBCS7r, CQjU8xGi6mPHYBCS7r, 0, 15, false, CQYyMy2DPlXaDZ3);
	else
	{
		CQfjM3WYU33yF8.clearParameter();
		CQfjM3WYU33yF8.addParameter(50, false, CQSnuGDy5awOLi2us.tofloat());
		if(CQjU8xGi6mPHYBCS7r.getWeaponSubType() == 1)
			CQfjM3WYU33yF8.addParameter(15, false, CQYyMy2DPlXaDZ3.tofloat());
	}
}
