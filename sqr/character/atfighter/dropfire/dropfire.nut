
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C



 
function checkExecutableSkill_atfighter_dropfire(dBdxYiENrl)
{
 if(!dBdxYiENrl) return false; 
 local yj7NgkqP9pdEtRzGQ6M = dBdxYiENrl.sq_IsUseSkill(223); 
 if(yj7NgkqP9pdEtRzGQ6M) 
 {
 local X8Tdw_8RM3hntvO = (dBdxYiENrl.getState()==6)?1:0; 
 dBdxYiENrl.sq_IntVectClear();
 dBdxYiENrl.sq_IntVectPush(X8Tdw_8RM3hntvO); 
 dBdxYiENrl.sq_AddSetStatePacket(223, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_dropfire(dBdxYiENrl)
{
 if(!dBdxYiENrl) return false; 
 local yj7NgkqP9pdEtRzGQ6M = dBdxYiENrl.sq_GetState(); 
 if(yj7NgkqP9pdEtRzGQ6M == STATE_STAND) 
 return true; 
 if(yj7NgkqP9pdEtRzGQ6M == STATE_ATTACK) 
 {
 return dBdxYiENrl.sq_IsCommandEnable(223); 
 }
 return true; 
} ;

 
function onSetState_atfighter_dropfire(IjmyD09HAvdjrRaIAQv9MXJ, gd6PwboCvL0ErO8xrMy8, Kdl_D0wynCAQLMhCjTrr, CsEPx1k2V0TO_z0R)
{
 if(!IjmyD09HAvdjrRaIAQv9MXJ) return; 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_StopMove(); 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_ZStop(); 
 local vv7UNNi2dAAQGs2ViC0J = IjmyD09HAvdjrRaIAQv9MXJ.sq_GetVectorData(Kdl_D0wynCAQLMhCjTrr, 0); 
 IjmyD09HAvdjrRaIAQv9MXJ.setSkillSubState(vv7UNNi2dAAQGs2ViC0J); 
 switch(vv7UNNi2dAAQGs2ViC0J)
 {
 case 0:
 IjmyD09HAvdjrRaIAQv9MXJ.sq_SetCurrentAnimation(154);
 local hMArRC5LLchuIr = 80; 
 local tSBgaI7iOl8YEDOn_Fz7 = 60; 
 local xzs3wqxysa77sJvMRv = 150; 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().clear_vector(); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(xzs3wqxysa77sJvMRv); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(IjmyD09HAvdjrRaIAQv9MXJ.getXPos()); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(IjmyD09HAvdjrRaIAQv9MXJ.getZPos()); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(hMArRC5LLchuIr); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(tSBgaI7iOl8YEDOn_Fz7); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IjmyD09HAvdjrRaIAQv9MXJ, "character/atfighter/dropfire/ap_dropfire.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(IjmyD09HAvdjrRaIAQv9MXJ, "character/atfighter/dropfire/ap_dropfire.nut");
 
 CNSquirrelAppendage.sq_AppendAppendage(IjmyD09HAvdjrRaIAQv9MXJ, IjmyD09HAvdjrRaIAQv9MXJ, 223, false, "character/atfighter/dropfire/ap_dropfire.nut", true);
 break;
 case 1:
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(IjmyD09HAvdjrRaIAQv9MXJ, "character/atfighter/dropfire/ap_dropfire.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(IjmyD09HAvdjrRaIAQv9MXJ, "character/atfighter/dropfire/ap_dropfire.nut");
 IjmyD09HAvdjrRaIAQv9MXJ.sq_SetCurrentAnimation(155);
 IjmyD09HAvdjrRaIAQv9MXJ.sq_SetCurrentAttackInfo(90);
 local hMArRC5LLchuIr = 75; 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().clear_vector(); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(IjmyD09HAvdjrRaIAQv9MXJ.getXPos()); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(IjmyD09HAvdjrRaIAQv9MXJ.getZPos()); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().push_vector(hMArRC5LLchuIr); 
 IjmyD09HAvdjrRaIAQv9MXJ.getVar().setBool(0, false); 
 IjmyD09HAvdjrRaIAQv9MXJ.sq_PlaySound("MF_DROP_FIRE"); 
 break;
 }
 IjmyD09HAvdjrRaIAQv9MXJ.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onProc_atfighter_dropfire(D5wyKXIYqdn)
{
 if(!D5wyKXIYqdn) return;
 local laIPNjbuW8UAr0po9Mzf = D5wyKXIYqdn.getSkillSubState(); 
 if(laIPNjbuW8UAr0po9Mzf == 0) 
 {
 local Adis1AoJPSx1dJ = D5wyKXIYqdn.sq_GetStateTimer(); 
 local tfMOmScWjk1KQhveZ = D5wyKXIYqdn.getVar().get_vector(0); 
 local vTNhgVUtkLfw = D5wyKXIYqdn.getVar().get_vector(3); 
 local ZqHeF_SJbeDLX_XOjrmW = sq_GetDistancePos(D5wyKXIYqdn.getVar().get_vector(1),
 D5wyKXIYqdn.getDirection(),
 sq_GetUniformVelocity(0, vTNhgVUtkLfw, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ)); 
 if(D5wyKXIYqdn.isMovablePos(ZqHeF_SJbeDLX_XOjrmW, D5wyKXIYqdn.getYPos())) 
 sq_setCurrentAxisPos(D5wyKXIYqdn, 0, ZqHeF_SJbeDLX_XOjrmW); 
 else
 {
 local BevI_21aaRrrOqUDrPe8sZ = sq_Abs(ZqHeF_SJbeDLX_XOjrmW - D5wyKXIYqdn.getXPos());
 if(BevI_21aaRrrOqUDrPe8sZ != 0)
 D5wyKXIYqdn.getVar().set_vector(3, (vTNhgVUtkLfw > 0) ? vTNhgVUtkLfw - BevI_21aaRrrOqUDrPe8sZ : vTNhgVUtkLfw + BevI_21aaRrrOqUDrPe8sZ);
 }
 
 local abxBFb0YHWZVMovF = D5wyKXIYqdn.getVar().get_vector(2) + D5wyKXIYqdn.getVar().get_vector(4) * sq_SinTable(sq_GetUniformVelocity(0, 90, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ));
 sq_setCurrentAxisPos(D5wyKXIYqdn, 2, abxBFb0YHWZVMovF.tointeger()); 
 if(Adis1AoJPSx1dJ >= tfMOmScWjk1KQhveZ && D5wyKXIYqdn.sq_IsMyControlObject()) 
 {
 
 D5wyKXIYqdn.sq_IntVectClear();
 D5wyKXIYqdn.sq_IntVectPush(1); 
 D5wyKXIYqdn.sq_AddSetStatePacket(223, STATE_PRIORITY_USER, true); 
 }
 }
 else if(laIPNjbuW8UAr0po9Mzf == 1) 
 {
 local DcemnYwHtVrxdzc1Aa9c6yFp = D5wyKXIYqdn.getCurrentAnimation(); 
 local Adis1AoJPSx1dJ = D5wyKXIYqdn.sq_GetStateTimer(); 
 local tfMOmScWjk1KQhveZ = DcemnYwHtVrxdzc1Aa9c6yFp.getDelaySum(0, 1); 
 local vTNhgVUtkLfw = D5wyKXIYqdn.getVar().get_vector(2); 
 if(D5wyKXIYqdn.getZPos() != 0)
 {
 local ZqHeF_SJbeDLX_XOjrmW = sq_GetDistancePos(D5wyKXIYqdn.getVar().get_vector(0),
 D5wyKXIYqdn.getDirection(),
 sq_GetUniformVelocity(0, vTNhgVUtkLfw, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ)); 
 if(D5wyKXIYqdn.isMovablePos(ZqHeF_SJbeDLX_XOjrmW, D5wyKXIYqdn.getYPos())) 
 sq_setCurrentAxisPos(D5wyKXIYqdn, 0, ZqHeF_SJbeDLX_XOjrmW); 
 else
 {
 local BevI_21aaRrrOqUDrPe8sZ = sq_Abs(ZqHeF_SJbeDLX_XOjrmW - D5wyKXIYqdn.getXPos());
 if(BevI_21aaRrrOqUDrPe8sZ != 0)
 D5wyKXIYqdn.getVar().set_vector(2, (vTNhgVUtkLfw > 0) ? vTNhgVUtkLfw - BevI_21aaRrrOqUDrPe8sZ : vTNhgVUtkLfw + BevI_21aaRrrOqUDrPe8sZ);
 }
 local abxBFb0YHWZVMovF = D5wyKXIYqdn.getVar().get_vector(1) * sq_SinTable(sq_GetUniformVelocity(90, 180, Adis1AoJPSx1dJ, tfMOmScWjk1KQhveZ));
 sq_setCurrentAxisPos(D5wyKXIYqdn, 2, abxBFb0YHWZVMovF.tointeger()); 
 }
 else if(D5wyKXIYqdn.getVar().getBool(0) == false)
 {
 D5wyKXIYqdn.getVar().setBool(0, true); 
 if(D5wyKXIYqdn.sq_IsMyControlObject())
 {
 local vlid2iCq7PUCw2F8IH = D5wyKXIYqdn.sq_GetBonusRateWithPassive(223, 223, 0, 1.0); 
 D5wyKXIYqdn.sq_StartWrite();
 D5wyKXIYqdn.sq_WriteDword(223); 
 D5wyKXIYqdn.sq_WriteDword(vlid2iCq7PUCw2F8IH); 
 D5wyKXIYqdn.sq_SendCreatePassiveObjectPacket(24375, 0, 55, 0, 0); 
 }
 }
 }
} ;

 
function onEndCurrentAni_atfighter_dropfire(Vp2CXoakpmt2lR1)
{
 if(!Vp2CXoakpmt2lR1) return;
 local Bm7DMxix1Vu6D8i9iiFPwnW = Vp2CXoakpmt2lR1.getSkillSubState(); 
 if(Bm7DMxix1Vu6D8i9iiFPwnW == 1 && Vp2CXoakpmt2lR1.sq_IsMyControlObject())
 Vp2CXoakpmt2lR1.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onEndState_atfighter_dropfire(Vp2CXoakpmt2lR1, Bm7DMxix1Vu6D8i9iiFPwnW)
{
 if(!Vp2CXoakpmt2lR1) return;
 if(Bm7DMxix1Vu6D8i9iiFPwnW != 223)
 {
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(Vp2CXoakpmt2lR1, "character/atfighter/dropfire/ap_dropfire.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(Vp2CXoakpmt2lR1, "character/atfighter/dropfire/ap_dropfire.nut");
 }
} ;

