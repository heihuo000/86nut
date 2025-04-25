function onStartMap_AllGrowJob(obj)
{
	if(sq_IsMyCharacter(obj))
	{	
		if(!sq_isPVPMode())
		{
			initDamageFontCache();
			setAllMonsterPreLoadAndAppend(obj);
		}
	}
}

function onStartMap_ATSwordman(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Swordman(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Fighter(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_ATFighter(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Gunner(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_ATGunner(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Mage(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);

}


function onStartMap_ATMage(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Priest(obj)
{
	if(!obj) return;
{
	{
	if(!sq_isPVPMode())
		if ( sq_getGrowType ( obj ) == 2 ) //ÎÚ“∑œÃ‘—
			{
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_AddSetStatePacket(27, STATE_PRIORITY_USER, true);
			}
		}
	}
	onStartMap_AllGrowJob(obj);
}


function onStartMap_Thief(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}


function onStartMap_ATPriest(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
	SetATPriestStatePlaySound(obj);
	setRevive(obj);
}
