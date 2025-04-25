
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C

function onEnterFrame_priest_attack(obj, frameIndex)
{
	if(!obj) return;

	if(frameIndex == 4 && obj.isMyControlObject() && obj.isCurrentCutomAniIndex(258))
	{
		sq_SetMyShake(obj,5,80);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(6);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, 8, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(250);
		obj.sq_WriteDword(5);
		obj.sq_WriteDword(obj.sq_GetBonusRateWithPassive(253, 8, 2, 1.0));
		obj.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
	}
}

function onAfterSetState_priest_attack(wuwWndgc5uQvq, NOZoRDxEi6Ru4YgXAs, NqlchM1GTjOK, q3oXejoUPjM5Ni)
{
 if(!wuwWndgc5uQvq) return;
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_priest_attack(DkEHbbjx_24vxFBkGP, ChaLUV1_4iGNDnbLOh93py)
{
 if(!DkEHbbjx_24vxFBkGP) return false;
 if(DkEHbbjx_24vxFBkGP.isCurrentCutomAniIndex(191) 
 && CNSquirrelAppendage.sq_IsAppendAppendage(DkEHbbjx_24vxFBkGP, "character/new_priest/jupiter/ap_jupiter.nut") == true
 && DkEHbbjx_24vxFBkGP.sq_IsMyControlObject()) 
 {
 if(ChaLUV1_4iGNDnbLOh93py == 0)
 {
 sq_SetMyShake(DkEHbbjx_24vxFBkGP, 5, 80); 
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(1); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 1, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(2); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 2, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 }
 }
 return true;
} ;

function onAfterSetState_priest_attack(wuwWndgc5uQvq, NOZoRDxEi6Ru4YgXAs, NqlchM1GTjOK, q3oXejoUPjM5Ni)
{
 if(!wuwWndgc5uQvq) return;
} 


function onKeyFrameFlag_priest_attack(DkEHbbjx_24vxFBkGP, ChaLUV1_4iGNDnbLOh93py)
{
 if(!DkEHbbjx_24vxFBkGP) return false;
 if(DkEHbbjx_24vxFBkGP.isCurrentCutomAniIndex(191) 
 && CNSquirrelAppendage.sq_IsAppendAppendage(DkEHbbjx_24vxFBkGP, "character/new_priest/jupiter/ap_jupiter.nut") == true
 && DkEHbbjx_24vxFBkGP.sq_IsMyControlObject()) 
 {
 if(ChaLUV1_4iGNDnbLOh93py == 0)
 {
 sq_SetMyShake(DkEHbbjx_24vxFBkGP, 5, 80); 
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(1); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 1, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(250); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(2); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(250, 8, 2, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 190, 0, 0);
 }
 }
 return true;
} 


ADDEXTRANUT <- 0 