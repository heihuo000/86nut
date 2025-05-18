// 装备附件ap_100000109逻辑
// 检查物品是否在快捷栏中并管理附件
function onAppendageUpdate(obj) {
    if (!obj) return;
    
    // 检查当前物品是否在快捷栏
    local isInQuickSlot = false;
    local size = obj.getVar("itemIndex").size_vector();
    for (local i = 0; i < size; ++i) {
        local itemIndex = obj.getVar("itemIndex").get_vector(i);
        if (itemIndex == 100000109) {
            isInQuickSlot = true;
            break;
        }
    }
    
    // 根据快捷栏状态管理附件
    local isAppended = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000109.nut");
    if (isInQuickSlot && !isAppended) {
        CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000109.nut", true);
    } else if (!isInQuickSlot && isAppended) {
        local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000109.nut");
        if (appendage) {
            appendage.setValid(false);
        }
    }
}