function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_DPL")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_DPL")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_DPL")
}

function onEnd_appendage_DPL(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
}

function proc_appendage_DPL(appendage)
{
	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    local currT = appendage.getTimer().Get();

    if (DPL_TIME_EVENT >= 0)
    {
        if (currT - appendage.getVar().get_vector(0) >= 1000)
        {
            appendage.getVar().set_vector(0,currT);
            DPL_TIME_EVENT = DPL_TIME_EVENT + 1;

        }   
    }
    

}

function onStart_appendage_DPL(appendage)
{
	if(!appendage) {
		return;		
	}
				

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}
    local currT = appendage.getTimer().Get();

    appendage.getVar().clear_vector();
    appendage.getVar().push_vector(currT);
}