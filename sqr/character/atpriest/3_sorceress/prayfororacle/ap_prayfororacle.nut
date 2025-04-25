

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart" ,  "onStart_appendage_prayfororacle")
	appendage.sq_AddFunctionName("proc" ,  "proc_appendage_prayfororacle")
	appendage.sq_AddFunctionName("onEnd" ,  "onEnd_appendage_prayfororacle")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_prayfororacle")
}

function drawAppend_appendage_prayfororacle(appendage, isOver, x, y, isFlip)
{
	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}	
	
	if(isOver) 
	{
		local ani = appendage.getVar().GetAnimationMap("raclebuff", "passiveobject/unclebang_shared_passive_object/atpriest/animation/3_sorceress/atprayfororacle/prayfororacle_loopbuff.ani");
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, x, y, isFlip);
	}
}

function onStart_appendage_prayfororacle(appendage)

{

	if(!appendage) return;

	local UncleBangValue1 =  appendage.getParent();

	local UncleBangValue2 =  appendage.getSource();

	local UncleBangValue1 =  sq_GetCNRDObjectToSQRCharacter(UncleBangValue1);

	if(!UncleBangValue2 || !UncleBangValue1)

	

{

appendage.setValid(false);

return;

	

}

}

function proc_appendage_prayfororacle(appendage)

{

	if(!appendage) return;

	local UncleBangValue1 =  appendage.getParent();

	local UncleBangValue2 =  appendage.getSource();

	local UncleBangValue1 =  sq_GetCNRDObjectToSQRCharacter(UncleBangValue1);

	if(!UncleBangValue2 || !UncleBangValue1 || UncleBangValue1.isDead())

	

{

appendage.setValid(false);

return;

	

}

}

function onEnd_appendage_prayfororacle(appendage)

{

	if(!appendage) return;

	appendage.sq_DeleteAppendages();

}


