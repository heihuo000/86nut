
function checkExecutableSkill_ShatteredGlass(CQMYWbSxMJeySRQy)
{
	if (!CQMYWbSxMJeySRQy) return false;
	local CQnRVpr6ch4UKOQent = CQMYWbSxMJeySRQy.sq_IsUseSkill(CHANGQING_BLADE_SKILL15);
	
	if (CQnRVpr6ch4UKOQent)
	{
		CQMYWbSxMJeySRQy.sq_IntVectClear();
		CQMYWbSxMJeySRQy.sq_IntVectPush(0);
		CQMYWbSxMJeySRQy.sq_AddSetStatePacket(CHANGQING_BLADE_STATE15, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_ShatteredGlass(CQG2WLTLsUolDjq)
{
	if (!CQG2WLTLsUolDjq) return false;
	
	return true;
	
}

function onSetState_ShatteredGlass(CQ33872wRFf9IV, CQqLIYDkWRPMoQmw, CQKOliY3LyzKOMUiKd, CQTtLH7EnSKOpri)
{
	if(!CQ33872wRFf9IV) return;
	ChangqingQQ751675335Skill35(CQ33872wRFf9IV, CQqLIYDkWRPMoQmw, CQKOliY3LyzKOMUiKd, CQTtLH7EnSKOpri)

}

function onEndCurrentAni_ShatteredGlass(CQsbQ5KUA9UytguEf)
{
	if(!CQsbQ5KUA9UytguEf) return;
	local CQ6hLxpgTWNmEP = CQsbQ5KUA9UytguEf.getSkillSubState();
	switch(CQ6hLxpgTWNmEP)
	{
	case 0:
		CQsbQ5KUA9UytguEf.sq_IntVectClear();
		CQsbQ5KUA9UytguEf.sq_IntVectPush(1);
		CQsbQ5KUA9UytguEf.sq_AddSetStatePacket(CHANGQING_BLADE_STATE15, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQsbQ5KUA9UytguEf.sq_IntVectClear();
		CQsbQ5KUA9UytguEf.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_ShatteredGlass(CQe4qtbGoXtlykyI, CQXZ3F9iB77xwBtptY, CQxPp2ORwwaRuwW, CQPyhTQNHLh3e1WsI)
{
	local CQ9nGrhSf5DZUO = SwordLicense_ATSwoedman(CQe4qtbGoXtlykyI, CQXZ3F9iB77xwBtptY, CQxPp2ORwwaRuwW, CQPyhTQNHLh3e1WsI);
	
	return CQ9nGrhSf5DZUO;
}

function onAttack_ShatteredGlass(CQtkbANYIqYSrjeO, CQV6NMP92HXomSeH5Y, CQYCbjwCthQQYq, CQSSNQ4rZU2cTNQI)
{
	if(!CQtkbANYIqYSrjeO) return false;
	CQtkbANYIqYSrjeO.getVar("LicensePower").clear_vector();
	CQtkbANYIqYSrjeO.getVar("DeepduskLicense").setBool(0,true);
}

function onEnterFrame_ShatteredGlass(CQfiyOHzjFiRveQGQA, CQum9Vu6Sfd3lgp)
{
	if(!CQfiyOHzjFiRveQGQA) return;
	local CQMTPRcI7yOXgPoKi = CQfiyOHzjFiRveQGQA.getSkillSubState();
	switch(CQMTPRcI7yOXgPoKi)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onEndState_ShatteredGlass(CQnlxm6QqSTSzk, CQp8XaJkN9JohDiX)
{
	if(!CQnlxm6QqSTSzk) return;
	if(CQp8XaJkN9JohDiX != CHANGQING_BLADE_STATE15 && CQp8XaJkN9JohDiX != CHANGQING_BLADE_STATE6 && CQp8XaJkN9JohDiX != CHANGQING_BLADE_STATE10 && CQp8XaJkN9JohDiX != CHANGQING_BLADE_STATE18)
		CQnlxm6QqSTSzk.getVar("LicensePower").clear_vector();
}

function onChangeSkillEffect_ShatteredGlass(CQ3BwXiKxrnw9wi, CQqFZdfpaXBckMuB4, CQKpwbCjR7rvfr)
{
	if(!CQ3BwXiKxrnw9wi || CQqFZdfpaXBckMuB4 != CHANGQING_BLADE_SKILL15) return;
	
}

function onProc_ShatteredGlass(CQTQ5ps2rw5h6hy1)
{
	if(!CQTQ5ps2rw5h6hy1) return;
	OnProc_License(CQTQ5ps2rw5h6hy1);
}

function onKeyFrameFlag_ShatteredGlass(CQszaLqF3LE6RAtVmY, CQ6dj7gnbkgV7TW)
{
	if (!CQszaLqF3LE6RAtVmY) return false;
	switch(CQ6dj7gnbkgV7TW)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_ShatteredGlass(CQeMHYBRPqSF2NWMu)
{
	if(!CQeMHYBRPqSF2NWMu) return;
	onProc_DeepduskLicense(CQeMHYBRPqSF2NWMu);
	local CQXHUSWBkHxa8e = CQeMHYBRPqSF2NWMu.getSkillSubState();
	switch(CQXHUSWBkHxa8e)
	{
	case 0:

		break;
	}
}