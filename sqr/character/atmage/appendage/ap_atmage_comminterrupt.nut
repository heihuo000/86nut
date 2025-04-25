
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_comminterrupt")
}

function proc_appendage_atmage_comminterrupt(appendage)
{
	if(!appendage) return;
	atmage_comminterrupt(appendage);
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

function atmage_comminterrupt(appendage)
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

		EnableSoften(obj,1,20);//ØªÛöàÁù¦
		SetSkillState(obj,1,20,[]);
		EnableSoften(obj,17,36);//ĞÓÑÚíæ
		SetSkillState(obj,17,36,[0,1,2]);
		EnableSoften(obj,26,43);//ØªÛö?Ï¹
		SetSkillState(obj,26,43,[]);
		//EnableSoften(obj,25,50);//ØªÛöÖ§ŞÒ
		SetSkillState(obj,25,50,[4,1023,253,0]);
		EnableSoften(obj,20,39);//âëÜÆ
		SetSkillState(obj,20,39,[0,1]);
		EnableSoften(obj,27,47);//úÜûıâê
		SetSkillState(obj,27,47,[0,1,2]);


	switch (type)
	{

		case 1:
		EnableSoften(obj,8,27);//?ÛŞËü
		SetSkillState(obj,8,27,[]);
		EnableSoften(obj,3,21);//?ïÜõÍ
		SetSkillState(obj,3,21,[]);
		EnableSoften(obj,6,24);//ò¢æú
		SetSkillState(obj,6,24,[0,1]);
		EnableSoften(obj,2,25);//ÖôÎÃ?
		SetSkillState(obj,2,25,[0,1,2]);
		EnableSoften(obj,4,23);//äŞæ´üªíå
		SetSkillState(obj,4,23,[0,1]);
		EnableSoften(obj,11,30);//àÁæú÷ò
		SetSkillState(obj,11,30,[5,0,1,2]);
		EnableSoften(obj,14,33);//?ïÜñıé±
		SetSkillState(obj,14,33,[]);
		EnableSoften(obj,29,46);//ÖôÎÃ?î¡
		SetSkillState(obj,29,46,[]);
		EnableSoften(obj,24,42);//ıÙäŞĞ×æ´
		SetSkillState(obj,24,42,[5,0]);
		EnableSoften(obj,30,49);//êªáÈÎŞíÈ
		SetSkillState(obj,30,49,[0,1,2,3,0,4]);
		EnableSoften(obj,49,54);//ü³ØªŞÌñìñ´
		SetSkillState(obj,49,54,[0,0,1,2,3,4,5,6,7]);
		EnableSoften(obj,61,61);//êªáÈÒØõêÏ¹
		SetSkillState(obj,61,61,[]);
		EnableSoften(obj,243,243);//êªáÈĞ×æ´
		SetSkillState(obj,243,243,[0]);
		EnableSoften(obj,62,62);//êªáÈü³Øş
		SetSkillState(obj,62,62,[0]);
		EnableSoften(obj,244,244);//ö©ÒöØª?
		SetSkillState(obj,244,244,[0,1,2]);
		//EnableSoften(obj,245,245);//ØÇìíìÜØş êõûùüåÓôöÈobjÙíÛöÌ¿áÖ
		//SetSkillState(obj,245,245,[0,1,2]);
		break;

		case 2:
		EnableSoften(obj,8,27);//?ÛŞËü
		SetSkillState(obj,8,27,[]);
		EnableSoften(obj,21,40);//ùÎ?Ö§óæ
		SetSkillState(obj,21,40,[0,1,2]);
		EnableSoften(obj,23,41);//?ÛŞàÁóæ
		SetSkillState(obj,23,41,[0,1]);
		EnableSoften(obj,16,35);//?ÛŞñıÏá
		SetSkillState(obj,16,35,[0,1]);
		EnableSoften(obj,10,29);//÷ò?Ş«ìÓ
		SetSkillState(obj,10,29,[]);
		EnableSoften(obj,15,34);//àÁ?ô¾í©
		SetSkillState(obj,15,34,[0,1,2,3]);
		EnableSoften(obj,12,31);//?ÛŞõßÌª
		SetSkillState(obj,12,31,[0,1,2]);
		EnableSoften(obj,13,32);//?×£àÁÙñ
		SetSkillState(obj,13,32,[0,1,2,3]);
		EnableSoften(obj,48,53);//ô¶Ò´àÁ?÷ò
		SetSkillState(obj,48,53,[0,1,2,3,1]);
		EnableSoften(obj,60,60);//?×Ğ÷ò
		SetSkillState(obj,60,60,[]);
		EnableSoften(obj,63,63);//ô¶×ì?Üæ
		SetSkillState(obj,63,63,[]);
		EnableSoften(obj,246,246);//áï?÷ò
		SetSkillState(obj,246,246,[0]);
		EnableSoften(obj,247,247);//Ğ¿?ÖÅæ´
		SetSkillState(obj,247,247,[0,1]);
		EnableSoften(obj,248,248);//çµñª?è«
		SetSkillState(obj,248,248,[0,1]);
		break;

	default:
		break;
	}

	return;
}



