STATE_FFRENZY 	<- 0		//÷÷Ó¨úìñýÎÊøìîïÏÑÜ¨Õá


function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_comminterrupt")
}

function proc_appendage_swordman_comminterrupt(appendage)
{
	if(!appendage) return;
	swordman_comminterrupt(appendage);
}

function EnableSoften(obj,skillindex,state)
{
	if(obj.sq_GetState() == state)				//üòö¢Ó×îñßÒ÷¾æ¨îîóÑÝïÎò ÛÁò­ÙíùÚêõûùÔÒËÁÐüÒö
		return false;
	obj.setSkillCommandEnable(skillindex ,true);		//ÞÅÒöÐüÒö£¨ïÇÕÕÓñøö£¬Ê¦ì¤ÞÅéÄ£©
		return true;
}

function SetSkillState(obj,skillindex,state,Arr)
{

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if (iEnterSkill == -1)
		return false;
	if(obj.sq_GetState() == state)				//üòö¢Ó×îñßÒ÷¾æ¨îîóÑÝïÎò ÛÁò­ÙíùÚêõûùÔÒËÁÐüÒö
		return false;
	if(obj.sq_IsUseSkill(skillindex))				//÷÷Ó¨Ó×îñÐüÒöãÀÜúÊ¦éÄ£¨cd ÕÀÙÄÔõðÉËì£©
	{
		obj.sq_IntVectClear();			//?ð¶ú¾Õá£¨ßÒ÷¾£©
		if(Arr.len() < 1)				//åýÍýóÑâ¦â¦ðÚíþÓøá³éÍ1
		{
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);
			return true;
		}
		else
		{	
			foreach(sub in Arr)				//âàü»÷êâ¦ðÚArrØßËÁà÷ê¬ÞÐìýsub£¬îÏãÀìéËÁâàü»
				obj.sq_IntVectPush(sub);		//àâöÇí­ßÒ÷¾sub 
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);	//àâöÇÐüÒößÒ÷¾
			return true;
		}
	}

}

function swordman_comminterrupt(appendage)
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
		local isTower = sq_IsTowerDungeon();//áóÜÖÞÝØÌñý÷²êõûùàì÷Ü
		if(isTower) return;//áóÜÖÞÝØÌñý÷²êõûùàì÷Ü
		if(mystate == 3||mystate == 4||mystate == 5||mystate == 6||mystate == 9||mystate == 16||mystate == 236) return;

		EnableSoften(obj,5,20);//Ð¡óÖ
		SetSkillState(obj,5,20,[0,0]);
		EnableSoften(obj,65,36);//ÝÚß£Ìª
		SetSkillState(obj,65,36,[0]);
		EnableSoften(obj,58,32);//Ö®÷îóÖ
		SetSkillState(obj,58,32,[0]);
		EnableSoften(obj,64,35);//ä¨í®óÖ
		SetSkillState(obj,64,35,[]);
		EnableSoften(obj,77,42);//êÅÎÃóÖ
		SetSkillState(obj,77,42,[0]);
		EnableSoften(obj,20,24);//ò¢Ö® ÷îÔÑËü
		SetSkillState(obj,20,24,[20]);
		//EnableSoften(obj,16,25);//ëÞÎÃÕªìÓ
		//SetSkillState(obj,16,25,[]);
	switch (type)
	{

		case 1:
		EnableSoften(obj,67,8);//×ìÐ¡Ëüâú
		SetSkillState(obj,67,8,[0,67]);
		EnableSoften(obj,68,37);//÷òÏÚã®×£Ìª
		SetSkillState(obj,68,37,[0,0]);
		EnableSoften(obj,9,23);//ÚûÓïóÖ
		SetSkillState(obj,9,23,[0,0]);
		EnableSoften(obj,72,39);//Øí×£Ó¨ÍöóÖ
		SetSkillState(obj,72,39,[0,1]);
		EnableSoften(obj,73,40);//ü³ç¯ËüÙñ
		SetSkillState(obj,73,40,[0]);
		EnableSoften(obj,97,56);//÷òÍöÚûÓïóÖ
		SetSkillState(obj,97,56,[0]);
		//EnableSoften(obj,105,61);//×µãý
		//SetSkillState(obj,105,61,[0,104]);
		if(mystate == 63 || mystate == 62)//Òö×µå¸í©ïÈã®
		{
		//EnableSoften(obj,107,62);//×µãýí©
		//SetSkillState(obj,107,62,[0,61]);
		//EnableSoften(obj,108,63);//×µãýå¸
		//SetSkillState(obj,108,63,[0,61,62,104,0]);
		EnableSoften(obj,109,64);//×µãýã®
		SetSkillState(obj,109,64,[0,6,61]);
		}
		EnableSoften(obj,236,236);//âëóÖ
		SetSkillState(obj,236,236,[0]);
		EnableSoften(obj,235,235);//×µàøÕª
		SetSkillState(obj,235,235,[0,5]);
		EnableSoften(obj,234,234);//÷òÍöóÖ
		SetSkillState(obj,234,234,[0,5]);
		break;

		case 2:
		EnableSoften(obj,112,66);//Ð¡ç¯ß²ÐäËü
		SetSkillState(obj,112,66,[]);
		EnableSoften(obj,111,65);//Ð¡ç¯ø½
		SetSkillState(obj,111,65,[]);
		EnableSoften(obj,60,33);//Ð¡ç¯àì
		SetSkillState(obj,60,33,[0]);
		EnableSoften(obj,95,55);//Ù×Ýøß²?òæ
		SetSkillState(obj,95,55,[]);
		EnableSoften(obj,87,50);//ø×ÕÃáó
		SetSkillState(obj,87,50,[0]);
		EnableSoften(obj,237,237);//Ð¡óÖ ÎÊÒÁ
		SetSkillState(obj,237,237,[0]);
		EnableSoften(obj,238,238);//Ð¡óÖ Ö¡è«
		SetSkillState(obj,238,238,[]);
		EnableSoften(obj,239,239);//êëûëñýøÖÖôÓì
		SetSkillState(obj,239,239,[]);
		EnableSoften(obj,247,247);//Ù¢ð®ñýá»
		SetSkillState(obj,247,247,[]);
		EnableSoften(obj,240,240);//êëûëË½×ü ãÒ
		SetSkillState(obj,240,240,[0]);
		EnableSoften(obj,241,241);//èÝíºûÜÖµ ÑÎÌ«Ë½×ü
		SetSkillState(obj,241,241,[]);

		break;

		case 3:
		EnableSoften(obj,232,232);//øìÒÁÎÊóÖ
		SetSkillState(obj,232,232,[0]);
		EnableSoften(obj,233,233);//øìÒÁÎÊóÖ
		SetSkillState(obj,233,233,[0]);
		EnableSoften(obj,31,26);//Ðîûëñýâ¢
		SetSkillState(obj,31,26,[0,31]);
		EnableSoften(obj,102,26);//Øþûëñýâ¢
		SetSkillState(obj,102,26,[0,102]);
		EnableSoften(obj,229,229);//úìøï
		SetSkillState(obj,229,229,[]);
		EnableSoften(obj,245,245);//öÈÙ¤úìê¢
		SetSkillState(obj,245,245,[0]);
		EnableSoften(obj,231,231);//úìØª?ô¸
		SetSkillState(obj,231,231,[0]);
		if(obj.sq_IsEnterSkill(76) != -1)//äÎù»úìñýÎÊøì
		{
		if(STATE_FFRENZY == 0)
		{STATE_FFRENZY=1;}
		else if(STATE_FFRENZY == 1)
		{STATE_FFRENZY=0;}
		}
		if(STATE_FFRENZY)
		{
		EnableSoften(obj,79,43);//ÐîûëÜæØªóÖ
		EnableSoften(obj,103,60);//úìÑ¨ñýìÓ
		EnableSoften(obj,81,45);//ÝÚß£Ö®ò¢óÖ
		SetSkillState(obj,79,43,[0]);//ÐîûëÜæØªóÖ
		SetSkillState(obj,103,60,[102]);//úìÑ¨ñýìÓ
		SetSkillState(obj,81,45,[0,1]);//ÝÚß£Ö®ò¢óÖ
		}
		break;

		case 4:

		break;

	default:
		break;
	}

	return;

}



