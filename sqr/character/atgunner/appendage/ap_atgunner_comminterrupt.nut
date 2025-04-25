STATE_ATGUNNER_STYLISH	<- 0

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atgunner_comminterrupt")
}


function sq_AddEffect(appendage)
{

}

function proc_appendage_atgunner_comminterrupt(appendage)
{
	if(!appendage) return;
	atgunner_comminterrupt(appendage);
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
		if(nowstate == 19 || nowstate == 8 || nowstate == 22 || nowstate == 23 || nowstate == 20 || nowstate == 24 || nowstate == 37 || nowstate == 41 ||nowstate == 27 ||nowstate == 58 ||nowstate == 236 ||nowstate == 238 ||nowstate == 239)
		atgunner_skill_stylish(obj);
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

function atgunner_skill_stylish(obj)
{
	if(STATE_ATGUNNER_STYLISH < 5)
	STATE_ATGUNNER_STYLISH++;
	sq_SetMyShake(obj,8,50);//òèÔÑ ñşêóä²í»ĞùòèÔÑ
	local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_ATGUNNER_STYLISH, false,"character/atgunner/appendage/ap_stylish.nut", false);
	local skill_level = sq_GetSkillLevel(obj, SKILL_ATGUNNER_STYLISH);
	appendage.sq_SetValidTime(sq_GetLevelData(obj, SKILL_ATGUNNER_STYLISH, 6, skill_level));//apğíî¤ãÁÊà BUFFğíî¤ãÁÊà¡£
	if(appendage)
		{
		//úéãÆbuffÓñøö
		appendage.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(obj), SKILL_ATGUNNER_STYLISH, skill_level);
		CNSquirrelAppendage.sq_AppendAppendageID(appendage, obj, obj, SKILL_ATGUNNER_STYLISH, true);
		}
}


function atgunner_comminterrupt(appendage)
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
		local isTower = sq_IsTowerDungeon();//áóÜÖŞİØÌñı÷²êõûùàì÷Ü
		if(isTower) return;//áóÜÖŞİØÌñı÷²êõûùàì÷Ü
		if(mystate == 3||mystate == 4||mystate == 5||mystate == 6||mystate == 9||mystate == 16) return;

	EnableSoften(obj,3,19);			//üŞàÁti
	SetSkillState(obj,3,19,[3]);
	EnableSoften(obj,47,8);				//İ©Íö÷¥
	SetSkillState(obj,47,8,[1,47,0]);
	//EnableSoften(obj,6,22);				//ïùí©ŞÒ
	//SetSkillState(obj,6,22,[0,1,2]);
	EnableSoften(obj,4,20);				//í©?
	SetSkillState(obj,4,20,[4]);
	EnableSoften(obj,5,8);			//BBQ
	SetSkillState(obj,5,8,[1,5,0]);


	switch (type)
	{

		case 1://Ø¼êı
		EnableSoften(obj,5,8);			//øïÔéìéÌª
		 SetSkillState(obj,5,8,[1,5,0]);
		EnableSoften(obj,20,8);			//üŞÔéìéÌª
		 SetSkillState(obj,20,8,[1,20,0]);
		EnableSoften(obj,9,24);			//Õ¯ŞÒ
		 SetSkillState(obj,9,24,[15,2,0,100]);
		EnableSoften(obj,72,37);			//ÒıñìøïÔé
		 SetSkillState(obj,72,37,[0,0,1,2,3]);
		EnableSoften(obj,15,27);			//ì¹ÔÑŞÒÌª
		 SetSkillState(obj,15,27,[15]);
		EnableSoften(obj,236,236);			//äâğ¤ŞÒÌª
		 SetSkillState(obj,236,236,[0,1,2]);
		EnableSoften(obj,104,58);			//Ğ¿ùÚÒıñìøïÔé
		 SetSkillState(obj,104,58,[1,97,98,0,5]);
		EnableSoften(obj,238,238);			//áğ?ï·ùÜ
		 SetSkillState(obj,238,238,[0,1,2]);
		EnableSoften(obj,239,239);			//úìÙñğ®
		 SetSkillState(obj,239,239,[0]);
			if(STATE_ATGUNNER_STYLISH > 0)
			{
				local isAppend = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atgunner/appendage/ap_stylish.nut");
				if(isAppend == false)
				{
						STATE_ATGUNNER_STYLISH = 0;
				}
			}
		break;

		case 2://ÓŞóæ
		EnableSoften(obj,39,26);			//leiŞÒpao Õ×ËÁßÒ÷¾ Û¡ŞÒõóËÛı¨èôßÒ÷¾?30
		SetSkillState(obj,39,26,[39,0,1,600]);
		EnableSoften(obj,38,26);			//×´÷¥Û¡ŞÒĞï
		SetSkillState(obj,38,26,[38,0,1]);
		EnableSoften(obj,75,26);			//í©÷¥?
		SetSkillState(obj,75,26,[75,0,1]);
		EnableSoften(obj,40,26);			//Úã÷¤Ğº? Õ×ËÁßÒ÷¾ Û¡ŞÒõóËÛı¨èôßÒ÷¾?30
		SetSkillState(obj,40,26,[40,0,0]);
		EnableSoften(obj,234,234);			//ê«ã·úşäâõê?
		SetSkillState(obj,234,234,[0,1]);
		EnableSoften(obj,233,233);			//FSC-7 ÙÒêóí­ßÒ÷¾
		SetSkillState(obj,233,233,[0]);
		EnableSoften(obj,235,235);			//ûıÕôîïËÒ
		SetSkillState(obj,235,235,[0,1,2]);
		EnableSoften(obj,108,26);			//SW×´÷¥
		SetSkillState(obj,108,26,[108,0,1]);
		EnableSoften(obj,97,44);			//êÀÍ¯Ø£í­?
		SetSkillState(obj,97,44,[0,1]);
		EnableSoften(obj,71,36);			//äâõêÕáí­?
		SetSkillState(obj,71,36,[0,2,0]);
		break;

		case 3://Ñ¦ÌşŞÔ
		break;

		case 4://÷¥å·îöÊ«
		EnableSoften(obj,240,240);			//ñìÕôíÈ÷¥
		SetSkillState(obj,240,240,[0]);
		EnableSoften(obj,243,243);			//æğäââ¢Öô
		SetSkillState(obj,243,243,[0]);
		EnableSoften(obj,78,13);			//Òùì³îÃÌª
		SetSkillState(obj,78,13,[1]);
		EnableSoften(obj,242,242);			//ËÒûı
		SetSkillState(obj,242,242,[0,1,0,1]);
		EnableSoften(obj,241,241);			//ÌîûıÕôáÜŞÒ
		SetSkillState(obj,241,241,[0,1,2]);
		EnableSoften(obj,48,31);			//Îßó©ŞÒÌª ÙÒêóí­ßÒ÷¾
		SetSkillState(obj,48,31,[0]);
		EnableSoften(obj,109,59);			//áïÖ®ŞÒÌª
		SetSkillState(obj,109,59,[0,1,4]);
		break;

	default:
		break;
	}

	return;
}




