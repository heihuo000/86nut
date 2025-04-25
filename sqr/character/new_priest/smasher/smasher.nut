
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C




if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onAfterSetState_priest_smasher(i7ntxSBn9SX2XbOU5, I79rhXSflzOKbH3O, gzS2L1Zew1q3ww2wZ9q, BPYz6pzJot4MeCj)
{
 if(!i7ntxSBn9SX2XbOU5) return;
 if(CNSquirrelAppendage.sq_IsAppendAppendage(i7ntxSBn9SX2XbOU5, "character/new_priest/jupiter/ap_jupiter.nut") == true)
 {
 local kgD6i1rZQpuoY = null; 
 local OYXaUnGiVnn2XNBwLuSH = i7ntxSBn9SX2XbOU5.sq_GetVectorData(gzS2L1Zew1q3ww2wZ9q, 0); 
 switch(OYXaUnGiVnn2XNBwLuSH)
 {
 case 0:
 kgD6i1rZQpuoY= 199;
 break;
 case 1:
 kgD6i1rZQpuoY= 200;
 break;
 case 2:
 kgD6i1rZQpuoY= 201;
 break;
 case 3:
 kgD6i1rZQpuoY= 201;
 break;
 }
 if(kgD6i1rZQpuoY != null)
 {
 i7ntxSBn9SX2XbOU5.sq_SetCurrentAnimation(kgD6i1rZQpuoY); 
 local Qg37CcFXG3wqRQh5LyZg4l = sq_GetCurrentAnimation(i7ntxSBn9SX2XbOU5); 
 sq_Rewind(Qg37CcFXG3wqRQh5LyZg4l); 
 if(OYXaUnGiVnn2XNBwLuSH == 3) Qg37CcFXG3wqRQh5LyZg4l.setCurrentFrameWithChildLayer(1); 
 }
 }
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
 {
 local OYXaUnGiVnn2XNBwLuSH = obj.sq_GetVectorData(gzS2L1Zew1q3ww2wZ9q, 0); 
 switch(OYXaUnGiVnn2XNBwLuSH)
 {
 case 0:
 ChangQing_751675335_BodyHolyMace(obj, "SmasherTryGrab")
 break;
 case 1:
 ChangQing_751675335_BodyHolyMace(obj, "SmasherSuccessGrab")
 break;
 case 2:
 ChangQing_751675335_BodyHolyMace(obj, "SmasherTryGrab")
 break;
 case 3:
 ChangQing_751675335_BodyHolyMace(obj, "SmasherDash.ani")
 break;
 }
 }
} ;

