DamageCriCache <- []

CRI_DAMAGE_COUNT <- 200

USING_CRI_COUNT <- 0

CRI_START_INDEX <- 0

CRI_END_INDEX <- -1

DamageSizeCache <- []

DamageActiveCache <- []

ACTIVE_DAMAGE_COUNT <- 100

USING_ACTIVE_COUNT <- 0

ACTIVE_START_INDEX <- 0

ACTIVE_END_INDEX <- -1

DamageSpecialCache <- []

SPECIAL_DAMAGE_COUNT <- 50

USING_SPECIAL_COUNT <- 0

SPECIAL_START_INDEX <- 0

SPECIAL_END_INDEX <- -1

DamageMaxCache <- []

MAX_DAMAGE_COUNT <- 50

USING_MAX_COUNT <- 0

MAX_START_INDEX <- 0

MAX_END_INDEX <- -1

NOMAL_ATTACK_FLAG <- 0

DAMAGE_SMALL_WIDTH <- 0

DAMAGE_BIG_WIDTH <- 0

DAMAGE_HEIGHT <- 0

SPECIAL_DAMAGE_SMALL_WIDTH <- 0

SPECIAL_DAMAGE_BIG_WIDTH <- 0

SPECIAL_DAMAGE_HEIGHT <- 0

ADD_DAMAGE_SMALL_WIDTH <- 0

ADD_DAMAGE_BIG_WIDTH <- 0

ADD_DAMAGE_HEIGHT <- 0

ADD_OFFSET_RATE <- 0

ADD_OFFSET_WIDTH <- 0

CRI_UPPER_HEIGHT <- 0

CRI_FINAL_UPPER_HEIGHT <- 0

CRI_OFFSET_WIDTH <- 0

DAMAGE_ORIGINAL_RATE <- 100

class DamageFont
{
		xPos = 0;
		yPos = 0;
		isEnd = false;
		alpha = -1;
		sizeRate = -1;
		aniCache = -1;
		activeAniCache = -1;
		damageNumberArray = -1;
		subNumberFlag = false;
		subNumberStartPos = -1;
		subNumberArray = -1;
		subAniCache = -1;
		activeSubAniCache = -1;
		maxAniCache = -1;
		redAniCache = -1;
		whiteAniCache = -1;
		greenAniCache = -1;
		yellowAniCache = -1;
		specialType = -1;

		function initCri()
		{
			USING_CRI_COUNT--;
			if(CRI_START_INDEX == CRI_DAMAGE_COUNT - 1)
				CRI_START_INDEX = 0;
			else
				CRI_START_INDEX++;

			foreach(ani in aniCache)
				sq_Rewind(ani);

			if(subNumberFlag)
			{
				foreach(ani in subAniCache)
					sq_Rewind(ani);
			}
			isEnd = false;
		}

		function procCri()
		{
			foreach(ani in aniCache)
				ani.Proc();
				
			if(subNumberFlag)
			{
				foreach(ani in subAniCache)
					ani.Proc();
			}
			
			local findex = aniCache[0].GetCurrentFrameIndex();
			if(findex == 4)
				isEnd = true;
				
			if(DAMAGE_ALPHA != alpha)
			{
				alpha = DAMAGE_ALPHA;
				foreach(ani in aniCache)
					ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				
				if(subNumberFlag)
				{
					foreach(ani in subAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
			}
			
			if(DAMAGE_ORIGINAL_RATE != sizeRate)
			{
				sizeRate = DAMAGE_ORIGINAL_RATE;
				foreach(ani in aniCache)
					ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				
				if(subNumberFlag)
				{
					foreach(ani in subAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
			}			
			return findex;
		}
		
		function setDamageRate(rate)
		{
			foreach(ani in aniCache)
				ani.setImageRateFromOriginalOnlyChild(rate,rate);
		}

		function setDamageSpeed(rate)
		{
			foreach(ani in aniCache)
				ani.setSpeedRate(rate);
			if(subNumberFlag)
			{
				foreach(ani in subAniCache)
					ani.setSpeedRate(rate);
			}
		}

		function initActive()
		{
			USING_ACTIVE_COUNT--;
			if(ACTIVE_START_INDEX == ACTIVE_DAMAGE_COUNT - 1)
				ACTIVE_START_INDEX = 0;
			else
				ACTIVE_START_INDEX++;

			foreach(ani in activeAniCache)
				sq_Rewind(ani);

			if(subNumberFlag)
			{
				foreach(ani in activeSubAniCache)
					sq_Rewind(ani);
			}
			isEnd = false;
		}

		function procActive()
		{
			foreach(ani in activeAniCache)
				ani.Proc();

			if(subNumberFlag)
			{
				foreach(ani in activeSubAniCache)
					ani.Proc();
			}

			local findex = activeAniCache[0].GetCurrentFrameIndex();
			if(findex == 4)
				isEnd = true;
				
			if(DAMAGE_ALPHA != alpha)
			{
				alpha = DAMAGE_ALPHA;
				foreach(ani in activeAniCache)
					ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				
				if(subNumberFlag)
				{
					foreach(ani in activeSubAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
			}
			
			if(DAMAGE_ORIGINAL_RATE != sizeRate)
			{
				sizeRate = DAMAGE_ORIGINAL_RATE;
				foreach(ani in activeAniCache)
					ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				
				if(subNumberFlag)
				{
					foreach(ani in activeSubAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
			}				
			return findex;
		}

		function initSpecial()
		{
			USING_SPECIAL_COUNT--;
			if(SPECIAL_START_INDEX == SPECIAL_DAMAGE_COUNT - 1)
				SPECIAL_START_INDEX = 0;
			else
				SPECIAL_START_INDEX++;

			if(specialType == 1)
			{
				foreach(ani in redAniCache)
					sq_Rewind(ani);
			}else if(specialType == 2)
			{
				foreach(ani in whiteAniCache)
					sq_Rewind(ani);
			}else if(specialType == 3)
			{
				foreach(ani in greenAniCache)
					sq_Rewind(ani);
			}else if(specialType == 4)
			{
				foreach(ani in yellowAniCache)
					sq_Rewind(ani);
			}
			isEnd = false;
		}

		function procSpecial()
		{
			if(specialType == 1)
			{
				foreach(ani in redAniCache)
					ani.Proc();

				if(redAniCache[0].GetCurrentFrameIndex() == 4)
					isEnd = true;

				if(DAMAGE_ALPHA != alpha)
				{
					alpha = DAMAGE_ALPHA;
					foreach(ani in redAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
				if(DAMAGE_ORIGINAL_RATE != sizeRate)
				{
					sizeRate = DAMAGE_ORIGINAL_RATE;
					foreach(ani in redAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
				return redAniCache;
			}else if(specialType == 2)
			{
				foreach(ani in whiteAniCache)
					ani.Proc();

				if(whiteAniCache[0].GetCurrentFrameIndex() == 4)
					isEnd = true;

				if(DAMAGE_ALPHA != alpha)
				{
					alpha = DAMAGE_ALPHA;
					foreach(ani in whiteAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
				if(DAMAGE_ORIGINAL_RATE != sizeRate)
				{
					sizeRate = DAMAGE_ORIGINAL_RATE;
					foreach(ani in whiteAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
				return whiteAniCache;
			}else if(specialType == 3)
			{
				foreach(ani in greenAniCache)
					ani.Proc();

				if(greenAniCache[0].GetCurrentFrameIndex() == 4)
					isEnd = true;

				if(DAMAGE_ALPHA != alpha)
				{
					alpha = DAMAGE_ALPHA;
					foreach(ani in greenAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
				if(DAMAGE_ORIGINAL_RATE != sizeRate)
				{
					sizeRate = DAMAGE_ORIGINAL_RATE;
					foreach(ani in greenAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
				return greenAniCache;
			}else if(specialType == 4)
			{
				foreach(ani in yellowAniCache)
					ani.Proc();

				if(yellowAniCache[0].GetCurrentFrameIndex() == 4)
					isEnd = true;

				if(DAMAGE_ALPHA != alpha)
				{
					alpha = DAMAGE_ALPHA;
					foreach(ani in yellowAniCache)
						ani.setRGBA(255,255,255,DAMAGE_ALPHA);
				}
				if(DAMAGE_ORIGINAL_RATE != sizeRate)
				{
					sizeRate = DAMAGE_ORIGINAL_RATE;
					foreach(ani in yellowAniCache)
						ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
				}
				return yellowAniCache;
			}
		}
		
		function initMax()
		{
			sq_Rewind(maxAniCache);
			USING_MAX_COUNT--;
			if(MAX_START_INDEX == MAX_DAMAGE_COUNT - 1)
				MAX_START_INDEX = 0;
			else
				MAX_START_INDEX++;
			isEnd = false;
		}

		function procMax()
		{
			maxAniCache.Proc();			
			local findex = maxAniCache.GetCurrentFrameIndex();
					
			if(DAMAGE_ALPHA < 255)
			{
				if(findex == 0)
				{
					if(sq_AniLayerListSize(maxAniCache) == 3)	
					{
						maxAniCache.setRGBA(255,255,255,0);
						sq_getAniLayerListObject(maxAniCache,1).setRGBA(255,255,255,20);
					}else if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26){
						maxAniCache.setRGBA(255,255,255,20);
						sq_getAniLayerListObject(maxAniCache,0).setRGBA(255,255,255,0);
						sq_getAniLayerListObject(maxAniCache,2).setRGBA(255,255,255,0);			
					}
				}else if(findex == 1){
					if(sq_AniLayerListSize(maxAniCache) == 3)	
					{
						maxAniCache.setRGBA(255,255,255,100);
						sq_getAniLayerListObject(maxAniCache,1).setRGBA(255,255,255,80);
					}else if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26){
						maxAniCache.setRGBA(255,255,255,80);
						sq_getAniLayerListObject(maxAniCache,0).setRGBA(255,255,255,100);
						sq_getAniLayerListObject(maxAniCache,2).setRGBA(255,255,255,100);			
					}			
				}else if(findex == 2){
					if(sq_AniLayerListSize(maxAniCache) == 3)
					{
						maxAniCache.setRGBA(255,255,255,DAMAGE_ALPHA);
						sq_getAniLayerListObject(maxAniCache,1).setRGBA(255,255,255,DAMAGE_ALPHA);
					}else if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26){
						maxAniCache.setRGBA(255,255,255,DAMAGE_ALPHA);
						sq_getAniLayerListObject(maxAniCache,0).setRGBA(255,255,255,DAMAGE_ALPHA);
						sq_getAniLayerListObject(maxAniCache,2).setRGBA(255,255,255,DAMAGE_ALPHA);			
					}			
				}else if(findex == 8){
					isEnd = true;
					if(sq_AniLayerListSize(maxAniCache) == 3)	
					{
						maxAniCache.setRGBA(255,255,255,0);
						sq_getAniLayerListObject(maxAniCache,1).setRGBA(255,255,255,0);
					}else if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26){
						maxAniCache.setRGBA(255,255,255,0);
						sq_getAniLayerListObject(maxAniCache,0).setRGBA(255,255,255,0);
						sq_getAniLayerListObject(maxAniCache,2).setRGBA(255,255,255,0);			
					}			
				}
			}
			
			if(DAMAGE_ORIGINAL_RATE != sizeRate)
			{
				sizeRate = DAMAGE_ORIGINAL_RATE;
				maxAniCache.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			}			
			return findex;
		}
		
		function setDamagePos(x,y,z)
		{
			xPos = x;
			yPos = y - z;
		}

		function upper(height)
		{
			yPos = yPos - height;
		}

		function setDmageNumber(num)
		{
			local da = num;
			local array = [];
			if(subNumberFlag)
			{
				local single = 0;
				local totalWidth = 0;
				while (da > 0)
				{
					single = da % 10;
					array.append(single);
					if(single != 1)
						totalWidth += DAMAGE_BIG_WIDTH;
					else
						totalWidth += DAMAGE_SMALL_WIDTH;
					da /= 10;
				}
				subNumberStartPos = -(totalWidth * ADD_OFFSET_RATE / 100);
			}else
			{
				while (da > 0)
				{
					array.append(da % 10);
					da /= 10;
				}
			}
			damageNumberArray = array;
		}

		function setSubDmageNumber(subNumber)
		{
			local len = subNumber.len();
			if(len == 0)
			{
				subNumberFlag = false;
				return;
			}
			
			if(len > 1)
				subNumber.sort();
			for(local i = 0; i < len; i++)
			{
				local da = subNumber[i];
				local array = [];
				while (da > 0)
				{
					 array.insert(0,da % 10);
					 da /= 10;
				}
				subNumber[i] = array;
			}
			subNumberArray = subNumber;
			subNumberFlag = true;
		}
}

function initDamageFontCache()
{
	if(DamageCriCache.len() == 0)
	{
		initDamageFontLocal();
		initDamageCriCache();
		initDamageActiveCache();
		initDamageSpecialCache();
		initDamageMaxCache();
		initDamageSizeCache();
	}
	else if(DAMAGE_CURRENT_TYPE != DAMAGE_TYPE)
	{
		initDamageFontLocal();
		updateDamageCriCache();
		updateDamageActiveCache();
		updateDamageSpecialCache();
		updateDamageMaxCache();
		updateDamageSizeCache();
	}
}

function updateDamageSizeLocal()
{
	local info = DAMAGE_SIZE_INFO.rawget(DAMAGE_TYPE);
	DAMAGE_BIG_WIDTH = info[0] * DAMAGE_ORIGINAL_RATE / 100;
	DAMAGE_SMALL_WIDTH = info[1] * DAMAGE_ORIGINAL_RATE / 100;
	DAMAGE_HEIGHT = info[2] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_BIG_WIDTH = info[3] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_SMALL_WIDTH = info[4] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_HEIGHT = info[2] * DAMAGE_ORIGINAL_RATE * 80 / 10000;
	ADD_DAMAGE_BIG_WIDTH = info[3] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_DAMAGE_SMALL_WIDTH = info[4] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_DAMAGE_HEIGHT = info[5] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_OFFSET_RATE = info[6];
	ADD_OFFSET_WIDTH = info[7] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_UPPER_HEIGHT = info[8] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_FINAL_UPPER_HEIGHT = info[9] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_OFFSET_WIDTH = DAMAGE_BIG_WIDTH * 2;
}

function initDamageFontLocal()
{
	local info = DAMAGE_SIZE_INFO.rawget(DAMAGE_TYPE);
	DAMAGE_BIG_WIDTH = info[0] * DAMAGE_ORIGINAL_RATE / 100;
	DAMAGE_SMALL_WIDTH = info[1] * DAMAGE_ORIGINAL_RATE / 100;
	DAMAGE_HEIGHT = info[2] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_BIG_WIDTH = info[3] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_SMALL_WIDTH = info[4] * DAMAGE_ORIGINAL_RATE / 100;
	SPECIAL_DAMAGE_HEIGHT = info[2] * DAMAGE_ORIGINAL_RATE * 80 / 10000;
	ADD_DAMAGE_BIG_WIDTH = info[3] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_DAMAGE_SMALL_WIDTH = info[4] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_DAMAGE_HEIGHT = info[5] * DAMAGE_ORIGINAL_RATE * 60 / 10000;
	ADD_OFFSET_RATE = info[6];
	ADD_OFFSET_WIDTH = info[7] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_UPPER_HEIGHT = info[8] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_FINAL_UPPER_HEIGHT = info[9] * DAMAGE_ORIGINAL_RATE / 100;
	CRI_OFFSET_WIDTH = DAMAGE_BIG_WIDTH * 2;
	DAMAGE_CURRENT_TYPE = DAMAGE_TYPE;
}

function initDamageCriCache()
{
	for(local i = 0; i < CRI_DAMAGE_COUNT; i++)
	{
		local font = DamageFont();
		local criCache = [];
		local addCache = [];
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			ani = createCriNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			criCache.append(ani);

			ani = createAddNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			addCache.append(ani);
		}	
		font.aniCache = criCache;
		font.subAniCache = addCache;
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;			
		DamageCriCache.append(font);
	}
}

function updateDamageCriCache()
{
	for(local i = 0; i < CRI_DAMAGE_COUNT; i++)
	{
		local font = DamageCriCache[i];
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;	
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			sq_DeleteAni(font.aniCache[j]);
			ani = createCriNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.aniCache[j] = ani;

			sq_DeleteAni(font.subAniCache[j]);
			ani = createAddNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.subAniCache[j] = ani;
		}
	}
}

function initDamageActiveCache()
{
	for(local i = 0; i < ACTIVE_DAMAGE_COUNT; i++)
	{
		local font = DamageFont();
		local activeCache = [];
		local activeAddCache = [];
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			ani = createActiveNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			activeCache.append(ani);

			ani = createActiveAddNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			activeAddCache.append(ani);
		}
		font.activeAniCache = activeCache;
		font.activeSubAniCache = activeAddCache;
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;			
		DamageActiveCache.append(font);
	}
}

function updateDamageActiveCache()
{
	for(local i = 0; i < ACTIVE_DAMAGE_COUNT; i++)
	{
		local font = DamageActiveCache[i];
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;		
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			sq_DeleteAni(font.activeAniCache[j]);
			ani = createActiveNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.activeAniCache[j] = ani;

			sq_DeleteAni(font.activeSubAniCache[j]);
			ani = createActiveAddNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.activeSubAniCache[j] = ani;
		}
	}
}

function initDamageSpecialCache()
{
	for(local i = 0; i < SPECIAL_DAMAGE_COUNT; i++)
	{
		local font = DamageFont();
		local redAniCache = [];
		local whiteAniCache = [];
		local greenAniCache = [];
		local yellowAniCache = [];
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			ani = createRedNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			redAniCache.append(ani);

			ani = createWhiteNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			whiteAniCache.append(ani);

			ani = createGreenNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			greenAniCache.append(ani);

			ani = createYellowNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			yellowAniCache.append(ani);
		}
		font.redAniCache = redAniCache;
		font.whiteAniCache = whiteAniCache;
		font.greenAniCache = greenAniCache;
		font.yellowAniCache = yellowAniCache;
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;
		DamageSpecialCache.append(font);
	}
}

function updateDamageSpecialCache()
{
	for(local i = 0; i < SPECIAL_DAMAGE_COUNT; i++)
	{
		local font = DamageSpecialCache[i];
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;	
		local ani = null;
		for(local j = 0; j < 10; j++)
		{
			sq_DeleteAni(font.redAniCache[j]);
			ani = createRedNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.redAniCache[j] = ani;

			sq_DeleteAni(font.whiteAniCache[j]);
			ani = createWhiteNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.whiteAniCache[j] = ani;

			sq_DeleteAni(font.greenAniCache[j]);
			ani = createGreenNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.greenAniCache[j] = ani;

			sq_DeleteAni(font.yellowAniCache[j]);
			ani = createYellowNumberAni(j);
			if(DAMAGE_ALPHA != 255)
				ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			if(DAMAGE_ORIGINAL_RATE != 100)
				ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
			font.yellowAniCache[j] = ani;
		}
	}
}

function initDamageMaxCache()
{
	for(local i = 0; i < MAX_DAMAGE_COUNT; i++)
	{
		local font = DamageFont();
		local ani = createMaxNumberAni();
		ani.Proc();
		if(DAMAGE_ORIGINAL_RATE != 100)
			ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
		sq_Rewind(ani);
		font.maxAniCache = ani;
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;
		DamageMaxCache.append(font);
	}
}

function updateDamageMaxCache()
{
	for(local i = 0; i < MAX_DAMAGE_COUNT; i++)
	{
		local font = DamageMaxCache[i];
		font.alpha = DAMAGE_ALPHA;
		font.sizeRate = DAMAGE_ORIGINAL_RATE;
		local ani = createMaxNumberAni();
		ani.Proc();
		if(DAMAGE_ORIGINAL_RATE != 100)
			ani.setImageRateFromOriginal(DAMAGE_ORIGINAL_RATE/100.0,DAMAGE_ORIGINAL_RATE/100.0);
		sq_Rewind(ani);
		sq_DeleteAni(font.maxAniCache);
		font.maxAniCache = ani;
	}
}

function initDamageSizeCache()
{
	local v = 0;
	local sizeCache;
	local info = DAMAGE_SIZE_INFO.rawget(DAMAGE_TYPE);
	for(local i = 0; i <= 300; i++)
	{
		sizeCache = [];
		if(i <= 250)
		{
			v = sq_GetUniformVelocity(50 * DAMAGE_BIG_WIDTH,120 * DAMAGE_BIG_WIDTH,i,250);
			sizeCache.insert(0,v/100);

			v = sq_GetUniformVelocity(50 * DAMAGE_SMALL_WIDTH,120 * DAMAGE_SMALL_WIDTH,i,250);
			sizeCache.insert(1,v/100);

			v = sq_GetUniformVelocity(50 * DAMAGE_HEIGHT,120 * DAMAGE_HEIGHT,i,250);
			sizeCache.insert(2,v/100);

			v = sq_GetUniformVelocity(CRI_OFFSET_WIDTH,0,i,250);
			sizeCache.insert(3,-v);

			v = sq_GetUniformVelocity(0,CRI_UPPER_HEIGHT,i,250);
			sizeCache.insert(4,-v);			

			v = sq_GetUniformVelocity(60 * info[3] * DAMAGE_ORIGINAL_RATE,72 * info[3] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache.insert(5,v/10000);

			v = sq_GetUniformVelocity(60 * info[4] * DAMAGE_ORIGINAL_RATE,72 * info[4] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache.insert(6,v/10000);

			v = sq_GetUniformVelocity(60 * info[5] * DAMAGE_ORIGINAL_RATE,90 * info[5] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache.insert(7,v/10000);
		}else{
			v = sq_GetUniformVelocity(120 * DAMAGE_BIG_WIDTH,100 * DAMAGE_BIG_WIDTH,i-250,50);
			sizeCache.insert(0,v/100);

			v = sq_GetUniformVelocity(120 * DAMAGE_SMALL_WIDTH,100 * DAMAGE_SMALL_WIDTH,i-250,50);
			sizeCache.insert(1,v/100);

			v = sq_GetUniformVelocity(120 * DAMAGE_HEIGHT,100 * DAMAGE_HEIGHT,i-250,50);
			sizeCache.insert(2,v/100);

			sizeCache.insert(3,0);

			v = sq_GetUniformVelocity(CRI_UPPER_HEIGHT,CRI_FINAL_UPPER_HEIGHT,i-250,50);
			sizeCache.insert(4,-v);			

			v = sq_GetUniformVelocity(72 * info[3] * DAMAGE_ORIGINAL_RATE,60 * info[3] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache.insert(5,v/10000);

			v = sq_GetUniformVelocity(72 * info[4] * DAMAGE_ORIGINAL_RATE,60 * info[4] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache.insert(6,v/10000);

			v = sq_GetUniformVelocity(90 * info[5] * DAMAGE_ORIGINAL_RATE,60 * info[5] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache.insert(7,v/10000);
		}
		DamageSizeCache.insert(i,sizeCache);
	}
}

function updateDamageSizeCache()
{
	local v = 0;
	local sizeCache;
	local info = DAMAGE_SIZE_INFO.rawget(DAMAGE_TYPE);
	for(local i = 0; i <= 300; i++)
	{
		sizeCache = DamageSizeCache[i];
		if(i <= 250)
		{
			v = sq_GetUniformVelocity(50 * DAMAGE_BIG_WIDTH,120 * DAMAGE_BIG_WIDTH,i,250);
			sizeCache[0] = v/100;

			v = sq_GetUniformVelocity(50 * DAMAGE_SMALL_WIDTH,120 * DAMAGE_SMALL_WIDTH,i,250);
			sizeCache[1] = v/100;

			v = sq_GetUniformVelocity(50 * DAMAGE_HEIGHT,120 * DAMAGE_HEIGHT,i,250);
			sizeCache[2] = v/100;

			v = sq_GetUniformVelocity(CRI_OFFSET_WIDTH,0,i,250);
			sizeCache[3] = -v;

			v = sq_GetUniformVelocity(0,CRI_UPPER_HEIGHT,i,250);
			sizeCache[4] = -v;			

			v = sq_GetUniformVelocity(60 * info[3] * DAMAGE_ORIGINAL_RATE,72 * info[3] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache[5] = v/10000;

			v = sq_GetUniformVelocity(60 * info[4] * DAMAGE_ORIGINAL_RATE,72 * info[4] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache[6] = v/10000;

			v = sq_GetUniformVelocity(60 * info[5] * DAMAGE_ORIGINAL_RATE,90 * info[5] * DAMAGE_ORIGINAL_RATE,i,250);
			sizeCache[7] = v/10000;
		}else{
			v = sq_GetUniformVelocity(120 * DAMAGE_BIG_WIDTH,100 * DAMAGE_BIG_WIDTH,i-250,50);
			sizeCache[0] = v/100;

			v = sq_GetUniformVelocity(120 * DAMAGE_SMALL_WIDTH,100 * DAMAGE_SMALL_WIDTH,i-250,50);
			sizeCache[1] = v/100;

			v = sq_GetUniformVelocity(120 * DAMAGE_HEIGHT,100 * DAMAGE_HEIGHT,i-250,50);
			sizeCache[2] = v/100;

			sizeCache[3] = 0;

			v = sq_GetUniformVelocity(CRI_UPPER_HEIGHT,CRI_FINAL_UPPER_HEIGHT,i-250,50);
			sizeCache[4] = -v;		

			v = sq_GetUniformVelocity(72 * info[3] * DAMAGE_ORIGINAL_RATE,60 * info[3] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache[5] = v/10000;

			v = sq_GetUniformVelocity(72 * info[4] * DAMAGE_ORIGINAL_RATE,60 * info[4] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache[6] = v/10000;

			v = sq_GetUniformVelocity(90 * info[5] * DAMAGE_ORIGINAL_RATE,60 * info[5] * DAMAGE_ORIGINAL_RATE,i-250,50);
			sizeCache[7] = v/10000;
		}
	}
}

function clearDamageFontCache()
{	
	local flag = true;
	local startIndex = 0;
	local maxIndex = 0;
	local damageFont = null;
	if(USING_CRI_COUNT > 0)
	{
		flag = true;
		startIndex = CRI_START_INDEX;
		maxIndex = CRI_DAMAGE_COUNT - 1;
		while(flag)
		{
			damageFont = DamageCriCache[startIndex];

			if (startIndex == CRI_END_INDEX)
				flag = false;
			else if(startIndex == maxIndex)
				startIndex = 0;
			else
				startIndex++;
			damageFont.initCri();
		}
	}
	
	if(USING_ACTIVE_COUNT > 0)
	{
		flag = true;
		startIndex = ACTIVE_START_INDEX;
		maxIndex = ACTIVE_DAMAGE_COUNT - 1;
		while(flag)
		{
			damageFont = DamageActiveCache[startIndex];

			if (startIndex == ACTIVE_END_INDEX)
				flag = false;
			else if(startIndex == maxIndex)
				startIndex = 0;
			else
				startIndex++;
			damageFont.initActive();
		}
	}

	if(SPECIAL_DAMAGE_COUNT > 0)
	{
		flag = true;
		startIndex = SPECIAL_START_INDEX;
		maxIndex = SPECIAL_DAMAGE_COUNT - 1;
		while(flag)
		{
			damageFont = DamageSpecialCache[startIndex];

			if (startIndex == SPECIAL_END_INDEX)
				flag = false;
			else if(startIndex == maxIndex)
				startIndex = 0;
			else
				startIndex++;
			damageFont.initSpecial();
		}
	}
	
	if(USING_MAX_COUNT > 0)
	{
		flag = true;
		startIndex = MAX_START_INDEX;
		maxIndex = MAX_DAMAGE_COUNT - 1;
		while(flag)
		{
			damageFont = DamageMaxCache[startIndex];

			if (startIndex == MAX_END_INDEX)
				flag = false;
			else if(startIndex == maxIndex)
				startIndex = 0;
			else
				startIndex++;

			damageFont.initMax();
		}
	}
}