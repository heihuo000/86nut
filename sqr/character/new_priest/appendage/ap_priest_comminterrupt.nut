
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_priest_comminterrupt")
}

function proc_appendage_priest_comminterrupt(appendage)
{
	if(!appendage) return;
	priest_comminterrupt(appendage);
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

function priest_comminterrupt(appendage)
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

		EnableSoften(obj,8,25);//ûÛã©
		SetSkillState(obj,8,25,[0]);
		EnableSoften(obj,43,36);//ÎÃñıÏëìÓ
		SetSkillState(obj,43,36,[]);
		EnableSoften(obj,11,26);//ÕªÜóõß
		SetSkillState(obj,11,26,[]);


	switch (type)
	{

		case 1:
		EnableSoften(obj,73,40);//ã­××ñıÙÃ
		SetSkillState(obj,73,40,[0]);
		EnableSoften(obj,27,39);//?ÎÃãşâê
		SetSkillState(obj,27,39,[]);
		EnableSoften(obj,246,246);//?ÎÃö©ùê
		SetSkillState(obj,246,246,[0,1]);
		EnableSoften(obj,74,41);//óÕüâñıõß
		SetSkillState(obj,74,41,[]);
		EnableSoften(obj,84,47);//ô¸?ñıñÁ
		SetSkillState(obj,84,47,[0,1]);
		EnableSoften(obj,247,247);//?ÎÃÔÍã©
		SetSkillState(obj,247,247,[0,1]);
		EnableSoften(obj,248,248);//?éÎÌ¿Í£
		SetSkillState(obj,248,248,[0,1]);
		EnableSoften(obj,249,249);//ãê?ñıÙÃ
		SetSkillState(obj,249,249,[]);
		EnableSoften(obj,251,251);//ãáäæñıìÏ
		SetSkillState(obj,251,251,[0,1,2,3,4,5]);
		break;

		case 2:
		EnableSoften(obj,76,43);//?ÏëõßÌª
		SetSkillState(obj,76,43,[]);
		EnableSoften(obj,77,44);//âëÏë
		SetSkillState(obj,77,44,[0,1]);
		EnableSoften(obj,31,32);//?ÏëÖ§Ìª
		SetSkillState(obj,31,32,[]);
		EnableSoften(obj,78,45);//í©ÏëØíÌª
		SetSkillState(obj,78,45,[0,1]);
		EnableSoften(obj,75,42);//ãê?ğÚùêÏë
		SetSkillState(obj,75,42,[]);
		EnableSoften(obj,4,37);//Ğ¿áÜ?ù¦Ïë
		SetSkillState(obj,4,37,[0,1]);
		EnableSoften(obj,90,50);//ÚÆØşãêÌª
		SetSkillState(obj,90,50,[0,1,0,2,0,3,0,4,0]);
		EnableSoften(obj,103,54);//í©ÏëÎÊÌª
		SetSkillState(obj,103,54,[73,75]);
		EnableSoften(obj,104,55);//÷òûëğÚùêÏë
		SetSkillState(obj,104,55,[]);
		EnableSoften(obj,242,242);//ñêî®ÒÁÌª
		SetSkillState(obj,242,242,[0,1,2]);
		EnableSoften(obj,243,243);//÷òÎÕñıÏë
		SetSkillState(obj,243,243,[0,1]);
		EnableSoften(obj,244,244);//õ±ñìÏë
		SetSkillState(obj,244,244,[0,1,2]);
		EnableSoften(obj,245,245);//òğù¦ÒÁûı
		SetSkillState(obj,245,245,[0]);
		break;

		case 3:
		EnableSoften(obj,111,58);//Ó¨ÍöõßÌª
		SetSkillState(obj,111,58,[]);
		EnableSoften(obj,41,35);//àøÕªöè
		SetSkillState(obj,41,35,[0]);
		EnableSoften(obj,50,38);//ËİàÁù¦
		SetSkillState(obj,50,38,[0,3,0]);
		EnableSoften(obj,5,23);//òğÍöàÁù¦÷ò
		SetSkillState(obj,5,23,[0,1,2,100]);
		EnableSoften(obj,85,48);//òğù¦öè
		SetSkillState(obj,85,48,[0,1]);
		EnableSoften(obj,49,24);//ÎÊÕ¯õßÌª
		SetSkillState(obj,49,24,[0,1,4]);
		EnableSoften(obj,100,53);//ıÙäŞï·ùÜ
		SetSkillState(obj,100,53,[0,1]);
		EnableSoften(obj,88,49);//ÙíäªÌª
		SetSkillState(obj,88,49,[]);
		EnableSoften(obj,105,56);//ÎÊøìõßÌª
		SetSkillState(obj,105,56,[0,1,4,2]);
		EnableSoften(obj,239,239);//æ½×£öÒß¯
		SetSkillState(obj,239,239,[0,1,2,3,4,5,6]);
		EnableSoften(obj,237,237);//Øşûëİ¬
		SetSkillState(obj,237,237,[]);
		EnableSoften(obj,240,240);//æ½×÷òè
		SetSkillState(obj,240,240,[0,1,2]);
		EnableSoften(obj,238,238);//ãÒãêÜæÖÄòæ
		SetSkillState(obj,238,238,[0,1]);
		//EnableSoften(obj,241,241);//?×£İÍô¸
		SetSkillState(obj,241,241,[0,1]);
		break;

		case 4:
		EnableSoften(obj,124,70);//ŞİØÌï·ùÜ
		SetSkillState(obj,124,70,[0,1,2,3,4,1,5]);
		EnableSoften(obj,113,61);//üŞàÁŞ«Ö¯
		SetSkillState(obj,113,61,[0,1,1,1,2,1]);
		EnableSoften(obj,118,66);//Ö®ò¢?
		SetSkillState(obj,118,66,[0]);
		EnableSoften(obj,116,63);//ÜÖÎûñıí©
		SetSkillState(obj,116,63,[2,2]);
		EnableSoften(obj,115,64);//äøê¡ñı×Ç
		SetSkillState(obj,115,64,[0,2,2,1,2,0,3]);
		EnableSoften(obj,117,65);//ıÙäŞñıõº
		SetSkillState(obj,117,65,[]);
		EnableSoften(obj,125,71);//ıÙäŞÏíÒö
		SetSkillState(obj,125,71,[0]);
		EnableSoften(obj,135,135);//äÂØªñıÏë
		SetSkillState(obj,135,135,[0]);
		EnableSoften(obj,132,132);//äÂØªñıäÄ
		SetSkillState(obj,132,132,[0]);
		EnableSoften(obj,120,68);//ô¥úı
		SetSkillState(obj,120,68,[0,2,3,4]);
		EnableSoften(obj,133,73);//ò¢è«ñıÚ¦
		SetSkillState(obj,133,73,[0,1]);
		EnableSoften(obj,136,136);//Üôı®îúı©
		SetSkillState(obj,136,136,[0,2]);
		EnableSoften(obj,134,74);//ØÇìíûÇÌ¤
		SetSkillState(obj,134,74,[0,1,2,1,3,1,4,1]);
		EnableSoften(obj,137,137);//?Øş?Ìª
		SetSkillState(obj,137,137,[0]);
		EnableSoften(obj,138,138);//ûèÔÇãÒãê
		SetSkillState(obj,138,138,[0,0]);
		break;

	default:
		break;
	}

	return;
}



