function onMapProc_Anton(obj)
{

	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local dungeonIndex = sq_GetDuegonIndex(dungeon);			
	local mapIndex = sq_GetMapIndex(stage);

    if (dungeonIndex == 220 && mapIndex == 17193)
    {
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/anton/anton_heart.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 1, false, 
				"map/anton/anton_heart.nut", true);

        }

    }else{

        if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/anton/anton_heart.nut") )
        {
            CNSquirrelAppendage.sq_RemoveAppendage(obj, "map/anton/anton_heart.nut");
        }

    }


    if (dungeonIndex == 243 || dungeonIndex == 244 || dungeonIndex == 245 || dungeonIndex == 246 || dungeonIndex == 247 || dungeonIndex == 220)
    {
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/anton/anton_close_blacksmoke.nut")  )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 1, true, 
				"map/anton/anton_close_blacksmoke.nut", true);
        }
    }
}