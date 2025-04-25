



function createPreiyStartWing(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey/wing/fly_wing_start.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);	

}




function setVliadEffectPreiyPassiveobject(obj)
{
    local var = obj.getVar("effect");  		
    local objectsSize = var.get_obj_vector_size();

    for(local i=0;i<objectsSize;++i)
    {
        local effectObj = var.get_obj_vector(i);
        if (effectObj)
        {
//            sq_SendCreatePassiveObjectPacketPos(obj,24357, 0, obj.getXPos(), obj.getYPos(), 0 );
            effectObj.setValid(false);
        }
    }

}


function createPreiyLoopWing(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey/wing/fly_wing_loop.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
    obj.getVar("effect").push_obj_vector( pooledObj );
}

function createPreiyLoopWindBottom(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windloop_floor.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
    obj.getVar("effect").push_obj_vector( pooledObj );
}

function createPreiyStartWindBottom(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windstart_floor.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}

function createPreiyStartWind(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windstartb_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}
function createPreiyEndWindBottom(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windend_floor.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	pooledObj = sq_SetEnumDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}


function createPreiyEndWind(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windendb_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}

function createPreiyLoopWind(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/wind/windloopb_00.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,0);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
    obj.getVar("effect").push_obj_vector( pooledObj );
}

function createPreiyDashWing(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey/wing/fly_wing_dash.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
    obj.getVar("effect").push_obj_vector( pooledObj );
}



function createPreiyEnd1Wing(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey/wing/fly_wing_end.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj,pooledObj,2,false);	
}

function createPreiyDashShock(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","passiveobject/zrr_obj/prey_equipment/jump/fly/flydash_09.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ + 67);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_moveWithParent(obj, pooledObj);
	sq_AddObject(obj,pooledObj,2,false);	

}


function createTayberrsFristScreenPooledObj(obj)
{
	local ani = sq_CreateAnimation("", 
    "passiveobject/actionobject/map/legend/tayberrs/map/effect/animation/screeneffect/screeneffectstart_02.ani");
	
	local shockWaveObj = sq_CreatePooledObject(ani,true);
	shockWaveObj = sq_SetEnumDrawLayer(shockWaveObj, ENUM_DRAWLAYER_COVER);
	

	if(shockWaveObj)
	{
		sq_AddObject(obj, shockWaveObj, OBJECTTYPE_DRAWONLY, false);
        obj.getVar("obj").clear_obj_vector();
        obj.getVar("obj").push_obj_vector( shockWaveObj );
	}
}