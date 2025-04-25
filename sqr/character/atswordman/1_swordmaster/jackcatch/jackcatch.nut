
function checkExecutableSkill_Jackcatch(CQPfgi45cikpubcd6dRg)
{
	if (!CQPfgi45cikpubcd6dRg) return false
local CQB5CRMjve5qQZju = CQPfgi45cikpubcd6dRg.sq_IsUseSkill(139)
if (CQB5CRMjve5qQZju)
	{
		CheckUseAddloadDrawsword(CQPfgi45cikpubcd6dRg,139, {[0] = true,[108] = true,[14] = true},0)
CQPfgi45cikpubcd6dRg.getVar("JackcatchSub").setInt(0, 0)
CQPfgi45cikpubcd6dRg.sq_IntVectClear()
CQPfgi45cikpubcd6dRg.sq_IntVectPush(0)
CQPfgi45cikpubcd6dRg.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Jackcatch(CQj2wuxoptL3VH6g1ige)
{
	if (!CQj2wuxoptL3VH6g1ige) return false
if(CQj2wuxoptL3VH6g1ige.getZPos() > 10)
		return false
return CheckForceDrawsword(CQj2wuxoptL3VH6g1ige,139, {[0] = true,[108] = true,[14] = true})
}


function onSetState_Jackcatch(CQeCcwOowdElp3lKm1Gl, CQ4z5ffnB3EsPxmY27wp, CQQ9wnARwUhtHJol7, CQLd4EeNGoDnAYinfXV)
{
	if(!CQeCcwOowdElp3lKm1Gl) return
local CQlMEZkyd1cka4uc = CQeCcwOowdElp3lKm1Gl.sq_GetVectorData(CQQ9wnARwUhtHJol7, 0)
CQeCcwOowdElp3lKm1Gl.setSkillSubState(CQlMEZkyd1cka4uc)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchSub").setInt(0, CQlMEZkyd1cka4uc)
local CQIHj81YsbZ8SuuqwO = CQeCcwOowdElp3lKm1Gl.getVar("JackcatchTarget").get_obj_vector_size()
if(CQlMEZkyd1cka4uc != 0 && CQlMEZkyd1cka4uc != 5)
	{
		for(local CQ7aHvS92uQNs7ybt88j = 0; CQ7aHvS92uQNs7ybt88j < CQIHj81YsbZ8SuuqwO; CQ7aHvS92uQNs7ybt88j++)
		{
			local CQreUorPtB21iGteo = CQeCcwOowdElp3lKm1Gl.getVar("JackcatchTarget").get_obj_vector(CQ7aHvS92uQNs7ybt88j)
if(CQreUorPtB21iGteo)
				sq_SendHitObjectPacket(CQeCcwOowdElp3lKm1Gl,CQreUorPtB21iGteo,0,0, CQreUorPtB21iGteo.getObjectHeight()/2)
}
	}
	switch(CQlMEZkyd1cka4uc)
	{
	case 0:
		CQeCcwOowdElp3lKm1Gl.sq_StopMove()
BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatchCast")
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchTar").setBool(0,false)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(293)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(133)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(75)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 0,getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
if(CQeCcwOowdElp3lKm1Gl.isMyControlObject())
			sq_flashScreen(CQeCcwOowdElp3lKm1Gl, 150, 150, 300, 180, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
CQeCcwOowdElp3lKm1Gl.sq_StartWrite()
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(139)
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(0)
CQeCcwOowdElp3lKm1Gl.sq_SendCreatePassiveObjectPacket(24383, 0, 350, -30, 0)
CQeCcwOowdElp3lKm1Gl.sq_StartWrite()
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(139)
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(1)
CQeCcwOowdElp3lKm1Gl.sq_SendCreatePassiveObjectPacket(24383, 0, 350, -30, 0)
CQeCcwOowdElp3lKm1Gl.sq_StartWrite()
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(139)
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(2)
CQeCcwOowdElp3lKm1Gl.sq_SendCreatePassiveObjectPacket(24383, 0, 350, -30, 0)
CQeCcwOowdElp3lKm1Gl.sq_StartWrite()
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(139)
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(3)
CQeCcwOowdElp3lKm1Gl.sq_SendCreatePassiveObjectPacket(24383, 0, 300, -60, 0)
CQeCcwOowdElp3lKm1Gl.sq_StartWrite()
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(139)
CQeCcwOowdElp3lKm1Gl.sq_WriteDword(4)
CQeCcwOowdElp3lKm1Gl.sq_SendCreatePassiveObjectPacket(24383, 0, 350, -30, 0)
break
case 1:
		CQeCcwOowdElp3lKm1Gl.sq_ZStop()
BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatch_Light")
CQeCcwOowdElp3lKm1Gl.sq_SetShake(CQeCcwOowdElp3lKm1Gl,3,85)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(300)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(128)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(75)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 0, getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
local CQA1MxoXSCIuWyrw1X = "character/swordman/effect/animation/atjackcatch/moveattack_light_move_light1.ani"
DarktemplerCreateAniPooledObj(CQeCcwOowdElp3lKm1Gl, CQA1MxoXSCIuWyrw1X, true, true, CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getYPos(), CQeCcwOowdElp3lKm1Gl.getZPos(),1.0)
local CQdJuyvs7zTqp6ri5zS3 = sq_GetDistancePos(CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getDirection(), 584)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").clear_vector()
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQdJuyvs7zTqp6ri5zS3)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getYPos() - 40)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(150)
break
case 2:
		BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatch_Fire")
CQeCcwOowdElp3lKm1Gl.sq_SetShake(CQeCcwOowdElp3lKm1Gl,3,85)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(298)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(129)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(75)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 0, getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
local CQA1MxoXSCIuWyrw1X = "character/swordman/effect/animation/atjackcatch/moveattack_fire_move_fire1.ani"
DarktemplerCreateAniPooledObj(CQeCcwOowdElp3lKm1Gl, CQA1MxoXSCIuWyrw1X, true, true, CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getYPos(), CQeCcwOowdElp3lKm1Gl.getZPos(),1.0)
local CQdJuyvs7zTqp6ri5zS3 = sq_GetDistancePos(CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getDirection(), -451)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").clear_vector()
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQdJuyvs7zTqp6ri5zS3)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getYPos() + 30)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getZPos())
break
case 3:
		BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatch_Ice")
CQeCcwOowdElp3lKm1Gl.sq_SetShake(CQeCcwOowdElp3lKm1Gl,3,85)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(299)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(130)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(75)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 0, getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
local CQA1MxoXSCIuWyrw1X = "character/swordman/effect/animation/atjackcatch/moveattack_ice_move_ice1.ani"
DarktemplerCreateAniPooledObj(CQeCcwOowdElp3lKm1Gl, CQA1MxoXSCIuWyrw1X, true, true, CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getYPos(), CQeCcwOowdElp3lKm1Gl.getZPos(),1.0)
local CQdJuyvs7zTqp6ri5zS3 = sq_GetDistancePos(CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getDirection(), 274)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").clear_vector()
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQdJuyvs7zTqp6ri5zS3)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getYPos() + 40)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getZPos())
break
case 4:
		BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatch_Dark")
CQeCcwOowdElp3lKm1Gl.sq_SetShake(CQeCcwOowdElp3lKm1Gl,3,85)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(295)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(131)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(75)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 0, getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
local CQA1MxoXSCIuWyrw1X = "character/swordman/effect/animation/atjackcatch/moveattack_dark_move_dark1.ani"
DarktemplerCreateAniPooledObj(CQeCcwOowdElp3lKm1Gl, CQA1MxoXSCIuWyrw1X, true, true, CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getYPos(), CQeCcwOowdElp3lKm1Gl.getZPos(),1.0)
local CQdJuyvs7zTqp6ri5zS3 = sq_GetDistancePos(CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getDirection(), -120)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").clear_vector()
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQdJuyvs7zTqp6ri5zS3)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getYPos() - 120)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getZPos())
break
case 5:
		BodyMagicSword(CQeCcwOowdElp3lKm1Gl, "JackCatch_Finish")
if(CQeCcwOowdElp3lKm1Gl.isMyControlObject())
			sq_flashScreen(CQeCcwOowdElp3lKm1Gl, 15, 25, 15, 180, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER)
if(MagicSword_IsAppebd(CQeCcwOowdElp3lKm1Gl))
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(297)
else
			CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAnimation(132)
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackInfo(76)
local CQCcMJ7rZYuLIctmL7u = CQeCcwOowdElp3lKm1Gl.sq_GetBonusRateWithPassive(139, -1, 1, getATSwordmanBonus(CQeCcwOowdElp3lKm1Gl,1.0,139))
CQeCcwOowdElp3lKm1Gl.sq_SetCurrentAttackBonusRate(CQCcMJ7rZYuLIctmL7u)
local CQdJuyvs7zTqp6ri5zS3 = sq_GetDistancePos(CQeCcwOowdElp3lKm1Gl.getXPos(), CQeCcwOowdElp3lKm1Gl.getDirection(), 50)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").clear_vector()
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQdJuyvs7zTqp6ri5zS3)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getYPos() +63)
CQeCcwOowdElp3lKm1Gl.getVar("JackcatchPos").push_vector(CQeCcwOowdElp3lKm1Gl.getZPos())
break
}
	CQeCcwOowdElp3lKm1Gl.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
}

function onEndCurrentAni_Jackcatch(CQZ5mq5YVYMXg5yI)
{
	if(!CQZ5mq5YVYMXg5yI) return
local CQzX2sHVQPyDzitGeO = CQZ5mq5YVYMXg5yI.getSkillSubState()
switch(CQzX2sHVQPyDzitGeO)
	{
	case 0:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_IntVectPush(1)
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_IntVectPush(2)
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_IntVectPush(3)
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_IntVectPush(4)
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_IntVectPush(5)
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(139, STATE_PRIORITY_IGNORE_FORCE, true)
sq_SimpleMoveToNearMovablePos(CQZ5mq5YVYMXg5yI,1100)
break
case 5:
		CQZ5mq5YVYMXg5yI.sq_IntVectClear()
CQZ5mq5YVYMXg5yI.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
sq_SimpleMoveToNearMovablePos(CQZ5mq5YVYMXg5yI,1100)
break
}
}

function onAttack_Jackcatch(CQOAoCuPGC8ph8tAA7NB, CQ8u2fdcxzsw9HWKG, CQWminC7aIjY4YIFZXk, CQEFeIF6jMP5yNyLBH)
{
	if(!CQOAoCuPGC8ph8tAA7NB)	return false
local CQRypqXwjBXWZGcT = CQOAoCuPGC8ph8tAA7NB.getSkillSubState()
MagicswordupOccur(CQOAoCuPGC8ph8tAA7NB, CQ8u2fdcxzsw9HWKG, CQWminC7aIjY4YIFZXk, CQEFeIF6jMP5yNyLBH)
if(CQRypqXwjBXWZGcT == 4)
	{
		local CQAVv8RTLECCM6aDTzm = 200
local CQdDBvV4h3wD6oaL = "character/atswordman/1_swordmaster/jackcatch/ap_jackcatch.nut"
local CQyoWiraAU3p1xEGn7 = CNSquirrelAppendage.sq_AppendAppendage(CQ8u2fdcxzsw9HWKG, CQOAoCuPGC8ph8tAA7NB, -1, false, CQdDBvV4h3wD6oaL, true)
if(sq_IsHoldable(CQOAoCuPGC8ph8tAA7NB,CQ8u2fdcxzsw9HWKG) && !sq_IsFixture(CQ8u2fdcxzsw9HWKG))
			if(CQyoWiraAU3p1xEGn7)
			{
				sq_HoldAndDelayDie(CQ8u2fdcxzsw9HWKG, CQOAoCuPGC8ph8tAA7NB, true, true, true, 100, 100, ENUM_DIRECTION_NEUTRAL, CQyoWiraAU3p1xEGn7)
local CQNqVJTq6ooeCJpCaep9 = CQyoWiraAU3p1xEGn7.getAppendageInfo()
CQNqVJTq6ooeCJpCaep9.setValidTime(CQAVv8RTLECCM6aDTzm)
}
	}

}

function onEnterFrame_Jackcatch(CQblW62hmMfY2vpKP, CQF88xDHBbPgVZoNFx6)
{
	if(!CQblW62hmMfY2vpKP) return
local CQgBIyWozSl5KiiX = CQblW62hmMfY2vpKP.getSkillSubState()
switch(CQgBIyWozSl5KiiX)
	{
	case 5:

		if(CQF88xDHBbPgVZoNFx6 != 2)
			break
local CQmFlGzbGBKCB7i278 = CQblW62hmMfY2vpKP.sq_GetBonusRateWithPassive(139, -1, 1, getATSwordmanBonus(CQblW62hmMfY2vpKP,1.0,139))
CQblW62hmMfY2vpKP.sq_StartWrite()
CQblW62hmMfY2vpKP.sq_WriteDword(139)
CQblW62hmMfY2vpKP.sq_WriteDword(5)
CQblW62hmMfY2vpKP.sq_WriteDword(CQmFlGzbGBKCB7i278)
sq_SendCreatePassiveObjectPacketPos(CQblW62hmMfY2vpKP, 24383, 0, CQblW62hmMfY2vpKP.getXPos(), CQblW62hmMfY2vpKP.getYPos(), 0)
break
}
}

function onProc_Jackcatch(CQ5cqS9dvz6WGbP8yX)
{
	if(!CQ5cqS9dvz6WGbP8yX) return
local CQwf31ZVOsanP6P4pzRm = CQ5cqS9dvz6WGbP8yX.getSkillSubState()
local CQZ1pjEtj5hkEoOMI = sq_GetCurrentAnimation(CQ5cqS9dvz6WGbP8yX)
local CQzJhwhxuqD7A9I7S7E = sq_GetDelaySum(CQZ1pjEtj5hkEoOMI)/10
local CQOsGPN77EcNaJI3 = CQ5cqS9dvz6WGbP8yX.sq_GetStateTimer()
local CQ8rbBPOq3XHiYsd6X = CQ5cqS9dvz6WGbP8yX.getVar("JackcatchPos").get_vector(0)
local CQWYNgewFUQsILa6dxJj = CQ5cqS9dvz6WGbP8yX.getVar("JackcatchPos").get_vector(1)
local CQVRymkTxo2Wouagh = CQ5cqS9dvz6WGbP8yX.getVar("JackcatchPos").get_vector(2)
if(CQwf31ZVOsanP6P4pzRm != 0 && CQwf31ZVOsanP6P4pzRm != 5)
	{
		local CQY2Ns1LEMunW7E8Q8l = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getXPos(), CQ8rbBPOq3XHiYsd6X, CQOsGPN77EcNaJI3, 20, false)
local CQSKyCuEMbdkpppj = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getYPos(), CQWYNgewFUQsILa6dxJj, CQOsGPN77EcNaJI3, 20, false)
local CQfI9dcmrSO7tdpfo7 = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getZPos(), CQVRymkTxo2Wouagh, CQOsGPN77EcNaJI3, 20, false)
if(CQ5cqS9dvz6WGbP8yX.isMovablePos(CQY2Ns1LEMunW7E8Q8l, CQSKyCuEMbdkpppj))
{
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 0, CQY2Ns1LEMunW7E8Q8l)
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 1, CQSKyCuEMbdkpppj)
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 2, CQfI9dcmrSO7tdpfo7)
}

}
	else if(CQwf31ZVOsanP6P4pzRm == 5)
	{
		if(CQOsGPN77EcNaJI3 < 50)
		{
			local CQY2Ns1LEMunW7E8Q8l = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getXPos(), CQ8rbBPOq3XHiYsd6X, CQOsGPN77EcNaJI3, 12, false)
local CQSKyCuEMbdkpppj = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getYPos(), CQWYNgewFUQsILa6dxJj, CQOsGPN77EcNaJI3, 12, false)
if(CQ5cqS9dvz6WGbP8yX.isMovablePos(CQY2Ns1LEMunW7E8Q8l, CQSKyCuEMbdkpppj))
{
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 0, CQY2Ns1LEMunW7E8Q8l)
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 1, CQSKyCuEMbdkpppj)
}
}
		else
		{
			local CQfI9dcmrSO7tdpfo7 = sq_GetAccel(CQ5cqS9dvz6WGbP8yX.getZPos(), 0, CQOsGPN77EcNaJI3, 100, false)
sq_setCurrentAxisPos(CQ5cqS9dvz6WGbP8yX, 2, CQfI9dcmrSO7tdpfo7)
}

	}
	
}

function onEndState_Jackcatch(CQJGL3LMdcUDLpuBf, CQkEQlpDePNHFcu5k71)
{
	if(!CQJGL3LMdcUDLpuBf) return
local CQaw4rbt27WsZKA1 = CQJGL3LMdcUDLpuBf.getSkillSubState()
if(CQkEQlpDePNHFcu5k71 == 139 && CQaw4rbt27WsZKA1 == 5)
		CQJGL3LMdcUDLpuBf.getVar("JackcatchTar").setBool(0,true)
else if(CQkEQlpDePNHFcu5k71 != 139)
{
		CQJGL3LMdcUDLpuBf.getVar("JackcatchTar").setBool(0,true)
	CQJGL3LMdcUDLpuBf.sq_setfindNearMovablePos(CQJGL3LMdcUDLpuBf.getXPos(),CQJGL3LMdcUDLpuBf.getYPos(),1800,1000,50)
}
}

function onKeyFrameFlag_Jackcatch(CQG3w8Yg57BPniST, CQh55vCMizrue8Ag87)
{
	if (!CQG3w8Yg57BPniST) return false
switch(CQh55vCMizrue8Ag87)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Jackcatch(CQqXwiIuVs5mUEAxb)
{
	if(!CQqXwiIuVs5mUEAxb) return
local CQKA5Jqvl5pzcYPkqXK = CQqXwiIuVs5mUEAxb.getSkillSubState()
switch(CQKA5Jqvl5pzcYPkqXK)
	{
	case 0:

		break
}
}
