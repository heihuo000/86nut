
function onStartDungeon_AllGrowJob(obj)
{
	if(sq_isPVPMode()) return;

	if(sq_IsMyCharacter(obj))
	{	
		setCharacterAppendage(obj);

		preloadSkill_AllGrowJob(obj);
		preloadCommon_AllGrowJob(obj);
		preloadAwakeCutin_AllGrowJob(obj);
	}
}

function onStartDungeon_ATSwordman(obj )
{
	if(!obj) return;

	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	DungeonStart_ATSwordman_Drawsword(obj)
	DungeonStart_ATSwordman_Magicswordshoot(obj)
	StartDungeon_AtSwordmanAddEvolve(obj)
	StartDungeon_AtSwordmanDualweapon(obj)
	DungeonStart_ATSwordman_Ecstasy(obj)
	return;
	
}

function onStartDungeon_Swordman(obj)
{
if (!obj)
return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	local weaponSubType = obj.getWeaponSubType(); //äªÓï
	obj.getVar("weaponSubType").clear_vector();
	obj.getVar("weaponSubType").push_vector(weaponSubType);
if (sq_IsMyCharacter(obj))
{
if (sq_getGrowType(obj) == 3 )
{
if(!sq_isPVPMode())
{
if(sq_GetSkillLevel(obj,76)>0)
{
obj.sq_IntVectClear();
obj.sq_IntVectPush(0);
obj.sq_IntVectPush(0);
obj.sq_IntVectPush(76);
obj.sq_IntVectPush(90);
obj.sq_IntVectPush(0);
obj.sq_IntVectPush(0);
obj.sq_IntVectPush(4);
obj.sq_IntVectPush(4);
obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
	return;
}
}
}
}
}

function onStartDungeon_Fighter(obj )
{
if (!obj)
return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	local weaponSubType = obj.getWeaponSubType(); //êõûù
	obj.getVar("weaponSubType").clear_vector();
	obj.getVar("weaponSubType").push_vector(weaponSubType);
if (sq_IsMyCharacter(obj))
{
if (sq_getGrowType(obj) == 2 )
{
if(!sq_isPVPMode())
{
if(sq_GetSkillLevel(obj,91)>0)
{
obj.sq_IntVectClear();
obj.sq_IntVectPush(91);
obj.sq_AddSetStatePacket(17, STATE_PRIORITY_USER, true);
	return;
}
}
}
}
}

function onStartDungeon_ATFighter(obj )
{
if (!obj)
return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	local weaponSubType = obj.getWeaponSubType(); //êõûù
	obj.getVar("weaponSubType").clear_vector();
	obj.getVar("weaponSubType").push_vector(weaponSubType);
if (sq_IsMyCharacter(obj))
{
if (sq_getGrowType(obj) == 2 )
{
if(!sq_isPVPMode())
{
if(sq_GetSkillLevel(obj,91)>0)
{
obj.sq_IntVectClear();
obj.sq_IntVectPush(91);
obj.sq_AddSetStatePacket(17, STATE_PRIORITY_USER, true);
	return;
}
}
}
}
}

function onStartDungeon_ATGunner(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	return;
	
}

function onStartDungeon_Gunner(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	return;
	
}

function onStartDungeon_Mage(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	return;
	
}

function onStartDungeon_ATMage(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	return;
	
}

function onStartDungeon_Thief(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	return;
	
}

function onStartDungeon_Priest(obj )
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	InitializeMyCharacter(obj );
	return;
	
}

function onStartDungeon_ATPriest(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//InitializeMyCharacter(obj);
	removeHolyFlame(obj);
	StartDungeon_thesevendeadlysins(obj);
	return;
	
}
