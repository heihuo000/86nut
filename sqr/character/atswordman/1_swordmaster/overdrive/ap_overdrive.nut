function sq_AddFunctionName(CQIXiPPSJjieW7WX)
{
	CQIXiPPSJjieW7WX.sq_AddFunctionName("onStart", "onStart_appendage_Overdrive")
	CQIXiPPSJjieW7WX.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_Overdrive")
	CQIXiPPSJjieW7WX.sq_AddFunctionName("onEnd", "onEnd_appendage_Overdrive")
}

function onStart_appendage_Overdrive(CQ7ARNwtRpdvpGrHAO)
{
	if(!CQ7ARNwtRpdvpGrHAO)
	{
		return
}
	local CQruSg4cO1OhtcrVG7fy = CQ7ARNwtRpdvpGrHAO.getParent()
local CQruSg4cO1OhtcrVG7fy = sq_GetCNRDObjectToSQRCharacter(CQruSg4cO1OhtcrVG7fy)
local CQckVIyOuuJCyyaM96p = sq_GetSkillLevel(CQruSg4cO1OhtcrVG7fy, 146)
local CQA6WCxeCNnFw6aC = CQruSg4cO1OhtcrVG7fy.sq_GetLevelData(146, 2, CQckVIyOuuJCyyaM96p)
local CQNCCf57TYBEnoE3TZ = CQruSg4cO1OhtcrVG7fy.sq_GetLevelData(146, 1, CQckVIyOuuJCyyaM96p)
local CQbDrUJLFtrexxpNr = CQ7ARNwtRpdvpGrHAO.sq_getChangeStatus("Overdrive")
if(!CQbDrUJLFtrexxpNr)
	{
		CQbDrUJLFtrexxpNr = CQ7ARNwtRpdvpGrHAO.sq_AddChangeStatus("Overdrive",CQruSg4cO1OhtcrVG7fy, CQruSg4cO1OhtcrVG7fy, 0, 15, false, CQA6WCxeCNnFw6aC)
CQbDrUJLFtrexxpNr = CQ7ARNwtRpdvpGrHAO.sq_AddChangeStatus("Overdrive",CQruSg4cO1OhtcrVG7fy, CQruSg4cO1OhtcrVG7fy, 0, 50, false, CQNCCf57TYBEnoE3TZ)
}
	if(CQbDrUJLFtrexxpNr)
	{
		CQNCCf57TYBEnoE3TZ = CQNCCf57TYBEnoE3TZ * 0.1
CQbDrUJLFtrexxpNr.clearParameter()
CQbDrUJLFtrexxpNr.addParameter(15, false, CQA6WCxeCNnFw6aC.tofloat())
CQbDrUJLFtrexxpNr.addParameter(50, false, CQNCCf57TYBEnoE3TZ.tofloat())
}
	CQ7ARNwtRpdvpGrHAO.sq_AddEffectFront("character/swordman/effect/animation/atoverdrive/overdrive_bufftop.ani")
CQ7ARNwtRpdvpGrHAO.sq_AddEffectBack("character/swordman/effect/animation/atoverdrive/overdrive_buffbot.ani")
}

function onVaildTimeEnd_appendage_Overdrive(CQDo7EUa9V6vUHp6uIt)
{
	if(!CQDo7EUa9V6vUHp6uIt) return
local CQRqIZfTwxEhcYo2a7Tm = CQDo7EUa9V6vUHp6uIt.getParent()
if(!CQRqIZfTwxEhcYo2a7Tm)
	{
		CQDo7EUa9V6vUHp6uIt.setValid(false)
return
}
	CQDo7EUa9V6vUHp6uIt.sq_DeleteEffectFront()
CQDo7EUa9V6vUHp6uIt.sq_DeleteEffectBack()
}

function onEnd_appendage_Overdrive(CQill8C31Ig5kLoBP)
{
	if(!CQill8C31Ig5kLoBP) return
local CQ18KvsHcZSVYui5NXP = CQill8C31Ig5kLoBP.getParent()
if(!CQ18KvsHcZSVYui5NXP)
	{
		CQill8C31Ig5kLoBP.setValid(false)
return
}

	local CQUBqommKlcFT7u1 = CQill8C31Ig5kLoBP.sq_GetSourceChrTarget()
CQill8C31Ig5kLoBP.sq_DeleteEffectFront()
CQill8C31Ig5kLoBP.sq_DeleteEffectBack()
}