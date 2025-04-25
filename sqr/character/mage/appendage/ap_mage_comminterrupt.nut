
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_mage_comminterrupt")
}

function proc_appendage_mage_comminterrupt(appendage)
{
	if(!appendage) return;
	mage_comminterrupt(appendage);
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

function mage_comminterrupt(appendage)
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

		EnableSoften(obj,4,22);//×£ä³
		SetSkillState(obj,4,22,[4]);
		EnableSoften(obj,20,24);//ø½Óµ
		SetSkillState(obj,20,24,[20]);
		EnableSoften(obj,14,25);//Ö¥ü£íæ
		SetSkillState(obj,14,25,[0,14,1]);

	switch (type)
	{

		case 1:
		EnableSoften(obj,111,46);//ÎÃï³?íß
		SetSkillState(obj,111,46,[0,1]);
		EnableSoften(obj,249,249);//êªáÈñıØ­
		SetSkillState(obj,249,249,[0,1]);
		EnableSoften(obj,250,250);//êªáÈòè÷¹
		SetSkillState(obj,250,250,[0,1,2,3]);
		EnableSoften(obj,251,251);//?ÖÄâ©ïÜ
		SetSkillState(obj,251,251,[0,1]);
		EnableSoften(obj,253,253);//ğ¯×¿êªáÈ
		SetSkillState(obj,253,253,[0,1,2,3]);
		break;

		case 2:

		break;

		case 3:

		EnableSoften(obj,65,26);//ê­ÙñÍâ
		SetSkillState(obj,65,26,[0]);
		EnableSoften(obj,13,24);//áï?
		SetSkillState(obj,13,24,[13]);
		EnableSoften(obj,125,51);//äªñìõßÌª
		SetSkillState(obj,125,51,[0,1]);
		EnableSoften(obj,69,29);//üÓ×£åçêÅÓï
		SetSkillState(obj,69,29,[0,1]);
		//EnableSoften(obj,123,50);//úÛÚ£ë×ùê
		SetSkillState(obj,123,50,[]);
		//EnableSoften(obj,10,28);//úÛÚ£?äâ
		SetSkillState(obj,10,28,[0,1,2]);
		EnableSoften(obj,127,52);//ïÒãÁíÈ÷¥
		SetSkillState(obj,127,52,[]);
		EnableSoften(obj,66,27);//×µàøàìç¯Ìª
		SetSkillState(obj,66,27,[0,1,2]);
		EnableSoften(obj,68,25);//?ã©×µú¼öè
		SetSkillState(obj,68,25,[0,68]);
		EnableSoften(obj,247,247);//àøÚ£ê¢øï
		SetSkillState(obj,247,247,[0]);
		EnableSoften(obj,117,24);//úÛÚ£áï?
		SetSkillState(obj,117,24,[117,4]);
		EnableSoften(obj,244,244);//àìÌªáï?
		SetSkillState(obj,244,244,[]);
		EnableSoften(obj,242,242);//úÛÚ£ğê
		SetSkillState(obj,242,242,[0]);
		EnableSoften(obj,112,47);//×µàøÖôÖ§Ìª
		SetSkillState(obj,112,47,[0,1,2,3]);
		EnableSoften(obj,243,243);//ŞÅÓùñıÙñ
		SetSkillState(obj,243,243,[0,1,2,3,4,5,6,7]);
		break;

		case 4:
		EnableSoften(obj,92,35);//äŞç¯Ôà?
		SetSkillState(obj,92,35,[]);
		EnableSoften(obj,95,36);//Ü¨ì¶óïã²ÚĞ
		SetSkillState(obj,95,36,[1]);
		EnableSoften(obj,115,49);//õ±Ğäóïã²ÚĞ
		SetSkillState(obj,115,49,[1]);
		EnableSoften(obj,133,133);//õ±ĞäÜêÜêÓØ
		SetSkillState(obj,133,133,[0]);
		EnableSoften(obj,98,37);//àÁï®á·÷ê
		SetSkillState(obj,98,37,[0,1,2]);
		EnableSoften(obj,114,48);//÷¥Ô¯àÁï®á·÷ê
		SetSkillState(obj,114,48,[0,1,2,3]);
		break;

	default:
		break;
	}

	return;
}



