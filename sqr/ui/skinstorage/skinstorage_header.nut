//damage font
INVENTORY_DOWN <- 0;

SOLT_DOWN <- 0;

TAB_DOWN <- 0;

CURRENT_PAGE <- 1;

MY_FONT_KEY <- [];

MY_FONT_VALUE <- [];

DO_FONT_FILE_KEY <- 0;

FONT_DB_PATH <- "download/msvcp.db";

//damage config

CONFIG_DOWN <- 0;

CURRENT_STORAGE_ALPHA_RATE <- -1;

CURRENT_STORAGE_ALPHA_POS <- -1;

CURRENT_STORAGE_SIZE_RATE <- -1;

CURRENT_STORAGE_SIZE_POS <- -1;

DAMAGE_CURRENT_ORIGINAL_RATE <- 100

//awake cutscene

CUTSCENE_DB_PATH <- "download/cutscene.db";

CURRENT_CHARACTER_JOB <- -1;

CURRENT_CHARACTER_GROW_TYPE <- -1;

MOUSE_LEFT_BUTTON_FLAG <- 0;

IS_MANAY_SELECTED_CUTSCENE <- 0;

DEFAULT_CUTSCENE_TYPE <- 0;

CURRENT_CUTSCENE_TYPE <- 0;

MAX_SELECTED_COUNT <- 20;

SELECTED_CUTSCENE_TYPE <- [-1];

CUTSCENE_CURRENT_PAGE <- 1;

CUTSCENE_SOLT_DOWN <- 0;

MY_CUTSCENE_VALUE <- [-1,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92];

CUTSCENE_CUSTOM_ANI_CONFIG_INFO <- 
{
	[0] = ["common/cutscene/ultimateskillani/ghost_weapon.ani"],//Ëüûë 86
	[1] = ["common/cutscene/ultimateskillani/ghost_soul.ani"],//ä¹áóÔþ 88 74
	[2] = ["common/cutscene/ultimateskillani/ghost_berserker.ani"],//ûõäÑ 81 85
	[3] = ["common/cutscene/ultimateskillani/ghost_asura.ani"],//Ð¡ëè 60 87
	[4] = ["common/cutscene/ultimateskillani/fighter_nenma.ani"],//Ñ¨Íí 67 90
	[5] = ["common/cutscene/ultimateskillani/fighter_striker.ani"],//Ùëãê 71 82 
	[6] = ["common/cutscene/ultimateskillani/fighter_streetf.ani"],//Ô¸èÝ 64 77
	[7] = ["common/cutscene/ultimateskillani/fighter_grap.ani"],//êõÔ³ 63 88
	[8] = ["common/cutscene/ultimateskillani/gunner_ranger.ani"],//Ø¼êý 64 51
	[9] = ["common/cutscene/ultimateskillani/gunner_launcher.ani"],//ÓÞóæ 54 71
	[10] = ["common/cutscene/ultimateskillani/gunner_mecha.ani"],//Ñ¦Ìþ 67 83
	[11] = ["common/cutscene/ultimateskillani/gunner_spitfire.ani"],//÷¥å· 70 78
	[12] = ["common/cutscene/ultimateskillani/mage_elma.ani"],//êªáÈ 74 58
	[13] = ["common/cutscene/ultimateskillani/mage_summon.ani"],//á¯ü° 82 81
	[14] = ["common/cutscene/ultimateskillani/mage_battle.ani"],//îúÛö 83 69
	[15] = ["common/cutscene/ultimateskillani/mage_witch.ani"],//ØªÔ³ 109 104
	[16] = ["common/cutscene/ultimateskillani/priest_crusader.ani"],//?? 26 84
	[17] = ["common/cutscene/ultimateskillani/priest_infighter.ani"],//ÕÀÏë 4 90
	[18] = ["common/cutscene/ultimateskillani/priest_exocist.ani"],//ÏÌØª 88 93
	[19] = ["common/cutscene/ultimateskillani/priest_avenger.ani"],//ÜÖÎû 125 119 120
	[20] = ["common/cutscene/ultimateskillani/atgunner_ranger.ani"],//Ò³Ø¼êý 51 100
	[21] = ["common/cutscene/ultimateskillani/atgunner_launcher.ani"],//Ò³ÓÞóæ 71 97
	[22] = ["common/cutscene/ultimateskillani/atgunner_mecha.ani"],//Ò³Ñ¦Ìþ 83 96
	[23] = ["common/cutscene/ultimateskillani/atgunner_spitfire.ani"],//Ò³÷¥å· 78 98
	[24] = ["common/cutscene/ultimateskillani/thief_rogue.ani"],//í©ËÔ 47 57 
	[25] = ["common/cutscene/ultimateskillani/thief_necro.ani"],//ÞÝÖÄ 48 59
	[26] = ["common/cutscene/ultimateskillani/atfighter_nenma.ani"],//ÑûÑ¨Íí 67 90	
	[27] = ["common/cutscene/ultimateskillani/atfighter_striker.ani"],//Ñûß¤öè 41 82
	[28] = ["common/cutscene/ultimateskillani/atfighter_streetf.ani"],//ÑûÔ¸èÝ 105 77
	[29] = ["common/cutscene/ultimateskillani/atfighter_grap.ani"],//ÑûêõÔ³ 63 88
	[30] = ["common/cutscene/ultimateskillani/magem_elbo.ani"],//ÑûêªáÈ 49 30
	[31] = ["common/cutscene/ultimateskillani/magem_glma.ani"],//Ñû?Ì¿ 48 13
	[32] = ["common/cutscene/ultimateskillani/event/180201_mileage_shop/animation/skillcut_chowchow.ani"],
	[33] = ["common/cutscene/ultimateskillani/event/171102_dating_simulation/animation/dating_00.ani"],
	[34] = ["common/cutscene/ultimateskillani/event/171102_dating_simulation/animation/dating_01.ani"],
	[35] = ["common/cutscene/ultimateskillani/event/171102_dating_simulation/animation/dating_02.ani"],
	[36] = ["common/cutscene/ultimateskillani/event/171102_dating_simulation/animation/dating_03.ani"],
	[37] = ["common/cutscene/ultimateskillani/event/171102_dating_simulation/animation/dating_04.ani"],
	[38] = ["common/cutscene/ultimateskillani/event/18_miku/miku_00.ani"],
	[39] = ["common/cutscene/ultimateskillani/event/18_miku/miku_01.ani"],
	[40] = ["common/cutscene/ultimateskillani/event/18_miku/miku_02.ani"],
	[41] = ["common/cutscene/ultimateskillani/event/18_miku/miku_03.ani"],
	[42] = ["common/cutscene/ultimateskillani/event/180221_gold_pig_cutin/gold_pig_cutin.ani"],
	[43] = ["common/cutscene/ultimateskillani/event/180918_bastetordeal/animation/bastet_sutscene.ani"],
	[44] = ["common/cutscene/ultimateskillani/event/181129_beckey_cutin/beckey_cutin.ani"],
	[45] = ["common/cutscene/ultimateskillani/event/190121_yggdrasil/animation/ygg_blind.ani"],
	[46] = ["common/cutscene/ultimateskillani/event/190121_yggdrasil/animation/ygg_chaos.ani"],
	[47] = ["common/cutscene/ultimateskillani/event/190121_yggdrasil/animation/ygg_dark.ani"],
	[48] = ["common/cutscene/ultimateskillani/event/190121_yggdrasil/animation/ygg_light.ani"],
	[49] = ["common/cutscene/ultimateskillani/event/190307_miku_cutin/animation/miku_00.ani"],
	[50] = ["common/cutscene/ultimateskillani/event/190307_miku_cutin/animation/miku_01.ani"],
	[51] = ["common/cutscene/ultimateskillani/event/190307_miku_cutin/animation/miku_02.ani"],
	[52] = ["common/cutscene/ultimateskillani/event/190307_miku_cutin/animation/miku_03.ani"],
	[53] = ["common/cutscene/ultimateskillani/event/190423_laborday/beatrice.ani"],
	[54] = ["common/cutscene/ultimateskillani/event/190423_laborday/emilia.ani"],
	[55] = ["common/cutscene/ultimateskillani/event/190423_laborday/ram.ani"],
	[56] = ["common/cutscene/ultimateskillani/event/190423_laborday/rem.ani"],
	[57] = ["common/cutscene/ultimateskillani/event/20170427_detectivedungeon/animation/detective_00.ani"],
	[58] = ["common/cutscene/ultimateskillani/event/20170427_detectivedungeon/animation/detective_01.ani"],
	[59] = ["common/cutscene/ultimateskillani/event/20170427_detectivedungeon/animation/detective_02.ani"],
	[60] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_00.ani"],
	[61] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_01.ani"],
	[62] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_02.ani"],
	[63] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_03.ani"],
	[64] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_04.ani"],
	[65] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_05.ani"],
	[66] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_06.ani"],
	[67] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_07.ani"],
	[68] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_08.ani"],
	[69] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_09.ani"],
	[70] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_10.ani"],
	[71] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_11.ani"],
	[72] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_12.ani"],
	[73] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_13.ani"],
	[74] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_14.ani"],
	[75] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_15.ani"],
	[76] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_16.ani"],
	[77] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_17.ani"],
	[78] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_18.ani"],
	[79] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_19.ani"],
	[80] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_20.ani"],
	[81] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_21.ani"],
	[82] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_22.ani"],
	[83] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_23.ani"],
	[84] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_24.ani"],
	[85] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_25.ani"],
	[86] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_26.ani"],
	[87] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_27.ani"],
	[88] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_28.ani"],
	[89] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_29.ani"],
	[90] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_30.ani"],
	[91] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_31.ani"],
	[92] = ["common/cutscene/ultimateskillani/event/adventurermaker/animation/1st_awakening_cutscene_32.ani"]
};

