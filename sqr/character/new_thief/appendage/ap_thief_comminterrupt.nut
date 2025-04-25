
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_thief_comminterrupt")
}

function proc_appendage_thief_comminterrupt(appendage)
{
	if(!appendage) return;
	thief_comminterrupt(appendage);
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

function thief_comminterrupt(appendage)
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

		EnableSoften(obj,24,47);//â¢×ìËü
		SetSkillState(obj,24,47,[]);
		EnableSoften(obj,5,24);//æûìÓ
		SetSkillState(obj,5,24,[]);
		EnableSoften(obj,21,46);//äŞûë÷î
		SetSkillState(obj,21,46,[0]);
		EnableSoften(obj,7,26);//ç¯ã©
		SetSkillState(obj,7,26,[12]);
		EnableSoften(obj,25,50);//ç¯İÂãó
		SetSkillState(obj,25,50,[]);
		EnableSoften(obj,3,22);//ûÁÎÃàì
		SetSkillState(obj,3,22,[3,0,1]);
		EnableSoften(obj,26,51);//áï?
		SetSkillState(obj,26,51,[]);
		EnableSoften(obj,23,53);//îÌ?ñıï©
		SetSkillState(obj,23,53,[0,1]);
		//EnableSoften(obj,4,23);//òğÍöÓÎ
		SetSkillState(obj,4,23,[4]);
		EnableSoften(obj,8,27);//ô¸ñÊ
		SetSkillState(obj,8,27,[14]);
		EnableSoften(obj,6,25);//Ş«à©
		SetSkillState(obj,6,25,[10]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,27,52);//äªìÓô¾í©
		SetSkillState(obj,27,52,[0,1,2]);
		EnableSoften(obj,16,31);//?ß¯óÖ
		SetSkillState(obj,16,31,[]);
		EnableSoften(obj,41,34);//àÁìÓ
		SetSkillState(obj,41,34,[26]);
		//EnableSoften(obj,31,54);//ËüìÓù¦øì
		SetSkillState(obj,31,54,[1,0]);
		EnableSoften(obj,47,38);//?Ù¤âëè«ß¯
		SetSkillState(obj,47,38,[40,1]);
		EnableSoften(obj,44,36);//ö°ÜÆ
		SetSkillState(obj,44,36,[]);
		EnableSoften(obj,19,33);//òğöÌ
		SetSkillState(obj,19,33,[]);
		EnableSoften(obj,33,56);//Õ¢àÁô¾í©
		SetSkillState(obj,33,56,[0,1]);
		//EnableSoften(obj,45,37);//ÖôÎÃìÓç¯
		SetSkillState(obj,45,37,[32]);
		EnableSoften(obj,34,57);//òğù¦Õ¯Ùñ
		SetSkillState(obj,34,57,[0]);
		EnableSoften(obj,76,66);//àÁìÓõøÌª
		SetSkillState(obj,76,66,[116,117,118,119]);
		EnableSoften(obj,75,65);//ê¢ÕªÕ¢àÁí©
		SetSkillState(obj,75,65,[0,1,2,3]);
		EnableSoften(obj,220,220);//Õ¯Íöß¯
		SetSkillState(obj,220,220,[0,2,0]);
		EnableSoften(obj,221,221);//êÅç¯ÔÍã©
		SetSkillState(obj,221,221,[0,1,2]);
		EnableSoften(obj,222,222);//êÅç¯àøÌ¤
		SetSkillState(obj,222,222,[1,2,3,4,5]);
		break;

		case 2:
		EnableSoften(obj,35,58);//ŞİØÌñığĞ
		SetSkillState(obj,35,58,[]);
		EnableSoften(obj,49,40);//ŞİÖÄñıê³
		SetSkillState(obj,49,40,[]);
		EnableSoften(obj,36,59);//ÛİĞ¡å¨ú¼
		SetSkillState(obj,36,59,[0]);
		EnableSoften(obj,74,64);//ŞİÖÄñıÚÚ
		SetSkillState(obj,74,64,[]);
		break;

	default:
		break;
	}

	return;
}



