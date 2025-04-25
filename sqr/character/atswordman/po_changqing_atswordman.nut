
function setCustomData_po_ChangQing_751675335_ATSwordman(CQBPuamxrSCt6SLcNve, CQRpzjREtEPyNqDSSXnN)
{
	if(!CQBPuamxrSCt6SLcNve) return
local CQf7NsHjgozHKxwt = CQRpzjREtEPyNqDSSXnN.readDword()
local CQuVyCu2t1KsDJQwFW = sq_ObjectToSQRCharacter(CQBPuamxrSCt6SLcNve.getTopCharacter())
CQBPuamxrSCt6SLcNve.getVar("skill").clear_vector()
CQBPuamxrSCt6SLcNve.getVar("skill").push_vector(CQf7NsHjgozHKxwt)
switch(CQf7NsHjgozHKxwt)
	{
	case -1:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 94:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 0)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 0)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 1)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 1)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.sq_SetMoveParticle("particle/atgorecross.ptl", 0.0, 0.0)
break
}
		break
case 88:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 2)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.sq_SetMoveParticle("particle/siryun.ptl", 0.0, 0.0)
CQBPuamxrSCt6SLcNve.setTimeEvent(0,500/CQswkxD8ITQqeFtO1P,CQswkxD8ITQqeFtO1P,true)
break
}
		break
case 87:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = CQBPuamxrSCt6SLcNve.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
}
		break
case 93:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 4)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 34:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 5)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 96:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 37)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 30)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 40)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 32)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = CQBPuamxrSCt6SLcNve.getCurrentAnimation()
local CQqbyPx5v7fUOpJR = 0.6
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 3:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnVAYQI3CpEtmyd = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQVOLCUT3ZM7ITcyHHxx)
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
			{
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, CQBPuamxrSCt6SLcNve)
CQXCgJma2BbY55aMacZD = sq_GetCNRDObjectToActiveObject(CQXCgJma2BbY55aMacZD)
local CQxSF6RmvcVgMiE7P = CQXCgJma2BbY55aMacZD.getVar("changeswordCount").getInt(0)
CQXCgJma2BbY55aMacZD.getVar("changeswordCount").setInt(0, CQxSF6RmvcVgMiE7P + 1)
}
			local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 29)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.setTimeEvent(0,CQe6oiK4sSGeNvs4UC,10,true)
CQBPuamxrSCt6SLcNve.setTimeEvent(1,CQnVAYQI3CpEtmyd,1,false)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 31)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 147:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
local CQw2Jd1RKLQAzO7599 = [15,19,23,27,31]
local CQiutpLfmRBQGY9cg = [8,12,16,20,24]
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 3:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 10:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 13)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 6)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = CQBPuamxrSCt6SLcNve.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 20:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = CQBPuamxrSCt6SLcNve.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
}
		break
case 14:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar("ObjType").clear_vector()
CQBPuamxrSCt6SLcNve.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQHn5hgxz9bqkbIrNC = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 53)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 44)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_BURN , CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM, CQHn5hgxz9bqkbIrNC, 1)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkEAui3I9d2xs9TU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 54)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_FREEZE, CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 52)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 43)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 4:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 56)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 45)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_BLIND, CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.sq_SetMoveParticle( "particle/atmagicswordupwater.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(CQBPuamxrSCt6SLcNve, 0, 1000)
break
}
		break
case 131:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQQTtK1c6nwaiitqrU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ7pZG2lHAPlqKsv = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQQTtK1c6nwaiitqrU)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQswkxD8ITQqeFtO1P)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQ7pZG2lHAPlqKsv)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 34)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ7pZG2lHAPlqKsv = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQ7pZG2lHAPlqKsv)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 36)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 132:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQqbyPx5v7fUOpJR)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = CQuVyCu2t1KsDJQwFW.getVar("ThunderslashSub").get_obj_vector(0)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, CQBPuamxrSCt6SLcNve)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQqbyPx5v7fUOpJR)
CQBPuamxrSCt6SLcNve.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 133:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQGsxPXP7UsScXmYsj = "character/swordman/atanimation/halfmoon2_obj.ani"
local CQYqqz387tKneAgA = sq_CreateAnimation("",CQGsxPXP7UsScXmYsj)
CQBPuamxrSCt6SLcNve.setCurrentAnimation(CQYqqz387tKneAgA)
CQYqqz387tKneAgA.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQYqqz387tKneAgA.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQYqqz387tKneAgA, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
sq_moveWithParent(CQuVyCu2t1KsDJQwFW, CQBPuamxrSCt6SLcNve)
break
}
		break
case 134:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQPeYqGzo1MeFkrzxW = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQNtTPkLf1CpJVDeys = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQNtTPkLf1CpJVDeys)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQkwG8DTi4AhxZm8I)
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 68 + CQPeYqGzo1MeFkrzxW)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 135:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQkwG8DTi4AhxZm8I)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQzTMkOh9rgm3VVm78)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQ89dPhDM6xd4fXwU)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
if(sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 13) > 0 && CQuVyCu2t1KsDJQwFW.getWeaponSubType() == 2)
				CQBPuamxrSCt6SLcNve.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
				CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 72)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(2)
sq_BinaryWriteDword(CQ89dPhDM6xd4fXwU)
sq_SendCreatePassiveObjectPacketPos(CQBPuamxrSCt6SLcNve,24383, 0,CQBPuamxrSCt6SLcNve.getXPos(), CQBPuamxrSCt6SLcNve.getYPos(), 0)
break
case 2:
			local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 71)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 3:
			local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 74)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 4:
			CQBPuamxrSCt6SLcNve.sq_PlaySound("R_SHOCKWAVE_HIT")
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 74)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 10:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQkwG8DTi4AhxZm8I)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQzTMkOh9rgm3VVm78)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQ89dPhDM6xd4fXwU)
CQBPuamxrSCt6SLcNve.setTimeEvent(0,100,CQzTMkOh9rgm3VVm78,true)
CQBPuamxrSCt6SLcNve.setTimeEvent(1,100*(CQzTMkOh9rgm3VVm78+1),CQzTMkOh9rgm3VVm78,false)
break
}
		break
case 136:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
local CQBPW19WMnabWC3GH9 = [
				"Character/Swordman/Effect/Animation/ATDevilSlash/nothing/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/fire/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/ice/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/dark/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/light/finish_normal.ani"
			]
local CQYqqz387tKneAgA = sq_CreateAnimation("",CQBPW19WMnabWC3GH9[CQnYNcKAcOJMkEOxhhUJ])
CQBPuamxrSCt6SLcNve.setCurrentAnimation(CQYqqz387tKneAgA)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 58)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQYqqz387tKneAgA.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQYqqz387tKneAgA.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQYqqz387tKneAgA, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQHXQgP648QszPMJrxPN = "passiveobject/changqing_atswordman/animation/atdevilslash/devilslashmultiattack.ani"
local CQ9z1LQJu7wWxt3B = sq_CreateAnimation("",CQHXQgP648QszPMJrxPN)
CQBPuamxrSCt6SLcNve.setCurrentAnimation(CQ9z1LQJu7wWxt3B)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQBPuamxrSCt6SLcNve.setTimeEvent(0,100,999,true)
break
}
		break
case 142:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 84)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 59)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 84)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 60)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 137:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQswkxD8ITQqeFtO1P)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 61)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 138:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQG8At1PMpoRpZJt = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQG8At1PMpoRpZJt)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQe6oiK4sSGeNvs4UC)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 140:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(60, null, STATE_PRIORITY_AUTO, false, "")
break
case 6:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(70, null, STATE_PRIORITY_AUTO, false, "")
break
case 7:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(80, null, STATE_PRIORITY_AUTO, false, "")
break
case 8:
			CQBPuamxrSCt6SLcNve.addSetStatePacket(90, null, STATE_PRIORITY_AUTO, false, "")
break
case 9:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQG8At1PMpoRpZJt = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQG8At1PMpoRpZJt)
CQBPuamxrSCt6SLcNve.addSetStatePacket(100, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 141:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 154)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 149:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 155)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 86)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 156)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 86)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 152:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, CQBPuamxrSCt6SLcNve)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQVOLCUT3ZM7ITcyHHxx)
CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, CQBPuamxrSCt6SLcNve)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 88)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 157:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQy1XFYLSKey31BmEf5L = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.setDirection(CQy1XFYLSKey31BmEf5L)
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQy1XFYLSKey31BmEf5L)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnYNcKAcOJMkEOxhhUJ)
CQBPuamxrSCt6SLcNve.getVar().push_vector(sq_GetDistancePos(CQBPuamxrSCt6SLcNve.getXPos(), CQy1XFYLSKey31BmEf5L, 200))
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getYPos() - 25)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getXPos())
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getYPos())
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 164)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQy1XFYLSKey31BmEf5L = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.setDirection(CQy1XFYLSKey31BmEf5L)
CQBPuamxrSCt6SLcNve.getVar().clear_vector()
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQy1XFYLSKey31BmEf5L)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnYNcKAcOJMkEOxhhUJ)
CQBPuamxrSCt6SLcNve.getVar().push_vector(sq_GetDistancePos(CQBPuamxrSCt6SLcNve.getXPos(), CQy1XFYLSKey31BmEf5L, 200))
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getYPos() - 25)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getXPos())
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQBPuamxrSCt6SLcNve.getYPos())
CQBPuamxrSCt6SLcNve.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
local CQfvoaIr1JEnfoo3c = 0
local CQqzM43ZmZqGEbTs = 0
if(sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 163) > 0)
			{
				CQfvoaIr1JEnfoo3c = sq_GetLevelData(CQuVyCu2t1KsDJQwFW,153, 7, sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 153))
CQtKu5XZpitH82PN5 = CQtKu5XZpitH82PN5 + (CQtKu5XZpitH82PN5*sq_GetLevelData(CQuVyCu2t1KsDJQwFW,153, 8, sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 153))/100.0).tointeger()
}
			CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQswkxD8ITQqeFtO1P + CQfvoaIr1JEnfoo3c)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQe6oiK4sSGeNvs4UC)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 61)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 159:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnVAYQI3CpEtmyd = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnVAYQI3CpEtmyd)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 160:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 187)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 108)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 186)
local CQ9z1LQJu7wWxt3B = CQBPuamxrSCt6SLcNve.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 107)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
sq_flashScreen(CQBPuamxrSCt6SLcNve,0,80,0,127,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
sq_flashScreen(CQBPuamxrSCt6SLcNve,0,10,400,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 161:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQswkxD8ITQqeFtO1P)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 112)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(21 + CQdYKgHym9xCBRCA, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 110)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 164:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 196)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 113)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 165:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 198)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 115)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(CQBPuamxrSCt6SLcNve, 197)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 114)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 166:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQbbQR9DYoVJD8Lz = CQRpzjREtEPyNqDSSXnN.readDword()
local CQeARE2SXCky7SXbA3mP = CQRpzjREtEPyNqDSSXnN.readDword()
CQBPuamxrSCt6SLcNve.getVar().clear_vector();	
			CQBPuamxrSCt6SLcNve.getVar().push_vector(CQnoPn6nUSMnF5pW7)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQtKu5XZpitH82PN5)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQ89dPhDM6xd4fXwU)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQbbQR9DYoVJD8Lz)
CQBPuamxrSCt6SLcNve.getVar().push_vector(CQeARE2SXCky7SXbA3mP)
CQBPuamxrSCt6SLcNve.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(CQBPuamxrSCt6SLcNve, 119)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(CQBPuamxrSCt6SLcNve, CQcHoYzDJEi29CQax3jh)
CQBPuamxrSCt6SLcNve.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
}
}

function setState_po_ChangQing_751675335_ATSwordman(CQ2Ap9MOZBRqpnHnzCJ, CQmuhbAxjcAztCHc, CQmOn5myVo4UXlf7)
{
	if(!CQ2Ap9MOZBRqpnHnzCJ) return
CQ2Ap9MOZBRqpnHnzCJ.getVar("state").clear_vector()
CQ2Ap9MOZBRqpnHnzCJ.getVar("state").push_vector(CQmuhbAxjcAztCHc)
local CQao8avZNcsmFFkWow5Q = CQ2Ap9MOZBRqpnHnzCJ.getVar("skill").get_vector(0)
local CQVys4Zlnbe16yCcSbM = sq_ObjectToSQRCharacter(CQ2Ap9MOZBRqpnHnzCJ.getTopCharacter())
switch(CQao8avZNcsmFFkWow5Q)
	{
	case -1:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
}
		break
case 34:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 10)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 11)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 12)
break
}
		break
case 96:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 36)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 38)
CQ2Ap9MOZBRqpnHnzCJ.sq_SetMoveParticle("particle/siryun.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(CQ2Ap9MOZBRqpnHnzCJ, 0, 500)
break
case 21:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 39)
break
}
		break
case 14:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 66)
sq_SetfRotateAngle(CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation(), sq_ToRadian(-45.0))
CQ2Ap9MOZBRqpnHnzCJ.sq_SetMoveParticle( "particle/atmagicswordupwater.ptl", 0.0, -45.0)
sq_SetSpeedToMoveParticle(CQ2Ap9MOZBRqpnHnzCJ, 0, 3000)
break
case 11:
			CQ2Ap9MOZBRqpnHnzCJ.sq_RemoveMoveParticle()
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 67)
sq_SetfRotateAngle(CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation(), sq_ToRadian(-45.0))
break
}
		break
case 131:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 41)
CQ2Ap9MOZBRqpnHnzCJ.sq_SetMoveParticle( "particle/atillusionblade.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(CQ2Ap9MOZBRqpnHnzCJ, 0, 800)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,200,1,false)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 42)
local CQgQWDlT6RTTDV8MfGo = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 35)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 43)
local CQgQWDlT6RTTDV8MfGo = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 36)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 13:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 44)
local CQgQWDlT6RTTDV8MfGo = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 35)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 45)
local CQwwLnpor7pUEmjBVhFi = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)/100.0
local CQ33o5XndGEGCWbqWx = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQ33o5XndGEGCWbqWx.setImageRateFromOriginal(CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi)
CQ33o5XndGEGCWbqWx.setAutoLayerWorkAnimationAddSizeRate(CQwwLnpor7pUEmjBVhFi)
sq_SetAttackBoundingBoxSizeRate(CQ33o5XndGEGCWbqWx, CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi)
break
}
		break
case 132:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "Character/Swordman/Effect/Animation/ATThunderSlash/thunderslash_shockwave.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
CQ2Ap9MOZBRqpnHnzCJ.setCurrentAnimation(CQKOFyUDJySWSSves)
local CQTyvFMyYVxbKlWoCrH = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 36)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
local CQ33o5XndGEGCWbqWx = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQ33o5XndGEGCWbqWx.setImageRateFromOriginal(CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH)
CQ33o5XndGEGCWbqWx.setAutoLayerWorkAnimationAddSizeRate(CQTyvFMyYVxbKlWoCrH)
sq_SetAttackBoundingBoxSizeRate(CQ33o5XndGEGCWbqWx, CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH)
break
}
		break
case 135:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 75)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(3)
sq_BinaryWriteDword(CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(CQ2Ap9MOZBRqpnHnzCJ,24383, 0,CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos(), 0)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(10,2000,1,false)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 76)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 77)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(4)
sq_BinaryWriteDword(CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3))
sq_SendCreatePassiveObjectPacketPos(CQ2Ap9MOZBRqpnHnzCJ,24383, 0,CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos(), 0)
local CQXXtS2rXlyMOyeIb = [
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_fire_ex_saberboom_fire.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_ice_ex_saberboom_ice.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_dark_ex_saberboom_dark.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_light_ex_saberboom_light.ani",
			]
local CQxA8MD7me8KpkwpqOw = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
if(CQxA8MD7me8KpkwpqOw > 0)
				DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQXXtS2rXlyMOyeIb[CQxA8MD7me8KpkwpqOw-1] , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos(), 0,1.0)
break
}
		break
case 137:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			sq_flashScreen(CQ2Ap9MOZBRqpnHnzCJ,80,80,80,51,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 87)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQ9Uzw7s8kkyEzQsur = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQ9Uzw7s8kkyEzQsur)/2
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA,true)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,1000,1,false)
break
case 11:
			CQ2Ap9MOZBRqpnHnzCJ.sq_setShake(CQ2Ap9MOZBRqpnHnzCJ,7,380);	
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 88)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 65)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 138:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,CQWbCT1UHSQeXf4Gt8GN,999,true)
break
case 11:
			local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.sq_SetMoveParticle( "particle/atgorecross.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(CQ2Ap9MOZBRqpnHnzCJ, 0, 800)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,1000,1,false)
break
case 12:
			CQ2Ap9MOZBRqpnHnzCJ.stopTimeEvent(0)
CQ2Ap9MOZBRqpnHnzCJ.sq_RemoveMoveParticle()
local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO] + 1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO] + 1)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 13:
			local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.sq_SetMoveParticle( "particle/atgorecross.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(CQ2Ap9MOZBRqpnHnzCJ, 0, 80)
break
}
		break
case 139:
		switch(CQmuhbAxjcAztCHc)
		{
		case 9:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 106)
break
case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 103)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
local CQlnVn9xDhSjDYERl = CQVys4Zlnbe16yCcSbM.getObjectManager()
CQVys4Zlnbe16yCcSbM.getVar("JackcatchTarget").clear_obj_vector()
for(local CQIjYpZ78ic6I4EzWOt = 0; CQIjYpZ78ic6I4EzWOt < CQlnVn9xDhSjDYERl.getCollisionObjectNumber(); CQIjYpZ78ic6I4EzWOt+=1)
			{
				local CQ75VLwIQNZVFupj = "character/atswordman/1_swordmaster/jackcatch/ap_jackcatch.nut"
local CQrCr7jwMfqGO7oYar = CQlnVn9xDhSjDYERl.getCollisionObject(CQIjYpZ78ic6I4EzWOt)
local CQCS7YM6cy1apGolPCPs = sq_GetDistanceObject(CQ2Ap9MOZBRqpnHnzCJ, CQrCr7jwMfqGO7oYar, false)
if(CQrCr7jwMfqGO7oYar && CQrCr7jwMfqGO7oYar.isObjectType(OBJECTTYPE_ACTIVE) && CQCS7YM6cy1apGolPCPs < 250 && CQVys4Zlnbe16yCcSbM.isEnemy(CQrCr7jwMfqGO7oYar) && sq_IsHoldable(CQVys4Zlnbe16yCcSbM,CQrCr7jwMfqGO7oYar))
				{
					CQVys4Zlnbe16yCcSbM.getVar("JackcatchTarget").push_obj_vector(CQrCr7jwMfqGO7oYar)
local CQciIiAKsVyrPcinN = CNSquirrelAppendage.sq_AppendAppendage(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, -1, false, CQ75VLwIQNZVFupj, true)
sq_HoldAndDelayDie(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQciIiAKsVyrPcinN)
sq_MoveToAppendageForce(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, CQrCr7jwMfqGO7oYar, 0, 0, 120, 500, true, CQciIiAKsVyrPcinN,true)
local CQYPLlm7v3LHXrBfoV = CQciIiAKsVyrPcinN.getAppendageInfo()
CQYPLlm7v3LHXrBfoV.setValidTime(5800)
}
			}
			break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 104)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 105)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 122)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 21:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 124)
break
case 22:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 126)
break
case 30:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 112)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 31:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 114)
break
case 32:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 116)
break
case 40:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 117)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 41:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 119)
break
case 42:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 121)
break
case 50:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 107)
local CQKOFyUDJySWSSves = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 51:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 109)
break
case 52:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 111)
break
}
		break
case 140:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 143)
break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atbreaksworddance/atbreaksworddance_magic_circle_loop.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
CQ2Ap9MOZBRqpnHnzCJ.setCurrentAnimation(CQKOFyUDJySWSSves)
sq_ChangeDrawLayer(CQ2Ap9MOZBRqpnHnzCJ, ENUM_DRAWLAYER_BOTTOM)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 144)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 145)
break
case 30:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 147)
break
case 40:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 148)
break
case 50:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 149)
break
case 60:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 150)
break
case 70:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 151)
break
case 80:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 152)
break
case 90:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 153)
break
case 9:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 146)
break
case 100:
			local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0);	
			local CQMJVRLvix5BOdJ6wGBx = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQtheLdd42XYMkfu5X = [137,138,139,141,140,142]
local CQB467XVunQgXVfrdxWF = [80,81,82,84,83,85]
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, CQtheLdd42XYMkfu5X[CQMJVRLvix5BOdJ6wGBx])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQB467XVunQgXVfrdxWF[CQMJVRLvix5BOdJ6wGBx])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 152:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "Character/Swordman/Effect/Animation/ATThunderSlash/thunderslash_shockwave.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
CQ2Ap9MOZBRqpnHnzCJ.setCurrentAnimation(CQKOFyUDJySWSSves)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 158)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 88)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,330,10,true)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,330*10,1,false)
break
case 21:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 159)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 89)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 157:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 163)
break
case 11:
			
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 164)
local CQU6UtTT1rHYDq7aA = "passiveobject/changqing_atswordman/animation/atgroupdance/dance_move_dodge.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQU6UtTT1rHYDq7aA , true , true, sq_GetDistancePos(CQ2Ap9MOZBRqpnHnzCJ.getXPos(), sq_GetOppositeDirection(CQ2Ap9MOZBRqpnHnzCJ.getDirection()), 100), CQ2Ap9MOZBRqpnHnzCJ.getYPos(), 60,1.0)
break
case 12:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atgroupdance/disappear_dance_fog.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
CQ2Ap9MOZBRqpnHnzCJ.setCurrentAnimation(CQKOFyUDJySWSSves)
break
case 20:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 176)
break
case 21:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 177)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 103)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 22:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 178)
break
case 30:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 170)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 99)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 31:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 171)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 100)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 32:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 172)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 101)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 40:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 165)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 94)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 41:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 166)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 94)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,150,9,true)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,1000,1,false)
CQ2Ap9MOZBRqpnHnzCJ.playSound("BLOODDANCE_LOOP", 2012, 0,0,0)
break
case 42:
			CQ2Ap9MOZBRqpnHnzCJ.stopSound(2012)
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 167)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 95)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 50:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 168)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 97)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 51:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 169)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 98)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 60:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 173)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
for (local CQIjYpZ78ic6I4EzWOt = 0; CQIjYpZ78ic6I4EzWOt < 3 ; CQIjYpZ78ic6I4EzWOt++)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(149)
sq_BinaryWriteDword(0)
sq_BinaryWriteDword(CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(CQ2Ap9MOZBRqpnHnzCJ, 24383, 0, sq_GetDistancePos(CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getDirection(), 100 + 50*CQIjYpZ78ic6I4EzWOt), CQ2Ap9MOZBRqpnHnzCJ.getYPos(), 0)
}
			break
case 61:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 174)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 62:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 175)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 158:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 179)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 180)
local CQ5AAT2XGrWcCKFNoOo = sq_CreateAnimation("passiveobject/changqing_atswordman/animation/atdarkstrike/loop/","dimus_slash.ani")
local CQwucriecZ6RJbFX = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQwucriecZ6RJbFX.addLayerAnimation(1, CQ5AAT2XGrWcCKFNoOo, true)
local CQQ5Cqu2N48M1ftP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,CQWbCT1UHSQeXf4Gt8GN,CQPuOjYZDLIOtDQA,true)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,CQWbCT1UHSQeXf4Gt8GN*CQPuOjYZDLIOtDQA,1,false)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 181)
local CQ5AAT2XGrWcCKFNoOo = sq_CreateAnimation("passiveobject/changqing_atswordman/animation/atdarkstrike/end/","2_daimus.ani")
local CQwucriecZ6RJbFX = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQwucriecZ6RJbFX.addLayerAnimation(1, CQ5AAT2XGrWcCKFNoOo, true)
local CQB6QBo4MJvlwWmPZ = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 106)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 159:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 182)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 183)
local CQfzmJh1BN96EpI3ECP = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,CQfzmJh1BN96EpI3ECP,1,false)
break
case 12:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 185)
break
case 13:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 184)
break
}
		break
case 161:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 193)
break
case 11:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 194)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,150,CQPuOjYZDLIOtDQA,true)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,150*CQPuOjYZDLIOtDQA,1,false)
break
case 21:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 188)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus1_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQ5AAT2XGrWcCKFNoOo , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos()-1, 60,1.0)
break
case 22:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 189)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus2_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQ5AAT2XGrWcCKFNoOo , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos()-1, 60,1.0)
break
case 23:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 190)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus1_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQ5AAT2XGrWcCKFNoOo , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos()-1, 60,1.0)
break
case 24:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 191)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus2_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQ5AAT2XGrWcCKFNoOo , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos()-1, 60,1.0)
break
case 30:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 192)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/finish_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(CQ2Ap9MOZBRqpnHnzCJ, CQ5AAT2XGrWcCKFNoOo , false , true, CQ2Ap9MOZBRqpnHnzCJ.getXPos(), CQ2Ap9MOZBRqpnHnzCJ.getYPos()-1, 60,1.0)
break
}
		break
case 166:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 199)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
break
case 11:
			CQ2Ap9MOZBRqpnHnzCJ.sq_PlaySound("SW_RAGNAROK_02")
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 200)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(0))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
if(CQVys4Zlnbe16yCcSbM.isMyControlObject())
				sq_SetMyShake(CQ2Ap9MOZBRqpnHnzCJ,1,1080)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(3)
local CQwucriecZ6RJbFX = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQwucriecZ6RJbFX)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(5,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA-4,true)
break
case 12:
			CQ2Ap9MOZBRqpnHnzCJ.sq_PlaySound("SW_RAGNAROK_03")
setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 201)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(1))
sq_SetCurrentAttackInfo(CQ2Ap9MOZBRqpnHnzCJ, CQSJTQt5PLTa43qwDPT)
local CQPuOjYZDLIOtDQA = CQ2Ap9MOZBRqpnHnzCJ.getVar().get_vector(4) + 5
local CQwucriecZ6RJbFX = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQwucriecZ6RJbFX)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(6,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA - 3,true)
break
case 13:
			setCurrentAnimationFromCutomIndex(CQ2Ap9MOZBRqpnHnzCJ, 202)
local CQwucriecZ6RJbFX = CQ2Ap9MOZBRqpnHnzCJ.getCurrentAnimation()
CQwucriecZ6RJbFX.setSpeedRate(140.0)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(0,500,1,false)
CQ2Ap9MOZBRqpnHnzCJ.sq_PlaySound("SW_RAGNAROK_04")
break
case 20:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atragnarok/fianl/ratkc_00.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
CQ2Ap9MOZBRqpnHnzCJ.setCurrentAnimation(CQKOFyUDJySWSSves)
CQ2Ap9MOZBRqpnHnzCJ.setTimeEvent(1,1000,1,false)
break
}
		break
}
}

function procAppend_po_ChangQing_751675335_ATSwordman(CQYS349iAgSS9swRXF3q)
{
	if(!CQYS349iAgSS9swRXF3q) return
local CQpJZNWuoGW2H5IH = CQYS349iAgSS9swRXF3q.getVar("skill").get_vector(0)
local CQRhpEFv5IYU7dJc = CQYS349iAgSS9swRXF3q.getVar("state").get_vector(0)
local CQi4hZtdiZCl2KHqMO = CQYS349iAgSS9swRXF3q.getVar("ObjType").get_vector(0)
local CQ1ZF88SVTw9VbHbj8S1 = sq_ObjectToSQRCharacter(CQYS349iAgSS9swRXF3q.getTopCharacter())
switch(CQpJZNWuoGW2H5IH)
	{
	case -1:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 0:

			break
}
		break
case 34:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 11:
			if(CQ1ZF88SVTw9VbHbj8S1.getState() != 134)
				sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
break
}
		break
case 96:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			local CQUPbvLtla3M3XGez = sq_GetObjectByObjectId(CQ1ZF88SVTw9VbHbj8S1, CQYS349iAgSS9swRXF3q.getVar().get_vector(0))
if(!CQUPbvLtla3M3XGez)
				sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
break
}
		break
case 14:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(CQYS349iAgSS9swRXF3q.getZPos() < 4)
				CQYS349iAgSS9swRXF3q.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 132:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(CQYS349iAgSS9swRXF3q.getZPos() < 20)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(132)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(CQYS349iAgSS9swRXF3q.getVar().get_vector(0))
sq_BinaryWriteDword(CQYS349iAgSS9swRXF3q.getVar().get_vector(1))
sq_SendCreatePassiveObjectPacketPos(CQYS349iAgSS9swRXF3q,24383, 0,CQYS349iAgSS9swRXF3q.getXPos(), CQYS349iAgSS9swRXF3q.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
}
			break
}
		break
case 134:
		local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(CQYS349iAgSS9swRXF3q)
local CQ4nbJnCdjfZL9FWme = sq_GetCurrentAnimation(CQYS349iAgSS9swRXF3q)
local CQQjN6dOeoPANaBQIXse = sq_GetDelaySum(CQ4nbJnCdjfZL9FWme)
local CQL6txXw21loZRVuS = CQYS349iAgSS9swRXF3q.getVar().get_vector(0)
local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(CQYS349iAgSS9swRXF3q.getXPos(), CQL6txXw21loZRVuS, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse, false)
sq_setCurrentAxisPos(CQYS349iAgSS9swRXF3q, 0, CQTC9yw6vbJQHLVrHO9)
break
case 136:
		if(CQi4hZtdiZCl2KHqMO == 0)
			break
if(CQ1ZF88SVTw9VbHbj8S1.getState() != 136 || CQ1ZF88SVTw9VbHbj8S1.getVar("DevilslashXXX").getInt(0) != 3)
			sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
break
case 135:
		local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(CQYS349iAgSS9swRXF3q)
if(CQRhpEFv5IYU7dJc == 10 && CQEyNoExG3i3BoFUvCh > 2000)
			CQYS349iAgSS9swRXF3q.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 138:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(CQ1ZF88SVTw9VbHbj8S1.getVar("MagicswordshootIs").getBool(0) || CQ1ZF88SVTw9VbHbj8S1.getState() != 138 )
				CQYS349iAgSS9swRXF3q.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		if(CQ1ZF88SVTw9VbHbj8S1.getState() != 139)
		{
			switch(CQRhpEFv5IYU7dJc)
			{
			case 11:
				CQYS349iAgSS9swRXF3q.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 21:
				CQYS349iAgSS9swRXF3q.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 31:
				CQYS349iAgSS9swRXF3q.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 41:
				CQYS349iAgSS9swRXF3q.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 51:
				CQYS349iAgSS9swRXF3q.addSetStatePacket(52, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		else
		{
			local CQ6ix3MEhBNRJCXy9 = CQ1ZF88SVTw9VbHbj8S1.getVar("JackcatchSub").getInt(0)
switch(CQ6ix3MEhBNRJCXy9)
			{
			case 1:
				if(CQRhpEFv5IYU7dJc == 21)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				if(CQRhpEFv5IYU7dJc == 31)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				if(CQRhpEFv5IYU7dJc == 41)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				if(CQRhpEFv5IYU7dJc == 51)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(52, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		break
case 140:
		if(CQ1ZF88SVTw9VbHbj8S1.getState() != 140)
		{
			if(CQ1ZF88SVTw9VbHbj8S1.getVar("BreaksworddanceF").getBool(0))
			{
				if(CQRhpEFv5IYU7dJc == 20 || CQRhpEFv5IYU7dJc == 30 || CQRhpEFv5IYU7dJc == 40 || CQRhpEFv5IYU7dJc == 50 || CQRhpEFv5IYU7dJc == 60 || CQRhpEFv5IYU7dJc == 70 || CQRhpEFv5IYU7dJc == 80 || CQRhpEFv5IYU7dJc == 90)
				{
					sq_BinaryStartWrite()
sq_BinaryWriteDword(140)
sq_BinaryWriteDword(9)
sq_BinaryWriteDword(CQ1ZF88SVTw9VbHbj8S1.sq_GetBonusRateWithPassive(140, -1, 3, getATSwordmanBonus(CQ1ZF88SVTw9VbHbj8S1,1.0,140)))
sq_BinaryWriteDword(GetMagicSwordAppIndex(CQ1ZF88SVTw9VbHbj8S1))
sq_SendCreatePassiveObjectPacketPos(CQYS349iAgSS9swRXF3q,24383, 0,CQYS349iAgSS9swRXF3q.getXPos(), CQYS349iAgSS9swRXF3q.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
}
				else if(CQRhpEFv5IYU7dJc == 11)
					sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
}
			else
				sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
}	
		else
		{
			local CQemZlAkyYW3SpXsgX9 = CQ1ZF88SVTw9VbHbj8S1.getVar("BreaksworddanceSub").getInt(0)
switch(CQemZlAkyYW3SpXsgX9)
			{
			case 1:
				if(CQRhpEFv5IYU7dJc == 20)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				if(CQRhpEFv5IYU7dJc == 30)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				if(CQRhpEFv5IYU7dJc == 40)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				if(CQRhpEFv5IYU7dJc == 50)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
				if(CQRhpEFv5IYU7dJc == 60)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 6:
				if(CQRhpEFv5IYU7dJc == 70)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 7:
				if(CQRhpEFv5IYU7dJc == 80)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 8:
				if(CQRhpEFv5IYU7dJc == 90)
					CQYS349iAgSS9swRXF3q.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		break
case 152:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(CQYS349iAgSS9swRXF3q.getZPos() < 10 && CQ1ZF88SVTw9VbHbj8S1.getState() != 152)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(152)
sq_BinaryWriteDword(2)
sq_BinaryWriteDword(CQYS349iAgSS9swRXF3q.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(CQYS349iAgSS9swRXF3q,24383, 0,CQYS349iAgSS9swRXF3q.getXPos(), CQYS349iAgSS9swRXF3q.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
}
			break
case 20:
			local CQUPbvLtla3M3XGez = sq_GetObjectByObjectId(CQ1ZF88SVTw9VbHbj8S1, CQYS349iAgSS9swRXF3q.getVar().get_vector(1))
if(!CQUPbvLtla3M3XGez)
				sq_SendDestroyPacketPassiveObject(CQYS349iAgSS9swRXF3q)
break
}
		break
case 157:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(CQYS349iAgSS9swRXF3q)
if(CQEyNoExG3i3BoFUvCh > 900)
			{
				CQYS349iAgSS9swRXF3q.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
}
			break
case 11:
			local CQPVw1JUDxhoIbLai8cs = CQYS349iAgSS9swRXF3q.getDirection()
local CQKwvzOnroOcg1XAw2Hk = CQYS349iAgSS9swRXF3q.getVar().get_vector(3)
local CQnke3HFWu5FYKIdgn = CQYS349iAgSS9swRXF3q.getVar().get_vector(4)
local CQ4nbJnCdjfZL9FWme = sq_GetCurrentAnimation(CQYS349iAgSS9swRXF3q)
local CQQjN6dOeoPANaBQIXse = sq_GetDelaySum(CQ4nbJnCdjfZL9FWme)
local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(CQYS349iAgSS9swRXF3q)
if(CQEyNoExG3i3BoFUvCh - 900 < 90)
			{
				local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(CQYS349iAgSS9swRXF3q.getXPos(), CQKwvzOnroOcg1XAw2Hk, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
local CQiMnsVWOoxFwnNAk7m = sq_GetAccel(CQYS349iAgSS9swRXF3q.getYPos(), CQnke3HFWu5FYKIdgn, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
sq_setCurrentAxisPos(CQYS349iAgSS9swRXF3q, 0, CQTC9yw6vbJQHLVrHO9)
sq_setCurrentAxisPos(CQYS349iAgSS9swRXF3q, 1, CQiMnsVWOoxFwnNAk7m)
}
			else
			{
				local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(CQYS349iAgSS9swRXF3q.getXPos(), CQYS349iAgSS9swRXF3q.getVar().get_vector(5), CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
local CQiMnsVWOoxFwnNAk7m = sq_GetAccel(CQYS349iAgSS9swRXF3q.getYPos(), CQYS349iAgSS9swRXF3q.getVar().get_vector(6), CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
sq_setCurrentAxisPos(CQYS349iAgSS9swRXF3q, 0, CQTC9yw6vbJQHLVrHO9)
sq_setCurrentAxisPos(CQYS349iAgSS9swRXF3q, 1, CQiMnsVWOoxFwnNAk7m)
}
			break
}
		break
case 159:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 11:
			local CQEefnhICu1vUdVZp = sq_GetDistanceObject(CQYS349iAgSS9swRXF3q, CQ1ZF88SVTw9VbHbj8S1, false)
if(CQEefnhICu1vUdVZp < 500 && sq_GetObjectTime(CQYS349iAgSS9swRXF3q) > 1000)
			{
				local CQ4cSENzTByhrsVHOOY = "character/atswordman/2_demonslayer/greed/ap_atgreedbuff.nut"
local CQQfcLt5FY86mRCV = sq_GetIntData(CQ1ZF88SVTw9VbHbj8S1,159, 1)
local CQL1C8zK9PIVYZXL2I = CQ1ZF88SVTw9VbHbj8S1.getVar("ATGreedbuff").getInt(0)
if(CQL1C8zK9PIVYZXL2I < CQQfcLt5FY86mRCV)
				{
					CQ1ZF88SVTw9VbHbj8S1.getVar("ATGreedbuff").setInt(0, CQL1C8zK9PIVYZXL2I + 1)
local CQlJcv4QaCkFqUXG67WD = CNSquirrelAppendage.sq_AppendAppendage(CQ1ZF88SVTw9VbHbj8S1, CQ1ZF88SVTw9VbHbj8S1, -1, false, CQ4cSENzTByhrsVHOOY, false)
if (CQlJcv4QaCkFqUXG67WD != null)
					{
						CQlJcv4QaCkFqUXG67WD.sq_SetValidTime(sq_GetLevelData(CQ1ZF88SVTw9VbHbj8S1,159, 2, sq_GetSkillLevel(CQ1ZF88SVTw9VbHbj8S1, 159)))
CQlJcv4QaCkFqUXG67WD.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQ1ZF88SVTw9VbHbj8S1), 159, sq_GetSkillLevel(CQ1ZF88SVTw9VbHbj8S1, 159))
CQlJcv4QaCkFqUXG67WD.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQlJcv4QaCkFqUXG67WD, CQ1ZF88SVTw9VbHbj8S1, CQ1ZF88SVTw9VbHbj8S1, true)
}
				}
				CQYS349iAgSS9swRXF3q.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
}
			break
}
		break
}
}

function onAttack_po_ChangQing_751675335_ATSwordman(CQIsCiGk1zGavVZCd, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
{
	if(!CQIsCiGk1zGavVZCd) return
local CQcgTya1tE46hn32o7Rn = CQIsCiGk1zGavVZCd.getVar("skill").get_vector(0)
local CQA3KGUF53oVdX2Bs = CQIsCiGk1zGavVZCd.getVar("state").get_vector(0)
local CQdZm3fuUjfGkm15CXE = CQIsCiGk1zGavVZCd.getVar("ObjType").get_vector(0)
local CQyPJlCfSoAJf911 = sq_ObjectToSQRCharacter(CQIsCiGk1zGavVZCd.getTopCharacter())
switch(CQcgTya1tE46hn32o7Rn)
	{
	case -1:
		
		break
case 34:
		local CQNymrsBlMzI6aM85X = "character/atswordman/execution/ap_execution.nut"
local CQbn2SkApbKtRRN49zHg = CNSquirrelAppendage.sq_AppendAppendage(CQ7reJyJYIvrlELKhXM, CQIsCiGk1zGavVZCd, -1, false, CQNymrsBlMzI6aM85X, true)
if(sq_IsHoldable(CQIsCiGk1zGavVZCd,CQ7reJyJYIvrlELKhXM) && sq_IsGrabable(CQIsCiGk1zGavVZCd,CQ7reJyJYIvrlELKhXM) && !sq_IsFixture(CQ7reJyJYIvrlELKhXM))
			if(CQbn2SkApbKtRRN49zHg)
			{
				CQyPJlCfSoAJf911.getVar("Execution").setBool(0,true)
sq_HoldAndDelayDie(CQ7reJyJYIvrlELKhXM, CQIsCiGk1zGavVZCd, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQbn2SkApbKtRRN49zHg)
sq_MoveToAppendageForce(CQ7reJyJYIvrlELKhXM, CQIsCiGk1zGavVZCd, CQIsCiGk1zGavVZCd, 0, 0, CQ7reJyJYIvrlELKhXM.getZPos(), 50, true, CQbn2SkApbKtRRN49zHg,true)
local CQFjo11YduUU7ONfb = CQbn2SkApbKtRRN49zHg.getAppendageInfo()
CQFjo11YduUU7ONfb.setValidTime(600)
}
		break
case 14:
		if(CQdZm3fuUjfGkm15CXE == 4)
			sq_SendDestroyPacketPassiveObject(CQIsCiGk1zGavVZCd)
break
case 88:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 94:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 147:
		MagicSword_BasiconAttack(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 87:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 131:
		if(CQA3KGUF53oVdX2Bs == 10)
		{
			CQIsCiGk1zGavVZCd.sq_RemoveMoveParticle()
CQIsCiGk1zGavVZCd.stopTimeEvent(0)
if(CQIsCiGk1zGavVZCd.getVar().get_vector(0) == 2 && sq_GetSkillLevel(CQyPJlCfSoAJf911, 13)>0)
				CQIsCiGk1zGavVZCd.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				CQIsCiGk1zGavVZCd.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
}
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 132:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
if(CQA3KGUF53oVdX2Bs == 11)
			BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 133:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 134:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQg5RjS8eBMT2UB7q7l = CQIsCiGk1zGavVZCd.getVar().get_vector(1)
SendSetActiveStatus_Magicswordup(CQIsCiGk1zGavVZCd,CQyPJlCfSoAJf911,CQg5RjS8eBMT2UB7q7l,CQ7reJyJYIvrlELKhXM,CQCvsxZUhTejzI3XtO)
break
case 135:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
if(CQdZm3fuUjfGkm15CXE == 1 || CQdZm3fuUjfGkm15CXE == 2)
			BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 136:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 142:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQoXDwrXJct88VVg = 2000
if(CQdZm3fuUjfGkm15CXE == 1)
			CQoXDwrXJct88VVg = 100
local CQNymrsBlMzI6aM85X = "character/atswordman/1_swordmaster/timeslash/ap_devilslash.nut"
local CQbn2SkApbKtRRN49zHg = CNSquirrelAppendage.sq_AppendAppendage(CQ7reJyJYIvrlELKhXM, CQIsCiGk1zGavVZCd, -1, false, CQNymrsBlMzI6aM85X, true)
if(sq_IsHoldable(CQIsCiGk1zGavVZCd,CQ7reJyJYIvrlELKhXM) && sq_IsGrabable(CQIsCiGk1zGavVZCd,CQ7reJyJYIvrlELKhXM) && !sq_IsFixture(CQ7reJyJYIvrlELKhXM))
			if(CQbn2SkApbKtRRN49zHg)
			{
				sq_HoldAndDelayDie(CQ7reJyJYIvrlELKhXM, CQIsCiGk1zGavVZCd, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQbn2SkApbKtRRN49zHg)
local CQFjo11YduUU7ONfb = CQbn2SkApbKtRRN49zHg.getAppendageInfo()
CQFjo11YduUU7ONfb.setValidTime(CQoXDwrXJct88VVg)
}
		break
case 137:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 138:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQg5RjS8eBMT2UB7q7l = CQIsCiGk1zGavVZCd.getVar().get_vector(2)
SendSetActiveStatus_Magicswordup(CQIsCiGk1zGavVZCd,CQyPJlCfSoAJf911,CQg5RjS8eBMT2UB7q7l,CQ7reJyJYIvrlELKhXM,CQCvsxZUhTejzI3XtO)
switch(CQA3KGUF53oVdX2Bs)
		{
		case 11:
			CQIsCiGk1zGavVZCd.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		switch(CQA3KGUF53oVdX2Bs)
		{
		case 10:
			
			break
}
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 140:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 141:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 149:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 152:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 157:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 158:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 159:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 160:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 161:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 164:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 165:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 166:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
}
}

function onKeyFrameFlag_po_ChangQing_751675335_ATSwordman(CQw6Ws8qX5YUZX5j3r, CQZC8CL4kTXTGm4flChe)
{
	if(!CQw6Ws8qX5YUZX5j3r) return false
local CQzSOdpJDEQ9XB4lY = CQw6Ws8qX5YUZX5j3r.getVar("skill").get_vector(0)
local CQOilnbo833MHa3hmXs = CQw6Ws8qX5YUZX5j3r.getVar("state").get_vector(0)
local CQ8pLEBhEUiJAR3c = CQw6Ws8qX5YUZX5j3r.getVar("ObjType").get_vector(0)
local CQrQQLO1ModZJI2TA = sq_ObjectToSQRCharacter(CQw6Ws8qX5YUZX5j3r.getTopCharacter())
switch(CQzSOdpJDEQ9XB4lY)
	{
	case -1:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 0:
			
			break
}
		break
case 131:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			if(CQOilnbo833MHa3hmXs != 13)
				break
if(CQw6Ws8qX5YUZX5j3r.getVar().get_vector(0) != 2)
				break
sq_BinaryStartWrite()
sq_BinaryWriteDword(131)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(CQw6Ws8qX5YUZX5j3r.getVar().get_vector(3))
sq_BinaryWriteDword(CQw6Ws8qX5YUZX5j3r.getVar().get_vector(4))
sq_SendCreatePassiveObjectPacketPos(CQw6Ws8qX5YUZX5j3r,24383, 0,sq_GetDistancePos(CQw6Ws8qX5YUZX5j3r.getXPos(), CQw6Ws8qX5YUZX5j3r.getDirection(), 100), CQw6Ws8qX5YUZX5j3r.getYPos(), 0)
break
}
		break
case 140:
		if(!CQw6Ws8qX5YUZX5j3r.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 0:
			sq_SetMyShake(CQw6Ws8qX5YUZX5j3r,50,400)
sq_flashScreen(CQw6Ws8qX5YUZX5j3r,50,100,150,204,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,200,100,153,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 141:
		if(!CQw6Ws8qX5YUZX5j3r.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			sq_SetMyShake(CQw6Ws8qX5YUZX5j3r,12,350)
local CQCzL8QFcMOASn1bG7K = CQrQQLO1ModZJI2TA.getObjectManager()
for(local CQc9QvjbKbTisC1x = 0; CQc9QvjbKbTisC1x < CQCzL8QFcMOASn1bG7K.getCollisionObjectNumber(); CQc9QvjbKbTisC1x+=1)
			{
				local CQAN3iMfguJQDqMmVX = "character/atswordman/1_swordmaster/laevateinn/ap_laevateinn.nut"
local CQdGpJABtBnxINNvgx3w = CQCzL8QFcMOASn1bG7K.getCollisionObject(CQc9QvjbKbTisC1x)
if(CQdGpJABtBnxINNvgx3w && CQdGpJABtBnxINNvgx3w.isObjectType(OBJECTTYPE_ACTIVE) && CQrQQLO1ModZJI2TA.isEnemy(CQdGpJABtBnxINNvgx3w) && sq_IsHoldable(CQrQQLO1ModZJI2TA,CQdGpJABtBnxINNvgx3w))
				{
	if(CNSquirrelAppendage.sq_IsAppendAppendage(CQdGpJABtBnxINNvgx3w, CQAN3iMfguJQDqMmVX))
		CNSquirrelAppendage.sq_RemoveAppendage(CQdGpJABtBnxINNvgx3w, CQAN3iMfguJQDqMmVX);				
sq_SendHitObjectPacket(CQw6Ws8qX5YUZX5j3r,CQdGpJABtBnxINNvgx3w,0,0,CQdGpJABtBnxINNvgx3w.getZPos()+CQdGpJABtBnxINNvgx3w.getObjectHeight()/2)
}
			}
			break
}
		break
case 157:
		if(CQZC8CL4kTXTGm4flChe == 4 || CQZC8CL4kTXTGm4flChe == 2 || CQZC8CL4kTXTGm4flChe == 3 || CQZC8CL4kTXTGm4flChe == 1)
			CQw6Ws8qX5YUZX5j3r.resetHitObjectList()
break
case 158:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			if(CQrQQLO1ModZJI2TA.isMyControlObject())
			{
				CQw6Ws8qX5YUZX5j3r.sq_setShake(CQw6Ws8qX5YUZX5j3r,3,300);	
				sq_flashScreen(CQw6Ws8qX5YUZX5j3r, 30, 25, 30, 200, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
}
			break
}
		break
case 166:
		if(CQrQQLO1ModZJI2TA.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 3:
			sq_SetMyShake(CQw6Ws8qX5YUZX5j3r,7,180)
sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 5:
			sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,60,0,204,sq_RGB(139,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 6:
			sq_SetMyShake(CQw6Ws8qX5YUZX5j3r,2,480)
break
case 7:
			sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 9:
			sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,60,0,204,sq_RGB(139,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 11:
			sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 14:
			sq_SetMyShake(CQw6Ws8qX5YUZX5j3r,5,180)
sq_flashScreen(CQw6Ws8qX5YUZX5j3r,0,120,120,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
}
	
	return true
}

function onEndCurrentAni_po_ChangQing_751675335_ATSwordman(CQbxnyH8CC6ZpP8Y)
{
	if(!CQbxnyH8CC6ZpP8Y) return
local CQFdFFuOTzEAtm8qE7 = CQbxnyH8CC6ZpP8Y.getVar("skill").get_vector(0)
local CQgMb3ceosgoaV7bOeIl = CQbxnyH8CC6ZpP8Y.getVar("state").get_vector(0)
local CQoHNl6795SQuQ6eF = CQbxnyH8CC6ZpP8Y.getVar("ObjType").get_vector(0)
local CQ2ayraZwTcxef6mKzd = sq_ObjectToSQRCharacter(CQbxnyH8CC6ZpP8Y.getTopCharacter())
switch(CQFdFFuOTzEAtm8qE7)
	{
	case -1:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 160:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 94:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 88:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 87:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 93:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 34:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 96:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 147:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 14:
		if(CQgMb3ceosgoaV7bOeIl == 10)
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
else
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 131:
		local CQkedSmaHEZfUI5t7O = CQbxnyH8CC6ZpP8Y.getVar().get_vector(2)
switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			CQbxnyH8CC6ZpP8Y.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 2) > 0)
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			CQbxnyH8CC6ZpP8Y.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 2) > 0)
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
else
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 13:
			CQbxnyH8CC6ZpP8Y.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 1) > 0)
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 20:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 132:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 133:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 134:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 135:
		switch(CQoHNl6795SQuQ6eF)
		{
		case 0:
			switch(CQgMb3ceosgoaV7bOeIl)
			{
			case 10:
				if(sq_GetSkillLevel(CQ2ayraZwTcxef6mKzd, 13) > 0 && CQ2ayraZwTcxef6mKzd.getWeaponSubType() == 2)
					CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
					CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
				sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
			break
case 1:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 2:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 3:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 4:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 136:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 142:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 137:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 11:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 138:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 139:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 9:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 20:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
case 22:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 30:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(31, null, STATE_PRIORITY_AUTO, false, "")
break
case 32:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 40:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(41, null, STATE_PRIORITY_AUTO, false, "")
break
case 42:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 50:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(51, null, STATE_PRIORITY_AUTO, false, "")
break
case 52:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 140:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 9:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 100:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 141:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 149:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 152:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 21:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 157:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 11:
			local CQaYPMRTY2q3rh4wf7oD = CQbxnyH8CC6ZpP8Y.getVar().get_vector(2)
switch(CQaYPMRTY2q3rh4wf7oD)
			{
			case 0:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(60, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				CQbxnyH8CC6ZpP8Y.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
}
			break
case 20:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
case 21:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 22:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 30:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(31, null, STATE_PRIORITY_AUTO, false, "")
break
case 31:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 32:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 40:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(41, null, STATE_PRIORITY_AUTO, false, "")
break
case 41:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 42:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 50:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(51, null, STATE_PRIORITY_AUTO, false, "")
break
case 51:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 60:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(61, null, STATE_PRIORITY_AUTO, false, "")
break
case 61:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(62, null, STATE_PRIORITY_AUTO, false, "")
break
case 62:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 159:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 161:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 21:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 22:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 23:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 24:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 30:
			sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
case 164:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 165:
		sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
case 166:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			CQbxnyH8CC6ZpP8Y.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 13:
			CQ2ayraZwTcxef6mKzd.sq_IntVectClear()
CQ2ayraZwTcxef6mKzd.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
sq_SendDestroyPacketPassiveObject(CQbxnyH8CC6ZpP8Y)
break
}
		break
}
}

function onTimeEvent_po_ChangQing_751675335_ATSwordman(CQ5RxjV4IU1ZmC4ij, CQw2XwIH3oyAYq3WzX5, CQZKxOqmyM9FqN3E)
{
	if(!CQ5RxjV4IU1ZmC4ij) return
local CQzLZB2hZvIEvagupO = CQ5RxjV4IU1ZmC4ij.getVar("skill").get_vector(0)
local CQOOwgDMUSkelRRrI8ku = CQ5RxjV4IU1ZmC4ij.getVar("state").get_vector(0)
local CQPJJZajVKypEbvQ = sq_ObjectToSQRCharacter(CQ5RxjV4IU1ZmC4ij.getTopCharacter())
switch(CQzLZB2hZvIEvagupO)
	{
	case -1:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:
			sq_SendDestroyPacketPassiveObject(CQ5RxjV4IU1ZmC4ij)
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
}
		break
case 88:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
}
		break
case 96:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 1:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, CQ5RxjV4IU1ZmC4ij.getVar().get_vector(0))
if(CQBuywnyNARpcZqZVly6)
			{
				CQBuywnyNARpcZqZVly6 = sq_GetCNRDObjectToActiveObject(CQBuywnyNARpcZqZVly6)
CQBuywnyNARpcZqZVly6.getVar("changeswordCount").setInt(0, CQBuywnyNARpcZqZVly6.getVar("changeswordCount").getInt(0) - 1)
}
			sq_SendDestroyPacketPassiveObject(CQ5RxjV4IU1ZmC4ij)
break
case 0:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, CQ5RxjV4IU1ZmC4ij.getVar().get_vector(0))
if(CQBuywnyNARpcZqZVly6)
			{
				CQBuywnyNARpcZqZVly6 = sq_GetCNRDObjectToActiveObject(CQBuywnyNARpcZqZVly6)
local CQeiFDxB6USQe3xfsi7 = CQBuywnyNARpcZqZVly6.getZPos() + CQBuywnyNARpcZqZVly6.getObjectHeight()/2
sq_SendHitObjectPacketWithNoStuck(CQ5RxjV4IU1ZmC4ij,CQBuywnyNARpcZqZVly6,0,0,CQeiFDxB6USQe3xfsi7)
}
			break
}
		break
case 131:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.sq_RemoveMoveParticle()
if(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(0) == 2 && sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13)>0)
				CQ5RxjV4IU1ZmC4ij.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				CQ5RxjV4IU1ZmC4ij.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 135:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			local CQ4NWqiAP7DKDxEaTrV = CQ5RxjV4IU1ZmC4ij.getVar().get_vector(2)
if(CQ4NWqiAP7DKDxEaTrV > 0)
			{
				local CQQG8IYY5ecPIJpD = CQ5RxjV4IU1ZmC4ij.getXPos()
local CQLEOV78ULXuovoOne = CQ5RxjV4IU1ZmC4ij.getYPos()
local CQlwzfKPVkQmO4oEaX9g = 140
local CQIcLUmrlq2zpuiSP = 60
local CQ7fQaRzGJudt7iIFOi = 80
local CQr1LZVZdh91EGuG = sq_GetLevelData(CQPJJZajVKypEbvQ,13, 12, sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13))/100.0
if(sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13) > 0 && CQPJJZajVKypEbvQ.getWeaponSubType() == 2)
				{
					CQlwzfKPVkQmO4oEaX9g = (CQr1LZVZdh91EGuG*CQlwzfKPVkQmO4oEaX9g).tointeger()
CQIcLUmrlq2zpuiSP = (CQr1LZVZdh91EGuG*CQIcLUmrlq2zpuiSP).tointeger()
CQ7fQaRzGJudt7iIFOi = (CQr1LZVZdh91EGuG*CQ7fQaRzGJudt7iIFOi).tointeger()
}
				if(CQZKxOqmyM9FqN3E%3 ==0)
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom(CQlwzfKPVkQmO4oEaX9g*(-1), -CQIcLUmrlq2zpuiSP)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				else if(CQZKxOqmyM9FqN3E%3 ==1)
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom((-1)*CQIcLUmrlq2zpuiSP, CQIcLUmrlq2zpuiSP)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				else
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom(CQIcLUmrlq2zpuiSP, CQlwzfKPVkQmO4oEaX9g)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(0)
sq_BinaryWriteDword(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(0))
sq_BinaryWriteDword(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(1))
sq_BinaryWriteDword(CQ4NWqiAP7DKDxEaTrV - 1)
sq_BinaryWriteDword(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(3))
sq_BinaryWriteDword(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(4))
sq_SendCreatePassiveObjectPacketPos(CQ5RxjV4IU1ZmC4ij,24383, 0,CQQG8IYY5ecPIJpD,CQLEOV78ULXuovoOne , 0)
}
			break
case 1:	
			sq_SendDestroyPacketPassiveObject(CQ5RxjV4IU1ZmC4ij)
break
case 10:	
			sq_SendDestroyPacketPassiveObject(CQ5RxjV4IU1ZmC4ij)
break
}
		break
case 136:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
}
		break
case 137:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 138:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 152:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, CQ5RxjV4IU1ZmC4ij.getVar().get_vector(1))
sq_SendHitObjectPacket(CQ5RxjV4IU1ZmC4ij,CQBuywnyNARpcZqZVly6,0,0,CQBuywnyNARpcZqZVly6.getZPos() + CQBuywnyNARpcZqZVly6.getObjectHeight()/2)
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 157:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 159:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 161:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 1:	
			CQ5RxjV4IU1ZmC4ij.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 166:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			if(CQPJJZajVKypEbvQ.isMyControlObject())
				sq_SetMyShake(CQ5RxjV4IU1ZmC4ij,12,400)
sq_BinaryStartWrite()
sq_BinaryWriteDword(166)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(CQ5RxjV4IU1ZmC4ij.getVar().get_vector(2))
sq_SendCreatePassiveObjectPacketPos(CQ5RxjV4IU1ZmC4ij, 24383, 0, CQ5RxjV4IU1ZmC4ij.getXPos(), CQ5RxjV4IU1ZmC4ij.getYPos(), 0)
break
case 1:	
			sq_SendDestroyPacketPassiveObject(CQ5RxjV4IU1ZmC4ij)
break
case 5:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
case 6:	
			CQ5RxjV4IU1ZmC4ij.resetHitObjectList()
break
}
		break
}
	return false
}
