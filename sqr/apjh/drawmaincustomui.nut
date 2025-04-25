function drawNewDamageUI_AllGrowJob(obj)
{
	if(!obj) return;

	if(USING_CRI_COUNT > 0 || USING_ACTIVE_COUNT > 0 || 
	   USING_SPECIAL_COUNT > 0 || USING_MAX_COUNT > 0)
	{
		drawDamageNumber(obj);
	}
	if(INVENTORY_DOWN == 1)
	{
		drawSkinStorage_AllGrowJob(obj);
	}
}


function isUsableItem_ATSwordman(obj, itemIndex)
{
	if(!sq_IsInBattle())
	{
		isUsableItem_AllGrowJob(obj,itemIndex);
	}
	return true;
}

function drawMainCustomUI_ATSwordman(obj)
{
	if (!obj) return;
	drawNewDamageUI_AllGrowJob(obj);
}

function procAppend_ATSwordman(obj)
{
	if (!obj) return 0;
	procAppend_AllGrowJob(obj);
}