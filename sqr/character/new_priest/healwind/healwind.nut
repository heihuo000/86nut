
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C


function onAfterSetState_priest_healwind(_vsIVYiQSg33j4PcQYE_8sf8, jUmYTTJ20s7YThk661EHy, qde7rqAKY8rCEMOC6Ar1, DEJBuwX2pDpbRUrl)
{
 if (!_vsIVYiQSg33j4PcQYE_8sf8) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(_vsIVYiQSg33j4PcQYE_8sf8, "character/new_priest/jupiter/ap_jupiter.nut") == true) {
 local vUpqIMkAGzgwCLEtu = null; 
 local GdwN_JGsfXf_oc = _vsIVYiQSg33j4PcQYE_8sf8.sq_GetVectorData(qde7rqAKY8rCEMOC6Ar1, 0); 
 switch (GdwN_JGsfXf_oc)
 {
 case 0:
 vUpqIMkAGzgwCLEtu = 208;
 break;
 case 1:
 vUpqIMkAGzgwCLEtu = 209;
 break;
 }
 if(vUpqIMkAGzgwCLEtu != null)
 {
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAnimation(vUpqIMkAGzgwCLEtu); 
 local TpnOu2RhelPvLgXI = sq_GetCurrentAnimation(_vsIVYiQSg33j4PcQYE_8sf8); 
 sq_Rewind(TpnOu2RhelPvLgXI); 
 }
 }
} ;
ADDEXTRANUT <- 0 