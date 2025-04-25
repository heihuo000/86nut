
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atfighter_comminterrupt")
}

function proc_appendage_atfighter_comminterrupt(appendage)
{
	if(!appendage) return;
	atfighter_comminterrupt(appendage);
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

function atfighter_comminterrupt(appendage)
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

		EnableSoften(obj,5,30);//ı¨?
		SetSkillState(obj,5,30,[]);
		EnableSoften(obj,46,44);//îñ?
		SetSkillState(obj,46,44,[]);
		EnableSoften(obj,6,21);//ù»Ó«?
		SetSkillState(obj,6,21,[6]);
		EnableSoften(obj,9,22);//ã£Ìª
		SetSkillState(obj,9,22,[9]);
		//EnableSoften(obj,17,28);//ëíÓÎ ÜôÒöïÇÕÕĞüÒö ÜôæÔõóúŞÙícdêõûùó®ĞüÒö
		SetSkillState(obj,17,28,[]);
		EnableSoften(obj,108,59);//âëÜÆ
		SetSkillState(obj,108,59,[]);
		EnableSoften(obj,2,19);//?ÜÑ
		SetSkillState(obj,2,19,[]);
		EnableSoften(obj,86,52);//ÑÑË§áï
		SetSkillState(obj,86,52,[4]);
		EnableSoften(obj,13,63);//?ŞŞ
		SetSkillState(obj,13,63,[0]);
		EnableSoften(obj,58,34);//àÁù¦÷Ú
		SetSkillState(obj,58,34,[]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,111,65);//Ò·Ñ¨ü»é¤ ã©
		SetSkillState(obj,111,65,[0,1]);
		EnableSoften(obj,15,13);//Şâí­ı©
		SetSkillState(obj,15,13,[0,0,15,300,350,2,4,4]);
		EnableSoften(obj,90,56);//Ò·â® ØíûÛòèò¢
		SetSkillState(obj,90,56,[]);
		EnableSoften(obj,117,66);//Ò·Ñ¨îúÙÃ
		SetSkillState(obj,117,66,[]);
		EnableSoften(obj,220,220);//İÆÖôÕ¢àÁÌª
		SetSkillState(obj,220,220,[0,1]);
		EnableSoften(obj,120,70);//õøéöÒ·Ñ¨íŞ
		SetSkillState(obj,120,70,[]);
		EnableSoften(obj,221,221);//êÅıÊÒ·Ñ¨÷ò
		SetSkillState(obj,221,221,[0,1,2]);
		EnableSoften(obj,67,45);//Ò·â® ãû÷÷ñıÑÑÖôûÛ
		SetSkillState(obj,67,45,[0,1,2]);
		EnableSoften(obj,222,222);//êÅü¤ô¸ßÚ
		SetSkillState(obj,222,222,[0,1,2,3]);
		break;

		case 2:
		EnableSoften(obj,80,47);//?Ìª
		SetSkillState(obj,80,47,[]);
		EnableSoften(obj,4,21);//áïÍé
		SetSkillState(obj,4,21,[4,0]);
		EnableSoften(obj,1,43);//ôÑß£?
		SetSkillState(obj,1,43,[]);
		EnableSoften(obj,83,50);//ö¿æûàÁù¦÷Ú
		SetSkillState(obj,83,50,[0,1,2]);
		EnableSoften(obj,124,72);//Ü¤Õúß²ñì?
		SetSkillState(obj,124,72,[]);
		EnableSoften(obj,122,67);//àÁù¦áïãı?
		SetSkillState(obj,122,67,[]);
		EnableSoften(obj,19,29);//õøã£
		SetSkillState(obj,19,29,[]);
		EnableSoften(obj,68,38);//àìï³ñıÙñ
		SetSkillState(obj,68,38,[0,4]);
		EnableSoften(obj,82,49);//âëç¯Ö§ü»?
		SetSkillState(obj,82,49,[3]);
		EnableSoften(obj,223,223);//Ö­ûı??
		SetSkillState(obj,223,223,[0,1]);
		EnableSoften(obj,224,224);//Ö­ûı?Ïë
		SetSkillState(obj,224,224,[0,1,2,3,4]);
		EnableSoften(obj,225,225);//Ğ¿Ùë?üÕ?
		SetSkillState(obj,225,225,[0,1,2]);
		break;

		case 3:
		EnableSoften(obj,3,31);//ĞÓêÅæú
		SetSkillState(obj,3,31,[0,1,2,0]);
		EnableSoften(obj,106,58);//Õ¢àÁüÁ?
		SetSkillState(obj,106,58,[99,100,101]);
		EnableSoften(obj,76,41);//Ô¸ÖôìÚøï
		SetSkillState(obj,76,41,[]);
		EnableSoften(obj,77,42);//úìßäù¦øì
		SetSkillState(obj,77,42,[0,1]);
		EnableSoften(obj,105,60);//ô¸İÚò¢Ö®
		SetSkillState(obj,105,60,[0,1,2]);
		EnableSoften(obj,119,71);//øï÷òïÄÏ¹
		SetSkillState(obj,119,71,[]);
		EnableSoften(obj,123,68);//ô¶ŞêÕ¯Ùñ
		SetSkillState(obj,123,68,[0,1,2,35]);
		EnableSoften(obj,226,226);//äŞÊ¶÷¬Ù¤áğ
		SetSkillState(obj,226,226,[0,66]);
		EnableSoften(obj,227,227);//Ş«ŞŞñËà´
		SetSkillState(obj,227,227,[0]);
		EnableSoften(obj,228,228);//æ×ûıÎŞô¸?
		SetSkillState(obj,228,228,[0,1,2,3]);
		break;

		case 4:
		EnableSoften(obj,49,22);//?÷á
		SetSkillState(obj,49,22,[49,0,1,1,4]);
		EnableSoften(obj,87,53);//Ü¤ÕúàÁ?
		SetSkillState(obj,87,53,[0,1,2]);
		EnableSoften(obj,81,48);//ï¹Ìò
		SetSkillState(obj,81,48,[]);
		EnableSoften(obj,54,33);//å¯ØÁõøÓÕ
		SetSkillState(obj,54,33,[0,1,54,53]);
		EnableSoften(obj,18,22);//İ©Íö×Ğéö?
		SetSkillState(obj,18,22,[18]);
		EnableSoften(obj,89,22);//ò¢è«ù¦ûı×Ç
		SetSkillState(obj,89,22,[89]);
		//EnableSoften(obj,88,54);//Ö®à´÷òô¸
		SetSkillState(obj,88,54,[0,1,2]);
		EnableSoften(obj,63,22);//ŞİØÌàÁ×È
		SetSkillState(obj,63,22,[63,0,1,2,3,4,5,6,7]);
		EnableSoften(obj,118,69);//û²àøõøÌª
		SetSkillState(obj,118,69,[0,1,2]);
		EnableSoften(obj,121,73);//ÙëÖ¥ü¤
		SetSkillState(obj,121,73,[0,1,2,3,4,5]);
		EnableSoften(obj,229,229);//ıÙòèàÁù¦
		SetSkillState(obj,229,229,[0,2]);
		EnableSoften(obj,230,230);//òğù¦àìï³
		SetSkillState(obj,230,230,[0,1,4,5,6,7]);
		//EnableSoften(obj,231,231);//Ğ¿ëùòèô¸÷ò
		SetSkillState(obj,231,231,[0,3,5,6,7,9,10,12]);
		break;

	default:
		break;
	}

	return;

}



