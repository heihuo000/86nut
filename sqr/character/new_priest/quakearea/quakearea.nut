
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C


function onAfterSetState_priest_quakearea(O5osjcUv2FAVq, ZLU_t5nZ74ocUe62iBCOxB7, g46Mc_ZLdLogQiKQUDNt, VJzj0cG0lf)
{
 if(!O5osjcUv2FAVq) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "character/new_priest/jupiter/ap_jupiter.nut") == true) 
 {
 O5osjcUv2FAVq.sq_SetCurrentAnimation(195); 
 local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq); 
 sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY); 
 O5osjcUv2FAVq.sq_SetCurrentAttackInfo(120); 
 O5osjcUv2FAVq.sq_SetCurrentAttackBonusRate(O5osjcUv2FAVq.sq_GetBonusRateWithPassive(250, 26, 3, 1.0)); 
 O5osjcUv2FAVq.getVar().setBool(0, false); 
 }
  else if(CNSquirrelAppendage.sq_IsAppendAppendage(O5osjcUv2FAVq, "appendage/character/ap_holymace.nut")) 
 {
 O5osjcUv2FAVq.sq_SetCurrentAnimation(259); 
 local DBP9Mmf8wj8GCPl05a1P_XY = sq_GetCurrentAnimation(O5osjcUv2FAVq); 
 sq_Rewind(DBP9Mmf8wj8GCPl05a1P_XY); 
 }
} ;

function onProcCon_priest_quakearea(obj)
{
	if(!obj) return;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		if(obj.getVar().getBool(0) == false)
			if(sq_GetCurrentFrameIndex(obj) >= 5 && obj.getZPos() <= 0)
			{
				obj.getVar().setBool(0, true);
				obj.sq_StartWrite();
				obj.sq_WriteDword(250);
				obj.sq_WriteDword(4);
				obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(250, 26, 4, 1.0));
				obj.sq_SendCreatePassiveObjectPacket(24374, 0, 40, 0, 0);
			}
		local ObjectCount = obj.getMyPassiveObjectCount(24001);
		if(ObjectCount > 0)
		{
			for(local i = 0; i < ObjectCount; i++)
			{
				local PassiveObj = obj.getMyPassiveObject(24001, i);
				if(!PassiveObj) continue;
				sq_SendDestroyPacketPassiveObject(PassiveObj);
			}
		}
	}
	else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
	{
		if(obj.getVar().getBool(0) == false)
			if(sq_GetCurrentFrameIndex(obj) >= 5 && obj.getZPos() <= 0)
			{
				obj.getVar().setBool(0, true);
				obj.sq_StartWrite();
				obj.sq_WriteDword(250);
				obj.sq_WriteDword(7);
				obj.sq_WriteDword(obj.sq_GetLevelData(253, 4, sq_GetSkillLevel(obj, 253)));
				obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, -1, 3, 1.0));
				obj.sq_SendCreatePassiveObjectPacket(24374, 0, 40, 0, 0);
			}
		local ObjectCount = obj.getMyPassiveObjectCount(24001);
		if(ObjectCount > 0)
		{
			for(local i = 0; i < ObjectCount; i++)
			{
				local PassiveObj = obj.getMyPassiveObject(24001, i);
				if(!PassiveObj) continue;
				sq_SendDestroyPacketPassiveObject(PassiveObj);
			}
		}
	}
}


