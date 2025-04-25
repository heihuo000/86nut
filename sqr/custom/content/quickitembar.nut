
function isUsableItem_Quickitembar(obj, itemIndex)
{
	local size = obj.getVar("itemIndex").size_vector();
	for (local i = 0; i < size; ++i) {
		local isSaved = false;
		for (local i = 0; i < size; ++i) {
			local index = obj.getVar("itemIndex").get_vector(i);
			if (index == itemIndex) {
				isSaved = true;
			}
		}
		local index = obj.getVar("itemIndex").get_vector(i);
		if (index == i && !isSaved) {
			obj.getVar("itemIndex").set_vector(i, itemIndex);
		}
	}
	return true;
}

/////////////////////////////////////////////////////////////////////////////////////////

function drawMainCustomUI_Quickitembar(obj)
{
	if(!obj) return;
	obj.getVar("itemIndex").clear_vector();
	local slotNum = 6;
	for (local i = 0; i < slotNum; ++i) {
		obj.getVar("itemIndex").push_vector(i);
	}
}

/////////////////////////////////////////////////////////////////////////////////////////

function procAppend_Quickitembar(obj)
{
	QuickitemSingle(obj, 400360007);		//1
	QuickitemSingle(obj, 400360008);		//2
	QuickitemSingle(obj, 400360010);		//3
	QuickitemSingle(obj, 400360011);		//4
	QuickitemSingle(obj, 400360012);		//5
	QuickitemSingle(obj, 400360013);		//6
	QuickitemSingle(obj, 400360014);		//7
	QuickitemSingle(obj, 400360015);		//8
	QuickitemSingle(obj, 400360016);		//9
	QuickitemSingle(obj, 400360017);		//10
	QuickitemSingle(obj, 400360018);		//11
	QuickitemSingle(obj, 400360019);		//12
	QuickitemSingle(obj, 400360020);		//13
	QuickitemSingle(obj, 400360021);		//14
	QuickitemSingle(obj, 400360022);		//15
	QuickitemSingle(obj, 400360023);		//16
}

function QuickitemSingle(obj, Index)
{
	if(!obj) return 0;
	local ApFile = "custom/ap/ap_" + Index + ".nut";
	local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, ApFile);
	if(!isAppend) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == Index) {
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, ApFile, true);
		}
	} else if(isAppend) {
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i) {
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == Index) {
				isInQuickSlot = true;
			}
		} if(!isInQuickSlot) {
			local appendage = obj.GetSquirrelAppendage(ApFile);
			appendage.setValid(false);
		}
	}
}
