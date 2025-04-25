
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_fighter_comminterrupt")
}

function proc_appendage_fighter_comminterrupt(appendage)
{
	if(!appendage) return;
	fighter_comminterrupt(appendage);
}

function EnableSoften(obj,skillindex,state)
{
	if(obj.sq_GetState() == state)				//üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
		return false;
	obj.setSkillCommandEnable(skillindex ,true);		//ŞÅÒöĞüÒö£¨ïÇÕÕÓñøö£¬Ê¦ì¤ŞÅéÄ£©
		return true;
}

function SetSkillState(obj,skillindex,state,Arr)
{

	local iEnterSkill = obj.sq_IsEnterSkill(skillindex);
	if (iEnterSkill == -1)
		return false;
	if(obj.sq_GetState() == state)				//üòö¢Ó×îñßÒ÷¾æ¨îîóÑİïÎò ÛÁò­ÙíùÚêõûùÔÒËÁĞüÒö
		return false;
	if(obj.sq_IsUseSkill(skillindex))				//÷÷Ó¨Ó×îñĞüÒöãÀÜúÊ¦éÄ£¨cd ÕÀÙÄÔõğÉËì£©
	{
		obj.sq_IntVectClear();			//?ğ¶ú¾Õá£¨ßÒ÷¾£©
		if(Arr.len() < 1)				//åıÍıóÑâ¦â¦ğÚíşÓøá³éÍ1
		{
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);
			return true;
		}
		else
		{	
			foreach(sub in Arr)				//âàü»÷êâ¦ğÚArrØßËÁà÷ê¬ŞĞìısub£¬îÏãÀìéËÁâàü»
				obj.sq_IntVectPush(sub);		//àâöÇí­ßÒ÷¾sub 
			obj.sq_AddSetStatePacket(state,STATE_PRIORITY_USER,true);	//àâöÇĞüÒößÒ÷¾
			return true;
		}
	}

}

function fighter_comminterrupt(appendage)
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

		EnableSoften(obj,46,48);//îñ?
		SetSkillState(obj,46,48,[]);
		EnableSoften(obj,6,21);//ù»Ó«?
		SetSkillState(obj,6,21,[6]);
		EnableSoften(obj,9,22);//ÛÎ?
		SetSkillState(obj,9,22,[9]);
		EnableSoften(obj,86,56);//ÑÑË§áï
		SetSkillState(obj,86,56,[4]);
		EnableSoften(obj,13,13);//?ŞŞ
		SetSkillState(obj,13,13,[0,0,13,150,300,0,2,2]);
		//EnableSoften(obj,17,28);//ëíÓÎ ÜôÒöïÇÕÕĞüÒö ÜôæÔó®ĞüÒöÙícd
		SetSkillState(obj,17,28,[]);
		EnableSoften(obj,58,34);//àÁù¦?
		SetSkillState(obj,58,34,[]);
		EnableSoften(obj,2,19);//?ÜÑ
		SetSkillState(obj,2,19,[]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,90,60);//Ò·â® Öô×£õóú­
		SetSkillState(obj,90,60,[]);
		EnableSoften(obj,67,49);//ô¶Ö¥ÒÁÛ¯
		SetSkillState(obj,67,49,[]);
		EnableSoften(obj,225,225);//İÆÖôíæ
		SetSkillState(obj,225,225,[0,1,2,3,4]);
		EnableSoften(obj,226,226);//Ğôã©ü³ç¯
		SetSkillState(obj,226,226,[0,1,2,3,4]);
		EnableSoften(obj,227,227);//ö©ÒöÒ·Ñ¨?
		SetSkillState(obj,227,227,[0,1,2]);
		EnableSoften(obj,228,228);//Ò·ğ¨úÜô¸÷ò
		SetSkillState(obj,228,228,[0,1,2,29]);
		break;

		case 2:
		EnableSoften(obj,80,51);//İÚÏë
		SetSkillState(obj,80,51,[]);
		EnableSoften(obj,4,21);//áïÍé
		SetSkillState(obj,4,21,[4]);
		EnableSoften(obj,68,42);//àìï³ñıÙñ
		SetSkillState(obj,68,42,[0,1,2,3,4,5,6,7,8,9,10]);
		EnableSoften(obj,82,53);//ü³ç¯Ö§ü»?
		SetSkillState(obj,82,53,[0,1,2]);
		EnableSoften(obj,19,29);//õ»Ïë
		SetSkillState(obj,19,29,[]);
		EnableSoften(obj,83,54);//ã®×£Ïë
		SetSkillState(obj,83,54,[0,1]);
		EnableSoften(obj,103,66);//ã®×£?Ïë
		SetSkillState(obj,103,66,[0,1]);
		EnableSoften(obj,102,65);//÷òáïÏë
		SetSkillState(obj,102,65,[]);
		EnableSoften(obj,71,61);//Ùëãê??
		SetSkillState(obj,71,61,[0,1,2]);
		EnableSoften(obj,229,229);//üŞô¸Ö§ü»Ìª
		SetSkillState(obj,229,229,[0,1]);
		EnableSoften(obj,230,230);//ûÛá°ãêÏë
		SetSkillState(obj,230,230,[0,1,2]);
		EnableSoften(obj,231,231);//Ùíç¯?
		SetSkillState(obj,231,231,[0,1,2]);
		EnableSoften(obj,232,232);//?üÕÓ¨ÍöÏë
		SetSkillState(obj,232,232,[0,1,2]);
		break;

		case 3:
		EnableSoften(obj,3,31);//ĞÓêÅæú
		SetSkillState(obj,3,31,[0,1,0]);
		EnableSoften(obj,75,44);//Ô¸ç¯öÜ
		SetSkillState(obj,75,44,[]);
		EnableSoften(obj,60,35);//?ã©
		SetSkillState(obj,60,35,[]);
		EnableSoften(obj,14,26);//ÜÑûÛ?èİÏë
		SetSkillState(obj,14,26,[]);
		EnableSoften(obj,53,43);//÷áØÑ
		SetSkillState(obj,53,43,[]);
		EnableSoften(obj,106,69);//Ö®ò¢Ş«ŞŞ
		SetSkillState(obj,106,69,[94,95]);
		EnableSoften(obj,77,46);//Ê¶Ôéù¦øì
		SetSkillState(obj,77,46,[25]);
		//EnableSoften(obj,64,40);//ŞİØÌÔ¸Ùö î¤ò¢ØüÙíÛöã¿Û¯îÜĞüÒö
		SetSkillState(obj,64,40,[]);
		EnableSoften(obj,99,62);//ØíÔ¸ĞÓêÅæú
		SetSkillState(obj,99,62,[0,1,529,40725,0]);
		EnableSoften(obj,104,67);//øïáï?Ö®
		SetSkillState(obj,104,67,[0,1,2]);
		//EnableSoften(obj,236,236);//Ğ×Ğû Ø¿Ô¸ŞïÏß
		SetSkillState(obj,236,236,[0,1,80,4]);
		EnableSoften(obj,234,234);//Ô¸×£ÎŞô¸Öô
		SetSkillState(obj,234,234,[0,1,2,3,4]);

		break;

		case 4:
		//EnableSoften(obj,49,22);//?÷á
		SetSkillState(obj,49,22,[49]);
		EnableSoften(obj,81,52);//ï¹Ìò
		SetSkillState(obj,81,52,[]);
		EnableSoften(obj,54,33);//å¯ØÁõøÓÕ
		SetSkillState(obj,54,33,[0,54]);
		EnableSoften(obj,87,57);//Ü¤Õú?Ìª
		SetSkillState(obj,87,57,[0,1,2]);
		EnableSoften(obj,88,58);//Ö®à´÷òô¸
		SetSkillState(obj,88,58,[0,1,2]);
		EnableSoften(obj,18,22);//Õ¢àÁû²àøÕª
		SetSkillState(obj,18,22,[18]);
		EnableSoften(obj,89,22);//ò¢è«èôÕ¾
		SetSkillState(obj,89,22,[89]);
		EnableSoften(obj,63,22);//ØÇìíù¦øì
		SetSkillState(obj,63,22,[63]);
		EnableSoften(obj,105,22);//ŞİØÌèôÕ¾
		SetSkillState(obj,105,22,[105]);
		EnableSoften(obj,237,237);//ØÇìíèôÕ¾
		SetSkillState(obj,237,237,[0,1,2]);
		EnableSoften(obj,238,238);//ù¦øìñıÙñ
		SetSkillState(obj,238,238,[0,2,4,3]);
		//EnableSoften(obj,239,239);//óïéâû²àøÕª êõûùı¨ÛÎÌØ?Øüüå?ñ¬
		//SetSkillState(obj,239,239,[0,1,2,4,3,5]);
		break;

	default:
		break;
	}

	return;
}



