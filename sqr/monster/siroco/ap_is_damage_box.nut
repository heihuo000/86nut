
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_IsDamageBox")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_IsDamageBox")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_IsDamageBox")
}

function sq_AddEffect(appendage)
{
}



function onEnd_appendage_IsDamageBox(appendage)
{

	if(!appendage) {
		return;		
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

    sq_PostDelayedMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,0,0,100 );


}

function proc_appendage_IsDamageBox(appendage)
{
	if(!appendage) {
		return;		
	}

				
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}
    local flag = 0;
    local size = appendage.getVar("pos").size_vector();
	for (local a = 0;a <= size;a += 2)
    {
        local posX = appendage.getVar("pos").get_vector(a);
        local posY = appendage.getVar("pos").get_vector(a + 1);

        if (abs(parentObj.getXPos() - posX) < 50 && parentObj.getYPos() > posY && parentObj.getYPos() < posY + 100)
        {
            flag = 1;
        }
    }
    if (flag == 1)
    {
        sq_SendMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,1,0);
    }else 
    {
        sq_PostDelayedMessage(parentObj,OBJECT_MESSAGE_INVINCIBLE,0,0,100 );
    }
}



function onStart_appendage_IsDamageBox(appendage)
{
	if(!appendage) {
		return;
	}
	
	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
				
	if(!sourceObj || !parentObj ) 
    {
		appendage.setValid(false);
		return;
	}


}


