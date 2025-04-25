
function checkExecutableSkill_AtExecution(CQ86cuAh5mu8gWjydMtX)
{
	if (!CQ86cuAh5mu8gWjydMtX) return false
local CQWCXGe1up9Nzjjeh = CQ86cuAh5mu8gWjydMtX.sq_IsUseSkill(34)
if (CQWCXGe1up9Nzjjeh)
	{
		CheckUseAddloadDrawsword(CQ86cuAh5mu8gWjydMtX,143,{[0] = true,[108] = true,[14] = true},0)
CQ86cuAh5mu8gWjydMtX.sq_IntVectClear()
CQ86cuAh5mu8gWjydMtX.sq_IntVectPush(0)
CQ86cuAh5mu8gWjydMtX.sq_AddSetStatePacket(134, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_AtExecution(CQVSe4koC2I2hShoQF1)
{
	if (!CQVSe4koC2I2hShoQF1) return false
if(CQVSe4koC2I2hShoQF1.getZPos() > 10)
		return false
return CheckForceDrawsword(CQVSe4koC2I2hShoQF1,143,{[0] = true,[108] = true,[14] = true})
}

function onSetState_AtExecution(CQYi6zHbTnTL9lgt, CQSmsWuMFDHPjNgaoD, CQfl5DcD9NbidevisfRO, CQu8a26yavVq52vOC)
{
	if(!CQYi6zHbTnTL9lgt) return
local CQGBkkJd1AezfPYE = CQYi6zHbTnTL9lgt.sq_GetVectorData(CQfl5DcD9NbidevisfRO, 0)
CQYi6zHbTnTL9lgt.setSkillSubState(CQGBkkJd1AezfPYE)
switch(CQGBkkJd1AezfPYE)
	{
	case 0:
		CQYi6zHbTnTL9lgt.sq_StopMove()
BodyMagicSword(CQYi6zHbTnTL9lgt, "Execution_body")
if(MagicSword_IsAppebd(CQYi6zHbTnTL9lgt))
			CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(213)
else
		{
			if(sq_GetSkillLevel(CQYi6zHbTnTL9lgt, 148) > 0)
			{
				BodyCalldaimus(CQYi6zHbTnTL9lgt, "Execution_body")
CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(387)
}
			else
				CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(23)
}
			
		CQYi6zHbTnTL9lgt.getVar("Execution").setBool(0,false)
break
case 1:
		BodyMagicSword(CQYi6zHbTnTL9lgt, "ExecutionLoop_body")
if(MagicSword_IsAppebd(CQYi6zHbTnTL9lgt))
			CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(212)
else
		{
			if(sq_GetSkillLevel(CQYi6zHbTnTL9lgt, 148) > 0)
			{
				BodyCalldaimus(CQYi6zHbTnTL9lgt, "ExecutionLoop_body")
CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(386)
}
			else
				CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(24)
}
			
		break
case 2:
		BodyMagicSword(CQYi6zHbTnTL9lgt, "ExecutionAttack_body")
if(MagicSword_IsAppebd(CQYi6zHbTnTL9lgt))
			CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(211)
else
		{
			if(sq_GetSkillLevel(CQYi6zHbTnTL9lgt, 148) > 0)
			{
				BodyCalldaimus(CQYi6zHbTnTL9lgt, "ExecutionAttack_body")
CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(385)
}
			else
				CQYi6zHbTnTL9lgt.sq_SetCurrentAnimation(25)
}
			
		CQYi6zHbTnTL9lgt.sq_SetCurrentAttackInfo(19)
local CQhFJeiVY85f6kcu4b = CQYi6zHbTnTL9lgt.sq_GetBonusRateWithPassive(34, -1, 0, getATSwordmanBonus(CQYi6zHbTnTL9lgt,1.0,34))
CQYi6zHbTnTL9lgt.sq_SetCurrentAttackBonusRate(CQhFJeiVY85f6kcu4b)
break
}
	//CQYi6zHbTnTL9lgt.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}
function onEndCurrentAni_AtExecution(CQppmCfPLxp21DcI8D7g)
{
	if(!CQppmCfPLxp21DcI8D7g) return
local CQ3Q1dVxhORL7wxpb = CQppmCfPLxp21DcI8D7g.getSkillSubState()
switch(CQ3Q1dVxhORL7wxpb)
	{
	case 0:
		CQppmCfPLxp21DcI8D7g.sq_IntVectClear()
CQppmCfPLxp21DcI8D7g.sq_IntVectPush(1)
CQppmCfPLxp21DcI8D7g.sq_AddSetStatePacket(134, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		if(CQppmCfPLxp21DcI8D7g.getVar("Execution").getBool(0))
		{
			CQppmCfPLxp21DcI8D7g.sq_IntVectClear()
CQppmCfPLxp21DcI8D7g.sq_IntVectPush(2)
CQppmCfPLxp21DcI8D7g.sq_AddSetStatePacket(134, STATE_PRIORITY_IGNORE_FORCE, true)
}
		else
		{
			CQppmCfPLxp21DcI8D7g.sq_IntVectClear()
CQppmCfPLxp21DcI8D7g.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}
		break
case 2:
		CQppmCfPLxp21DcI8D7g.sq_IntVectClear()
CQppmCfPLxp21DcI8D7g.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onEnterFrame_AtExecution(CQqzinI7y6AA21zAquy, CQK9RpqZ6lxiVWzs)
{
	if(!CQqzinI7y6AA21zAquy) return
local CQTNiLgwUaLq43lFuy = CQqzinI7y6AA21zAquy.getSkillSubState()
switch(CQTNiLgwUaLq43lFuy)
	{
	case 0:
		if(CQK9RpqZ6lxiVWzs == 4)
		{
			CQqzinI7y6AA21zAquy.sq_StartWrite()
CQqzinI7y6AA21zAquy.sq_WriteDword(34)
CQqzinI7y6AA21zAquy.sq_WriteDword(0)
CQqzinI7y6AA21zAquy.sq_WriteDword(CQqzinI7y6AA21zAquy.sq_GetBonusRateWithPassive(34, -1, 1, getATSwordmanBonus(CQqzinI7y6AA21zAquy,1.0,34)))
CQqzinI7y6AA21zAquy.sq_SendCreatePassiveObjectPacket(24383, 0, 100, 0, 0)
}
		break
case 2:
		if(CQK9RpqZ6lxiVWzs == 3)
			sq_SetMyShake(CQqzinI7y6AA21zAquy,1,100)
break
}
}

function onProcCon_AtExecution(CQsMR8BTS4mxNATOHNy1)
{
	if(!CQsMR8BTS4mxNATOHNy1) return
local CQ6HSYW4lmMfZTTHZ = CQsMR8BTS4mxNATOHNy1.getSkillSubState()
switch(CQ6HSYW4lmMfZTTHZ)
	{
	case 0:

		break
}
}
function onAttack_AtExecution(CQeaYilEppy2GFkSND2, CQXeVJ3md18LXeUL, CQxcW5FhensCH2UGlu, CQPf7xtHJDjDAtnCYNhp)
{
	if(!CQeaYilEppy2GFkSND2) return false
local CQ92ryxivNFpJkbKU = CQeaYilEppy2GFkSND2.getSkillSubState()
MagicswordupOccur(CQeaYilEppy2GFkSND2, CQXeVJ3md18LXeUL, CQxcW5FhensCH2UGlu, CQPf7xtHJDjDAtnCYNhp)
}
function onProc_AtExecution(CQWK7FZgOvveSSbNwDs)
{
	if(!CQWK7FZgOvveSSbNwDs) return
local CQVII3EM4ACYslvXARnR = CQWK7FZgOvveSSbNwDs.getSkillSubState()
}
