
function checkExecutableSkill_DangerouShook(CQdHP1iWYZG1DfmlwD)
{
	if (!CQdHP1iWYZG1DfmlwD) return false;
	local CQyaxjYxLTbKIIm = CQdHP1iWYZG1DfmlwD.sq_IsUseSkill(CHANGQING_BLADE_SKILL5);
	
	if (CQyaxjYxLTbKIIm)
	{
		CQdHP1iWYZG1DfmlwD.sq_IntVectClear();
		CQdHP1iWYZG1DfmlwD.sq_IntVectPush(0);
		CQdHP1iWYZG1DfmlwD.sq_AddSetStatePacket(CHANGQING_BLADE_STATE5, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DangerouShook(CQNeXw77hEVOFhUcp)
{
	if (!CQNeXw77hEVOFhUcp) return false;
	
	return true;
	
}

function onSetState_DangerouShook(CQbYwOKIy3euOA, CQDR5Bow6j4mEmnb, CQR2wgvTUoplABbe1, CQiK5mVKSMRdaw)
{
	if(!CQbYwOKIy3euOA) return;
	ChangqingQQ751675335Skill9(CQbYwOKIy3euOA, CQDR5Bow6j4mEmnb, CQR2wgvTUoplABbe1, CQiK5mVKSMRdaw)
	CQbYwOKIy3euOA.sq_SetStaticSpeedInfo(2, 2,1000, 1000, 1.0, 1.0)
}

function onEndCurrentAni_DangerouShook(CQHIEsIElbA1uRvt9S)
{
	if(!CQHIEsIElbA1uRvt9S) return;
	local CQjWjCqmpuzKeOY = CQHIEsIElbA1uRvt9S.getSkillSubState();
	switch(CQjWjCqmpuzKeOY)
	{
	case 0:
		CQHIEsIElbA1uRvt9S.getVar("LicensePower").set_vector(0,0);
		CQHIEsIElbA1uRvt9S.sq_IntVectClear();
		CQHIEsIElbA1uRvt9S.sq_IntVectPush(1);
		CQHIEsIElbA1uRvt9S.sq_AddSetStatePacket(CHANGQING_BLADE_STATE5, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQHIEsIElbA1uRvt9S.sq_IntVectClear();
		CQHIEsIElbA1uRvt9S.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function onAttack_DangerouShook(CQEtHdg2dBKOijYiQ, CQ4bUnNGeYmurV, CQQh1pPiJPMmmQeQ, CQL4uLzgvCtlWMeuJD)
{
	if(!CQEtHdg2dBKOijYiQ)	return false;
	local CQlZM84NOz7dqsw = CQEtHdg2dBKOijYiQ.getSkillSubState();
	CQEtHdg2dBKOijYiQ.getVar("DeepduskLicense").setBool(0,true);
	
	switch(CQlZM84NOz7dqsw)
	{
	case 0:
		CQEtHdg2dBKOijYiQ.getVar("LicensePower").set_vector(0,0);
		break;
	}
}

function onCreateObject_DangerouShook(CQUkLnCBToiLDxc, CQB22d4YquBc7d8fIQ)
{
	if(CQB22d4YquBc7d8fIQ.isObjectType(OBJECTTYPE_PASSIVE))
		CQUkLnCBToiLDxc.getVar("LicensePower").set_vector(1,0);
}

function onEnterFrame_DangerouShook(CQrnSJx9CTFXbmqs, CQCkc55AkEYSzBmovB)
{
	if(!CQrnSJx9CTFXbmqs) return;
	local CQc6CxEWD3Xonwm = CQrnSJx9CTFXbmqs.getSkillSubState();
	switch(CQc6CxEWD3Xonwm)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onEndState_DangerouShook(CQACryUz8jwwx1UEe, CQdS7FfXEo3cjO)
{
	if(!CQACryUz8jwwx1UEe) return;
	if(CQdS7FfXEo3cjO != CHANGQING_BLADE_STATE5 && CQdS7FfXEo3cjO != CHANGQING_BLADE_STATE6 && CQdS7FfXEo3cjO != CHANGQING_BLADE_STATE10 && CQdS7FfXEo3cjO != CHANGQING_BLADE_STATE18)
	{
		CQACryUz8jwwx1UEe.setShowEquipmentLayer(10,true);
		CQACryUz8jwwx1UEe.getVar("LicensePower").clear_vector();
	}
}

function onChangeSkillEffect_DangerouShook(CQyir3CIMMiRdjnI, CQNm6TsQcbd4kAyGZN, CQbTsrm5KuPXfqt)
{
	if(!CQyir3CIMMiRdjnI || CQNm6TsQcbd4kAyGZN != CHANGQING_BLADE_SKILL5) return;
	
}

function onProc_DangerouShook(CQF7TS1KgBlS6NtKg)
{
	if(!CQF7TS1KgBlS6NtKg) return;
	OnProc_License(CQF7TS1KgBlS6NtKg);
}

function onProcCon_DangerouShook(CQgVKMSEtcJpRe)
{
	if(!CQgVKMSEtcJpRe) return;
	onProc_DeepduskLicense(CQgVKMSEtcJpRe);
	local CQmDmjrj5Pnw7grP = CQgVKMSEtcJpRe.getSkillSubState();
	switch(CQmDmjrj5Pnw7grP)
	{
	case 0:

		break;
	}
}