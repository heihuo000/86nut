DPL_TIME_EVENT <- -100


function setDPLTimerUI(obj)
{
    local appendage = null;

	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local dungeonIndex = sq_GetDuegonIndex(dungeon);			
	local mapIndex = sq_GetMapIndex(stage);

    if ( dungeonIndex == 5347 )
    {
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/dpl/ap_dpl.nut") )
        {
            appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 
            169, false, "ui/dpl/ap_dpl.nut", true);	
            if (mapIndex == 59468)
                DPL_TIME_EVENT = 0;
        }else{
            appendage = obj.GetSquirrelAppendage("ui/dpl/ap_dpl.nut");
        }
        drawTimerNumber_With_NewStyle_DamageRate_Number(obj,(appendage.getTimer().Get() / 10 ) % 100 ,770,30);
        drawTimerNumber_With_NewStyle_DamageRate_Number(obj,DPL_TIME_EVENT % 60,730,30);
        drawTimerNumber_With_NewStyle_DamageRate_Number(obj,DPL_TIME_EVENT / 60,690,30);
    }
}