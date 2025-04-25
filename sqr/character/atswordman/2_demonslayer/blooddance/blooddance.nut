
function checkExecutableSkill_Blooddance(CQ8h48EUBvHxm1fNb6)
{
	if (!CQ8h48EUBvHxm1fNb6) return false
local CQY4qYn2zAbfWOf6p = CQ8h48EUBvHxm1fNb6.sq_IsUseSkill(155)
if (CQY4qYn2zAbfWOf6p)
	{
		CQ8h48EUBvHxm1fNb6.sq_IntVectClear()
CQ8h48EUBvHxm1fNb6.sq_IntVectPush(0)
CQ8h48EUBvHxm1fNb6.sq_AddSetStatePacket(155, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Blooddance(CQSZ3iNGHBV2qjd2IZc)
{
	if (!CQSZ3iNGHBV2qjd2IZc) return false
if(sq_GetSkillLevel(CQSZ3iNGHBV2qjd2IZc, 163) < 1)
	{
		local CQfPpJAufceZvS98 = CQSZ3iNGHBV2qjd2IZc.sq_GetState()
if(CQfPpJAufceZvS98 == 0 || CQfPpJAufceZvS98 == 108 || CQfPpJAufceZvS98 == 14)
			return true
else
			return false
}
	return true
}


function onSetState_Blooddance(CQuyh5eRrO5AQlx4HL, CQMnGxkN36pibMzf6lrv, CQnkbt1ybzRQzrl7d, CQF6NFSYPsAxU2l3h6N)
{
	if(!CQuyh5eRrO5AQlx4HL) return
local CQgCb3c9j4efcPTdlwIA = CQuyh5eRrO5AQlx4HL.sq_GetVectorData(CQnkbt1ybzRQzrl7d, 0)
CQuyh5eRrO5AQlx4HL.setSkillSubState(CQgCb3c9j4efcPTdlwIA)
switch(CQgCb3c9j4efcPTdlwIA)
	{
	case 0:
		CQuyh5eRrO5AQlx4HL.sq_StopMove()
CQuyh5eRrO5AQlx4HL.sq_PlaySound("SW_BLOODDANCE_01")
CQuyh5eRrO5AQlx4HL.getVar("BlooddanceSpeed").setFloat(0,1.0)
CQuyh5eRrO5AQlx4HL.getVar("Blooddance").setInt(0, 0)
BodyCalldaimus(CQuyh5eRrO5AQlx4HL, "blooddancestart")
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAnimation(364)
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackInfo(94)
local CQoSNT6Pum43kkk6W = CQuyh5eRrO5AQlx4HL.sq_GetBonusRateWithPassive(155, -1, 0,getATSwordmanBonus(CQuyh5eRrO5AQlx4HL,1.0,155))
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackBonusRate(CQoSNT6Pum43kkk6W)
break
case 1:
		
		CQuyh5eRrO5AQlx4HL.playSound("BLOODDANCE_LOOP", 2022, 0,0,0)
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAnimation(363)
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackInfo(95)
local CQoSNT6Pum43kkk6W = CQuyh5eRrO5AQlx4HL.sq_GetBonusRateWithPassive(155, -1, 0, getATSwordmanBonus(CQuyh5eRrO5AQlx4HL,1.0,155))
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackBonusRate(CQoSNT6Pum43kkk6W)
break
case 2:
		CQuyh5eRrO5AQlx4HL.stopSound(2022)
BodyCalldaimus(CQuyh5eRrO5AQlx4HL, "blooddancefinish")
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAnimation(362)
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackInfo(96)
local CQoSNT6Pum43kkk6W = CQuyh5eRrO5AQlx4HL.sq_GetBonusRateWithPassive(155, -1, 5, getATSwordmanBonus(CQuyh5eRrO5AQlx4HL,1.0,155))
CQuyh5eRrO5AQlx4HL.sq_SetCurrentAttackBonusRate(CQoSNT6Pum43kkk6W)
break
}
	CQuyh5eRrO5AQlx4HL.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Blooddance(CQJTPMYZFnPiR1jkA6)
{
	if(!CQJTPMYZFnPiR1jkA6) return
local CQk7xj8sxFzQ7WhRMeYt = CQJTPMYZFnPiR1jkA6.getSkillSubState()
switch(CQk7xj8sxFzQ7WhRMeYt)
	{
	case 0:
		CQJTPMYZFnPiR1jkA6.sq_IntVectClear()
CQJTPMYZFnPiR1jkA6.sq_IntVectPush(1)
CQJTPMYZFnPiR1jkA6.sq_AddSetStatePacket(155, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		
		break
case 2:
		CQJTPMYZFnPiR1jkA6.sq_IntVectClear()
CQJTPMYZFnPiR1jkA6.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Blooddance(CQaVXQIQaMKxgjgz4, CQ5DwOq51vUf8Sgj8wG, CQwoZBgJWANh3TRY, CQZqwRBpL9t59NYlml)
{
	if(!CQaVXQIQaMKxgjgz4)	return false
local CQzQ5oOjhc7C4eYnrsMf = CQaVXQIQaMKxgjgz4.getSkillSubState()
Calldaimus_onAttack(CQaVXQIQaMKxgjgz4,CQ5DwOq51vUf8Sgj8wG, CQwoZBgJWANh3TRY, CQZqwRBpL9t59NYlml)
switch(CQzQ5oOjhc7C4eYnrsMf)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Blooddance(CQOzaKQ1AOaFN2ccu, CQVdj63F56hE5txTEwq)
{
	if(!CQOzaKQ1AOaFN2ccu) return
local CQYMHcFnizDeMkxbZZ = CQOzaKQ1AOaFN2ccu.getSkillSubState()
switch(CQYMHcFnizDeMkxbZZ)
	{
	case 1:
		if(CQVdj63F56hE5txTEwq%4 == 0)
		{
			CQOzaKQ1AOaFN2ccu.resetHitObjectList()
CQOzaKQ1AOaFN2ccu.getVar("Blooddance").setInt(0, CQOzaKQ1AOaFN2ccu.getVar("Blooddance").getInt(0) + 1)
}
		break
case 4:

		break
}
}

function onEndState_Blooddance(CQSHUuyfVsYvXDzzBlXJ, CQfa1GxDl4Xh1zlU2)
{
	if(!CQSHUuyfVsYvXDzzBlXJ) return
if(CQfa1GxDl4Xh1zlU2 != 155)
		CQSHUuyfVsYvXDzzBlXJ.stopSound(2022)
}

function onProc_Blooddance(CQueU45yGmQ5C1lY7Tv)
{
	if(!CQueU45yGmQ5C1lY7Tv) return
local CQMcMlHcdE2VJrTQ = CQueU45yGmQ5C1lY7Tv.getSkillSubState()
switch(CQMcMlHcdE2VJrTQ)
	{
	case 1:
		local CQnfuWnVe2iFV3knU5 = sq_GetIntData(CQueU45yGmQ5C1lY7Tv,155, 1)
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
		{
			if(IsInterval(CQueU45yGmQ5C1lY7Tv, 50))
			{
				local CQG1fDdP2ndEKAkrwwtQ = CQueU45yGmQ5C1lY7Tv.getVar("BlooddanceSpeed").getFloat(0)
CQueU45yGmQ5C1lY7Tv.getVar("BlooddanceSpeed").setFloat(0,CQG1fDdP2ndEKAkrwwtQ + 0.15)
CQnfuWnVe2iFV3knU5 = sq_GetIntData(CQueU45yGmQ5C1lY7Tv,155, 2)
}
		}
		else if(sq_IsKeyDown(OPTION_HOTKEY_JUMP, ENUM_SUBKEY_TYPE_ALL))
		{
			CQueU45yGmQ5C1lY7Tv.sq_IntVectClear()
CQueU45yGmQ5C1lY7Tv.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		local CQhJS1XrvDOrDTjqt = CQueU45yGmQ5C1lY7Tv.getVar("BlooddanceSpeed").getFloat(0)
CQueU45yGmQ5C1lY7Tv.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, CQhJS1XrvDOrDTjqt)
local CQpscka7OMTvIFnyFlH = CQueU45yGmQ5C1lY7Tv.getVar("Blooddance").getInt(0)
if(CQpscka7OMTvIFnyFlH == CQnfuWnVe2iFV3knU5)
		{
			CQueU45yGmQ5C1lY7Tv.sq_IntVectClear()
CQueU45yGmQ5C1lY7Tv.sq_IntVectPush(2)
CQueU45yGmQ5C1lY7Tv.sq_AddSetStatePacket(155, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
}
}

function onKeyFrameFlag_Blooddance(CQ3rCeUZjvJhFene, CQqYrPfsuAnTO2boV6)
{
	if (!CQ3rCeUZjvJhFene) return false
return true
}


function onProcCon_Blooddance(CQKRCNST68B8ptbt1w2T)
{
	if(!CQKRCNST68B8ptbt1w2T) return
local CQT2rhr4mcrNAjvak = CQKRCNST68B8ptbt1w2T.getSkillSubState()
switch(CQT2rhr4mcrNAjvak)
	{
	case 0:

		break
}
}