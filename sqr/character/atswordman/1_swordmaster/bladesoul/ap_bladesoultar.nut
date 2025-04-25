function sq_AddFunctionName(CQrZSxAVxroT42RUG8)
{
	CQrZSxAVxroT42RUG8.sq_AddFunctionName("onStart", "onStart_appendage_BladesoulTar")
	CQrZSxAVxroT42RUG8.sq_AddFunctionName("onEnd", "onEnd_appendage_BladesoulTar")
	CQrZSxAVxroT42RUG8.sq_AddFunctionName("proc", "proc_appendage_BladesoulTar")
	CQrZSxAVxroT42RUG8.sq_AddFunctionName("drawAppend", "drawAppend_appendage_BladesoulTar")
	
}

function onStart_appendage_BladesoulTar(CQCXYyePaOf8NtfYLW71)
{
	if(!CQCXYyePaOf8NtfYLW71) return
local CQcAVFkc17PNZkcQV = CQCXYyePaOf8NtfYLW71.getParent()
if(!CQcAVFkc17PNZkcQV) 
	{
		CQCXYyePaOf8NtfYLW71.setValid(false)
return
}
	
	local CQAuW317WwlJGDcnRcy = CQCXYyePaOf8NtfYLW71.sq_GetSourceChrTarget()
}

function onEnd_appendage_BladesoulTar(CQdU8lSZKKKIXlxr)
{
	if(!CQdU8lSZKKKIXlxr) return
local CQyTrrreb4UtHMzqc9 = CQdU8lSZKKKIXlxr.getParent()
if(!CQyTrrreb4UtHMzqc9) 
	{
		CQdU8lSZKKKIXlxr.setValid(false)
return
}
	local CQN77S7TPqNUArzynWAG = sq_GetCNRDObjectToSQRCharacter(CQyTrrreb4UtHMzqc9)
}



function drawAppend_appendage_BladesoulTar(CQbVI1K45HWTJ3leE, CQFDljoaig68SATiOrg, CQ2oLwvmVnaMsTTWDC, CQmqqO8hlFhJDFkEKxaz, CQJl3BLHGfDIIeju7)
{
	if(!CQbVI1K45HWTJ3leE || !CQbVI1K45HWTJ3leE.isValid()) return
local CQk8pgqodvcyo1jIf88 = CQbVI1K45HWTJ3leE.getParent()
if(!CQk8pgqodvcyo1jIf88)
	{
		CQbVI1K45HWTJ3leE.setValid(false)
return
}

	local CQaB3mgbeSXiOWhp = sq_GetWidthObject(CQk8pgqodvcyo1jIf88)
local CQ5FosBM29QqpjbAzC = sq_GetHeightObject(CQk8pgqodvcyo1jIf88)
local CQwpgCODvr2xtSbstcz7 = sq_GetScreenXPos(CQk8pgqodvcyo1jIf88)
local CQZQFdwvLOufElvop = 1.3
if(CQ5FosBM29QqpjbAzC<120)
		CQZQFdwvLOufElvop = 1.5
local CQzzbnjdh792yGvPI9S = sq_GetScreenYPos(CQk8pgqodvcyo1jIf88) - (CQ5FosBM29QqpjbAzC/2.0*CQZQFdwvLOufElvop).tointeger()
local CQO9NpGVywOZwrYa = CQk8pgqodvcyo1jIf88.getVar()
local CQ8ftLyW6KTAn3cD18 = "character/swordman/effect/animation/atbladesoul/loop_bs_smoke.ani"
local CQW198xxm4HieycO5WBP = CQO9NpGVywOZwrYa.GetAnimationMap("BladesoulTar", CQ8ftLyW6KTAn3cD18 )
if(sq_IsEnd(CQW198xxm4HieycO5WBP))
		sq_Rewind(CQW198xxm4HieycO5WBP)
sq_AnimationProc(CQW198xxm4HieycO5WBP)
sq_drawCurrentFrame(CQW198xxm4HieycO5WBP, CQwpgCODvr2xtSbstcz7,CQzzbnjdh792yGvPI9S, false)
return
}


function proc_appendage_BladesoulTar(CQCJtY57DqbQmkxH)
{
	if(!CQCJtY57DqbQmkxH) return
if(!CQCJtY57DqbQmkxH.getParent())
	{
		CQCJtY57DqbQmkxH.setValid(false)
return
}
	
}
