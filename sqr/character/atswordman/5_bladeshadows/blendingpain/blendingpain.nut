
function checkExecutableSkill_BlendingPain(CQoDOaUqiBwVOBUML)
{
	if (!CQoDOaUqiBwVOBUML) return false;
	local CQ2ozZf48c3FGw = CQoDOaUqiBwVOBUML.sq_IsUseSkill(CHANGQING_BLADE_SKILL2);
	
	if (CQ2ozZf48c3FGw)
	{
		CQoDOaUqiBwVOBUML.sq_IntVectClear();
		CQoDOaUqiBwVOBUML.sq_IntVectPush(1);
		CQoDOaUqiBwVOBUML.sq_AddSetStatePacket(CHANGQING_BLADE_STATE2, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_BlendingPain(CQmqZ9AHQOoaPRn2)
{
	if (!CQmqZ9AHQOoaPRn2) return false;
	
	return true;
	
}

function onSetState_BlendingPain(CQJlQveoG7frEOb9TN, CQkz4okhczPvyjv, CQa9QK11ssljaCv1n, CQ5N46SD25K6uq)
{
	if(!CQJlQveoG7frEOb9TN) return;
	ChangqingQQ751675335Skill3(CQJlQveoG7frEOb9TN, CQkz4okhczPvyjv, CQa9QK11ssljaCv1n, CQ5N46SD25K6uq)
}

function onEndCurrentAni_BlendingPain(CQzGpcrbtqUVeNc4Ou)
{
	if(!CQzGpcrbtqUVeNc4Ou) return;
	local CQOEhu6fZENGisc = CQzGpcrbtqUVeNc4Ou.getSkillSubState();
	switch(CQOEhu6fZENGisc)
	{
	case 0:
		CQzGpcrbtqUVeNc4Ou.sq_IntVectClear();
		CQzGpcrbtqUVeNc4Ou.sq_IntVectPush(1);
		CQzGpcrbtqUVeNc4Ou.sq_AddSetStatePacket(CHANGQING_BLADE_STATE2, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 1:
		CQzGpcrbtqUVeNc4Ou.getVar("LicensePower").set_vector(0,0);
		CQzGpcrbtqUVeNc4Ou.sq_IntVectClear();
		CQzGpcrbtqUVeNc4Ou.sq_IntVectPush(2);
		CQzGpcrbtqUVeNc4Ou.sq_AddSetStatePacket(CHANGQING_BLADE_STATE2, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	case 2:
		CQzGpcrbtqUVeNc4Ou.getVar("LicensePower").set_vector(1,0);
		CQzGpcrbtqUVeNc4Ou.sq_IntVectClear();
		CQzGpcrbtqUVeNc4Ou.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_BlendingPain(CQ8wGGKVh2Wargx7K, CQWxn4otAU6rmP, CQVdMlvc6oabWmwd, CQY1yW87oMhUqBQTjD)
{
	local CQSJNDLOBvDTvwQ = SwordLicense_ATSwoedman(CQ8wGGKVh2Wargx7K, CQWxn4otAU6rmP, CQVdMlvc6oabWmwd, CQY1yW87oMhUqBQTjD);
	
	return CQSJNDLOBvDTvwQ;
}

function onAttack_BlendingPain(CQdsy1qezSc9wfqx, CQyrdkg7HBXMnImkpM, CQNYAeBLfcQJxhm, CQbRxPOarO2IjAUzS)
{
	if(!CQdsy1qezSc9wfqx)	return false;
	local CQF2XNQT37uycq = CQdsy1qezSc9wfqx.getSkillSubState();
	CQdsy1qezSc9wfqx.getVar("DeepduskLicense").setBool(0,true);
	
	switch(CQF2XNQT37uycq)
	{
	case 1:
		CQdsy1qezSc9wfqx.getVar("LicensePower").set_vector(0,0);
		break;
	case 2:
		CQdsy1qezSc9wfqx.getVar("LicensePower").set_vector(1,0);
		break;
	}

}

function onEnterFrame_BlendingPain(CQgKehj3bzdUkNnc, CQoI6qGHXsOTfebT9f)
{
	if(!CQgKehj3bzdUkNnc) return;
	local CQ2WeIymj4T9Tgv = CQgKehj3bzdUkNnc.getSkillSubState();
	switch(CQ2WeIymj4T9Tgv)
	{
	case 1:
		if(CQoI6qGHXsOTfebT9f == 1 && CQgKehj3bzdUkNnc.isMyControlObject())
			sq_SetMyShake(CQgKehj3bzdUkNnc,2,100);
		break;
	case 2:
		if(CQoI6qGHXsOTfebT9f == 1 && CQgKehj3bzdUkNnc.isMyControlObject())
		{
			
		}
		break;
	}
}

function onEndState_BlendingPain(CQmt5CxguqHMROtxQ, CQJbaY5M7EbJ7j)
{
	if(!CQmt5CxguqHMROtxQ) return;
	if(CQJbaY5M7EbJ7j != CHANGQING_BLADE_STATE2 && CQJbaY5M7EbJ7j != CHANGQING_BLADE_SKILL6 && CQJbaY5M7EbJ7j != CHANGQING_BLADE_SKILL10 && CQJbaY5M7EbJ7j != CHANGQING_BLADE_SKILL18)
		CQmt5CxguqHMROtxQ.getVar("LicensePower").clear_vector();
	
}

function onCreateObject_BlendingPain(CQkhkiHiq2BOgVrv, CQa4JHuvFnry8QrwaR)
{
	if(CQa4JHuvFnry8QrwaR.isObjectType(OBJECTTYPE_PASSIVE))
		CQkhkiHiq2BOgVrv.getVar("LicensePower").set_vector(2,0);
}

function onProc_BlendingPain(CQZZU5ddxF5U3Me)
{
	if(!CQZZU5ddxF5U3Me) return;
	OnProc_License(CQZZU5ddxF5U3Me);
}

function onKeyFrameFlag_BlendingPain(CQzA1xXSaMpl9I, CQOuitat1vgx4hwQ)
{
	if (!CQzA1xXSaMpl9I) return false;
	switch(CQOuitat1vgx4hwQ)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_BlendingPain(CQ8U1Fm9WASfNAQu8N)
{
	if(!CQ8U1Fm9WASfNAQu8N) return;
	onProc_DeepduskLicense(CQ8U1Fm9WASfNAQu8N);
	local CQWki2RCL9x35qQ = CQ8U1Fm9WASfNAQu8N.getSkillSubState();
	switch(CQWki2RCL9x35qQ)
	{
	case 0:

		break;
	}
}