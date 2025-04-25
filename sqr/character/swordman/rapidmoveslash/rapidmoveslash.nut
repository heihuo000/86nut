
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C

function onAfterSetState_swordman_rapidmoveslash(DEJsBtPxNF0X, GSGPg05Xalq9A4JY4YLD_3, uHKRED8ED4EEfH, N6Oph9Yer9XJX88)
{
 if(!DEJsBtPxNF0X) return;
 local JPxICbgz7eKg = DEJsBtPxNF0X.sq_GetVectorData(uHKRED8ED4EEfH, 0); 
 if(JPxICbgz7eKg == 1) 
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(DEJsBtPxNF0X, "character/swordman/appendage/ap_stateoflimit.nut"))
 {
 if(DEJsBtPxNF0X.sq_IsMyControlObject())
 {
 DEJsBtPxNF0X.sq_StartWrite();
 DEJsBtPxNF0X.sq_WriteDword(248); 
 DEJsBtPxNF0X.sq_WriteDword(3); 
 DEJsBtPxNF0X.sq_WriteDword(DEJsBtPxNF0X.sq_GetBonusRateWithPassive(248, GSGPg05Xalq9A4JY4YLD_3, 3, 1.0)); 
 DEJsBtPxNF0X.sq_WriteDword(DEJsBtPxNF0X.sq_GetDelaySum()); 
 DEJsBtPxNF0X.sq_SendCreatePassiveObjectPacket(24370, 0, 0, 0, 0); 
 }
 }
 }
} ;




function checkExecutableSkill_RapidMoveSlash(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(72);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(0);
		obj.sq_IntVectPush(1);
            obj.sq_AddSetStatePacket(39,STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_RapidMoveSlash(obj)
{

	return true;
}

