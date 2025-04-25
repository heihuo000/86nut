function sq_AddFunctionName(CQu5ullVVjiUOp1p)
{
	CQu5ullVVjiUOp1p.sq_AddFunctionName("onStart", "onStart_appendage_BlackOut")
	CQu5ullVVjiUOp1p.sq_AddFunctionName("proc", "proc_appendage_BlackOut")
	CQu5ullVVjiUOp1p.sq_AddFunctionName("drawAppend", "drawAppend_appendage_BlackOut")
	CQu5ullVVjiUOp1p.sq_AddFunctionName("onEnd", "onEnd_appendage_BlackOut")
}

function onEnd_appendage_BlackOut(CQMXfW4PlpdlGcMA4D)
{
	if(!CQMXfW4PlpdlGcMA4D)
	{
		return;
	}

	local CQnAASGcp1P9PKM = CQMXfW4PlpdlGcMA4D.getParent();
	local CQGuc1b8dglMEbdoR = CQMXfW4PlpdlGcMA4D.getSource();

	CQGuc1b8dglMEbdoR = sq_GetCNRDObjectToSQRCharacter(CQGuc1b8dglMEbdoR);
	if(!CQGuc1b8dglMEbdoR || !CQnAASGcp1P9PKM)
	{
		CQMXfW4PlpdlGcMA4D.setValid(false);
		return;
	}
	/* 
	if(CQMXfW4PlpdlGcMA4D.getTimer().Get() < 100)
		return;
	
	ScreenPrintOut = [CQnAASGcp1P9PKM.getState()];
	if(CQGuc1b8dglMEbdoR.isMyControlObject())
	{
		local level		  = sq_GetSkillLevel(CQGuc1b8dglMEbdoR, 229);
		local CQpkrwZe2NnOao9a = CQGuc1b8dglMEbdoR.sq_GetPowerWithPassive(229, -1, 1, -1, getATSwordmanBonus(CQGuc1b8dglMEbdoR,1.0,229));
		local CQ367PElvYByu98DuD = sq_GetIntData(CQGuc1b8dglMEbdoR, 229, 0);	

		sq_BinaryStartWrite();
		sq_BinaryWriteBool(0);	
		sq_BinaryWriteFloat(CQpkrwZe2NnOao9a.tofloat());	
		sq_BinaryWriteWord(CQ367PElvYByu98DuD);	
		sq_BinaryWriteWord(200);	
		local CQqVeBn4OtWmea7 = true;	
		sq_BinaryWriteBool(CQqVeBn4OtWmea7);
		if(!CQqVeBn4OtWmea7)
			sq_BinaryWriteDword(sq_GetObjectId(CQnAASGcp1P9PKM));	
		local CQaD6gdahC6liv7GO = CQGuc1b8dglMEbdoR.getXPos() > CQnAASGcp1P9PKM.getXPos() ?  CQGuc1b8dglMEbdoR.getXPos() - CQnAASGcp1P9PKM.getXPos() : CQnAASGcp1P9PKM.getXPos() - CQGuc1b8dglMEbdoR.getXPos();
		local CQ5osqPqyxE9rL6 = CQnAASGcp1P9PKM.getYPos() - CQGuc1b8dglMEbdoR.getYPos();
		if(CQGuc1b8dglMEbdoR.getDirection() == CQnAASGcp1P9PKM.getDirection())
			CQaD6gdahC6liv7GO = -CQaD6gdahC6liv7GO;
		sq_SendCreatePassiveObjectPacket(CQGuc1b8dglMEbdoR, 21035, 0, CQaD6gdahC6liv7GO, CQ5osqPqyxE9rL6, 0, ENUM_DIRECTION_NEUTRAL);
	}
 */
}

function proc_appendage_BlackOut(CQwqTKwhXIg1mn5K3)
{
	if(!CQwqTKwhXIg1mn5K3) return;

	local CQZlK7kHmZDKW7 = CQwqTKwhXIg1mn5K3.getParent();
	local CQz8mc1oDTcOqp4X = CQwqTKwhXIg1mn5K3.getSource();

	CQz8mc1oDTcOqp4X = sq_GetCNRDObjectToSQRCharacter(CQz8mc1oDTcOqp4X);
	if(!CQz8mc1oDTcOqp4X || !CQZlK7kHmZDKW7)
	{
		CQwqTKwhXIg1mn5K3.setValid(false);
		return;
	}
}

function onStart_appendage_BlackOut(CQO92uSn8aZSvd3JUD)
{
	if(!CQO92uSn8aZSvd3JUD)
	{
		return;
	}
	local CQ8NoHrME3qoQK3 = CQO92uSn8aZSvd3JUD.getParent();
	if(!CQ8NoHrME3qoQK3)
	{
		CQO92uSn8aZSvd3JUD.setValid(false);
		return;
	}

}

function drawAppend_appendage_BlackOut(CQWG246DMj2QbbgZt, CQVEizJbrouczX, CQYwRtidK19RUiRV, CQSxDDYVgbI3c8fLVD, CQfdv27tOukZkEf)
{
	if(!CQWG246DMj2QbbgZt) return;

	local CQuMBTLx4NHSYfdC5 = CQWG246DMj2QbbgZt.getParent();

	if(!CQuMBTLx4NHSYfdC5) {
		CQWG246DMj2QbbgZt.setValid(false);
		return;
	}

	local CQMJWeq7nYboTL = sq_GetCurrentAnimation(CQuMBTLx4NHSYfdC5);

	if(!CQMJWeq7nYboTL) 
	{
		CQWG246DMj2QbbgZt.setValid(false);
		return;
	}

	local CQns8AgOCPVQRn9N = "character/swordman/effect/animation/atblackout/monsterhold_00.ani";
	local CQGrWNBwTCec7C86QN = CQuMBTLx4NHSYfdC5.getVar();
	local CQhY8hOTFx5Rgp7 = CQGrWNBwTCec7C86QN.GetAnimationMap("BlackOutHold", CQns8AgOCPVQRn9N);
	CQhY8hOTFx5Rgp7.setImageRate(0.5, 0.5)
	sq_AnimationProc(CQhY8hOTFx5Rgp7);
	sq_drawCurrentFrame(CQhY8hOTFx5Rgp7, CQYwRtidK19RUiRV,CQSxDDYVgbI3c8fLVD - sq_GetHeightObject(CQuMBTLx4NHSYfdC5)/2, false);
	
}
