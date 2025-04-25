
function resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(sq_isPVPMode()) return -1;

	if(sq_IsMyCharacter(obj) && resetReason == REASON_DEATH)
	{	
		setCharacterAppendage(obj);
	}
}

function resetDungeonStart_ATSwordman(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


function resetDungeonStart_Swordman(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_Fighter(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_ATFighter(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_Gunner(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_ATGunner(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_Mage(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_Priest(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_Thief(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

function resetDungeonStart_ATPriest(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}