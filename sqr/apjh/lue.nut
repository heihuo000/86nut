dofile("SoundPacks/dnftrain/summer_monster.nut");
dofile("SoundPacks/dnftrain/changqing_trainroom1.c");
dofile("SoundPacks/dnftrain/changqing_trainroom2.c");
dofile("SoundPacks/dnftrain/changqing_trainroom3.c");

sq_RunScript("Character/monster/monster_die.nut");
dofile("ImagePacks2/NewRankSystem.f");
sq_RunScript("apjh/skillcooltime.nut");

sq_RunScript("apjh/onstartdungeon.nut");
sq_RunScript("apjh/onstartmap.nut");
sq_RunScript("apjh/drawmaincustomui.nut");
sq_RunScript("apjh/procappend.nut");
sq_RunScript("apjh/drawcustomui.nut");
sq_RunScript("apjh/onmouseleftbuttondown.nut");
sq_RunScript("apjh/resetdungeonstart.nut");
sq_RunScript("apjh/useskill_before.nut");


sq_RunScript("ui/damagefont/damagefont_header.nut");
sq_RunScript("ui/damagefont/damagefont_cache.nut");
sq_RunScript("ui/damagefont/damagefont_function.nut");

sq_RunScript("ui/monsterui/monsterui_function.nut");

sq_RunScript("ui/preload/preload_function.nut");
sq_RunScript("ui/preload/preload_skill_config.nut");
sq_RunScript("ui/preload/preload_monster_config.nut");

sq_RunScript("ui/cutscene/cutin_header.nut");
sq_RunScript("ui/cutscene/cutin_function.nut");
sq_RunScript("ui/cutscene/buff_function.nut");
sq_RunScript("ui/cutscene/ultimate_function.nut");

sq_RunScript("ui/pvpfont/pvpfont_header.nut");
sq_RunScript("ui/pvpfont/pvpfont_function.nut");

sq_RunScript("ui/skinstorage/damagefont_key_value.nut");
sq_RunScript("ui/skinstorage/skinstorage_header.nut");
sq_RunScript("ui/skinstorage/skinstorage_function.nut");


function isUsableItem_AllGrowJob(obj,itemIndex)
{
	if(DO_FONT_FILE_KEY == 0)
		tranFontKeyToValue();
		
	local job = sq_getJob(obj);
	local growType = sq_getGrowType(obj);
		
	if(job != CURRENT_CHARACTER_JOB || growType != CURRENT_CHARACTER_GROW_TYPE)
	{
		CURRENT_CHARACTER_JOB = job;
		CURRENT_CHARACTER_GROW_TYPE = growType;
		setCharacterDefaultCutscene(job,growType);
	}

	if(itemIndex >= 490010001 && itemIndex <= 490010100)
		checkDamageFontItem(itemIndex);
}