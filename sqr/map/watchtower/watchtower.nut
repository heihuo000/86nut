


function onMapProc_WatchTower(obj)
{


	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local dungeonIndex = sq_GetDuegonIndex(dungeon);			
	local mapIndex = sq_GetMapIndex(stage);

    if (dungeonIndex == 190 && mapIndex == 38134)

        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/watchtower/ap_watchtower.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 1, false, 
				"map/watchtower/ap_watchtower.nut", true);

        }

//    obj.setCurrentPos(obj.getXPos(),obj.getYPos(),obj.getZPos() + 50);

}