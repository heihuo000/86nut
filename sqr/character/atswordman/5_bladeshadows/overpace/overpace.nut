
function checkExecutableSkill_OverPace(CQGVfTtleyX5HOeMq)
{
	if (!CQGVfTtleyX5HOeMq) return false;
	local CQhDSrx4JVwVAj = CQGVfTtleyX5HOeMq.sq_IsUseSkill(CHANGQING_BLADE_SKILL12);

	if (CQhDSrx4JVwVAj)
	{
		CQGVfTtleyX5HOeMq.sq_IntVectClear();
		CQGVfTtleyX5HOeMq.sq_IntVectPush(0);
		CQGVfTtleyX5HOeMq.sq_AddSetStatePacket(CHANGQING_BLADE_STATE12, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_OverPace(CQpFYA5av93FJVQ2)
{
	if (!CQpFYA5av93FJVQ2) return false;

	return true;

}

function onSetState_OverPace(CQ3pVMHqOriESQQ9aA, CQqQrhuhjXdrsNq, CQKzCQdHulPvDsmRN, CQT9rOXoCwlhIg)
{
	if(!CQ3pVMHqOriESQQ9aA) return;
	ChangqingQQ751675335Skill25(CQ3pVMHqOriESQQ9aA, CQqQrhuhjXdrsNq, CQKzCQdHulPvDsmRN, CQT9rOXoCwlhIg)

}

function onEndCurrentAni_OverPace(CQeN7VanqKJ6oPUj7Y)
{
	if(!CQeN7VanqKJ6oPUj7Y) return;
	local CQXGsRUMFknVOkn = CQeN7VanqKJ6oPUj7Y.getSkillSubState();
	switch(CQXGsRUMFknVOkn)
	{
	case 0:
		CQeN7VanqKJ6oPUj7Y.getVar("LicensePower").set_vector(0,0);
		CQeN7VanqKJ6oPUj7Y.sq_IntVectClear();
		CQeN7VanqKJ6oPUj7Y.sq_IntVectPush(1);
		CQeN7VanqKJ6oPUj7Y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE12, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQeN7VanqKJ6oPUj7Y.getVar("LicensePower").set_vector(1,0);
		CQeN7VanqKJ6oPUj7Y.sq_IntVectClear();
		CQeN7VanqKJ6oPUj7Y.sq_IntVectPush(2);
		CQeN7VanqKJ6oPUj7Y.sq_AddSetStatePacket(CHANGQING_BLADE_STATE12, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQeN7VanqKJ6oPUj7Y.sq_IntVectClear();
		CQeN7VanqKJ6oPUj7Y.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_OverPace(CQxETmfD9qNFpBnlm, CQPwKaCyaHWJtw, CQ9xqXrdMg6IE1yc, CQtd3dTVciEtuItTGv)
{
	local CQB1mb2PKFgUehW = SwordLicense_ATSwoedman(CQxETmfD9qNFpBnlm, CQPwKaCyaHWJtw, CQ9xqXrdMg6IE1yc, CQtd3dTVciEtuItTGv);

	return CQB1mb2PKFgUehW;
}

function onTimeEvent_OverPace(CQvJ2pDxgfDTiAWxV, CQDsoKW7Ptc8rq, CQRrg7lO5VZNmNev)
{
	if(!CQvJ2pDxgfDTiAWxV) return false;
	switch(CQDsoKW7Ptc8rq)
	{
	case 0:
		CQvJ2pDxgfDTiAWxV.resetHitObjectList();
		break;
	}
}

function onCreateObject_OverPace(CQiYFYKeU9qJYeezcy, CQ1RvuoTVr2Iqgw)
{
	if(CQ1RvuoTVr2Iqgw.isObjectType(OBJECTTYPE_PASSIVE))
		CQiYFYKeU9qJYeezcy.getVar("LicensePower").set_vector(2,0);
}

function onAttack_OverPace(CQU2BHvLlZutvPQcQ, CQH3t58apl9Ulk, CQjLBzZmdwITbVqb, CQEOttE3wKk8zQmeKy)
{
	if(!CQU2BHvLlZutvPQcQ || CQEOttE3wKk8zQmeKy)	return false;
	CQU2BHvLlZutvPQcQ.getVar("DeepduskLicense").setBool(0,true);
	local CQ4t8DhH1kHMhMo = CQU2BHvLlZutvPQcQ.getSkillSubState();
	local CQQbO2NiYpbJxritM = "character/atswordman/5_bladeshadows/overpace/ap_overpace.nut";

	switch(CQ4t8DhH1kHMhMo)
	{
	case 0:
		CQU2BHvLlZutvPQcQ.getVar("LicensePower").set_vector(0,0);
		break;
	case 1:
		CQU2BHvLlZutvPQcQ.getVar("LicensePower").set_vector(1,0);
		if(sq_IsHoldable(CQU2BHvLlZutvPQcQ,CQH3t58apl9Ulk) && sq_IsGrabable(CQU2BHvLlZutvPQcQ,CQH3t58apl9Ulk) && !sq_IsFixture(CQH3t58apl9Ulk) && CQH3t58apl9Ulk.getState() != STATE_HOLD )
		{
			local CQLhzTPgIHVLjh = CNSquirrelAppendage.sq_AppendAppendage(CQH3t58apl9Ulk, CQU2BHvLlZutvPQcQ, -1, false, CQQbO2NiYpbJxritM, true);
			if(CQLhzTPgIHVLjh)
			{
				sq_HoldAndDelayDie(CQH3t58apl9Ulk, CQU2BHvLlZutvPQcQ, true, true, true, 0, 0, ENUM_DIRECTION_NEUTRAL, CQLhzTPgIHVLjh);
				local CQ74ZewMhgeAdAuU = CQLhzTPgIHVLjh.getAppendageInfo();
				CQ74ZewMhgeAdAuU.setValidTime(500);
				if(!CQU2BHvLlZutvPQcQ.getVar("OverPaceHold").is_obj_vector(CQH3t58apl9Ulk))
					CQU2BHvLlZutvPQcQ.getVar("OverPaceHold").push_obj_vector(CQH3t58apl9Ulk);
			}
		}
		break;
	}
}

function onEnterFrame_OverPace(CQrZQAjSyi5ikTy, CQCALMMvXNpqfNyQq)
{
	if(!CQrZQAjSyi5ikTy) return;
	local CQxuQhydmfRx6wtuIy = CQrZQAjSyi5ikTy.getSkillSubState();
	switch(CQxuQhydmfRx6wtuIy)
	{
	case 0:
		if(CQCALMMvXNpqfNyQq == 2 && CQrZQAjSyi5ikTy.isMyControlObject())
		{
			sq_SetMyShake(CQrZQAjSyi5ikTy,10,100);
		}
		break;
	case 1:
		if(CQCALMMvXNpqfNyQq == 1 && CQrZQAjSyi5ikTy.isMyControlObject())
		{
			sq_SetMyShake(CQrZQAjSyi5ikTy,2,300);
		}
		break;
	}
}

function onEndState_OverPace(CQPU4QxSDtAfR1W, CQ9kEO6W8Vz27OWpH)
{
	if(!CQPU4QxSDtAfR1W) return;
	if(CQ9kEO6W8Vz27OWpH != CHANGQING_BLADE_STATE12 && CQ9kEO6W8Vz27OWpH != CHANGQING_BLADE_STATE6 && CQ9kEO6W8Vz27OWpH != CHANGQING_BLADE_STATE10 && CQ9kEO6W8Vz27OWpH != CHANGQING_BLADE_STATE18)
	{
		CQPU4QxSDtAfR1W.setShowEquipmentLayer(10,true);
		CQPU4QxSDtAfR1W.getVar("LicensePower").clear_vector();
	}
	local CQt6hVJxE9LZ2j = "character/atswordman/5_bladeshadows/overpace/ap_overpace.nut";
	local CQBCGRiCMrmAVSes = CQPU4QxSDtAfR1W.getSkillSubState();
	switch(CQBCGRiCMrmAVSes)
	{
	case 1:
		if(CQ9kEO6W8Vz27OWpH == CHANGQING_BLADE_STATE6 || CQ9kEO6W8Vz27OWpH == CHANGQING_BLADE_STATE10 || CQ9kEO6W8Vz27OWpH == CHANGQING_BLADE_STATE18)
		{
			local CQvSnUYIeZMi3Qeohy = CQPU4QxSDtAfR1W.sq_GetIntData(CHANGQING_BLADE_SKILL12, 11);
			local CQDiMaCwJltQBMw = CQPU4QxSDtAfR1W.getVar("OverPaceHold").get_obj_vector_size();
			for(local CQRmnXs6Rw8xLrEaY = 0; CQRmnXs6Rw8xLrEaY < CQDiMaCwJltQBMw; ++CQRmnXs6Rw8xLrEaY)
			{
				local CQiTN9mKOKsfNh = CQPU4QxSDtAfR1W.getVar("OverPaceHold").get_obj_vector(CQRmnXs6Rw8xLrEaY);
				if(CQiTN9mKOKsfNh)
				{
					CQiTN9mKOKsfNh = sq_GetCNRDObjectToActiveObject(CQiTN9mKOKsfNh);
					if(CNSquirrelAppendage.sq_IsAppendAppendage(CQiTN9mKOKsfNh, CQt6hVJxE9LZ2j))
					{
						local CQ1lybRE4jj3XPpI = CNSquirrelAppendage.sq_GetAppendage(CQiTN9mKOKsfNh, CQt6hVJxE9LZ2j);
						local CQU8dpVknpFZHkoGAS = CQ1lybRE4jj3XPpI.getAppendageInfo();
						CQU8dpVknpFZHkoGAS.setValidTime(CQvSnUYIeZMi3Qeohy);
					}
				}	
			}
		}
		break;
	}
}

function onChangeSkillEffect_OverPace(CQHBAKI3CHvACDo, CQjFc7lGTgCDJwis4, CQEEXc3UFuwES1)
{
	if(!CQHBAKI3CHvACDo || CQjFc7lGTgCDJwis4 != CHANGQING_BLADE_SKILL12) return;

}


function onProc_OverPace(CQ4weuFg9N3eKWuP)
{
	if(!CQ4weuFg9N3eKWuP) return;
	OnProc_License(CQ4weuFg9N3eKWuP);
}

function onKeyFrameFlag_OverPace(CQQxXHtFwfiYDjyJkS, CQLde4zu1tfhISy)
{
	if (!CQQxXHtFwfiYDjyJkS) return false;
	switch(CQLde4zu1tfhISy)
	{
	case 0:

		break;
	}
	return true;
}

function onProcCon_OverPace(CQ7M5z4vcCP5oTtZu)
{
	if(!CQ7M5z4vcCP5oTtZu) return;
	onProc_DeepduskLicense(CQ7M5z4vcCP5oTtZu);
	local CQrHatpBsxlCONWH = CQ7M5z4vcCP5oTtZu.getSkillSubState();
	switch(CQrHatpBsxlCONWH)
	{
	case 0:

		break;
	}
}