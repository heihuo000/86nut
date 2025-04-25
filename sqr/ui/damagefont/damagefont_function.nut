function setCharacterAppendage(obj)
{
	if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, CHARACTER_AP_DIR))
	{
		return CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1,false,CHARACTER_AP_DIR, true);
	}
}

function setAllMonsterAppend(obj)
{
	local objectManager = obj.getObjectManager();

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
	{
		local object = objectManager.getCollisionObject(i);

		if (object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object))
		{
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(object, MONSTER_AP_DIR) )
			{
				CNSquirrelAppendage.sq_AppendAppendage(object, obj, -1, false, MONSTER_AP_DIR, true);
			}
		}
	}
}

function setAllMonsterPreLoadAndAppend(obj)
{
	local objectManager = obj.getObjectManager();

	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i++)
	{
		local object = objectManager.getCollisionObject(i);

		if (object.isObjectType(OBJECTTYPE_ACTIVE) && obj.isEnemy(object))
		{
			if (!CNSquirrelAppendage.sq_IsAppendAppendage(object, MONSTER_AP_DIR) )
			{
				CNSquirrelAppendage.sq_AppendAppendage(object, obj, -1, false, MONSTER_AP_DIR, true);
				preloadMonster_AllGrowJob(object);
			}
		}
	}
}

//üëð¤õÌÓÞ?ß¿úªani
function createMaxNumberAni()
{
	if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26 || DAMAGE_TYPE == 31)
		return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + MAX_DAMAGE_SPE_DIR);
	else	
		return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + MAX_DAMAGE_DIR);
}

//üëð¤âËÑ¦Ñ¨øÜí®ô÷ani£¬Ó£ãÀÙÒêóßÓëëîÜÖØÌÓ
function createRandomMaxNumberAni(begin,end)
{
	local dir = "/maxdamage/maxdamage_bubble"+sq_getRandom(begin, end)+".ani";
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + dir);
}

//üëð¤ÜôÔÒ?ßäîÜí®ô÷ani
function createRedNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/red/" + num + ".ani");
}

function createGreenNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/green/" + num + ".ani");
}

function createBlueNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/blue/" + num + ".ani");
}

function createWhiteNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/white/" + num + ".ani");
}

function createYellowNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/yellow/" + num + ".ani");
}
//øìÌª
function createCriNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/cri/" + num + ".ani");
}
//ÛÜí®
function createAddNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/add/" + num + ".ani");
}
//ì¶ßÈ
function createActiveNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/active/" + num + ".ani");
}
//ì¶ßÈÝ¾Ê¥
function createActiveAddNumberAni(num)
{
	return sq_CreateAnimation("", DAMAGE_URL + DAMAGE_TYPE + "/actadd/" + num + ".ani");
}

function applyAddHpDamage(appendage,number)
{
	local obj = sq_GetCNRDObjectToSQRCharacter(sq_getMyCharacter());

	local addDamage = 0;
	local totalAddDamage = 0;
	local subNumber = appendage.getVar("subNumber");
	for(local i = 1; i <= ADD_DAMAGE_COUNT; i++)
	{
		local data = obj.sq_GetIntData(169, i);
		if(data != 0)
		{
			addDamage = (data / 100.0 * number.tofloat()).tointeger();
			if(addDamage == 0)
				addDamage == 1;
			totalAddDamage += addDamage;
			subNumber.setInt(i,addDamage);
		}
	}
	return totalAddDamage;
}

function applyMaxDamage(x,y,z)
{
	if(USING_MAX_COUNT == MAX_DAMAGE_COUNT) return;

	USING_MAX_COUNT++;
	if(MAX_END_INDEX == MAX_DAMAGE_COUNT - 1)
		MAX_END_INDEX = 0;
	else
		MAX_END_INDEX++;

	local damageFont = DamageMaxCache[MAX_END_INDEX];
	damageFont.setDamagePos(x,y,z);
}

//Íªß©ì¶ßÈß¿úª
function applyActiveDamage2(number)
{
	local addDamage = 0;
	local totalAddDamage = 0;
	local obj = sq_GetCNRDObjectToSQRCharacter(sq_getMyCharacter());
	for(local i = 1; i <= ADD_DAMAGE_COUNT; i++)
	{
		local data = obj.sq_GetIntData(169, i);
		if(data != 0)
		{
			addDamage = data * number / 100;
			if(addDamage == 0)
				addDamage == 1;
			totalAddDamage += addDamage;
		}
	}
	return totalAddDamage;
}

//Íªß©ì¶ßÈß¿úª£¬?üëð¤ani
function applyActiveDamage(appendage,number,x,y,z)
{
	if(USING_ACTIVE_COUNT == ACTIVE_DAMAGE_COUNT) return 0;
		
	USING_ACTIVE_COUNT++;
	if(ACTIVE_END_INDEX == ACTIVE_DAMAGE_COUNT - 1)
		ACTIVE_END_INDEX = 0;
	else
		ACTIVE_END_INDEX++;

	local damageFont = DamageActiveCache[ACTIVE_END_INDEX];
	damageFont.setDamagePos(x,y,z);
	
	local addDamage = 0;
	local totalAddDamage = 0;
	local subNumber = [];
	local obj = sq_GetCNRDObjectToSQRCharacter(sq_getMyCharacter());
	for(local i = 1; i <= ADD_DAMAGE_COUNT; i++)
	{
		local data = obj.sq_GetIntData(169, i);
		if(data != 0)
		{
			addDamage = data * number / 100;
			if(addDamage == 0)
				addDamage == 1;
			totalAddDamage += addDamage;
			subNumber.append(addDamage);
		}
	}
	damageFont.setSubDmageNumber(subNumber);
	damageFont.setDmageNumber(number);
	return totalAddDamage;
}

function applySpecialDamage(number,x,y,z,type)
{
	if(USING_SPECIAL_COUNT == SPECIAL_DAMAGE_COUNT) return;
		
	USING_SPECIAL_COUNT++;
	if(SPECIAL_END_INDEX == SPECIAL_DAMAGE_COUNT - 1)
		SPECIAL_END_INDEX = 0;
	else
		SPECIAL_END_INDEX++;

	local damageFont = DamageSpecialCache[SPECIAL_END_INDEX];
	damageFont.specialType = type;
	damageFont.setDamagePos(x,y,z);
	damageFont.setDmageNumber(number);
}

function applyNomalDamage(appendage,number,x,y,z)
{
	if(USING_CRI_COUNT == CRI_DAMAGE_COUNT) return;
	
	USING_CRI_COUNT++;
	if(CRI_END_INDEX == CRI_DAMAGE_COUNT - 1)
		CRI_END_INDEX = 0;
	else
		CRI_END_INDEX++;

	local damageFont = DamageCriCache[CRI_END_INDEX];
	damageFont.setDamagePos(x,y,z);
	
	local sub = 0;
	local subNumber = [];
	local subVar = appendage.getVar("subNumber");
	for(local i = 1; i <= ADD_DAMAGE_COUNT; i++)
	{
		sub = subVar.getInt(i);
		if(sub > 0)
		{
			subNumber.append(sub);
			subVar.setInt(i,0);
		}
	}
	damageFont.setSubDmageNumber(subNumber);
	damageFont.setDmageNumber(number);
}

function applySpecialSkillDamage(appendage,number,x,y,z)
{
	if(USING_CRI_COUNT == CRI_DAMAGE_COUNT) return 0;
	
	USING_CRI_COUNT++;
	if(CRI_END_INDEX == CRI_DAMAGE_COUNT - 1)
		CRI_END_INDEX = 0;
	else
		CRI_END_INDEX++;

	local damageFont = DamageCriCache[CRI_END_INDEX];
	damageFont.setDamagePos(x,y,z);
	
	local addDamage = 0;
	local totalAddDamage = 0;
	local subNumber = [];
	local obj = sq_GetCNRDObjectToSQRCharacter(sq_getMyCharacter());
	for(local i = 1; i <= ADD_DAMAGE_COUNT; i++)
	{
		local data = obj.sq_GetIntData(169, i);
		if(data != 0)
		{
			addDamage = (data / 100.0 * number.tofloat()).tointeger();
			if(addDamage == 0)
				addDamage == 1;
			totalAddDamage += addDamage;
			subNumber.append(addDamage);
		}
	}
	damageFont.setSubDmageNumber(subNumber);
	damageFont.setDmageNumber(number);
	return totalAddDamage;
}

function drawDamageNumber(obj)
{
	local objectManager = obj.getObjectManager();
	if(!objectManager)
	{
		clearDamageFontCache();
		return;
	}

	local screenXPos = objectManager.getFieldXPos(0, ENUM_DRAWLAYER_NORMAL);
	local screenYPos = objectManager.getFieldYPos(0, 0, ENUM_DRAWLAYER_NORMAL);
	local upperFlag = false;
	if(NOMAL_ATTACK_FLAG == 1)
	{
		NOMAL_ATTACK_FLAG = 0;
		upperFlag = true;
	}
	if(USING_CRI_COUNT > 0)
		drawCriDamageNumber(screenXPos,screenYPos,upperFlag);	
	if(USING_ACTIVE_COUNT > 0)
		drawActiveDamageNumber(screenXPos,screenYPos,upperFlag);
	if(USING_SPECIAL_COUNT > 0)
		drawSpecialDamageNumber(screenXPos,screenYPos,upperFlag);
	if(USING_MAX_COUNT > 0)	
		drawMaxDamageNumber(screenXPos,screenYPos,upperFlag);		
}

function drawCriDamageNumber(screenXPos,screenYPos,upperFlag)
{
	local time;
	local size;
	local findex;
	local bigWidth;
	local smallWidth;
	
	local lenX;
	local lenY;
	local offsetX;
	local offsetY;
	
	local aniCache;
	local subWidth;
	local beforeNumber;
	local subNumberArray;

	local damageFont;
	local flag = true;
	local startIndex = CRI_START_INDEX;
	local maxIndex = CRI_DAMAGE_COUNT - 1;
	while(flag)
	{
		damageFont = DamageCriCache[startIndex];

		if (startIndex == CRI_END_INDEX)
			flag = false;
		else if(startIndex == maxIndex)
			startIndex = 0;
		else
			startIndex++;
		
		if (damageFont.isEnd)
		{
			damageFont.initCri();
			continue;
		}
		findex = damageFont.procCri();
		lenX = damageFont.xPos - screenXPos;
		lenY = damageFont.yPos - screenYPos;
		if(lenX < 0 || lenY < 0)
			continue;

		offsetX = 0;
		aniCache = damageFont.aniCache;
		if(findex <= 1)
		{
			time = sq_GetCurrentTime(aniCache[0]);
			size = DamageSizeCache[time];
			bigWidth = size[0];
			smallWidth = size[1];
			offsetY = size[4];

			if(damageFont.subNumberFlag && findex == 0)
				offsetX = size[3];
			if(upperFlag)
				damageFont.upper(size[0]);
		}else{
			bigWidth = DAMAGE_BIG_WIDTH;
			smallWidth = DAMAGE_SMALL_WIDTH;
			offsetY = -CRI_FINAL_UPPER_HEIGHT;

			if(upperFlag)
				damageFont.upper(DAMAGE_HEIGHT);
		}
		
		subWidth = 0;
		foreach(number in damageFont.damageNumberArray)
		{
			if (number != 1)
				subWidth -= bigWidth;
			else
				subWidth -= smallWidth;
			
			sq_drawCurrentFrame(aniCache[number], subWidth + lenX + offsetX, lenY + offsetY, false);
		}
		
		if(damageFont.subNumberFlag)
		{	
			aniCache = damageFont.subAniCache;
			subNumberArray = damageFont.subNumberArray;
			offsetX = damageFont.subNumberStartPos;

			if(findex <= 1)
			{
				bigWidth = size[5];
				smallWidth = size[6];
				offsetY = size[7] - CRI_FINAL_UPPER_HEIGHT;
			}else{
				bigWidth = ADD_DAMAGE_BIG_WIDTH;
				smallWidth = ADD_DAMAGE_SMALL_WIDTH;
				offsetY += ADD_DAMAGE_HEIGHT;
			}
			
			for(local i = subNumberArray.len() - 1; i >= 0; i--,offsetX += ADD_OFFSET_WIDTH,offsetY += ADD_DAMAGE_HEIGHT)
			{
				beforeNumber = -1;
				foreach(number in subNumberArray[i])
				{
					if(beforeNumber == -1)
						subWidth = 0;
					else if (beforeNumber != 1)
						subWidth += bigWidth;
					else
						subWidth += smallWidth;
					
					beforeNumber = number;
					
					sq_drawCurrentFrame(aniCache[number], subWidth + lenX + offsetX, lenY + offsetY, false);
				}
			}
		}
	}
}

//üëð¤ì¶ßÈß¿úªí®ô÷
function drawActiveDamageNumber(screenXPos,screenYPos,upperFlag)
{
	local lenX;
	local lenY;
	local offsetX;
	local offsetY;
	
	local aniCache;
	local subWidth;
	local beforeNumber;
	local subNumberArray;

	local damageFont;
	local flag = true;
	local startIndex = ACTIVE_START_INDEX;//ACTIVE_START_INDEX = 0
	local maxIndex = ACTIVE_DAMAGE_COUNT - 1;//ACTIVE_DAMAGE_COUNT = 100
	while(flag)
	{
		damageFont = DamageActiveCache[startIndex];//üòö¢õÅCacheñéîÜí»ïÒëùí®ô÷×¾

		if (startIndex == ACTIVE_END_INDEX)//ACTIVE_END_INDEX = -1
			flag = false;
		else if(startIndex == maxIndex)//ÚãÜÖÔÁö¢
			startIndex = 0;
		else
			startIndex++;

		//à»÷÷Ó¨÷Üõóâàü»ðÉËì,ani÷ëÛ¯èÇù´
		if (damageFont.isEnd)
		{
			damageFont.initActive();
			continue;
		}
		
		//åýÍýaniÙÒ÷ëÛ¯£¬ñÞÝáüëð¤ani
		damageFont.procActive();
		lenX = damageFont.xPos - screenXPos;
		lenY = damageFont.yPos - screenYPos;
		if(lenX < 0 || lenY < 0)
			continue;
			
		if(upperFlag)
			damageFont.upper(DAMAGE_HEIGHT);
		
		subWidth = 0;
		aniCache = damageFont.activeAniCache;
		foreach(number in damageFont.damageNumberArray)
		{
			if (number != 1)
				subWidth -= DAMAGE_BIG_WIDTH;
			else
				subWidth -= DAMAGE_SMALL_WIDTH;
				
			sq_drawCurrentFrame(aniCache[number], subWidth + lenX, lenY, false);
		}
		
		if(damageFont.subNumberFlag)
		{
			offsetX = damageFont.subNumberStartPos;
			offsetY = ADD_DAMAGE_HEIGHT;
	
			aniCache = damageFont.activeSubAniCache;
			subNumberArray = damageFont.subNumberArray;
			for(local i = subNumberArray.len() - 1; i >= 0; i--,offsetX += ADD_OFFSET_WIDTH,offsetY += ADD_DAMAGE_HEIGHT)
			{
				beforeNumber = -1;
				foreach(number in subNumberArray[i])
				{
					if(beforeNumber == -1)
						subWidth = 0;
					else if (beforeNumber != 1)
						subWidth += ADD_DAMAGE_BIG_WIDTH;
					else
						subWidth += ADD_DAMAGE_SMALL_WIDTH;
					
					beforeNumber = number;
					sq_drawCurrentFrame(aniCache[number], subWidth + lenX + offsetX, lenY + offsetY, false);
				}
			}
		}
	}
}

function drawSpecialDamageNumber(screenXPos,screenYPos,upperFlag)
{
	local lenX;
	local lenY;
	local aniCache;
	local subWidth;

	local damageFont;
	local flag = true;
	local startIndex = SPECIAL_START_INDEX;
	local maxIndex = SPECIAL_DAMAGE_COUNT - 1;
	while(flag)
	{
		damageFont = DamageSpecialCache[startIndex];

		if (startIndex == SPECIAL_END_INDEX)
			flag = false;
		else if(startIndex == maxIndex)
			startIndex = 0;
		else
			startIndex++;
		
		if (damageFont.isEnd)
		{
			damageFont.initSpecial();
			continue;
		}
		
		aniCache = damageFont.procSpecial();
		lenX = damageFont.xPos - screenXPos;
		lenY = damageFont.yPos - screenYPos;
		if(lenX < 0 || lenY < 0)
			continue;
			
		if(upperFlag)
			damageFont.upper(SPECIAL_DAMAGE_HEIGHT);
			
		subWidth = 0;
		foreach(number in damageFont.damageNumberArray)
		{
			if (number != 1)
				subWidth -= SPECIAL_DAMAGE_BIG_WIDTH;
			else
				subWidth -= SPECIAL_DAMAGE_SMALL_WIDTH;
				
			sq_drawCurrentFrame(aniCache[number], subWidth + lenX, lenY, false);
		}
	}
}

function drawMaxDamageNumber(screenXPos,screenYPos,upperFlag)
{
	local lenX;
	local lenY;
	local findex;
	local damageFont;
	
	local flag = true;
	local startIndex = MAX_START_INDEX;
	local maxIndex = MAX_DAMAGE_COUNT - 1;
	while(flag)
	{
		damageFont = DamageMaxCache[startIndex];

		if (startIndex == MAX_END_INDEX)
			flag = false;
		else if(startIndex == maxIndex)
			startIndex = 0;
		else
			startIndex++;

		if(damageFont.maxAniCache.IsEnd())
		{
			damageFont.initMax();
			continue;
		}
		
		findex = damageFont.procMax();
		lenX = damageFont.xPos - screenXPos;
		lenY = damageFont.yPos - screenYPos;
		if(lenX < 0 || lenY < 0)
			continue;
			
		if(upperFlag)
			damageFont.upper(DAMAGE_HEIGHT);

		if(findex <= 1)
		{
			local size2;
			local size1;
			if(sq_AniLayerListSize(damageFont.maxAniCache) == 3)
			{
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 2), ENUM_DIRECTION_RIGHT);
				size1 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 1), ENUM_DIRECTION_RIGHT);
				lenX += (size2 - size1) / 2;
				
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 2),  ENUM_DIRECTION_DOWN);
				size1 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 1),  ENUM_DIRECTION_DOWN);
				lenY += (size2 - size1) / 2;
			}else{
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 4), ENUM_DIRECTION_RIGHT);
				size1 = sq_GetAniRealImageSize(damageFont.maxAniCache, ENUM_DIRECTION_RIGHT);
				lenX += (size2 - size1) / 2;
				
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(damageFont.maxAniCache, 4),  ENUM_DIRECTION_DOWN);
				size1 = sq_GetAniRealImageSize(damageFont.maxAniCache,  ENUM_DIRECTION_DOWN);
				lenY += (size2 - size1) / 2;
			}
		}

		sq_drawCurrentFrame(damageFont.maxAniCache, lenX, lenY, false);
	}
}