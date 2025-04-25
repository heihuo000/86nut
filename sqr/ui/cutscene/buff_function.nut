function drawSwordmanBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 18)
		ani = sq_CreateAnimation("","common/cutscene/buff/sword_soulbringer_neo_buff.ani");
	else if(skillIndex == 38)
		ani = sq_CreateAnimation("","common/cutscene/buff/sword_weaponmaster_neo_buff.ani");
	else if(skillIndex == 40)
		ani = sq_CreateAnimation("","common/cutscene/buff/sword_berserker_neo_buff.ani");
	else if(skillIndex == 47)
		ani = sq_CreateAnimation("","common/cutscene/buff/sword_asura_neo_buff.ani");	
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+470,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawGunnerBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 46)
		ani = sq_CreateAnimation("","common/cutscene/buff/gunner_mechanic_neo_buff.ani");
	else if(skillIndex == 60)
		ani = sq_CreateAnimation("","common/cutscene/buff/gunner_ranger_neo_buff.ani");
	else if(skillIndex == 62)
		ani = sq_CreateAnimation("","common/cutscene/buff/gunner_launcher_neo_buff.ani");
	else if(skillIndex == 252)
		ani = sq_CreateAnimation("","common/cutscene/buff/gunner_spitfire_neo_buff.ani");
	else if(skillIndex == 112)
		ani = sq_CreateAnimation("","common/cutscene/buff/gunner_assault_neo_buff.ani");
	else
		return;
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+470,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawATGunnerBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 46)
		ani = sq_CreateAnimation("","common/cutscene/buff/atgunner_mechanic_neo_buff.ani");
	else if(skillIndex == 60)
		ani = sq_CreateAnimation("","common/cutscene/buff/atgunner_ranger_neo_buff.ani");
	else if(skillIndex == 62)
		ani = sq_CreateAnimation("","common/cutscene/buff/atgunner_launcher_neo_buff.ani");	
	else if(skillIndex == 252)
		ani = sq_CreateAnimation("","common/cutscene/buff/atgunner_spitfire_neo_buff.ani");	
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+470,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawFightBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 37)
		ani = sq_CreateAnimation("","common/cutscene/buff/fighter_striker_neo_buff.ani");
	else if(skillIndex == 38)
		ani = sq_CreateAnimation("","common/cutscene/buff/fighter_streetfighter_neo_buff.ani");
	else if(skillIndex == 50)
		ani = sq_CreateAnimation("","common/cutscene/buff/fighter_grappler_neo_buff.ani");
	else if(skillIndex == 30)
		ani = sq_CreateAnimation("","common/cutscene/buff/fighter_nenmaster_neo_buff.ani");	
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+485,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawATFighterBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 31)
		ani = sq_CreateAnimation("","common/cutscene/buff/atfighter_nenmaster_neo_buff.ani");
	else if(skillIndex == 43)
		ani = sq_CreateAnimation("","common/cutscene/buff/atfighter_streetfighter_neo_buff.ani");
	else if(skillIndex == 50)
		ani = sq_CreateAnimation("","common/cutscene/buff/atfighter_grappler_neo_buff.ani");
	else if(skillIndex == 37)
		ani = sq_CreateAnimation("","common/cutscene/buff/atfighter_striker_neo_buff.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+470,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawPriestBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 35)
		ani = sq_CreateAnimation("","common/cutscene/buff/priest_infighter_neo_buff.ani");
	else if(skillIndex == 45)
		ani = sq_CreateAnimation("","common/cutscene/buff/priest_crusader_neo_buff.ani");
	else if(skillIndex == 47)
		ani = sq_CreateAnimation("","common/cutscene/buff/priest_exorcist_neo_buff.ani");
	else if(skillIndex == 48)
		ani = sq_CreateAnimation("","common/cutscene/buff/priest_exorcist_neo_buff.ani");
	else if(skillIndex == 131)
		ani = sq_CreateAnimation("","common/cutscene/buff/priest_avenger_neo_buff.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+480,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawMageBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 29)
		ani = sq_CreateAnimation("","common/cutscene/buff/mage_elma_neo_buff.ani");
	else if(skillIndex == 81)
		ani = sq_CreateAnimation("","common/cutscene/buff/mage_summon_neo_buff.ani");
	else if(skillIndex == 40)
		ani = sq_CreateAnimation("","common/cutscene/buff/mage_battle_neo_buff.ani");
	else if(skillIndex == 41)
		ani = sq_CreateAnimation("","common/cutscene/buff/mage_witch_neo_buff.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+480,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}

function drawATMageBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 28)
		ani = sq_CreateAnimation("","common/cutscene/buff/atmage_elementalbomber_neo_buff.ani");
	else if(skillIndex == 31)
		ani = sq_CreateAnimation("","common/cutscene/buff/atmage_glacialmaster_neo_buff.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+480,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}


function drawThiefBuffUI(obj,skillIndex)
{
	local ani;
	if(skillIndex == 230)
		ani = sq_CreateAnimation("","common/cutscene/buff/thief_rogue_neo_buff.ani");
	else if(skillIndex == 50)
		ani = sq_CreateAnimation("","common/cutscene/buff/thief_necro_neo_buff.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos+480,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
}


function drawATPriestBuffUI(obj,skillIndex){
	
	local equIndex = sq_GetLevelData(obj, 169, 2, 1);
	local aniPath;
	if(skillIndex == 78){
		aniPath = "etc/ultimateskillani/priestf_crusader_buff.ani";
	}
	else if(skillIndex == 139)
	{
		aniPath = "etc/ultimateskillani/priestf_mistress_buff.ani";
	}
	else if(skillIndex == 217)
	{
		aniPath = "etc/ultimateskillani/priestf_inquisitor_buff.ani";
	}
	else
	{
		return;
	}
	local ani = sq_CreateAnimation("",aniPath);
	local pooledObj = sq_CreatePooledObject(ani,true);
	local xPos = obj.getXPos();
	local yPos = obj.getObjectManager().getFieldYPos(0, 0, 0);
	pooledObj.setCurrentPos(xPos,yPos,0);
	pooledObj.setDrawLayer(ENUM_DRAWLAYER_BOTTOM);
	sq_AddObject(obj,pooledObj,OBJECTTYPE_DRAWONLY,false);
	
	if(equIndex == 1)
	{
		sq_AddDrawOnlyAniFromParent(obj,"character/common/animation/uniquebeast_1st/at_priest/SinsuATPriestChange_Front_ToSymbol_01.ani", 0, 1, 0);
		sq_AddDrawOnlyAniFromParent(obj,"character/common/animation/uniquebeast_1st/at_priest/SinsuATPriestChange_Back_00.ani", 0, -1, 0);
		sq_AddDrawOnlyAniFromParent(obj,"character/common/animation/uniquebeast_1st/at_priest/SinsuATPriestChange_Bottom_00.ani", 0, -2, 0);
	}
}