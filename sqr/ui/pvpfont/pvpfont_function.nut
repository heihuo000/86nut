function setCharacterAppendInPVP(obj)
{
	if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, PVP_CHARACTER_AP_PATH))
	{
		CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1,false,PVP_CHARACTER_AP_PATH, true);
	}
}

function createDamageFontInPVP(x,y,z,newHpDamage,fontType,obj)
{
	local path;
	local bigWidth;
	local smallWidth;
	if(obj.isMyControlObject())
	{
		path = PVP_DAMAGE_FONT_PIR + PVP_DAMAGE_FONT_TYPE + "/yel/";
		bigWidth = PVP_DAMAGE_FONT_SIZE_INFO.rawget(PVP_DAMAGE_FONT_TYPE)[0];
		smallWidth = PVP_DAMAGE_FONT_SIZE_INFO.rawget(PVP_DAMAGE_FONT_TYPE)[1];
	}else
	{
		path = PVP_DAMAGE_FONT_PIR + fontType + "/red/";
		bigWidth = PVP_DAMAGE_FONT_SIZE_INFO.rawget(fontType)[2];
		smallWidth = PVP_DAMAGE_FONT_SIZE_INFO.rawget(fontType)[3];
	}

	local number;
	local pooledObj;
	local width = 0;
	local damage = newHpDamage;
	while (damage > 0)
	{
		number = damage % 10;
		damage /= 10;
		
		if (number != 1)
			width -= bigWidth;
		else
			width -= smallWidth;
			
		pooledObj = sq_CreateDrawOnlyObject(obj,path + number + ".ani", ENUM_DRAWLAYER_CONTACT, true);
		pooledObj.setCurrentPos(x + width, y, z);
		pooledObj.setCurrentDirection(ENUM_DIRECTION_RIGHT);
		pooledObj.getCurrentAnimation().setRGBA(255, 255, 255, PVP_DAMAGE_FONT_ALPHA);
	}
}