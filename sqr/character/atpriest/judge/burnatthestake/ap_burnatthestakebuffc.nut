function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_BurnAtTheStakeC")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_BurnAtTheStakeC")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_BurnAtTheStakeC")
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_BurnAtTheStakeC")
}


function sq_AddEffect(appendage)
{
	if(!appendage) {
		return;
	}
	//appendage.sq_AddEffectFront("sqr/character/atmage/Fanaticism/Fanaticism.ani");
}

function drawAppend_appendage_BurnAtTheStakeC(appendage, isOver, x, y, isFlip)
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
 		//local ani = appendage.getVar().GetAnimationMap("fanaticism", "xx.ani");
		//sq_AnimationProc(ani);
		//sq_drawCurrentFrame(ani, x, y - sq_GetObjectHeight(parentObj)/2, isFlip);
	}
}

function proc_appendage_BurnAtTheStakeC(appendage)
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
}


function onStart_appendage_BurnAtTheStakeC(appendage)
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
}



function onEnd_appendage_BurnAtTheStakeC(appendage)
{
	if (!appendage) {
		return;
	}	
		
	local parentObj = appendage.getParent();	
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);		
	if (!parentObj) {
		appendage.setValid(false);
		return;
	}	
}

