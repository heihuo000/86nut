
function checkExecutableSkill_Fatalflower(CQFLCI9unhDZPo7WvNVB)
{
	if (!CQFLCI9unhDZPo7WvNVB) return false
local CQcQkq6dUR9YLpLC5W = CQFLCI9unhDZPo7WvNVB.sq_IsUseSkill(221)
if (CQcQkq6dUR9YLpLC5W)
	{
		CQFLCI9unhDZPo7WvNVB.sq_IntVectClear()
CQFLCI9unhDZPo7WvNVB.sq_IntVectPush(0)
CQFLCI9unhDZPo7WvNVB.sq_AddSetStatePacket(221, STATE_PRIORITY_IGNORE_FORCE, true)
return true
}
	return false
}

function checkCommandEnable_Fatalflower(CQZJG9WV4LNAdPho)
{
	if (!CQZJG9WV4LNAdPho) return false
return true
}


function onSetState_Fatalflower(CQzsbv7tnkWi5kgtAK, CQOrNoKcAE6QfBRwGm61, CQ8WyKpCT2ax6wRu4, CQWvd6bOohhf11fr8jt)
{
	if(!CQzsbv7tnkWi5kgtAK) return
local CQVgAc9eViD37Odp = CQzsbv7tnkWi5kgtAK.sq_GetVectorData(CQ8WyKpCT2ax6wRu4, 0)
CQzsbv7tnkWi5kgtAK.setSkillSubState(CQVgAc9eViD37Odp)
switch(CQVgAc9eViD37Odp)
	{
	case 0:
		CQzsbv7tnkWi5kgtAK.sq_StopMove()
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(586)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0,getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
break
case 1:
		CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(587)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0, getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
break
case 2:
		CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(588)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0, getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
break
case 3:
		CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(589)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0, getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
break
case 4:
		CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(590)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0, getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
break
case 5:
		CQzsbv7tnkWi5kgtAK.sq_SetCurrentAnimation(591)
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackInfo(172)
local CQY3xyZ6QMcZ2hdyT3 = CQzsbv7tnkWi5kgtAK.sq_GetBonusRateWithPassive(221, -1, 0, getATSwordmanBonus(CQzsbv7tnkWi5kgtAK,1.0,221))
CQzsbv7tnkWi5kgtAK.sq_SetCurrentAttackBonusRate(CQY3xyZ6QMcZ2hdyT3)
CQzsbv7tnkWi5kgtAK.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0)
break
}

}


function getScrollBasisPos_Fatalflower(CQG5a1jmZXOhZPTO3pgm)
{
	if (!CQG5a1jmZXOhZPTO3pgm) return false
local CQhXkkHgjlT5GkkH7 = CQG5a1jmZXOhZPTO3pgm.getSkillSubState()
local CQpAJwuMSsHVPDkSfma = sq_GetDistancePos(CQG5a1jmZXOhZPTO3pgm.getXPos(), CQG5a1jmZXOhZPTO3pgm.getDirection(), 400)
if (CQG5a1jmZXOhZPTO3pgm.isMyControlObject())
	{
		CQG5a1jmZXOhZPTO3pgm.sq_SetCameraScrollPosition(CQpAJwuMSsHVPDkSfma, CQG5a1jmZXOhZPTO3pgm.getYPos(), 0)
return true
}
	return false
}

function onEndCurrentAni_Fatalflower(CQ3ujPci7LbFHQjL)
{
	if(!CQ3ujPci7LbFHQjL) return
local CQTUHN6vmkVEAMhGwj = CQ3ujPci7LbFHQjL.getSkillSubState()
switch(CQTUHN6vmkVEAMhGwj)
	{
	case 0:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 1:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_IntVectPush(2)
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(221, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 2:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_IntVectPush(3)
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(221, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 3:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_IntVectPush(4)
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(221, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 4:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_IntVectPush(5)
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(221, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 5:
		CQ3ujPci7LbFHQjL.sq_IntVectClear()
CQ3ujPci7LbFHQjL.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
}

function onAttack_Fatalflower(CQskUgJNBprrarhAy, CQ661qiSz25vShgKp3u, CQeCiIfWEhphsARF, CQXSfCC9fiR6iTRXVJ)
{
	if(!CQskUgJNBprrarhAy || CQXSfCC9fiR6iTRXVJ)	return false
local CQxDSfsCrMSVINfH1kSP = CQskUgJNBprrarhAy.getSkillSubState()
switch(CQxDSfsCrMSVINfH1kSP)
	{
	case 0:

		break
case 1:

		break
}

}

function onEnterFrame_Fatalflower(CQPoYUmO3vxFoedV5, CQ9qSEgzbyLJt2cLcjh)
{
	if(!CQPoYUmO3vxFoedV5 || !CQPoYUmO3vxFoedV5.isMyControlObject()) return
local CQtlYZB6PVmIEOxM = CQPoYUmO3vxFoedV5.getSkillSubState()
switch(CQtlYZB6PVmIEOxM)
	{
	case 0:
		switch(CQ9qSEgzbyLJt2cLcjh)
		{
		case 0:
			sq_flashScreen(CQPoYUmO3vxFoedV5,500,2500,500,200,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 4:
			sq_SetMyShake(CQPoYUmO3vxFoedV5,3,120)
local CQB9C8WLkc1tyjzCQ3 = sq_GetLevelData(CQPoYUmO3vxFoedV5,221, 3, sq_GetSkillLevel(CQPoYUmO3vxFoedV5, 221))
if(sq_GetSkillLevel(CQPoYUmO3vxFoedV5, 221) > 5)
				CQB9C8WLkc1tyjzCQ3 = CQB9C8WLkc1tyjzCQ3 + 3
local CQvNrvlQiOynwSz3WmUW = 0.0
if(sq_GetSkillLevel(CQPoYUmO3vxFoedV5, 221) > 8)
				CQvNrvlQiOynwSz3WmUW = 0.1
CQPoYUmO3vxFoedV5.sq_StartWrite()
CQPoYUmO3vxFoedV5.sq_WriteDword(221)
CQPoYUmO3vxFoedV5.sq_WriteDword(0)
CQPoYUmO3vxFoedV5.sq_WriteDword(CQPoYUmO3vxFoedV5.sq_GetBonusRateWithPassive(221, -1, 1, getATSwordmanBonus(CQPoYUmO3vxFoedV5,1.0 + CQvNrvlQiOynwSz3WmUW,221)))
CQPoYUmO3vxFoedV5.sq_WriteDword(CQPoYUmO3vxFoedV5.sq_GetBonusRateWithPassive(221, -1, 4, getATSwordmanBonus(CQPoYUmO3vxFoedV5,1.0 + CQvNrvlQiOynwSz3WmUW,221)))
CQPoYUmO3vxFoedV5.sq_WriteDword(CQB9C8WLkc1tyjzCQ3)
CQPoYUmO3vxFoedV5.sq_SendCreatePassiveObjectPacket(24381, 0, 0, -1, 0)
break
case 21:
			sq_SetMyShake(CQPoYUmO3vxFoedV5,5,300)
break
case 43:
			sq_SetMyShake(CQPoYUmO3vxFoedV5,4,180)
break
case 46:
			sq_SetMyShake(CQPoYUmO3vxFoedV5,5,300)
break
}
		break
}
}

function onEndState_Fatalflower(CQDG7o3kVX8TnllND, CQREIJF3qls8eMT6JjK)
{
	if(!CQDG7o3kVX8TnllND) return
if(sq_GetSkillLevel(CQDG7o3kVX8TnllND, 221) < 3)
		return
local CQiwT6tpFsjNUrT2 = "character/atswordman/2_vegabond/fatalflower/ap_fatalflower.nut"
if(CQREIJF3qls8eMT6JjK != 221)
	{
		local CQ1xKczUxLGJc3kBM3 = CNSquirrelAppendage.sq_AppendAppendage(CQDG7o3kVX8TnllND, CQDG7o3kVX8TnllND, -1, false, CQiwT6tpFsjNUrT2, false)
if (CQ1xKczUxLGJc3kBM3 != null)
		{
			CQ1xKczUxLGJc3kBM3.sq_SetValidTime(30000)
CQ1xKczUxLGJc3kBM3.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQDG7o3kVX8TnllND), 221, sq_GetSkillLevel(CQDG7o3kVX8TnllND, 221))
CQ1xKczUxLGJc3kBM3.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQ1xKczUxLGJc3kBM3, CQDG7o3kVX8TnllND, CQDG7o3kVX8TnllND, true)
local CQUdTyLgakvImAk5jq4d = 15
local CQHMKGpF1pCtYkj1z = CQ1xKczUxLGJc3kBM3.sq_getChangeStatus("Fatalflower")
if(!CQHMKGpF1pCtYkj1z)
			{
				CQHMKGpF1pCtYkj1z = CQ1xKczUxLGJc3kBM3.sq_AddChangeStatus("Fatalflower",CQDG7o3kVX8TnllND, CQDG7o3kVX8TnllND, 0, 15, false, CQUdTyLgakvImAk5jq4d)
}
			else
			{
				CQHMKGpF1pCtYkj1z.clearParameter()
CQHMKGpF1pCtYkj1z.addParameter(15, false, CQUdTyLgakvImAk5jq4d.tofloat())
}
		}
	}
}

function onProc_Fatalflower(CQjHq4nuW2wUTDh8vkr)
{
	if(!CQjHq4nuW2wUTDh8vkr) return
local CQEa2ldRLh4Tvwh4 = CQjHq4nuW2wUTDh8vkr.getSkillSubState()
}

function onKeyFrameFlag_Fatalflower(CQ4eoWXNhio8l1bfsj, CQlcgSaAANfMgWv7S)
{
	if (!CQ4eoWXNhio8l1bfsj) return false
switch(CQlcgSaAANfMgWv7S)
	{
	case 0:

		break
}
	return true
}


function onProcCon_Fatalflower(CQIfF1jY6vPJzjvhH3m)
{
	if(!CQIfF1jY6vPJzjvhH3m) return
local CQ7RbkM9mylLhSYd = CQIfF1jY6vPJzjvhH3m.getSkillSubState()
switch(CQ7RbkM9mylLhSYd)
	{
	case 0:

		break
}
}