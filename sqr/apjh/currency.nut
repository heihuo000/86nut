

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_monsterdraw")
}


function proc_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );//ÔğÓğİ«ÓßßÚ	--	APİ¾îÊîÜìÑ
	local sourceObj = appendage.getSource ( );//ÔğÓğê¹ÓßßÚ	--	ã¿Ê¥APîÜìÑ
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );//íâĞñõ¨×¾ÓßßÚï®ûù? ÊÇßäÓßßÚ

	local target = appendage.getVar ( "damagerHPHP" ).get_vector ( 1 );//ÏÑİ»Ü¨Õá target ?î¹ğíĞï1ûÜêÈâ¦Ëà
	local object = sq_GetObjectByObjectId ( parentObj, target );//ÔğÓğÓßßÚ  
	object = sq_GetCNRDObjectToActiveObject ( object );//íâĞñõ¨×¾ÓßßÚï®ûù? üÀÔÑ×¾ÓßßÚ
	local currhp = object.getHp ( );//ÏÑİ»Ü¨Õá currhp ?ÓßßÚÓ×îñßæÙ¤?
	if ( currhp <= 0 )//åıÍıßæÙ¤?á³éÍÔõéÍ0ãÁ
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 1 );//àâöÇ î¹ğíĞïSta 0ûÜêÈ?1
	}
	else//ÜúöÎ
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 0 );//àâöÇ î¹ğíĞïSta 0ûÜêÈ?0
	}

}



function onAttackParent_appendage_monsterdraw(appendage, realAttacker, damagerHP, boundingBox, isStuck)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();//ÔğÓğİ«ÓßßÚ	--	APİ¾îÊîÜìÑ
	local sourceObj = appendage.getSource();//ÔğÓğê¹ÓßßÚ	--	ã¿Ê¥APîÜìÑ
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);//íâĞñõ¨×¾ÓßßÚï®ûù? ÊÇßäÓßßÚ
	

	local object = sq_GetCNRDObjectToActiveObject(damagerHP);
	local id = sq_GetObjectId(object);//üòÔğß¿úªÓßßÚîÜú±ÏÑâËÑ¦øºûÜ
	appendage.getVar("damagerSta").set_vector(1, id);//àâöÇ î¹ğíĞïSta îÜ 1ûÜêÈ? ó®øºûÜ

}


function onStart_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );
	local sourceObj = appendage.getSource ( );
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );

	appendage.getVar ( "damagerSta" ).clear_vector ( );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );



}
