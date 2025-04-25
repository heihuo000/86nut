STATE_GUNNER_STYLISH	<- 0
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_gunner_comminterrupt")
}


function sq_AddEffect(appendage)
{

}

function proc_appendage_gunner_comminterrupt(appendage)
{
	if(!appendage) return;
	gunner_comminterrupt(appendage);
}

function EnableSoften(obj,skillindex,state)
{
	if(obj.sq_GetState() == state)//üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
		return false;
	obj.setSkillCommandEnable(skillindex ,true);//ŞÅÒöĞüÒö£¨ïÇÕÕÓñøö£¬Ê¦ì¤ŞÅéÄ£©
		return true;
}

function SetSkillState(obj,skillindex,state,Arr)
{

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if(iEnterSkill == -1)
	return false;
	local nowstate = obj.sq_GetState()
	if(nowstate == state)//üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
	return false;
	if(obj.sq_IsUseSkill(skillindex))//÷÷Ó¨Ó×îñĞüÒöãÀÜúÊ¦éÄ£¨cd ÕÀÙÄÔõğÉËì£©
	{
		if(nowstate == 19 || nowstate == 8 || nowstate == 24 || nowstate == 37 || nowstate == 41 || nowstate == 33 || nowstate == 58 || nowstate == 236 ||nowstate == 237 ||nowstate == 238 ||nowstate == 240  	)
		gunner_skill_stylish(obj);
		obj.sq_IntVectClear();//?ğ¶ú¾Õá£¨ßÒ÷¾£©
		if(Arr.len() < 1)//åıÍıóÑâ¦â¦ğÚíşÓøá³éÍ1
		{
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);
			return true;
		}
		else
		{
			foreach(sub in Arr)//âàü»÷êâ¦ğÚArrØßËÁà÷ê¬ŞĞìısub£¬îÏãÀìéËÁâàü»
			obj.sq_IntVectPush(sub);//àâöÇí­ßÒ÷¾sub 
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);//àâöÇĞüÒößÒ÷¾
			return true;
		}
	}

}

function gunner_skill_stylish(obj)
{
	if(sq_getGrowType(obj) != 1)
		return;
	if(STATE_GUNNER_STYLISH < 5)
		STATE_GUNNER_STYLISH++;
	sq_SetMyShake(obj,8,50);//òèÔÑ ñşêóä²í»ĞùòèÔÑ
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_GUNNER_STYLISH, false,"character/gunner/appendage/ap_stylish.nut", false);
	local skill_level = sq_GetSkillLevel(obj, SKILL_GUNNER_STYLISH);
	appendage.sq_SetValidTime(sq_GetLevelData(obj, SKILL_GUNNER_STYLISH, 6, skill_level));//apğíî¤ãÁÊà BUFFğíî¤ãÁÊà¡£
	if(appendage)
	{
		//úéãÆbuffÓñøö
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_GUNNER_STYLISH, skill_level);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_GUNNER_STYLISH, true);
	}

}


function gunner_comminterrupt(appendage)
{

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if(!sourceObj || !parentObj) 
	{
		appendage.setValid(false);
		return;
	}
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local type = sq_getGrowType(obj);

		local mystate = obj.sq_GetState();

		local now_z = obj.getZPos();
		if(now_z > 10&&mystate==0){
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(90);
			obj.sq_AddSetStatePacket(6,STATE_PRIORITY_USER,true);
		}

		local isTower = sq_IsTowerDungeon();//áóÜÖŞİØÌñı÷²êõûùàì÷Ü
		if(isTower) return;//áóÜÖŞİØÌñı÷²êõûùàì÷Ü
		if(mystate == 0 ||mystate == 3||mystate == 4||mystate == 5||mystate == 9||mystate == 16||mystate == 40) return;



	EnableSoften(obj,3,19);				//üŞàÁ?
	SetSkillState(obj,3,19,[0,3]);
	
	EnableSoften(obj,47,8);				//İ©Íö÷¥
	SetSkillState(obj,47,8,[1,47]);
	EnableSoften(obj,6,21);				//ÓÎŞÒ
	SetSkillState(obj,6,21,[0]);

	EnableSoften(obj,14,20);			//BBQ
	SetSkillState(obj,14,20,[14]);
	if(mystate != 6 && mystate != 33 && mystate != 27 && mystate != 19){
		EnableSoften(obj,4,20);				//ã£ÓÕ
		SetSkillState(obj,4,20,[4]);
	}
	switch (type)
	{
	
		case 1://Ø¼êı
		if(mystate==6){
			EnableSoften(obj,35,38);			
			 SetSkillState(obj,35,38,[]);
		}
//		if(mystate==19){
//			EnableSoften(obj,101,56);			
//			 SetSkillState(obj,101,56,[94]); 
//		}
		EnableSoften(obj,5,8);			//øïÔéìéÌª
		if(obj.getZPos()>1)	
			SetSkillState(obj,5,169,[1,5,0]);
		else
			SetSkillState(obj,5,8,[1,5,0]);
		if(obj.getZPos()<1)	
		EnableSoften(obj,20,8);			//üŞÔéìéÌª
		 SetSkillState(obj,20,8,[1,20,0]);
		EnableSoften(obj,9,24);			//Õ¯ŞÒ
		 SetSkillState(obj,9,24,[15,1,0,100]);
		EnableSoften(obj,72,37);			//ÒıñìøïÔé
		 SetSkillState(obj,72,37,[0,0]);
		EnableSoften(obj,72,37);			//ÒıñìøïÔé
		 SetSkillState(obj,72,37,[0,0]);
		EnableSoften(obj,51,41);			//äªëíüŞàÁ
		 SetSkillState(obj,51,41,[0,1,4]);
		EnableSoften(obj,64,33);			//?ÎÊÓõ×À
		 SetSkillState(obj,64,33,[0]);
		EnableSoften(obj,15,27);			//ì¹ÔÑŞÒÌª
		 SetSkillState(obj,15,27,[15]);
		EnableSoften(obj,104,58);			//Ğ¿ùÚÒıñìøïÔé
		 SetSkillState(obj,104,58,[1,97]);
		EnableSoften(obj,236,236);			//ŞİØÌÔÍã©
		 SetSkillState(obj,236,236,[0]);
		EnableSoften(obj,237,237);			//ØÆß¯
		 SetSkillState(obj,237,237,[0]);
		EnableSoften(obj,238,238);			//äâğ¤ŞÒÌª
		 SetSkillState(obj,238,238,[0]);
		EnableSoften(obj,240,240);			//ğ¯öÒìÏÔÑ
		 SetSkillState(obj,240,240,[0]);
	if(STATE_GUNNER_STYLISH > 0)
	{
		local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/gunner/appendage/ap_stylish.nut");
		if(isAppend == false)
		{
				STATE_GUNNER_STYLISH = 0;
		}
	}
		break;

		case 2://ÓŞóæ
		EnableSoften(obj,39,26);			//?ŞÒ? Õ×ËÁßÒ÷¾ Û¡ŞÒõóËÛı¨èôßÒ÷¾?30
		SetSkillState(obj,39,26,[39,0,1,600]);
		EnableSoften(obj,38,26);			//×´÷¥Û¡ŞÒĞï
		SetSkillState(obj,38,26,[38,0,1]);
		EnableSoften(obj,75,26);			//í©÷¥?
		SetSkillState(obj,75,26,[75,0,1]);
		EnableSoften(obj,40,26);			//Úã÷¤Ğº? Õ×ËÁßÒ÷¾ Û¡ŞÒõóËÛı¨èôßÒ÷¾?30
		SetSkillState(obj,40,26,[40,0,0]);
		EnableSoften(obj,234,234);			//Ôõ×îí­Û¡ŞÒĞï
		SetSkillState(obj,234,234,[0,1,2]);
		EnableSoften(obj,108,26);			//SWí©÷¥?
		SetSkillState(obj,108,26,[108,0,1]);
		EnableSoften(obj,232,232);			//MSC-7
		SetSkillState(obj,232,232,[0,1]);
		EnableSoften(obj,235,235);			//?ØşŞÒàÊ
		SetSkillState(obj,235,235,[0,1,2,3]);
		EnableSoften(obj,71,36);			//äâõêÕáí­?
		SetSkillState(obj,71,36,[0,2]);
		break;

		case 3://Ñ¦ÌşŞÔ
		break;

		case 4://÷¥å·îöÊ«
		EnableSoften(obj,244,244);			//òªÒöâ¢Öô ÙÒêóí­ßÒ÷¾
		SetSkillState(obj,244,244,[]);
		EnableSoften(obj,245,245);			//õ±ãæàøú·øï ÙÒêóí­ßÒ÷¾
		SetSkillState(obj,245,245,[]);
		EnableSoften(obj,241,241);			//ÌîûıÕôáÜŞÒ
		SetSkillState(obj,241,241,[0,1,2]);
		EnableSoften(obj,48,31);			//Îßó©ŞÒÌª ÙÒêóí­ßÒ÷¾
		SetSkillState(obj,48,31,[]);
		EnableSoften(obj,109,59);			//áïÖ®ŞÒÌª
		SetSkillState(obj,109,59,[0,1,4]);
		EnableSoften(obj,53,8);			//ò¢è«Ö­æú
		SetSkillState(obj,53,8,[1,53,1]);
		EnableSoften(obj,78,13);			//Òùì³îÃÌª
		SetSkillState(obj,78,13,[1]);
		break;

	default:
		break;
	}



	return;

}









