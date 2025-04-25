function isInXYArea(lx,ly,xw,yw)
{
	local x = IMouse.GetXPos();
	local y = IMouse.GetYPos();
	return x >=lx && x <= lx + xw && y >= ly && y <= ly + yw;
}

function writeArrayToFile(fileName,arrayName,arrayContent,type)
{
	local len = arrayContent.len();
	if(len > 0)
	{
		local fileContent = arrayName+" <- [";
		foreach(k,v in arrayContent)
		{
			if(k < len - 1)
				fileContent += v+",";
			else
				fileContent += v+"]\n";
		}
		
		local blob = blob(fileContent.len());
		foreach(k,v in fileContent)
			blob[k] = v;
		
		local output;
		if(type == 0)
			output = file(fileName,"w+");
		else if(type == 1)
			output = file(fileName,"a+");	
		output.seek(0, 'e');
		output.writeblob(blob);
	}
}

function writeNumberToFile(fileName,stringName,number,type)
{
	local fileContent = stringName+" <- "+number+"\n";
	local blob = blob(fileContent.len());
	foreach(k,v in fileContent)
		blob[k] = v;
		
	local output;
	if(type == 0)
		output = file(fileName,"w+");
	else if(type == 1)
		output = file(fileName,"a+");	
	output.seek(0, 'e');
	output.writeblob(blob);
}

function writeStorgeInfoToFile()
{
	writeArrayToFile(FONT_DB_PATH,"MY_FONT_KEY",MY_FONT_KEY,0);
	writeNumberToFile(FONT_DB_PATH,"DAMAGE_TYPE",DAMAGE_TYPE,1);
	writeNumberToFile(FONT_DB_PATH,"CURRENT_PAGE",CURRENT_PAGE,1);
	writeNumberToFile(FONT_DB_PATH,"DAMAGE_ALPHA",DAMAGE_ALPHA,1);
	writeNumberToFile(FONT_DB_PATH,"DAMAGE_ORIGINAL_RATE",DAMAGE_ORIGINAL_RATE,1);
}

function writeCutsceneInfoToFile()
{
	writeArrayToFile(CUTSCENE_DB_PATH,"SELECTED_CUTSCENE_TYPE",SELECTED_CUTSCENE_TYPE,0);
	writeNumberToFile(CUTSCENE_DB_PATH,"IS_MANAY_SELECTED_CUTSCENE",IS_MANAY_SELECTED_CUTSCENE,1);
	writeNumberToFile(CUTSCENE_DB_PATH,"CURRENT_CUTSCENE_TYPE",CURRENT_CUTSCENE_TYPE,1);
	writeNumberToFile(CUTSCENE_DB_PATH,"CUTSCENE_CURRENT_PAGE",CUTSCENE_CURRENT_PAGE,1);
}

function loadCutsceneInfo()
{
	file(CUTSCENE_DB_PATH,"a+");
	dofile(CUTSCENE_DB_PATH);
}

function tranFontKeyToValue()
{
	loadCutsceneInfo();
	file(FONT_DB_PATH,"a+");
	dofile(FONT_DB_PATH);
	DO_FONT_FILE_KEY = 1;
			
	for(local j = 0; j < MY_FONT_KEY.len(); j++)
	{
		for(local i = 1; i <= DAMAGE_KEY_VALUE_INFO.len(); i++)
		{
			if(MY_FONT_KEY[j] == DAMAGE_KEY_VALUE_INFO.rawget(i)[0])
			{
				MY_FONT_VALUE.append(i);
				break;
			}	
		}
	}	
}

function isUsableFont(type)
{
	foreach(v in MY_FONT_VALUE)
	{
		if(v == type)
			return true;
	}
	return false;
}

function isSelectCutsene(type)
{
	foreach(v in SELECTED_CUTSCENE_TYPE)
	{
		if(v == type)
			return true;
	}
	return false;
}

function deleteSelectCutsene(type)
{
	foreach(k,v in SELECTED_CUTSCENE_TYPE)
	{
		if(v == type)
		{
			SELECTED_CUTSCENE_TYPE.remove(k);
			return;
		}
	}
}

function checkOrInsertToFontArray(type)
{
	if(!isUsableFont(type))
	{
		MY_FONT_VALUE.append(type);
		MY_FONT_KEY.append(DAMAGE_KEY_VALUE_INFO.rawget(type)[0]);
		writeStorgeInfoToFile();
	}	
}

function checkDamageFontItem(itemIndex)
{
	if(itemIndex == 490010001)
		checkOrInsertToFontArray(1);
	else if(itemIndex == 490010002)
		checkOrInsertToFontArray(2);
	else if(itemIndex == 490010003)
		checkOrInsertToFontArray(3);
	else if(itemIndex == 490010004)
		checkOrInsertToFontArray(4);
	else if(itemIndex == 490010005)
		checkOrInsertToFontArray(5);
	else if(itemIndex == 490010006)
		checkOrInsertToFontArray(6);
	else if(itemIndex == 490010007)
		checkOrInsertToFontArray(7);
	else if(itemIndex == 490010008)
		checkOrInsertToFontArray(8);
	else if(itemIndex == 490010009)
		checkOrInsertToFontArray(9);
	else if(itemIndex == 490010010)
		checkOrInsertToFontArray(10);
	else if(itemIndex == 490010011)
		checkOrInsertToFontArray(11);
	else if(itemIndex == 490010012)
		checkOrInsertToFontArray(12);
	else if(itemIndex == 490010013)
		checkOrInsertToFontArray(13);
	else if(itemIndex == 490010014)
		checkOrInsertToFontArray(14);
	else if(itemIndex == 490010015)
		checkOrInsertToFontArray(15);
	else if(itemIndex == 490010016)
		checkOrInsertToFontArray(16);
	else if(itemIndex == 490010017)
		checkOrInsertToFontArray(17);
	else if(itemIndex == 490010018)
		checkOrInsertToFontArray(18);
	else if(itemIndex == 490010019)
		checkOrInsertToFontArray(19);
	else if(itemIndex == 490010020)
		checkOrInsertToFontArray(20);
	else if(itemIndex == 490010021)
		checkOrInsertToFontArray(21);
	else if(itemIndex == 490010022)
		checkOrInsertToFontArray(22);
	else if(itemIndex == 490010023)
		checkOrInsertToFontArray(23);
	else if(itemIndex == 490010024)
		checkOrInsertToFontArray(24);
	else if(itemIndex == 490010025)
		checkOrInsertToFontArray(25);
	else if(itemIndex == 490010026)
		checkOrInsertToFontArray(26);
	else if(itemIndex == 490010027)
		checkOrInsertToFontArray(27);
	else if(itemIndex == 490010028)
		checkOrInsertToFontArray(28);
	else if(itemIndex == 490010029)
		checkOrInsertToFontArray(29);
	else if(itemIndex == 490010030)
		checkOrInsertToFontArray(30);
	else if(itemIndex == 490010031)
		checkOrInsertToFontArray(31);
	else if(itemIndex == 490010032)
		checkOrInsertToFontArray(32);
}

function setCharacterDefaultCutscene(job,growType)
{
	local defaultId = 0;
	if(job == 0)
	{
		if(growType == 1)
			defaultId = 0;
		else if(growType == 2)
			defaultId = 1;
		else if(growType == 3)
			defaultId = 2;	
		else if(growType == 4)
			defaultId = 3;		
	}else if(job == 1)
	{
		if(growType == 1)
			defaultId = 4;
		else if(growType == 2)
			defaultId = 5;
		else if(growType == 3)
			defaultId = 6;	
		else if(growType == 4)
			defaultId = 7;		
	}else if(job == 2)
	{
		if(growType == 1)
			defaultId = 8;
		else if(growType == 2)
			defaultId = 9;
		else if(growType == 3)
			defaultId = 10;	
		else if(growType == 4)
			defaultId = 11;		
	}else if(job == 3)
	{
		if(growType == 1)
			defaultId = 12;
		else if(growType == 2)
			defaultId = 13;
		else if(growType == 3)
			defaultId = 14;	
		else if(growType == 4)
			defaultId = 15;		
	}else if(job == 4)
	{
		if(growType == 1)
			defaultId = 16;
		else if(growType == 2)
			defaultId = 17;
		else if(growType == 3)
			defaultId = 18;	
		else if(growType == 4)
			defaultId = 19;		
	}else if(job == 5)
	{
		if(growType == 1)
			defaultId = 20;
		else if(growType == 2)
			defaultId = 21;
		else if(growType == 3)
			defaultId = 22;	
		else if(growType == 4)
			defaultId = 23;		
	}else if(job == 6)
	{
		if(growType == 1)
			defaultId = 24;
		else if(growType == 2)
			defaultId = 25;	
	}else if(job == 7)
	{
		if(growType == 1)
			defaultId = 26;
		else if(growType == 2)
			defaultId = 27;
		else if(growType == 3)
			defaultId = 28;	
		else if(growType == 4)
			defaultId = 29;		
	}else if(job == 8)
	{
		if(growType == 1)
			defaultId = 30;
		else if(growType == 2)
			defaultId = 31;	
	}
	MY_CUTSCENE_VALUE[0] = defaultId;
	SELECTED_CUTSCENE_TYPE[0] = defaultId;
	CURRENT_CUTSCENE_TYPE = defaultId;
	DEFAULT_CUTSCENE_TYPE = defaultId;
}

function drawSkinStorage_AllGrowJob(obj)
{	
	if(sq_IsKeyDown(48, ENUM_SUBKEY_TYPE_ALL))
	{
		INVENTORY_DOWN = 0;
		if(DAMAGE_ORIGINAL_RATE != DAMAGE_CURRENT_ORIGINAL_RATE)
		{
			DAMAGE_ORIGINAL_RATE = DAMAGE_CURRENT_ORIGINAL_RATE;
			updateDamageSizeLocal();
			updateDamageSizeCache();
		}
		writeStorgeInfoToFile();
		writeCutsceneInfoToFile();
	}
		
	local var = obj.getVar("skinStorage");
	local ani = var.GetAnimationMap("storage","common/damageskin/storage.ani");
	sq_DrawSpecificFrame(ani, 55, 50, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("border","common/damageskin/border.ani");
	sq_DrawSpecificFrame(ani, 55, 510, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("border_lr","common/damageskin/border_lr.ani");
	sq_DrawSpecificFrame(ani, 50, 515, false, 0, false, 1.0);
	sq_DrawSpecificFrame(ani, 712, 515, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("border_title","common/damageskin/title.ani");
	sq_DrawSpecificFrame(ani, 45, 32, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
	sq_DrawSpecificFrame(ani, 360, 32, false, 3, false, 1.0);

	ani = obj.sq_GetStayAni();
	sq_AnimationProc(ani);
	sq_drawCurrentFrame(ani, 232, 335, false);
	
	ani = var.GetAnimationMap("monster_floor","common/damageskin/monster/monster_floor.ani");
	sq_DrawSpecificFrame(ani, 300, 315, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("storage_rb","common/damageskin/storage_rb.ani");
	sq_DrawSpecificFrame(ani, 410, 50, false, 0, false, 1.0);
	
	local info = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(CURRENT_CUTSCENE_TYPE);
	ani = var.GetAnimationMap("show"+info[0],info[0]);
	ani.setImageRateFromOriginal(0.7,0.7);
	sq_DrawSpecificFrame(ani, 55, 410, false, 0, false, 1.0);
	
	if(DAMAGE_TYPE == 25 || DAMAGE_TYPE == 26 || DAMAGE_TYPE == 31)
		ani = var.GetAnimationMap("maxdamage_"+DAMAGE_TYPE,DAMAGE_URL + DAMAGE_TYPE + MAX_DAMAGE_SPE_DIR);
	else	
		ani = var.GetAnimationMap("maxdamage_"+DAMAGE_TYPE,DAMAGE_URL + DAMAGE_TYPE + MAX_DAMAGE_DIR);
	ani.setNeverApplyAnotherPlayersEffectAlphaRate(false);
	ani.setIsApplyAnotherPlayersEffectAlphaRate(false);	
	if(ani.IsEnd())
		sq_Rewind(ani);
		
	if(TAB_DOWN  == 0)
	{
		sq_AnimationProc(ani);
		local lenX = 0;
		local lenY = 0;
		if(ani.GetCurrentFrameIndex() <= 1)
		{
			local size2;
			local size1;
			if(sq_AniLayerListSize(ani) == 3)
			{
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 2), ENUM_DIRECTION_RIGHT);
				size1 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 1), ENUM_DIRECTION_RIGHT);
				lenX = (size2 - size1) / 2;
				
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 2),  ENUM_DIRECTION_DOWN);
				size1 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 1),  ENUM_DIRECTION_DOWN);
				lenY = (size2 - size1) / 2;
			}else{
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 4), ENUM_DIRECTION_RIGHT);
				size1 = sq_GetAniRealImageSize(ani, ENUM_DIRECTION_RIGHT);
				lenX = (size2 - size1) / 2;
				
				size2 = sq_GetAniRealImageSize(sq_getAniLayerListObject(ani, 4),  ENUM_DIRECTION_DOWN);
				size1 = sq_GetAniRealImageSize(ani,  ENUM_DIRECTION_DOWN);
				lenY = (size2 - size1) / 2;
			}
		}
		sq_drawCurrentFrame(ani, 250+lenX, 220+lenY, false);
		
		ani = var.GetAnimationMap("monster","common/damageskin/monster/monster.ani");
		if(ani.IsEnd())
			sq_Rewind(ani);
		sq_AnimationProc(ani);
		sq_drawCurrentFrame(ani, 250, 180, false);
	
		ani = var.GetAnimationMap("tab_damagefont","common/damageskin/tab/damagefont.ani");
		sq_DrawSpecificFrame(ani, 480, 50, false, 0, false, 1.0);
		
		ani = var.GetAnimationMap("tab_cutscenct","common/damageskin/tab/cutscene.ani");
		sq_DrawSpecificFrame(ani, 600, 50, false, 1, false, 1.0);
		
		if(MY_FONT_VALUE.len() > 0)
		{
			local totalPage = (MY_FONT_VALUE.len() + 4) / 5;
			if(CURRENT_PAGE > totalPage)
				CURRENT_PAGE = totalPage;
				
			local startindex = (CURRENT_PAGE - 1) * 5;
			local endindex = CURRENT_PAGE * 5 - 1;
			endindex = endindex >= MY_FONT_VALUE.len() ? (MY_FONT_VALUE.len() - 1) : endindex;
			for(local i = startindex, j = 1, k = 140, h = 120; i <= endindex; i++,j++,k+=70,h+=70)
			{
				drawDamageSlot(var,j,MY_FONT_VALUE[i],425,k,h);

				if(CURRENT_PAGE == 1)
				{
					if(CURRENT_PAGE == totalPage)
						drawSoltPage(var,0,0,CURRENT_PAGE,totalPage);
					else
						drawSoltPage(var,0,1,CURRENT_PAGE,totalPage);
				}else{
					if(CURRENT_PAGE == totalPage)
						drawSoltPage(var,1,0,CURRENT_PAGE,totalPage);
					else
						drawSoltPage(var,1,1,CURRENT_PAGE,totalPage);
				}
			}
		}else{
			ani = var.GetAnimationMap("damage_name","common/damageskin/txt/damage_name.ani");
			sq_DrawSpecificFrame(ani, 470, 270, false, 0, false, 1.0);
		}
	
	}else if(TAB_DOWN == 1){
		sq_DrawSpecificFrame(ani, 250, 220, false, 6, false, 1.0);
		
		ani = var.GetAnimationMap("monster","common/damageskin/monster/monster.ani");
		sq_DrawSpecificFrame(ani, 250, 180, false, 0, false, 1.0);
		
		ani = var.GetAnimationMap("tab_damagefont","common/damageskin/tab/damagefont.ani");
		sq_DrawSpecificFrame(ani, 480, 50, false, 1, false, 1.0);
		
		ani = var.GetAnimationMap("tab_cutscenct","common/damageskin/tab/cutscene.ani");
		sq_DrawSpecificFrame(ani, 600, 50, false, 0, false, 1.0);
		
		ani = var.GetAnimationMap("select_box","common/damageskin/select/select_box.ani");
		if(IS_MANAY_SELECTED_CUTSCENE == 0)
		{
			sq_DrawSpecificFrame(ani, 530, 111, false, 0, false, 1.0);
			
		}else{
			sq_DrawSpecificFrame(ani, 530, 111, false, 2, false, 1.0);
		}
		
		ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
		sq_DrawSpecificFrame(ani, 545, 107, false, 5, false, 1.0);
		
		local number;
		local subWidth = 0;
		ani = var.GetAnimationMap("slot_number","common/damageskin/slots/slot_number.ani");
		local count = IS_MANAY_SELECTED_CUTSCENE == 0 ? 1 : SELECTED_CUTSCENE_TYPE.len();
		while (count > 0)
		{
			number = count % 10;
			if (number != 1)
				subWidth -= 8;
			else
				subWidth -= 6;
			sq_DrawSpecificFrame(ani,644+subWidth, 113, false, number, false, 1.0);
			count /= 10;
		}
		sq_DrawSpecificFrame(ani, 647, 113, false, 10, false, 1.0);
		count = MAX_SELECTED_COUNT;
		subWidth = 0;
		while (count > 0)
		{
			number = count % 10;
			if (number != 1)
				subWidth -= 8;
			else
				subWidth -= 6;
			sq_DrawSpecificFrame(ani,672+subWidth, 113, false, number, false, 1.0);
			count /= 10;
		}
			
		if(MY_CUTSCENE_VALUE.len() > 0)
		{
			local totalPage = (MY_CUTSCENE_VALUE.len() + 2) / 3;
			if(CUTSCENE_CURRENT_PAGE > totalPage)
				CUTSCENE_CURRENT_PAGE = totalPage;
				
			local startindex = (CUTSCENE_CURRENT_PAGE - 1) * 3;
			local endindex = CUTSCENE_CURRENT_PAGE * 3 - 1;
			endindex = endindex >= MY_CUTSCENE_VALUE.len() ? (MY_CUTSCENE_VALUE.len() - 1) : endindex;
			for(local i = startindex, j = 1, k = 192, h = 130; i <= endindex; i++,j++,k+=115,h+=115)
			{
				drawCutsceneSlot(var,j,MY_CUTSCENE_VALUE[i],425,k,h);

				if(CUTSCENE_CURRENT_PAGE == 1)
				{
					if(CUTSCENE_CURRENT_PAGE == totalPage)
						drawSoltPage(var,0,0,CUTSCENE_CURRENT_PAGE,totalPage);
					else
						drawSoltPage(var,0,1,CUTSCENE_CURRENT_PAGE,totalPage);
				}else{
					if(CUTSCENE_CURRENT_PAGE == totalPage)
						drawSoltPage(var,1,0,CUTSCENE_CURRENT_PAGE,totalPage);
					else
						drawSoltPage(var,1,1,CUTSCENE_CURRENT_PAGE,totalPage);
				}
			}
		}else{
			ani = var.GetAnimationMap("damage_name","common/damageskin/txt/damage_name.ani");
			sq_DrawSpecificFrame(ani, 470, 270, false, 0, false, 1.0);
		}
	}

	//í®ô÷ÛÕöÇ
	ani = var.GetAnimationMap("config_icon","common/damageskin/config/config_icon.ani");
	if(CONFIG_DOWN == 1)
	{
		sq_DrawSpecificFrame(ani, 58, 86, false, 0, false, 1.0);
		
		ani = var.GetAnimationMap("config_back","common/damageskin/config/config_back.ani");
		sq_DrawSpecificFrame(ani, 58, 105, false, 0, false, 1.0);
			
		local criWidth;
		local addWidth;
		local info = DAMAGE_SIZE_INFO.rawget(DAMAGE_TYPE);
		for(local i = 0; i < 10; i++)
		{
			if(i == 0){
				criWidth = 0;
				addWidth = 0;
			}else if (i == 2){
				criWidth += info[1]+6;
				addWidth += info[4];
			}else{
				criWidth += info[0]+6;
				addWidth += info[3];
			}
			ani = var.GetAnimationMap(DAMAGE_TYPE+"/actadd/"+i,DAMAGE_URL+DAMAGE_TYPE+"/actadd/"+i+".ani");	
			ani.setRGBA(255,255,255,DAMAGE_ALPHA);
			sq_DrawSpecificFrame(ani,150+addWidth, 130, false, 2, false, 1.0);
			
			ani = var.GetAnimationMap(DAMAGE_TYPE+"/add/"+i,DAMAGE_URL+DAMAGE_TYPE+"/add/"+i+".ani");
			ani.setRGBA(255,255,255,DAMAGE_ALPHA);			
			sq_DrawSpecificFrame(ani,150+addWidth, 160, false, 2, false, 1.0);
		
			ani = var.GetAnimationMap(DAMAGE_TYPE+"/active/"+i,DAMAGE_URL+DAMAGE_TYPE+"/active/"+i+".ani");	
			ani.setRGBA(255,255,255,DAMAGE_ALPHA);			
			sq_DrawSpecificFrame(ani,110+criWidth, 200, false, 2, false, 1.0);
			
			ani = var.GetAnimationMap(DAMAGE_TYPE+"/cri/"+i,DAMAGE_URL+DAMAGE_TYPE+"/cri/"+i+".ani");
			ani.setRGBA(255,255,255,DAMAGE_ALPHA);			
			sq_DrawSpecificFrame(ani,110+criWidth, 230, false, 2, false, 1.0);
		}	
		
		ani = var.GetAnimationMap("config_txt","common/damageskin/config/config_txt.ani");
		sq_DrawSpecificFrame(ani, 58, 345, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 58, 410, false, 1, false, 1.0);
		
		ani = var.GetAnimationMap("scroll_black","common/damageskin/scroll/black.ani");
		sq_DrawSpecificFrame(ani, 115, 360, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 115, 425, false, 0, false, 1.0);

		if(CURRENT_STORAGE_ALPHA_POS == -1)
		{
			CURRENT_STORAGE_ALPHA_RATE = 100 - (DAMAGE_ALPHA * 100 / 255);
			CURRENT_STORAGE_ALPHA_POS = CURRENT_STORAGE_ALPHA_RATE * 286 / 100 + 115;

			CURRENT_STORAGE_SIZE_RATE = DAMAGE_ORIGINAL_RATE;
			CURRENT_STORAGE_SIZE_POS = (DAMAGE_ORIGINAL_RATE - 50) * 286 / 100 + 115;
		}else if(MOUSE_LEFT_BUTTON_FLAG == 1)
		{
			if(isInXYArea(115,360,286,25) && CURRENT_STORAGE_ALPHA_POS != IMouse.GetXPos())
			{
				CURRENT_STORAGE_ALPHA_POS = IMouse.GetXPos();
				CURRENT_STORAGE_ALPHA_RATE = (CURRENT_STORAGE_ALPHA_POS - 115) * 100 / 286;
				DAMAGE_ALPHA = 255 * (100 - CURRENT_STORAGE_ALPHA_RATE) / 100;
			}else if(isInXYArea(115,425,286,25) && CURRENT_STORAGE_SIZE_POS != IMouse.GetXPos())
			{
				CURRENT_STORAGE_SIZE_POS = IMouse.GetXPos();
				CURRENT_STORAGE_SIZE_RATE = (CURRENT_STORAGE_SIZE_POS - 115) * 100 / 286 + 50;
				DAMAGE_CURRENT_ORIGINAL_RATE = CURRENT_STORAGE_SIZE_RATE;
			}
		}
		
		ani = var.GetAnimationMap("scroll_yellow","common/damageskin/scroll/yellow.ani");
		setClip(115, 360, CURRENT_STORAGE_ALPHA_POS, 380);
		sq_DrawSpecificFrame(ani, 115, 360, false, 0, false, 1.0);
		releaseClip();
		
		setClip(115, 425, CURRENT_STORAGE_SIZE_POS, 445);
		sq_DrawSpecificFrame(ani, 115, 425, false, 0, false, 1.0);
		releaseClip();
		
		ani = var.GetAnimationMap("line","common/damageskin/scroll/line.ani");
		sq_DrawSpecificFrame(ani, CURRENT_STORAGE_ALPHA_POS-3,347, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, CURRENT_STORAGE_SIZE_POS-3,410, false, 0, false, 1.0);
		
		local number;
		local subWidth = 0;
		ani = var.GetAnimationMap("slot_number","common/damageskin/slots/slot_number.ani");
		local rate = CURRENT_STORAGE_ALPHA_RATE;
		if(rate <= 9)
			sq_DrawSpecificFrame(ani,CURRENT_STORAGE_ALPHA_POS-3,333, false, rate, false, 1.0);
		else{
			while (rate > 0)
			{
				number = rate % 10;
				if (number != 1)
					subWidth -= 10;
				else
					subWidth -= 8;
				sq_DrawSpecificFrame(ani,CURRENT_STORAGE_ALPHA_POS+8+subWidth,331, false, number, false, 1.0);
				rate /= 10;
			}
		}	

		subWidth = 0;
		rate = CURRENT_STORAGE_SIZE_RATE;
		while (rate > 0)
		{
			number = rate % 10;
			if (number != 1)
				subWidth -= 10;
			else
				subWidth -= 8;
			sq_DrawSpecificFrame(ani,CURRENT_STORAGE_SIZE_POS+11+subWidth,394, false, number, false, 1.0);
			rate /= 10;
		}
		
	}else
		sq_DrawSpecificFrame(ani, 58, 86, false, 1, false, 1.0);
}

function drawDamageSlot(var,solt,type,x,y,sy)
{
	local ani = var.GetAnimationMap("slot_damage","common/damageskin/slots/slot_damage.ani");
	sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("damage_font","common/damageskin/txt/damage_font.ani");
	sq_DrawSpecificFrame(ani, x, y, false, type, false, 1.0);
	
	ani = var.GetAnimationMap("slot_damage","common/damageskin/slots/slot_damage.ani");
	sq_DrawSpecificFrame(ani, 450, sy, false, 1, false, 1.0);
	
	ani = var.GetAnimationMap("damage_name","common/damageskin/txt/damage_name.ani");
	sq_DrawSpecificFrame(ani, 490, sy+22, false, type, false, 1.0);
	
	ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
	sq_DrawSpecificFrame(ani, 540, sy+45, false, 4, false, 1.0);
	
	if(isInXYArea(420,sy,280,60))
	{
		ani = var.GetAnimationMap("slot_blue","common/damageskin/slots/slot_blue.ani");
		sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
	}
	
	ani = var.GetAnimationMap("font_new","common/damageskin/slots/new.ani");
	sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);		
	if(DAMAGE_TYPE != type)
	{
		ani = var.GetAnimationMap("btn_blue","common/damageskin/btn/btn_blue.ani");
		sq_DrawSpecificFrame(ani, 635, sy+24, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 660, sy+24, false, 2, false, 1.0);
		
		ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
		sq_DrawSpecificFrame(ani, 635, sy+22, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 635, sy+44, false, 1, false, 1.0);
		if(SOLT_DOWN == solt)
		{
			DAMAGE_TYPE = type;
			SOLT_DOWN = 0;
			writeStorgeInfoToFile();
		}
	}else{
		ani = var.GetAnimationMap("btn_red","common/damageskin/btn/btn_red.ani");
		sq_DrawSpecificFrame(ani, 635, sy+24, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 660, sy+24, false, 2, false, 1.0);
		
		ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
		sq_DrawSpecificFrame(ani, 635, sy+22, false, 2, false, 1.0);
		sq_DrawSpecificFrame(ani, 635, sy+44, false, 1, false, 1.0);		
		if(SOLT_DOWN == solt)
		{
			DAMAGE_TYPE = 0;
			SOLT_DOWN = 0;
			writeStorgeInfoToFile();
		}else
		{
			ani = var.GetAnimationMap("slot_glod","common/damageskin/slots/slot_glod.ani");
			sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
		
			ani = var.GetAnimationMap("apply","common/damageskin/slots/apply.ani");
			sq_DrawSpecificFrame(ani, 640, sy + 3, false, 0, false, 1.0);
		}
	}
}

function drawCutsceneSlot(var,solt,type,x,y,sy)
{
	local ani = var.GetAnimationMap("slot_cutscene","common/damageskin/slots/slot_cutscene.ani");
	sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
	
	local info = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(type);
	ani = var.GetAnimationMap(info[0],info[0]);
	ani.setImageRateFromOriginal(0.3,0.3);
	sq_DrawSpecificFrame(ani, x, y, false, 0, false, 1.0);
	
	ani = var.GetAnimationMap("slot_cutscene","common/damageskin/slots/slot_cutscene.ani");
	sq_DrawSpecificFrame(ani, 450, sy, false, 1, false, 1.0);
	
	//ani = var.GetAnimationMap("damage_name","common/damageskin/txt/damage_name.ani");
	//sq_DrawSpecificFrame(ani, 490, sy+22, false, type, false, 1.0);
	
	ani = var.GetAnimationMap("cutscene_txt","common/damageskin/txt/txt.ani");
	sq_DrawSpecificFrame(ani, 530, sy+70, false, 4, false, 1.0);
	
	if(isInXYArea(420,sy,280,100))
	{
		ani = var.GetAnimationMap("cutscene_blue","common/damageskin/slots/cutscene_blue.ani");
		sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
	}
	
	ani = var.GetAnimationMap("font_new","common/damageskin/slots/new.ani");
	sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);	

	if(IS_MANAY_SELECTED_CUTSCENE == 0)
	{
		if(CURRENT_CUTSCENE_TYPE != type)
		{
			ani = var.GetAnimationMap("btn_blue","common/damageskin/btn/btn_blue.ani");
			sq_DrawSpecificFrame(ani, 635, sy+44, false, 0, false, 1.0);
			sq_DrawSpecificFrame(ani, 660, sy+44, false, 2, false, 1.0);
			
			ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
			sq_DrawSpecificFrame(ani, 635, sy+42, false, 0, false, 1.0);
			sq_DrawSpecificFrame(ani, 635, sy+64, false, 1, false, 1.0);
			if(CUTSCENE_SOLT_DOWN == solt)
			{
				CURRENT_CUTSCENE_TYPE = type;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}
		}else{
			ani = var.GetAnimationMap("btn_red","common/damageskin/btn/btn_red.ani");
			sq_DrawSpecificFrame(ani, 635, sy+44, false, 0, false, 1.0);
			sq_DrawSpecificFrame(ani, 660, sy+44, false, 2, false, 1.0);
			
			ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
			sq_DrawSpecificFrame(ani, 635, sy+42, false, 2, false, 1.0);
			sq_DrawSpecificFrame(ani, 635, sy+64, false, 1, false, 1.0);		
			if(CUTSCENE_SOLT_DOWN == solt)
			{
				CURRENT_CUTSCENE_TYPE = DEFAULT_CUTSCENE_TYPE;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}else
			{
				ani = var.GetAnimationMap("apply","common/damageskin/slots/apply.ani");
				sq_DrawSpecificFrame(ani, 640, sy + 3, false, 0, false, 1.0);
			
				ani = var.GetAnimationMap("cutscene_glod","common/damageskin/slots/cutscene_glod.ani");
				sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
			}
		}
		return;
	}
	if(!isSelectCutsene(type))
	{
		ani = var.GetAnimationMap("btn_blue","common/damageskin/btn/btn_blue.ani");
		sq_DrawSpecificFrame(ani, 635, sy+44, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 660, sy+44, false, 2, false, 1.0);
		
		ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
		sq_DrawSpecificFrame(ani, 635, sy+42, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 635, sy+64, false, 1, false, 1.0);
		if(CUTSCENE_SOLT_DOWN == solt)
		{
			CURRENT_CUTSCENE_TYPE = type;
			CUTSCENE_SOLT_DOWN = 0;
			if(SELECTED_CUTSCENE_TYPE.len() < MAX_SELECTED_COUNT)
				SELECTED_CUTSCENE_TYPE.append(type);
			writeCutsceneInfoToFile();	
		}
	}else{
		ani = var.GetAnimationMap("btn_red","common/damageskin/btn/btn_red.ani");
		sq_DrawSpecificFrame(ani, 635, sy+44, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 660, sy+44, false, 2, false, 1.0);
		
		ani = var.GetAnimationMap("damage_txt","common/damageskin/txt/txt.ani");
		sq_DrawSpecificFrame(ani, 635, sy+42, false, 2, false, 1.0);
		sq_DrawSpecificFrame(ani, 635, sy+64, false, 1, false, 1.0);	
		
		if(CUTSCENE_SOLT_DOWN == solt)
		{
			CURRENT_CUTSCENE_TYPE = DEFAULT_CUTSCENE_TYPE;
			if(SELECTED_CUTSCENE_TYPE.len() == 1 && SELECTED_CUTSCENE_TYPE[0] != DEFAULT_CUTSCENE_TYPE)
			{
				SELECTED_CUTSCENE_TYPE[0] = DEFAULT_CUTSCENE_TYPE;
				writeCutsceneInfoToFile();
			}else if(SELECTED_CUTSCENE_TYPE.len() > 1)
			{
				deleteSelectCutsene(type);
				writeCutsceneInfoToFile();
			}	
			CUTSCENE_SOLT_DOWN = 0;
		}else{
			ani = var.GetAnimationMap("apply","common/damageskin/slots/apply.ani");
			sq_DrawSpecificFrame(ani, 640, sy + 3, false, 0, false, 1.0);
			
			if(CURRENT_CUTSCENE_TYPE == type)
			{
				ani = var.GetAnimationMap("cutscene_glod","common/damageskin/slots/cutscene_glod.ani");
				sq_DrawSpecificFrame(ani, 420, sy, false, 0, false, 1.0);
			}
		}
	}	
}

function drawSoltPage(var,left,right,page,totalPage)
{
	local ani;
	if(left == 0)
	{
		ani = var.GetAnimationMap("left_black","common/damageskin/left_black.ani");
		sq_DrawSpecificFrame(ani, 515, 485, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 480, 485, false, 1, false, 1.0);
	}else{
		ani = var.GetAnimationMap("left","common/damageskin/left.ani");
		sq_DrawSpecificFrame(ani, 515, 485, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 480, 485, false, 1, false, 1.0);
	}
	
	if(right == 0)
	{
		ani = var.GetAnimationMap("right_black","common/damageskin/right_black.ani");
		sq_DrawSpecificFrame(ani, 587, 485, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 618, 485, false, 1, false, 1.0);
	}else{
		ani = var.GetAnimationMap("right","common/damageskin/right.ani");
		sq_DrawSpecificFrame(ani, 587, 485, false, 0, false, 1.0);
		sq_DrawSpecificFrame(ani, 618, 485, false, 1, false, 1.0);
	}

	ani = var.GetAnimationMap("slot_number","common/damageskin/slots/slot_number.ani");
	local number;
	local subWidth = 0;
	while (page > 0)
	{
		number = page % 10;
		if (number != 1)
			subWidth -= 10;
		else
			subWidth -= 8;
		sq_DrawSpecificFrame(ani,550+subWidth, 487, false, number, false, 1.0);
		page /= 10;
	}
	
	sq_DrawSpecificFrame(ani, 550, 487, false, 10, false, 1.0);
	
	if(totalPage < 10)
	{
		sq_DrawSpecificFrame(ani, 560, 487, false, totalPage, false, 1.0);
		return;
	}
		
	subWidth = 0;
	while (totalPage > 0)
	{
		number = totalPage % 10;
		if (number != 1)
			subWidth -= 10;
		else
			subWidth -= 8;
		sq_DrawSpecificFrame(ani,580+subWidth, 487, false, number, false, 1.0);
		totalPage /= 10;
	}
}

function onMouseLeftButtonDown_AllGrowJob(obj)
{			
	if(INVENTORY_DOWN == 1)
	{
		MOUSE_LEFT_BUTTON_FLAG = 1;
		if(isInXYArea(58,86,30,30))
		{
			if(CONFIG_DOWN == 0)
				CONFIG_DOWN = 1;
			else
				CONFIG_DOWN = 0;
		}else if(isInXYArea(490,65,30,30))
			TAB_DOWN = 0;
		else if(isInXYArea(610,65,30,30))
			TAB_DOWN = 1;
		else if(TAB_DOWN == 0)
		{
			if(isInXYArea(635,147,50,20))
				SOLT_DOWN = 1;
			else if(isInXYArea(635,217,50,20))
				SOLT_DOWN = 2;
			else if(isInXYArea(635,287,50,20))
				SOLT_DOWN = 3;
			else if(isInXYArea(635,357,50,20))
				SOLT_DOWN = 4;
			else if(isInXYArea(635,427,50,20))
				SOLT_DOWN = 5;
			else if(isInXYArea(515,485,20,20) && CURRENT_PAGE != 1)
			{
				CURRENT_PAGE--;
				SOLT_DOWN = 0;
				writeStorgeInfoToFile();
			}else if(isInXYArea(480,485,20,20) && CURRENT_PAGE != 1)
			{
				CURRENT_PAGE = 1;
				SOLT_DOWN = 0;
				writeStorgeInfoToFile();
			}else if(isInXYArea(587,485,20,20))
			{
				CURRENT_PAGE++;
				SOLT_DOWN = 0;
				writeStorgeInfoToFile();
			}else if(isInXYArea(618,485,20,20))
			{
				CURRENT_PAGE = 99;
				SOLT_DOWN = 0;
				writeStorgeInfoToFile();
			}
		}else if(TAB_DOWN == 1)
		{
			if(isInXYArea(530,111,20,20))
			{
				if(IS_MANAY_SELECTED_CUTSCENE == 0)
				{
					SELECTED_CUTSCENE_TYPE = [DEFAULT_CUTSCENE_TYPE];
					IS_MANAY_SELECTED_CUTSCENE = 1;
				}else
					IS_MANAY_SELECTED_CUTSCENE = 0;
				writeCutsceneInfoToFile();
			}else if(isInXYArea(635,174,50,20))
				CUTSCENE_SOLT_DOWN = 1;
			else if(isInXYArea(635,286,50,20))
				CUTSCENE_SOLT_DOWN = 2;
			else if(isInXYArea(635,398,50,20))
				CUTSCENE_SOLT_DOWN = 3;
			else if(isInXYArea(515,485,20,20) && CUTSCENE_CURRENT_PAGE != 1)
			{
				CUTSCENE_CURRENT_PAGE--;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}else if(isInXYArea(480,485,20,20) && CUTSCENE_CURRENT_PAGE != 1)
			{
				CUTSCENE_CURRENT_PAGE = 1;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}else if(isInXYArea(587,485,20,20))
			{
				CUTSCENE_CURRENT_PAGE++;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}else if(isInXYArea(618,485,20,20))
			{
				CUTSCENE_CURRENT_PAGE = 99;
				CUTSCENE_SOLT_DOWN = 0;
				writeCutsceneInfoToFile();
			}
		}	
	}else if(sq_GetPopupWindowMainCotrol(64))
	{
		if(isInXYArea(505,222,20,20))
		{
			INVENTORY_DOWN = 1;
			CONFIG_DOWN = 0;
			TAB_DOWN = 0;
		}
	}
}

function onMouseLeftButtonUp_AllGrowJob(obj)
{
	if(INVENTORY_DOWN == 1)
	{
		MOUSE_LEFT_BUTTON_FLAG = 0;
	}
}
