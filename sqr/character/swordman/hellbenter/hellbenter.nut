
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



function onCreateObject_swordman_hellbenter(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL)
{
 if(!BDG7Zw9YR9pEdLh2Q7G) return;
 if(zg2mVaNKGPiNWW0s5DqnmL.isObjectType(OBJECTTYPE_PASSIVE))
 {
 local Lg5L09fqGboonPtenroLCL = sq_GetCNRDObjectToCollisionObject(zg2mVaNKGPiNWW0s5DqnmL); 
 if(Lg5L09fqGboonPtenroLCL && Lg5L09fqGboonPtenroLCL.getCollisionObjectIndex() == 20052)
 {
 
 if(Lg5L09fqGboonPtenroLCL.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(85); 
 sq_BinaryWriteDword(1); 
 sq_SendCreatePassiveObjectPacket(Lg5L09fqGboonPtenroLCL, 24370, 0, 0, 0, 0, Lg5L09fqGboonPtenroLCL.getDirection());
 }
 }
 }
} ;
