function sq_AddFunctionName(CQpasM5BD9l1Wq47)
{
	CQpasM5BD9l1Wq47.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_ATGreed")
}


function onAttackParent_appendage_ATGreed(CQ3eThHy8rJKqN43uw, CQqcKQuYpZnPveh9E5xf, CQKfqOc8NlNuQgg5O,CQT1JV6PxwWmbPgRNLD, CQsJmRarJK6zzkR8)
{
	if(!CQ3eThHy8rJKqN43uw || CQsJmRarJK6zzkR8) return
local CQ6s2mUlRjEdnBfj7s = CQ3eThHy8rJKqN43uw.getParent()
if(!CQ6s2mUlRjEdnBfj7s)
	{
		CQ3eThHy8rJKqN43uw.setValid(false)
return
}

	local CQeroafZWpg1xQfff5NF = sq_GetCNRDObjectToSQRCharacter(CQ6s2mUlRjEdnBfj7s)
local CQKfqOc8NlNuQgg5O = sq_GetCNRDObjectToActiveObject(CQKfqOc8NlNuQgg5O)
local CQxgDdsQngcPcI9hwLm = sq_GetSkillLevel(CQeroafZWpg1xQfff5NF, 159)
local CQPhvbq4AuZukh9c = sq_GetLevelData(CQeroafZWpg1xQfff5NF,159, 0, CQxgDdsQngcPcI9hwLm)
local CQ94Bp2JTNqqfA8Tps = sq_GetIntData(CQeroafZWpg1xQfff5NF,159, 0)
local CQtZvKDqof2z6T8bL6oi = sq_getRandom(0, 99)
if(CQtZvKDqof2z6T8bL6oi < CQPhvbq4AuZukh9c && CQKfqOc8NlNuQgg5O.isDead())
	{
		CQeroafZWpg1xQfff5NF.sq_StartWrite()
CQeroafZWpg1xQfff5NF.sq_WriteDword(159)
CQeroafZWpg1xQfff5NF.sq_WriteDword(0)
CQeroafZWpg1xQfff5NF.sq_WriteDword(CQ94Bp2JTNqqfA8Tps)
sq_SendCreatePassiveObjectPacketPos(CQeroafZWpg1xQfff5NF, 24383, 0, CQKfqOc8NlNuQgg5O.getXPos(), CQKfqOc8NlNuQgg5O.getYPos(), 0)
}
	

}