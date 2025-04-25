function sq_AddFunctionName(CQvUsxaOkbOUxMzi)
{
	CQvUsxaOkbOUxMzi.sq_AddFunctionName("onStart", "onStart_appendage_ChangeswordDark")
	CQvUsxaOkbOUxMzi.sq_AddFunctionName("onEnd", "onEnd_appendage_ChangeswordDark")
	CQvUsxaOkbOUxMzi.sq_AddFunctionName("drawAppend", "drawAppend_appendage_ChangeswordDark")
	
}

function onStart_appendage_ChangeswordDark(CQDkTyUeDSTljrlOcP)
{
	if(!CQDkTyUeDSTljrlOcP) return
local CQR6KGM689H9d3TEu9b7 = CQDkTyUeDSTljrlOcP.getParent()
if(!CQR6KGM689H9d3TEu9b7) 
	{
		CQDkTyUeDSTljrlOcP.setValid(false)
return
}
	
	local CQiCq3ALEYbM5PTuE = CQDkTyUeDSTljrlOcP.sq_GetSourceChrTarget()
}

function onEnd_appendage_ChangeswordDark(CQ1S2leaMPBKfkkIO8J)
{
	if(!CQ1S2leaMPBKfkkIO8J) return
local CQUooWkTc7rO6Djp = CQ1S2leaMPBKfkkIO8J.getParent()
if(!CQUooWkTc7rO6Djp) 
	{
		CQ1S2leaMPBKfkkIO8J.setValid(false)
return
}
	local CQHq2S23Kz5y1wjA3C = sq_GetCNRDObjectToSQRCharacter(CQUooWkTc7rO6Djp)
}


function drawAppend_appendage_ChangeswordDark(CQjlo1DHgIpm71hs7xKP, CQE8gjYmt5bl2WhFf, CQ4BDw7g5qV9VjgPj8x, CQQFvPKGnEeR3SRJ, CQLpBBoiC343BlvDtC)
{
	if(!CQjlo1DHgIpm71hs7xKP || !CQjlo1DHgIpm71hs7xKP.isValid()) return
local CQlQtgvvTUoZLFYZpceW = CQjlo1DHgIpm71hs7xKP.getParent()
drawChangeswordCommon(CQlQtgvvTUoZLFYZpceW)
	return
}
