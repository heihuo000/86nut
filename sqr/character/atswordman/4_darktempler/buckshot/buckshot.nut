
function checkExecutableSkill_BuckShot(CQ7gPP5WOEj94Fe7M1YN)
{
	if (!CQ7gPP5WOEj94Fe7M1YN) return false
local CQr39NH942F1Nxeh5 = CQ7gPP5WOEj94Fe7M1YN.sq_IsUseSkill(75)
if (CQr39NH942F1Nxeh5)
	{
		CQ7gPP5WOEj94Fe7M1YN.getVar("BuckShot_Boss").clear_vector()
CQ7gPP5WOEj94Fe7M1YN.getVar("BuckShot_Named").clear_vector()
CQ7gPP5WOEj94Fe7M1YN.getVar("BuckShot_Mons").clear_vector()
BuckShot_FindEnermy(CQ7gPP5WOEj94Fe7M1YN,sq_GetIntData(CQ7gPP5WOEj94Fe7M1YN, 75, 1))
CQ7gPP5WOEj94Fe7M1YN.sq_StartWrite()
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(75)
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(0)
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(sq_GetIntData(CQ7gPP5WOEj94Fe7M1YN, 75, 3))
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(CQ7gPP5WOEj94Fe7M1YN.sq_GetLevelData(75, 0, sq_GetSkillLevel(CQ7gPP5WOEj94Fe7M1YN, 75)))
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(CQ7gPP5WOEj94Fe7M1YN.sq_GetLevelData(75, 1, sq_GetSkillLevel(CQ7gPP5WOEj94Fe7M1YN, 75)))
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(CQ7gPP5WOEj94Fe7M1YN.sq_GetBonusRateWithPassive(75, -1, 2, getATSwordmanBonus(CQ7gPP5WOEj94Fe7M1YN,1.0,75)))
CQ7gPP5WOEj94Fe7M1YN.sq_WriteDword(sq_GetIntData(CQ7gPP5WOEj94Fe7M1YN, 75, 13))
CQ7gPP5WOEj94Fe7M1YN.sq_SendCreatePassiveObjectPacket(24381, 0, -80, 0, 75)
}

	return false
}

function checkCommandEnable_BuckShot(CQCLOguCnUvKXHwdxGG)
{
	if (!CQCLOguCnUvKXHwdxGG) return false
local CQdOzqYICFCO1WQTbh = CQCLOguCnUvKXHwdxGG.sq_GetSkillLoad(65)
if(!CQdOzqYICFCO1WQTbh)
		return false
local CQytZsCzTMwyC4QgqoTE = CQdOzqYICFCO1WQTbh.getRemainLoadNumber()
if(CQytZsCzTMwyC4QgqoTE<1)
		return false
return true
}

function BuckShot_FindEnermy(CQNbwCs6Dv3mJuqzr,CQbh5fmK8SolVlmjSiP)
{
	local CQF4EnRQQBf9KGmY = CQNbwCs6Dv3mJuqzr.getObjectManager()
for(local CQgZjEVkMcPRDcUlXn=0; CQgZjEVkMcPRDcUlXn<CQF4EnRQQBf9KGmY.getCollisionObjectNumber(); ++CQgZjEVkMcPRDcUlXn)
	{
		local CQoPEZI2cOl3L3unNGXT = CQF4EnRQQBf9KGmY.getCollisionObject(CQgZjEVkMcPRDcUlXn)
local CQ2yj8Tps7JZFtuch = sq_GetDistanceObject(CQNbwCs6Dv3mJuqzr, CQoPEZI2cOl3L3unNGXT, false)
if(CQoPEZI2cOl3L3unNGXT && CQNbwCs6Dv3mJuqzr.isEnemy(CQoPEZI2cOl3L3unNGXT) && CQ2yj8Tps7JZFtuch<=CQbh5fmK8SolVlmjSiP && CQoPEZI2cOl3L3unNGXT.isObjectType(OBJECTTYPE_ACTIVE) && CQoPEZI2cOl3L3unNGXT.isInDamagableState(CQNbwCs6Dv3mJuqzr) && IsFrontOf(CQNbwCs6Dv3mJuqzr,CQoPEZI2cOl3L3unNGXT))
		{
			local CQmnGv2UgzUSO5yqlov = CQoPEZI2cOl3L3unNGXT.getZPos() + CQoPEZI2cOl3L3unNGXT.getObjectHeight()/2
local CQJmnoD2tsNopDtb = "passiveobject/changqing_atswordman/Animation/ATBuckShot/BuckshotTarget_Eff_B.ani"
DarktemplerCreateAniPooledObj(CQoPEZI2cOl3L3unNGXT,CQJmnoD2tsNopDtb,true,true,CQoPEZI2cOl3L3unNGXT.getXPos(), CQoPEZI2cOl3L3unNGXT.getYPos(),CQmnGv2UgzUSO5yqlov, 1.0)
local CQkTMJtF54WQPztxmU = sq_GetObjectId(CQoPEZI2cOl3L3unNGXT)
CQoPEZI2cOl3L3unNGXT = sq_GetCNRDObjectToMonster(CQoPEZI2cOl3L3unNGXT)
if(sq_IsBoss(CQoPEZI2cOl3L3unNGXT))
				CQNbwCs6Dv3mJuqzr.getVar("BuckShot_Boss").push_vector(CQkTMJtF54WQPztxmU)
else
			{
				if(sq_IsNamed(CQoPEZI2cOl3L3unNGXT))
					CQNbwCs6Dv3mJuqzr.getVar("BuckShot_Named").push_vector(CQkTMJtF54WQPztxmU)
else
					CQNbwCs6Dv3mJuqzr.getVar("BuckShot_Mons").push_vector(CQkTMJtF54WQPztxmU)
}	
		}
	}
	return
}








