function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_edification")
	appendage.sq_AddFunctionName("proc", "proc_appendage_edification")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_edification")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_edification")
}

function sq_AddEffect(appendage)
{
	
}

function drawAppend_appendage_edification(appendage, isOver, x, y, isFlip)
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
 		local ani = appendage.getVar().GetAnimationMap("edificationloop", "character/priest/effect/animation/atedification/edification_buff_loop_wind.ani");
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, x, y, isFlip);
	}
}

function proc_appendage_edification(appendage)
{
	if(!appendage) {
		return;
	}
	local ParentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
}

function onStart_appendage_edification(appendage)
{
	if(!appendage)
	{
		return;
	}
	local obj = appendage.getParent();
}

function onEnd_appendage_edification(appendage)
{
	if(!appendage) {
		return;
	}
	local obj = appendage.getParent();

	local edification_buff_end_wind = "character/priest/effect/animation/atedification/edification_buff_end_wind.ani";
	ATPriest_Create(obj,edification_buff_end_wind,ENUM_DRAWLAYER_NORMAL,0,0,0,0,100,0,100,"edification_buff_end_wind");
	appendage.sq_DeleteAppendages();
}

   