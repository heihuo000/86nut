
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C


function onAfterSetState_priest_antiairupper(Viu4cE1FwJvz, yatWdrs8QfRgx, cTD5yy7KKbrnYP_9ws5BAt35, zm1sCTU0TE9j)
{
 if(!Viu4cE1FwJvz) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Viu4cE1FwJvz, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 Viu4cE1FwJvz.sq_SetCurrentAnimation(194); 
 local gt7yzIfGnE9kwopnywQUV = sq_GetCurrentAnimation(Viu4cE1FwJvz); 
 sq_Rewind(gt7yzIfGnE9kwopnywQUV); 
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(Viu4cE1FwJvz, "appendage/character/ap_holymace.nut"))
	{
		Viu4cE1FwJvz.sq_SetCurrentAnimation(260);
		local gt7yzIfGnE9kwopnywQUV = sq_GetCurrentAnimation(Viu4cE1FwJvz);
		sq_Rewind(gt7yzIfGnE9kwopnywQUV);
		ChangQing_751675335_BodyHolyMace(Viu4cE1FwJvz, "AntiairUpper");
	}
} ;

function onEnterFrame_priest_antiairupper(obj, frameIndex)
{
	if(!obj || !obj.isMyControlObject()) return;
	if(frameIndex == 5 && CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
	{
		sq_SetMyShake(obj,5,80);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(6);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(5);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
	}
}

function onKeyFrameFlag_priest_antiairupper(kDzKEanTPZ, H2WObZD1aH7E6)
{
 if(!kDzKEanTPZ) return false;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(kDzKEanTPZ, "character/new_priest/jupiter/ap_jupiter.nut") == true && kDzKEanTPZ.sq_IsMyControlObject()) 
 {
 switch(H2WObZD1aH7E6)
 {
 case 0:
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(1); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, 120, 0, 0);
 break;
 case 1:
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(1); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 1, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
 kDzKEanTPZ.sq_StartWrite();
 kDzKEanTPZ.sq_WriteDword(250); 
 kDzKEanTPZ.sq_WriteDword(2); 
 kDzKEanTPZ.sq_WriteDword(kDzKEanTPZ.sq_GetBonusRateWithPassive(250, 20, 2, 1.0)); 
 kDzKEanTPZ.sq_SendCreatePassiveObjectPacket(24374, 0, -180, 0, 0);
 break;
 }
 }
 return true;
} ;

ADDEXTRANUT <- 0 