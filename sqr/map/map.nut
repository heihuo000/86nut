mouseFlag <- 0

UiDisplayFlag <- 0
monsterId <- 0
baojiIncrate <- 0
shuxIncrate <- 0
shuxBuffIncrate <- 0
speedIncrate <- 0
damageBounsPoongjintrainingroom <- 0
isFoldMainScreen <- 0
isDamageScreen <- 0
TIP_XPOS <- 0
TIP_YPOS <- 0
TIP_WIDTH <- 0
TIP_HEIGHT <- 0
summonMonsterLevelNumber <- -1



function drawPoongjintrainingroomMainUi(obj)
{
	local stage = sq_GetGlobaludpModuleStage();
    if (!stage)
        return false;

	local dungeon = sq_GetDungeonByStage(stage);
    if (!dungeon)
        return false;
	local dungeonIndex = sq_GetDuegonIndex(dungeon);			
	local mapIndex = sq_GetMapIndex(stage);

    GLOBAL_CURRENT_DUNGEON_ID = dungeonIndex;
    GLOBAL_CURRENT_MAP_ID = mapIndex;

    esapistDungeon(obj);

//    if (dungeonIndex == 6000)
//    {

        
        onMouseEvent(obj);
        onProc_Poongjintrainingroom(obj);
        drawMapControlUi(obj);
        onKeyPressEvent(obj);
//    }


    

}



function drawMapControlUi(obj)
{
	if (isFoldMainScreen == 1 )
	{
		if ( UiDisplayFlag == 0)
		{
			UiDisplayFlag == 1;
		}

		TIP_XPOS = 0;
		TIP_YPOS = 0;
		TIP_WIDTH = 0;
		TIP_HEIGHT = 0;

		local x = (800 - 482);
		local y = 20;
		local sq_var = obj.getVar();
		local background = sq_var.GetAnimationMap("mapControlBackGround", "sqr/map/poongjintrainingroom/background.ani");
		local baojiBackGround = null;
		local command0 = sq_var.GetAnimationMap("monster0", "sqr/map/poongjintrainingroom/commandbotton.ani");
		local command3 = null;
		local command4 = null;
		local command5 = null;
		local command6 = null;

		local command7 = null;
		local command8 = null;
		local command9 = null;
		local command10 = null;
		local command11 = null;
		local command12 = null;

		local command13 = null;
		local shuxBackGround = null;

		local command14 = null;
		local lightBackGround = null;

		local command15 = null;
		local speedBackGround = null;

		local command16 = null;
		local hpBackGround = null;

		local command17 = null;
		local mpBackGround = null;

		local command18 = null;
		local levelBackGround = null;

		local damaBackGround = null;


		local monstercommand3 = null;
		local monstercommand4 = null;
		local monstercommand5 = null;
		local monstercommand6 = null;
		local monstercommand7 = null;
		local monstercommand8 = null;
		local monstercommand9 = null;
		local monstercommand10 = null;
        local monstercommand11 = null;
        local monstercommand12 = null;
        local monstercommand13 = null;
        local monstercommand14 = null;
        local monstercommand15 = null;
        local monstercommand16 = null;
        local monstercommand17 = null;
        local monstercommand18 = null;

        local monstercommand19 = null;
        local monstercommand20 = null;
        local monstercommand21 = null;
        local monstercommand22 = null;
        local monstercommand23 = null;
        local monstercommand24 = null;
        local monstercommand25 = null;
        local monstercommand26 = null;

        local monstercommand27 = null;
        local monstercommand28 = null;
        local monstercommand29 = null;
        local monstercommand30 = null;

        local monstercommand31 = null;
        local monstercommand32 = null;
        local monstercommand33 = null;
        local monstercommand34 = null;
        local monstercommand35 = null;
        local monstercommand36 = null;
        local monstercommand37 = null;
        local monstercommand38 = null;

        local monstercommand40 = null;

		local monsterBackGround = null;

		if  (isMouseInScreenArea(obj,348,33,22,76) && mouseFlag == 1 ) 
		{
			isFoldMainScreen = 0;
		}

		if ( (isMouseInScreenArea(obj,565,70,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 2)
		{
			command3 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 2;
			monsterBackGround = sq_var.GetAnimationMap("monsterBackGround", "sqr/map/poongjintrainingroom/monsterbackground.ani");
			command4 = sq_var.GetAnimationMap("goblinIcon", "sqr/map/monstericon/goblin.ani");
			command5 = sq_var.GetAnimationMap("fuhrman", "sqr/map/monstericon/fuhrman.ani");
			monstercommand3 = sq_var.GetAnimationMap("cutpurse", "sqr/map/monstericon/cutpurse.ani");
			monstercommand4 = sq_var.GetAnimationMap("mpireknight", "sqr/map/monstericon/mpireknight.ani");
			monstercommand5 = sq_var.GetAnimationMap("mpirespear", "sqr/map/monstericon/mpirespear.ani");
			monstercommand6 = sq_var.GetAnimationMap("angrydragon", "sqr/map/monstericon/angry_dragon.ani");
			monstercommand7 = sq_var.GetAnimationMap("babyscasa", "sqr/map/monstericon/baby_scasa.ani");
			monstercommand8 = sq_var.GetAnimationMap("drageonknight", "sqr/map/monstericon/drageon_knight.ani");
			monstercommand9 = sq_var.GetAnimationMap("equipment_mage", "sqr/map/monstericon/character_mage_equipment.ani");
			monstercommand10 = sq_var.GetAnimationMap("sandbag", "sqr/map/monstericon/character_mage_equipment.ani");
            monstercommand11 = sq_var.GetAnimationMap("6", "sqr/map/monstericon/6.ani");
            monstercommand12 = sq_var.GetAnimationMap("7", "sqr/map/monstericon/7.ani");
            monstercommand13 = sq_var.GetAnimationMap("8", "sqr/map/monstericon/8.ani");
            monstercommand14 = sq_var.GetAnimationMap("9", "sqr/map/monstericon/9.ani");
            monstercommand15 = sq_var.GetAnimationMap("10", "sqr/map/monstericon/10.ani");
            monstercommand16 = sq_var.GetAnimationMap("11", "sqr/map/monstericon/11.ani");
            monstercommand17 = sq_var.GetAnimationMap("12", "sqr/map/monstericon/12.ani");
            monstercommand18 = sq_var.GetAnimationMap("13", "sqr/map/monstericon/13.ani");

            monstercommand19 = sq_var.GetAnimationMap("14", "sqr/map/monstericon/14.ani");
            monstercommand20 = sq_var.GetAnimationMap("15", "sqr/map/monstericon/15.ani");
            monstercommand21 = sq_var.GetAnimationMap("16", "sqr/map/monstericon/16.ani");
            monstercommand22 = sq_var.GetAnimationMap("17", "sqr/map/monstericon/17.ani");
            monstercommand23 = sq_var.GetAnimationMap("18", "sqr/map/monstericon/18.ani");
            monstercommand24 = sq_var.GetAnimationMap("19", "sqr/map/monstericon/19.ani");
            monstercommand25 = sq_var.GetAnimationMap("20", "sqr/map/monstericon/20.ani");
            monstercommand26 = sq_var.GetAnimationMap("21", "sqr/map/monstericon/21.ani");

            monstercommand27 = sq_var.GetAnimationMap("22", "sqr/map/monstericon/22.ani");
            monstercommand28 = sq_var.GetAnimationMap("23", "sqr/map/monstericon/23.ani");
            monstercommand29 = sq_var.GetAnimationMap("24", "sqr/map/monstericon/24.ani");
            monstercommand30 = sq_var.GetAnimationMap("25", "sqr/map/monstericon/25.ani");

            monstercommand31 = sq_var.GetAnimationMap("26", "sqr/map/monstericon/26.ani");
            monstercommand32 = sq_var.GetAnimationMap("27", "sqr/map/monstericon/27.ani");
            monstercommand33 = sq_var.GetAnimationMap("28", "sqr/map/monstericon/28.ani");
            monstercommand34 = sq_var.GetAnimationMap("29", "sqr/map/monstericon/29.ani");
            monstercommand35 = sq_var.GetAnimationMap("30", "sqr/map/monstericon/30.ani");
            monstercommand36 = sq_var.GetAnimationMap("31", "sqr/map/monstericon/30.ani");
            monstercommand37 = sq_var.GetAnimationMap("32", "sqr/map/monstericon/30.ani");
            monstercommand38 = sq_var.GetAnimationMap("33", "sqr/map/monstericon/30.ani");

			monstercommand40 = sq_var.GetAnimationMap("equipment_mage2", "sqr/map/monstericon/character_mage_equipment.ani");

		}else{
			command3 = sq_var.GetAnimationMap("monster0_botton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}
		if ( (isMouseInScreenArea(obj,365,112,84,24) && mouseFlag == 1 ) || UiDisplayFlag == 3 )
		{
			


		}


		if ( (isMouseInScreenArea(obj,685 ,70,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 4)
		{
			
			command6 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 4;
			baojiBackGround = sq_var.GetAnimationMap("baojiBackGround", "sqr/map/poongjintrainingroom/baojibackgground.ani");
			
			
		}else{
			command6 = sq_var.GetAnimationMap("buff0_botton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}

		if ( (isMouseInScreenArea(obj,685 ,95,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 5)
		{
			
			command13 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 5;
			shuxBackGround = sq_var.GetAnimationMap("shuxBackGround", "sqr/map/poongjintrainingroom/shux_back.ani");
			
			
		}else{
			command13 = sq_var.GetAnimationMap("shux0_botton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}



		if ( (isMouseInScreenArea(obj,685 ,125,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 6)
		{
			
			command14 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 6;
			lightBackGround = sq_var.GetAnimationMap("lightBackGround", "sqr/map/poongjintrainingroom/shuxbuff_.ani");
			
			
		}else{
			command14 = sq_var.GetAnimationMap("shux0_botton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}


		if ( (isMouseInScreenArea(obj,685 ,150,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 7)
		{
			
			command15 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 7;
			speedBackGround = sq_var.GetAnimationMap("speedBackGround", "sqr/map/poongjintrainingroom/speed.ani");
			
			
		}else{
			command15 = sq_var.GetAnimationMap("shuxspeed_botton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}


		if ( (isMouseInScreenArea(obj,685 ,175,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 8)
		{
			
			command16 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 8;
			hpBackGround = sq_var.GetAnimationMap("hpBackGround", "sqr/map/poongjintrainingroom/hp.ani");
			
			
		}else{
			command16 = sq_var.GetAnimationMap("hpbotton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}

		if ( (isMouseInScreenArea(obj,685 ,200,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 9)
		{
			
			command17 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 9;
			mpBackGround = sq_var.GetAnimationMap("mpBackGround", "sqr/map/poongjintrainingroom/mp.ani");
			
			
		}else{
			command17 = sq_var.GetAnimationMap("mpbotton", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}


		if ( (isMouseInScreenArea(obj,720 ,120,70,15) && mouseFlag == 1 ) || UiDisplayFlag == 10)
		{
			
			UiDisplayFlag = 10;
			damaBackGround = sq_var.GetAnimationMap("damaBackGround", "sqr/map/poongjintrainingroom/damagescreen.ani");
			
		}else{
		}


		if ( (isMouseInScreenArea(obj,466 ,100,15,15) && mouseFlag == 1 ) || UiDisplayFlag == 9999)
		{
			
			command18 = sq_var.GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
			UiDisplayFlag = 9999;
//			levelBackGround = sq_var.GetAnimationMap("levelSelectBackGround", "sqr/map/poongjintrainingroom/level.ani");
			
			
		}else{
			command18 = sq_var.GetAnimationMap("levelBottom", "sqr/map/poongjintrainingroom/commandbotton.ani");
		}


		local command1 = sq_var.GetAnimationMap("button1", "sqr/map/poongjintrainingroom/commandbotton.ani");
		local command2 = sq_var.GetAnimationMap("button2", "sqr/map/poongjintrainingroom/commandbotton.ani");
		sq_AnimationProc(background);
		sq_AnimationProc(command0);
		sq_AnimationProc(command1);
		sq_AnimationProc(command2);
		sq_AnimationProc(command3);
		sq_AnimationProc(command6);
		sq_AnimationProc(command13);
		sq_AnimationProc(command14);
		sq_AnimationProc(command15);
		sq_AnimationProc(command16);
		sq_AnimationProc(command17);
		sq_AnimationProc(command18);
		sq_drawCurrentFrame(background, x, y, false);
		sq_drawCurrentFrame(command0, x + 198, y + 61, false);
		sq_drawCurrentFrame(command1, x + 102, y + 61, false);
		sq_drawCurrentFrame(command2, x + 198, y + 87, false);
		sq_drawCurrentFrame(command3, x + 198, y + 35, false);
		sq_drawCurrentFrame(command6, 636, y + 35, false);
		sq_drawCurrentFrame(command13, 636, 81, false);
		sq_drawCurrentFrame(command14, 636, 107, false);
		sq_drawCurrentFrame(command15, 636, 133, false);
		sq_drawCurrentFrame(command16, 636, 159, false);
		sq_drawCurrentFrame(command17, 636, 185, false);
		sq_drawCurrentFrame(command18, 419, 81, false);

		if (UiDisplayFlag == 2)
		{


			sq_AnimationProc(monsterBackGround);
			sq_drawCurrentFrame(monsterBackGround, x - 300 , y + 4, false);

			sq_AnimationProc(command4);
			sq_drawCurrentFrame(command4, x - 280 , y + 30, false);
			sq_AnimationProc(command5);
			sq_drawCurrentFrame(command5, x - 251 , y + 30, false);
			sq_AnimationProc(monstercommand3);
			sq_drawCurrentFrame(monstercommand3, x - 222 , y + 30, false);
			sq_AnimationProc(monstercommand4);
			sq_drawCurrentFrame(monstercommand4, x - 193 , y + 30, false);
			sq_AnimationProc(monstercommand5);
			sq_drawCurrentFrame(monstercommand5, x - 164 , y + 30, false);
			sq_AnimationProc(monstercommand6);
			sq_drawCurrentFrame(monstercommand6, x - 135 , y + 30, false);
			sq_AnimationProc(monstercommand7);
			sq_drawCurrentFrame(monstercommand7, x - 106 , y + 30, false);
			sq_AnimationProc(monstercommand8);
			sq_drawCurrentFrame(monstercommand8, x - 77 , y + 30, false);
			sq_AnimationProc(monstercommand9);
			sq_drawCurrentFrame(monstercommand9, x - 48 , y + 30, false);

			sq_AnimationProc(monstercommand10);
			sq_drawCurrentFrame(monstercommand10, x - 280 , y + 59, false);
           sq_AnimationProc(monstercommand11);
            sq_drawCurrentFrame(monstercommand11, x - 251,y + 59, false);
            sq_AnimationProc(monstercommand12);
            sq_drawCurrentFrame(monstercommand12, x - 222,y + 59, false);
            sq_AnimationProc(monstercommand13);
            sq_drawCurrentFrame(monstercommand13, x - 193,y + 59, false);
            sq_AnimationProc(monstercommand14);
            sq_drawCurrentFrame(monstercommand14, x - 164,y + 59, false);
            sq_AnimationProc(monstercommand15);
            sq_drawCurrentFrame(monstercommand15, x - 135,y + 59, false);
            sq_AnimationProc(monstercommand16);
            sq_drawCurrentFrame(monstercommand16, x - 106,y + 59, false);
            sq_AnimationProc(monstercommand17);
            sq_drawCurrentFrame(monstercommand17, x - 77,y + 59, false);
            sq_AnimationProc(monstercommand18);
            sq_drawCurrentFrame(monstercommand18, x - 48,y + 59, false);

            sq_AnimationProc(monstercommand19);
            sq_drawCurrentFrame(monstercommand19, x - 280,y + 88, false);
            sq_AnimationProc(monstercommand20);
            sq_drawCurrentFrame(monstercommand20, x - 251,y + 88, false);
            sq_AnimationProc(monstercommand21);
            sq_drawCurrentFrame(monstercommand21, x - 222,y + 88, false);
            sq_AnimationProc(monstercommand22);
            sq_drawCurrentFrame(monstercommand22, x - 193,y + 88, false);
            sq_AnimationProc(monstercommand23);
            sq_drawCurrentFrame(monstercommand23, x - 164,y + 88, false);
            sq_AnimationProc(monstercommand24);
            sq_drawCurrentFrame(monstercommand24, x - 135,y + 88, false);
            sq_AnimationProc(monstercommand25);
            sq_drawCurrentFrame(monstercommand25, x - 106,y + 88, false);
            sq_AnimationProc(monstercommand26);
            sq_drawCurrentFrame(monstercommand26, x - 77,y + 88, false);
            sq_AnimationProc(monstercommand27);
            sq_drawCurrentFrame(monstercommand27, x - 48,y + 88, false);

            sq_AnimationProc(monstercommand28);
            sq_drawCurrentFrame(monstercommand28, x - 280,y + 117, false);
            sq_AnimationProc(monstercommand29);
            sq_drawCurrentFrame(monstercommand29, x - 251,y + 117, false);
            sq_AnimationProc(monstercommand30);
            sq_drawCurrentFrame(monstercommand30, x - 222,y + 117, false);
            sq_AnimationProc(monstercommand31);
            sq_drawCurrentFrame(monstercommand31, x - 193,y + 117, false);
            sq_AnimationProc(monstercommand32);
            sq_drawCurrentFrame(monstercommand32, x - 164,y + 117, false);
            sq_AnimationProc(monstercommand33);
            sq_drawCurrentFrame(monstercommand33, x - 135,y + 117, false);
            sq_AnimationProc(monstercommand34);
            sq_drawCurrentFrame(monstercommand34, x - 106,y + 117, false);
            sq_AnimationProc(monstercommand35);
            sq_drawCurrentFrame(monstercommand35, x - 77,y + 117, false);
            sq_AnimationProc(monstercommand36);
            sq_drawCurrentFrame(monstercommand36, x - 48,y + 117, false);

            sq_AnimationProc(monstercommand37);
            sq_drawCurrentFrame(monstercommand37, x - 280,y + 146, false);
            sq_AnimationProc(monstercommand38);
            sq_drawCurrentFrame(monstercommand38, x - 251,y + 146, false);

            sq_AnimationProc(monstercommand40);
            sq_drawCurrentFrame(monstercommand40, x - 280,y + 175, false);

			if (mouseFlag == 1 )
			{

				if (isMouseInScreenArea(obj,35 , 50,25,29) )
				{
					monsterId = 152200;
				}else if  (isMouseInScreenArea(obj,65 , 50,25,29) )
				{
					monsterId = 152201;
				}else if  (isMouseInScreenArea(obj,95 , 50,25,29) )
				{
					monsterId = 152202;
				}else if  (isMouseInScreenArea(obj,125 , 50,25,29) )
				{
					monsterId = 152203;
				}else if  (isMouseInScreenArea(obj,155 , 50,25,29) )
				{
					monsterId = 152204;
				}else if  (isMouseInScreenArea(obj,185 , 50,25,29) )
				{
					monsterId = 152205;
				}else if  (isMouseInScreenArea(obj,210 , 50,25,29) )
				{
					monsterId = 152206;
				}else if  (isMouseInScreenArea(obj,240 , 50,25,29) )
				{
					monsterId = 152207;
				}else if  (isMouseInScreenArea(obj,265 , 50,25,29) )
				{
					monsterId = 152208;
				}


                else if  (isMouseInScreenArea(obj,35 , 79,25,29) )
				{
					monsterId = 152209;
				}
                else if  (isMouseInScreenArea(obj,65 , 79,25,29) )
                {
                    monsterId = 152210;
                }else if  (isMouseInScreenArea(obj,95 , 79,25,29) )
                {
                    monsterId = 152211;
                }else if  (isMouseInScreenArea(obj,125 , 79,25,29) )
                {
                    monsterId = 152212;
                }else if  (isMouseInScreenArea(obj,155 , 79,25,29) )
                {
                    monsterId = 152213;
                }else if  (isMouseInScreenArea(obj,185 , 79,25,29) )
                {
                    monsterId = 152214;
                }else if  (isMouseInScreenArea(obj,210 , 79,25,29) )
                {
                    monsterId = 152215;
                }else if  (isMouseInScreenArea(obj,240 , 79,25,29) )
                {
                    monsterId = 152216;
                }else if  (isMouseInScreenArea(obj,265 , 79,25,29) )
                {
                    monsterId = 152217;
                }

                else if  (isMouseInScreenArea(obj,35 , 108,25,29) )
                {
                    monsterId = 152218;
                }else if  (isMouseInScreenArea(obj,65 , 108,25,29) )
                {
                    monsterId = 152219;
                }else if  (isMouseInScreenArea(obj,95 , 108,25,29) )
                {
                    monsterId = 152220;
                }else if  (isMouseInScreenArea(obj,125 , 108,25,29) )
                {
                    monsterId = 152221;
                }else if  (isMouseInScreenArea(obj,155 , 108,25,29) )
                {
                    monsterId = 152222;
                }else if  (isMouseInScreenArea(obj,185 , 108,25,29) )
                {
                    monsterId = 152223;
                }else if  (isMouseInScreenArea(obj,210 , 108,25,29) )
                {
                    monsterId = 152224;
                }else if  (isMouseInScreenArea(obj,240 , 108,25,29) )
                {
                    monsterId = 152225;
                }
                else if  (isMouseInScreenArea(obj,265 , 108,25,29) )
                {
                    monsterId = 152226;
                }

                else if  (isMouseInScreenArea(obj,35 , 137,25,29) )
                {
                    monsterId = 152227;
                }else if  (isMouseInScreenArea(obj,65 , 137,25,29) )
                {
                    monsterId = 152228;
                }else if  (isMouseInScreenArea(obj,95 , 137,25,29) )
                {
                    monsterId = 152229;
                }
                else if  (isMouseInScreenArea(obj,125 , 137,25,29) )
                {
                    monsterId = 152230;
                }else if  (isMouseInScreenArea(obj,155 , 137,25,29) )
                {
                    monsterId = 152231;
                }else if  (isMouseInScreenArea(obj,185 , 137,25,29) )
                {
                    monsterId = 152232;
                }else if  (isMouseInScreenArea(obj,210 , 137,25,29) )
                {
                    monsterId = 152233;
                }
                else if  (isMouseInScreenArea(obj,240 , 137,25,29) )
                {
                    monsterId = 152234;
                }else if  (isMouseInScreenArea(obj,265 , 137,25,29) )
                {
                    monsterId = 152234;
                }

                else if  (isMouseInScreenArea(obj,35 , 165,25,29) )
                {
                    monsterId = 152234;
                }else if  (isMouseInScreenArea(obj,65 , 165,25,29) )
                {
                    monsterId = 152234;
                }else if  (isMouseInScreenArea(obj,35 , 193,25,29) )
                {
                    monsterId = 152500;
                }
			}


		}else if (UiDisplayFlag == 4)
		{
		
			sq_AnimationProc(baojiBackGround);
			sq_drawCurrentFrame(baojiBackGround, 598 ,90, false);
		}else if (UiDisplayFlag == 5)
		{
			sq_AnimationProc(shuxBackGround);
			sq_drawCurrentFrame(shuxBackGround, 598 , 115, false);
		}else if (UiDisplayFlag == 6)
		{
			sq_AnimationProc(lightBackGround);
			sq_drawCurrentFrame(lightBackGround, 598 , 140, false);
		}else if (UiDisplayFlag == 7)
		{
			sq_AnimationProc(speedBackGround);
			sq_drawCurrentFrame(speedBackGround, 598 , 165, false);
		}else if (UiDisplayFlag == 8)
		{
			sq_AnimationProc(hpBackGround);
			sq_drawCurrentFrame(hpBackGround, 598 , 192, false);
		}else if (UiDisplayFlag == 9)
		{
			sq_AnimationProc(mpBackGround);
			sq_drawCurrentFrame(mpBackGround, 598 , 217, false);
		}else if (UiDisplayFlag == 10)
        {
            local damaX = 5;
            local damaY = 200;
            sq_AnimationProc(damaBackGround);
            sq_drawCurrentFrame(damaBackGround, damaX , damaY, false);
            drawDamageRateTable(obj,damaX,damaY);
        }else if (UiDisplayFlag == 11)
        {
            sq_AnimationProc(levelBackGround);
            sq_drawCurrentFrame(levelBackGround, 406 , 116, false);
        }



//		if (TIP_XPOS + TIP_YPOS > 0)
//		{
//			local sq_var = obj.getVar();
//			local etc0 = sq_var.GetAnimationMap("PoongjinTraingRoomTipEffect", "sqr/map/poongjintrainingroom/etc_0.ani");
//			sq_AnimationProc(etc0);
//			etc0.setImageRate( TIP_WIDTH.tofloat() / 32.0 , TIP_HEIGHT.tofloat() / 33.0 );	

//			sq_drawCurrentFrame(etc0, TIP_XPOS - 2,TIP_YPOS - 2, false);
//		}
//



		obj.getVar("mapControlManager").clear_vector();
		obj.getVar("mapControlManager").push_vector(x);
		obj.getVar("mapControlManager").push_vector(y);


	}else{
		UiDisplayFlag = 0;
		local sq_var = obj.getVar();
		local background = sq_var.GetAnimationMap("mapControlBackGround", "sqr/map/poongjintrainingroom/background.ani");

		sq_AnimationProc(background);
		sq_drawCurrentFrame(background,740,20, false);

		if ( mouseFlag == 1 && isMouseInScreenAreaIgnore(obj,772,33,22,76) )
		{
			isFoldMainScreen = 1;
		}
	}
}



function onMouseEvent(obj)
{
	if (isLeftMouse(obj) && mouseFlag!= 1)
	{
		mouseFlag = 1;
		onLeftMouseEvent(obj);
		obj.sq_PlaySound("SELECT_CHARACTER");
	}else if (isRightMouse(obj) && mouseFlag!= 2)
	{
		mouseFlag = 2;
		onRightMouseEvent(obj);
		obj.sq_PlaySound("MOUSE_OVER");
	}else if ( !isLeftMouse(obj) && !isRightMouse(obj) && mouseFlag != 0 )
	{
		mouseFlag = 0;
		onMouseEventUp(obj);
	}
}
function onMouseEventUp(obj)
{

}
function onLeftMouseEvent(obj)
{

	local bottonDown = obj.getVar().GetAnimationMap("botton_down", "sqr/map/poongjintrainingroom/commandbotton_down.ani");
	bottonDown.setCurrentFrameWithChildLayer(0);
	if (UiDisplayFlag == 1)
	{
		if ( isMouseInScreenArea(obj,395 , 235,50,20) )
		{
			if (monsterId != 0  )
			{
				sq_SendCreatePassiveObjectPacketPos(obj, monsterId, summonMonsterLevelNumber, obj.getXPos(), obj.getYPos(), 0);
//				outPut("dummy/dummy.txt","level" +  summonMonsterLevelNumber + "\n");
			}

		}else if ( isMouseInScreenArea(obj,688 , 90,82,24) )
        {
            local apd = obj.GetSquirrelAppendage("map/ap_escapist2.nut");
            if (apd)
                apd.getVar("damageNum").push_vector(0);
        }

			local x = obj.getVar("mapControlManager").get_vector(0);
			local y = obj.getVar("mapControlManager").get_vector(1);
	}else if (UiDisplayFlag == 4)
	{
		if (isMouseInScreenArea(obj, 600, 74,130,234) )
		{
		
				local lastValue = 0;
				if ( isMouseInScreenArea(obj,600 , 90,130,16) )
				{
					lastValue = 10;
				}else if ( isMouseInScreenArea(obj, 600, 106,130,16) )
				{
					lastValue = 20;
				}else if ( isMouseInScreenArea(obj, 600, 122,130,16) )
				{
					lastValue = 30;
				}else if ( isMouseInScreenArea(obj, 600, 138,130,16) )
				{
					lastValue = 40;
				}else if ( isMouseInScreenArea(obj, 600, 154,130,16) )
				{
					lastValue = 50;
				}else if ( isMouseInScreenArea(obj, 600, 170,130,16) )
				{
					lastValue = 60;
				}else if ( isMouseInScreenArea(obj, 600, 186,130,16) )
				{
					lastValue = 70;
				}else if ( isMouseInScreenArea(obj, 600, 202,130,16) )
				{
					lastValue = 80;
				}else if ( isMouseInScreenArea(obj, 600, 218,130,16) )
				{
					lastValue = 90;
				}else if ( isMouseInScreenArea(obj, 600, 234,130,16) )
				{
					lastValue = 100;
				}
				baojiIncrate = lastValue;
				setCharacterBuffAppend(obj);
		}
	}else if (UiDisplayFlag == 5)
	{
		if (isMouseInScreenArea(obj,600 , 83,130,203) )
		{
				local lastValue = 0;
				if ( isMouseInScreenArea(obj,600 , 120,130,16) )
				{
					lastValue = 300;
				}else if ( isMouseInScreenArea(obj,600 , 136,130,16) )
				{
					lastValue = 600;
				}else if ( isMouseInScreenArea(obj,600 , 152,130,16) )
				{
					lastValue = 900;
				}else if ( isMouseInScreenArea(obj,600 , 168,130,16) )
				{
					lastValue = 1200;
				}else if ( isMouseInScreenArea(obj,600 , 184,130,16) )
				{
					lastValue = 1500;
				}else if ( isMouseInScreenArea(obj,600 , 200,130,16) )
				{
					lastValue = 1800;
				}else if ( isMouseInScreenArea(obj,600 , 216,130,16) )
				{
					lastValue = 2100;
				}else if ( isMouseInScreenArea(obj,600 , 232,130,16) )
				{
					lastValue = 2400;
				}else if ( isMouseInScreenArea(obj,600 , 248,130,16) )
				{
					lastValue = 2700;
				}else if ( isMouseInScreenArea(obj,600 , 264,130,16) )
				{
					lastValue = 3000;
				}

				shuxIncrate = lastValue;
				setCharacterBuffAppend(obj);

		}


	}else if (UiDisplayFlag == 6)
	{
		if (isMouseInScreenArea(obj,600 , 137,130,176) )
		{
				local lastValue = 0;
				if ( isMouseInScreenArea(obj,600 , 153,130,16) )
				{
					lastValue = 25;
				}else if ( isMouseInScreenArea(obj,600 , 169,130,16) )
				{
					lastValue = 50;
				}else if ( isMouseInScreenArea(obj,600 , 185,130,16) )
				{
					lastValue = 75;
				}else if ( isMouseInScreenArea(obj,600 , 201,130,16) )
				{
					lastValue = 100;
				}else if ( isMouseInScreenArea(obj,600 , 217,130,16) )
				{
					lastValue = 125;
				}else if ( isMouseInScreenArea(obj,600 , 233,130,16) )
				{
					lastValue = 150;
				}else if ( isMouseInScreenArea(obj,600 , 249,130,16) )
				{
					lastValue = 200;
				}else if ( isMouseInScreenArea(obj,600 , 265,130,16) )
				{
					lastValue = 250;
				}else if ( isMouseInScreenArea(obj,600 , 281,130,16) )
				{
					lastValue = 300;
				}
				shuxBuffIncrate = lastValue;
				setCharacterBuffAppend(obj);

		}


	}else if (UiDisplayFlag == 7)
	{
		if (isMouseInScreenArea(obj,600 , 147,130,200) )
		{
		
				local lastValue = 0;
				if ( isMouseInScreenArea(obj,600 , 163,130,16) )
				{
					lastValue = 10;
				}else if ( isMouseInScreenArea(obj,600 , 179,130,16) )
				{
					lastValue = 20;
				}else if ( isMouseInScreenArea(obj,600 , 195,130,16) )
				{
					lastValue = 30;
				}else if ( isMouseInScreenArea(obj,600 , 211,130,16) )
				{
					lastValue = 40;
				}else if ( isMouseInScreenArea(obj,600 , 227,130,16) )
				{
					lastValue = 50;
				}else if ( isMouseInScreenArea(obj,600 , 243,130,16) )
				{
					lastValue = 60;
				}else if ( isMouseInScreenArea(obj,600 , 259,130,16) )
				{
					lastValue = 70;
				}else if ( isMouseInScreenArea(obj,600 , 275,130,16) )
				{
					lastValue = 80;
				}else if ( isMouseInScreenArea(obj,600 , 291,130,16) )
				{
					lastValue = 90;
				}else if ( isMouseInScreenArea(obj,600 , 307,130,16) )
				{
					lastValue = 100;
				}
				speedIncrate = lastValue;
				setCharacterBuffAppend(obj);

		}
	}else if (UiDisplayFlag == 8)
	{
		if (isMouseInScreenArea(obj,600 , 173,130,199) )
		{
		
				local lastValue = 1;
				if ( isMouseInScreenArea(obj,600 , 189,130,16) )
				{
					lastValue = 10;
				}else if ( isMouseInScreenArea(obj,600 , 205,130,16) )
				{
					lastValue = 20;
				}else if ( isMouseInScreenArea(obj,600 , 221,130,16) )
				{
					lastValue = 30;
				}else if ( isMouseInScreenArea(obj,600 , 237,130,16) )
				{
					lastValue = 40;
				}else if ( isMouseInScreenArea(obj,600 , 253,130,16) )
				{
					lastValue = 50;
				}else if ( isMouseInScreenArea(obj,600 , 269,130,16) )
				{
					lastValue = 60;
				}else if ( isMouseInScreenArea(obj,600 , 285,130,16) )
				{
					lastValue = 70;
				}else if ( isMouseInScreenArea(obj,600 , 301,130,16) )
				{
					lastValue = 80;
				}else if ( isMouseInScreenArea(obj,600 , 317,130,16) )
				{
					lastValue = 90;
				}else if ( isMouseInScreenArea(obj,600 , 333,130,16) )
				{
					lastValue = 100;
				}

				obj.setHp( (obj.getHpMax() * lastValue) / 100, null, true);
				setCharacterBuffAppend(obj);
		}
	}else if (UiDisplayFlag == 9)
	{
	
		if (isMouseInScreenArea(obj,600 , 200,130,199) )
		{
				local lastValue = 1;
				if ( isMouseInScreenArea(obj,600 , 216,130,16) )
				{
					lastValue = 10;
				}else if ( isMouseInScreenArea(obj,600 , 232,130,16) )
				{
					lastValue = 20;
				}else if ( isMouseInScreenArea(obj,600 , 248,130,16) )
				{
					lastValue = 30;
				}else if ( isMouseInScreenArea(obj,600 , 264,130,16) )
				{
					lastValue = 40;
				}else if ( isMouseInScreenArea(obj,600 , 280,130,16) )
				{
					lastValue = 50;
				}else if ( isMouseInScreenArea(obj,600 , 296,130,16) )
				{
					lastValue = 60;
				}else if ( isMouseInScreenArea(obj,600 , 312,130,16) )
				{
					lastValue = 70;
				}else if ( isMouseInScreenArea(obj,600 , 328,130,16) )
				{
					lastValue = 80;
				}else if ( isMouseInScreenArea(obj,600 , 344,130,16) )
				{
					lastValue = 90;
				}else if ( isMouseInScreenArea(obj,600 , 360,130,16) )
				{
					lastValue = 100;
				}

				obj.sendSetMpPacket( obj.getMpMax() * lastValue / 100 );
				setCharacterBuffAppend(obj);
		}
	}else if (UiDisplayFlag == 11)
    {

		if (isMouseInScreenArea(obj,407 , 117,73, 365) )
		{
				summonMonsterLevelNumber = -1;
				if ( isMouseInScreenArea(obj,407 , 119,73,18) )
				{
					summonMonsterLevelNumber = 5;
				}else if ( isMouseInScreenArea(obj,407 , 133,73,18) )
				{
					summonMonsterLevelNumber = 10;
				}else if ( isMouseInScreenArea(obj,407 , 151,73,18) )
				{
					summonMonsterLevelNumber = 15;
				}else if ( isMouseInScreenArea(obj,407 , 167,73,18) )
				{
					summonMonsterLevelNumber = 20;
				}else if ( isMouseInScreenArea(obj,407 , 183,73,18) )
				{
					summonMonsterLevelNumber = 25;
				}else if ( isMouseInScreenArea(obj,407 , 200,73,18) )
				{
					summonMonsterLevelNumber = 30;
				}else if ( isMouseInScreenArea(obj,407 , 217,73,18) )
				{
					summonMonsterLevelNumber = 35;
				}else if ( isMouseInScreenArea(obj,407 , 235,73,18) )
				{
					summonMonsterLevelNumber = 40;
				}else if ( isMouseInScreenArea(obj,407 , 250,73,18) )
				{
					summonMonsterLevelNumber = 45;
				}else if ( isMouseInScreenArea(obj,407 , 266,73,18) )
				{
					summonMonsterLevelNumber = 50;
				}else if ( isMouseInScreenArea(obj,407 , 285,73,18) )
				{
					summonMonsterLevelNumber = 55;
				}else if ( isMouseInScreenArea(obj,407 , 301,73,18) )
				{
					summonMonsterLevelNumber = 60;
				}else if ( isMouseInScreenArea(obj,407 , 317,73,18) )
				{
					summonMonsterLevelNumber = 65;
				}else if ( isMouseInScreenArea(obj,407 , 334,73,18) )
				{
					summonMonsterLevelNumber = 70;
				}else if ( isMouseInScreenArea(obj,407 , 351,73,18) )
				{
					summonMonsterLevelNumber = 75;
				}else if ( isMouseInScreenArea(obj,407 , 368,73,18) )
				{
					summonMonsterLevelNumber = 80;
				}else if ( isMouseInScreenArea(obj,407 , 384,73,18) )
				{
					summonMonsterLevelNumber = 85;
				}else if ( isMouseInScreenArea(obj,407 , 400,73,18) )
				{
					summonMonsterLevelNumber = 90;
				}else if ( isMouseInScreenArea(obj,407 , 416,73,18) )
				{
					summonMonsterLevelNumber = 95;
				}else if ( isMouseInScreenArea(obj,407 , 434,73,18) )
				{
					summonMonsterLevelNumber = 100;
				}else if ( isMouseInScreenArea(obj,407 , 452,73,18) )
				{
					summonMonsterLevelNumber = 105;
				}else if ( isMouseInScreenArea(obj,407 , 266,73,18) )
				{
					summonMonsterLevelNumber = 110;
				}


		}

//summonMonsterLevelNumber

    }


	if ( isMouseInScreenArea(obj,688 , 90,82,24) )
	{
		
		initCharacterInPoonTrainGroom(obj);
	}else if ( isMouseInScreenArea(obj,455, 235,50,20) )
	{
		
		if (obj.isMessage()) {

		}
		killAllMonster(obj);

	}else if ( isMouseInScreenArea(obj,688, 162,80,24) )
	{
		
		clearAllSkillCoolTime(obj);
	}
}

function initCharacterInPoonTrainGroom(obj)
{
		obj.sendSetMpPacket( obj.getMpMax() );
		obj.setHp(obj.getHpMax() , null, true);
		baojiIncrate = 0;
		shuxIncrate = 0;
		shuxBuffIncrate = 0;
		speedIncrate = 0;
		damageBounsPoongjintrainingroom = 0;
		summonMonsterLevelNumber = -1;
		setCharacterBuffAppend(obj);
}

function setCharacterBuffAppend(obj)
{
		CNSquirrelAppendage.sq_RemoveAppendage(obj, "map/ap_escapist.nut");		
		local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 12, false, "map/ap_escapist.nut", true);

		local change_appendage = appendage.sq_getChangeStatus("mapBuff");

		if(!change_appendage)
		{
			 change_appendage = appendage.sq_AddChangeStatusAppendageID(obj, obj, 0, 
			 CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, 0, APID_COMMON);

		}

		if(change_appendage)
		{

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, baojiIncrate.tofloat() );
			change_appendage.addParameter( CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, baojiIncrate.tofloat() );

			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, shuxIncrate.tofloat());
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, shuxIncrate.tofloat());



			change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_ALL, false, shuxBuffIncrate.tofloat());
			
			
			

			change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, speedIncrate.tofloat()*10);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, speedIncrate.tofloat()*10);
			change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, speedIncrate.tofloat()*10);

		}

}

function clearAllSkillCoolTime(obj)
{
		for (local i = 0; i < 255; i+=1)
		{
			obj.endSkillCoolTime(i);
		}
}


function killAllMonster(obj)
{
		local objectManager = obj.getObjectManager();

		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);
			if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) )
			{
				local activeObj = sq_GetCNRDObjectToActiveObject(object);
				
				if ( true )
				{
					activeObj.setHp(0 , null, true);
				}
			}
		}
}

function onRightMouseEvent(obj)
{
			UiDisplayFlag = 1;
}

function isLeftMouse(obj)
{
	local stage = sq_GetObjectManagerStage(obj);
	local control = stage.getMainControl();		
	
	if (control.IsLBDown())
		return true;
	return false;
}

function getMouseXPos(obj)
{
	return IMouse.GetXPos();
}

function getMouseYPos(obj)
{
	return IMouse.GetYPos();
}


function isRightMouse(obj)
{
	local stage = sq_GetObjectManagerStage(obj);
	local control = stage.getMainControl();		
	
	if (control.IsRBDown())
		return true;
	return false;
}

function drawDamageRateTable(obj,x,y)
{
    local apd = obj.GetSquirrelAppendage("map/ap_escapist2.nut");
    if (apd)
    {
        local damaVectorSize = apd.getVar("damageNum").size_vector();
        for (local i = damaVectorSize - DAMAGERATETABLE_LEN_MAX;i < damaVectorSize;i++)
        {
            if (i < 0)
            {
                
            }else{
                local i2 = i % DAMAGERATETABLE_LEN_MAX;
                
                drawNumberCount(obj,x - 100 + 70 ,y - 20 + 10 + 25 * i2 ,i + 1);
                drawNumberRate(obj, x - 100 + 170,y - 20 + 10 + 25 * i2 , apd.getVar("damageNum").get_vector(i) );
            }
        }

    }

}
function drawNumberCount(obj,x,y,value)
{

        local numImage = null;
        local numImage2 = null;
        local num = value;
        local geNum = num % 10;
        local shiNum = (num / 10)%10;
        numImage = returnBobyNumber(obj,geNum);
        numImage2 = returnBobyNumber(obj,shiNum);
        sq_AnimationProc(numImage);
        sq_drawCurrentFrame(numImage, x + 58, y + 23, false);
        sq_AnimationProc(numImage2);
        sq_drawCurrentFrame(numImage2, x + 50, y + 23, false);
}


function drawNumberRate(obj,x,y,value)
{

        local numImage = null;
        local numImage2 = null;
        local numImage3 = null;
        local numImage4 = null;
        local numImage5 = null;
        local numImage6 = null;
        local numImage7 = null;
        local numImage8 = null;
        local numImage9 = null;
        local numImage10 = null;
        local numImage11 = null;
        local numImage12 = null;

        local num = value;
        local num0 = num % 10;
        local num1 = (num / 10)%10;
        local num2 = (num / 100)%10;
        local num3 = (num / 1000)%10;
        local num4 = (num / 10000)%10;
        local num5 = (num / 100000)%10;
        local num6 = (num / 1000000)%10;
        local num7 = (num / 10000000)%10;
        local num8 = (num / 100000000)%10;
        local num9 = (num / 1000000000)%10;
        local num10 =(num / 10000000000)%10;

        numImage = returnBobyNumber(obj,num0);
        numImage2 = returnBobyNumber(obj,num1);
        numImage3 = returnBobyNumber(obj,num2);
        numImage4 = returnBobyNumber(obj,num3);
        numImage5 = returnBobyNumber(obj,num4);
        numImage6 = returnBobyNumber(obj,num5);
        numImage7 = returnBobyNumber(obj,num6);
        numImage8 = returnBobyNumber(obj,num7);
        numImage9 = returnBobyNumber(obj,num8);
        numImage10 = returnBobyNumber(obj,num9);
        numImage11 = returnBobyNumber(obj,num10);


        sq_AnimationProc(numImage);
        sq_drawCurrentFrame(numImage, x + 58, y + 23, false);
        sq_AnimationProc(numImage2);
        sq_drawCurrentFrame(numImage2, x + 50, y + 23, false);
        sq_AnimationProc(numImage3);
        sq_drawCurrentFrame(numImage3, x + 42, y + 23, false);
        sq_AnimationProc(numImage4);
        sq_drawCurrentFrame(numImage4, x + 34, y + 23, false);
        sq_AnimationProc(numImage5);
        sq_drawCurrentFrame(numImage5, x + 26, y + 23, false);
        sq_AnimationProc(numImage6);
        sq_drawCurrentFrame(numImage6, x + 18, y + 23, false);
        sq_AnimationProc(numImage7);
        sq_drawCurrentFrame(numImage7, x + 10, y + 23, false);
        sq_AnimationProc(numImage8);
        sq_drawCurrentFrame(numImage8, x + 2, y + 23, false);
        sq_AnimationProc(numImage9);
        sq_drawCurrentFrame(numImage9, x - 6, y + 23, false);
        sq_AnimationProc(numImage10);
        sq_drawCurrentFrame(numImage10, x - 14, y + 23, false);
        sq_AnimationProc(numImage11);
        sq_drawCurrentFrame(numImage11, x - 22, y + 23, false);
}
