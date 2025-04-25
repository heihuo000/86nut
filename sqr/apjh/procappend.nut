function procAppend_AllGrowJob(obj)
{
	if(!obj) return;
	if(sq_isPVPMode()) return;
		if ( !CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/currency.nut" ) ) //øÄİÂ
		{
		local appendage1 = CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, 174, false, "apjh/currency.nut", true );
		}
	preLoad_Die_Sound(obj); //ÎÖÚªŞİØÌëåüù

	//åıÍıãÀÑûÌ«Ôà£¬ãÀÊ¶?
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_FIGHTER && sq_getGrowType(obj) == 3) {
		local index = obj.getCurrentSkillIndex();//üòö¢Ó×îñĞüÒöøºûÜ
		local state = obj.sq_GetState();//í»ÔÑà·Û¯÷áô­?ûù
    	if (index == -1 && obj.getVar("autoSmartThrow").getInt(0) != 1 && state == STATE_STAND) {
        	obj.sq_IntVectClear();
        	obj.sq_IntVectPush(109);
        	obj.sq_AddSetStatePacket(17, STATE_PRIORITY_USER, true);
        	obj.getVar("autoSmartThrow").setInt(0, 1);
    	}
    
    	if (state == 35 || state == 39 || state == 64 || state == 40) {
        	obj.getVar("autoSmartThrow").setInt(0, 0);
    	}
		
	}

}



