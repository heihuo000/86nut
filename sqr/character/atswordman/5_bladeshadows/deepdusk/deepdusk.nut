
function checkExecutableSkill_DeepDusk(CQfE6C2fvXWi8a)
{
	if (!CQfE6C2fvXWi8a) return false;
	local CQuwwfDBOl6q3RTD = CQfE6C2fvXWi8a.sq_IsUseSkill(CHANGQING_BLADE_SKILL7);
	
	if (CQuwwfDBOl6q3RTD)
	{
		CQfE6C2fvXWi8a.sq_IntVectClear();
		CQfE6C2fvXWi8a.sq_IntVectPush(0);
		CQfE6C2fvXWi8a.sq_AddSetStatePacket(CHANGQING_BLADE_STATE7, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}
	return false;
}

function checkCommandEnable_DeepDusk(CQMc5UvP4wEzBZkZnv)
{
	if (!CQMc5UvP4wEzBZkZnv) return false;
	
	return true;
	
}

function onSetState_DeepDusk(CQbfaE8cuLhf4nk, CQF1kZL8CkD2NCjV, CQgJJ8pOTpcLZpjLFy, CQosUvbeDHZAMdh)
{
	if(!CQbfaE8cuLhf4nk) return;
	ChangqingQQ751675335Skill11(CQbfaE8cuLhf4nk, CQF1kZL8CkD2NCjV, CQgJJ8pOTpcLZpjLFy, CQosUvbeDHZAMdh)

}

function onEndCurrentAni_DeepDusk(CQ2r1o9l8hQiXsgCC)
{
	if(!CQ2r1o9l8hQiXsgCC) return;
	local CQmYUJOLEi2pHb = CQ2r1o9l8hQiXsgCC.getSkillSubState();
	switch(CQmYUJOLEi2pHb)
	{
	case 0:
		CQ2r1o9l8hQiXsgCC.sq_IntVectClear();
		CQ2r1o9l8hQiXsgCC.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true);
		break;
	}
}

function startSkillCoolTime_DeepDusk(CQJR16QaMFueCXRN, CQk2ichqcf9YJmf6xu, CQa3fyN3KyIgSBY, CQ5LSGAHgVT5KEc9p)
{
	local CQwOY3eot9HCDf = SwordLicense_ATSwoedman(CQJR16QaMFueCXRN, CQk2ichqcf9YJmf6xu, CQa3fyN3KyIgSBY, CQ5LSGAHgVT5KEc9p);
	
	return CQwOY3eot9HCDf;
}

function onAttack_DeepDusk(CQZtVl5h5rbDIIxM, CQzbWWHMUXVEFnz7HS, CQOjCSuDSlreOCl, CQ85r1cblw5Ypqldd)
{
	if(!CQZtVl5h5rbDIIxM || CQ85r1cblw5Ypqldd)	return false;
	local CQYX7k6doKphtdT6 = CQZtVl5h5rbDIIxM.getSkillSubState();
	
	switch(CQYX7k6doKphtdT6)
	{
	case 0:

		break;
	case 1:

		break;
	}

}

function onEnterFrame_DeepDusk(CQSAIwJS9kR5Eskglv, CQfuTPUtwpSCuRk)
{
	if(!CQSAIwJS9kR5Eskglv) return;
	local CQuUKNfxHHxFeZjki = CQSAIwJS9kR5Eskglv.getSkillSubState();
	switch(CQuUKNfxHHxFeZjki)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onEndState_DeepDusk(CQMkqgVCYgLEiU, CQn63qIOIimerVnz)
{
	if(!CQMkqgVCYgLEiU) return;
	local CQGCqsqe3NMWmQbjMy = CQMkqgVCYgLEiU.getSkillSubState();
	switch(CQGCqsqe3NMWmQbjMy)
	{
	case 3:

		break;
	case 4:

		break;
	}
}

function onChangeSkillEffect_DeepDusk(CQhS2Cg6yfynWfb, CQpiofDLXt8kqIvl8, CQ3mgnWamVs7vh)
{
	if(!CQhS2Cg6yfynWfb || CQpiofDLXt8kqIvl8 != CHANGQING_BLADE_SKILL7) return;
	
}

function onProc_DeepduskLicense(CQqTFElkDxjNQCYc)
{
	if(CQqTFElkDxjNQCYc.getVar("DeepduskLicense").getBool(0))
		ForceUse_ATSwordman(CQqTFElkDxjNQCYc,CHANGQING_BLADE_SKILL7,[0],CHANGQING_BLADE_STATE7);
}

function onProc_DeepDusk(CQKlbZ337rGHbmcTry)
{
	if(!CQKlbZ337rGHbmcTry) return;
	local CQT9B8FHpZvszBx = CQKlbZ337rGHbmcTry.getSkillSubState();
	switch(CQT9B8FHpZvszBx)
	{
	case 0:

		break;
	}
}

function onKeyFrameFlag_DeepDusk(CQsNtvyUNlCtnaxxE, CQ6GBo9gxwwnxR)
{
	if (!CQsNtvyUNlCtnaxxE) return false;
	switch(CQ6GBo9gxwwnxR)
	{
	case 0:

		break;
	}
	return true;
}


function onProcCon_DeepDusk(CQeEtJZGJK3kjOlY)
{
	if(!CQeEtJZGJK3kjOlY) return;
	local CQXw96EuRjo8dUlQ2S = CQeEtJZGJK3kjOlY.getSkillSubState();
	switch(CQXw96EuRjo8dUlQ2S)
	{
	case 0:

		break;
	}
}