
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_devilfist(QxXyLjUFvMK)
{
 QxXyLjUFvMK = sq_GetCNRDObjectToSQRCharacter(QxXyLjUFvMK);
 if(!QxXyLjUFvMK) return false; 
 local OMf0bNtRIIfNu9TqCg2cl = QxXyLjUFvMK.sq_IsUseSkill(135); 
 if(OMf0bNtRIIfNu9TqCg2cl) 
 {
 QxXyLjUFvMK.sq_IntVectClear();
 if(isAvengerAwakenning(QxXyLjUFvMK)) 
 QxXyLjUFvMK.sq_IntVectPush(1); 
 else
 QxXyLjUFvMK.sq_IntVectPush(0); 
 QxXyLjUFvMK.sq_AddSetStatePacket(135, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_devilfist(Y9vyNptEBH44D)
{
 Y9vyNptEBH44D = sq_GetCNRDObjectToSQRCharacter(Y9vyNptEBH44D);
 if(!Y9vyNptEBH44D) return false; 
 local F2SGtAoVe_eGKAZJrMyH = Y9vyNptEBH44D.sq_GetState(); 
 if(F2SGtAoVe_eGKAZJrMyH == STATE_STAND) 
 return true; 
 if(F2SGtAoVe_eGKAZJrMyH == STATE_ATTACK) 
 {
 return Y9vyNptEBH44D.sq_IsCommandEnable(135); 
 }
 return true; 
} ;

 
function onSetState_priest_devilfist(_vsIVYiQSg33j4PcQYE_8sf8, jUmYTTJ20s7YThk661EHy, qde7rqAKY8rCEMOC6Ar1, DEJBuwX2pDpbRUrl)
{
 _vsIVYiQSg33j4PcQYE_8sf8 = sq_GetCNRDObjectToSQRCharacter(_vsIVYiQSg33j4PcQYE_8sf8);
 if(!_vsIVYiQSg33j4PcQYE_8sf8) return; 
 _vsIVYiQSg33j4PcQYE_8sf8.sq_StopMove(); 
 local vUpqIMkAGzgwCLEtu = _vsIVYiQSg33j4PcQYE_8sf8.sq_GetVectorData(qde7rqAKY8rCEMOC6Ar1, 0); 
 _vsIVYiQSg33j4PcQYE_8sf8.setSkillSubState(vUpqIMkAGzgwCLEtu); 
 switch(vUpqIMkAGzgwCLEtu)
 {
 case 0:
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAnimation(227);
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAttackInfo(121);
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAttackBonusRate(_vsIVYiQSg33j4PcQYE_8sf8.sq_GetBonusRateWithPassive(135, 135, 1, 1.0)); 
 break;
 case 1:
 local GdwN_JGsfXf_oc = _vsIVYiQSg33j4PcQYE_8sf8.getVar().GetAnimationMap("priest_avenger_devilfistavenger_body", "character/priest/animation/avengerawakening/devilfistavenger_body.ani");
 _vsIVYiQSg33j4PcQYE_8sf8.setCurrentAnimation(GdwN_JGsfXf_oc);
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAttackInfo(122);
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetCurrentAttackBonusRate(_vsIVYiQSg33j4PcQYE_8sf8.sq_GetBonusRateWithPassive(135, 135, 4, 1.0)); 
 break;
 }
 _vsIVYiQSg33j4PcQYE_8sf8.getVar().setBool(0, false); 
 local TpnOu2RhelPvLgXI = _vsIVYiQSg33j4PcQYE_8sf8.sq_GetDelaySum(); 
 _vsIVYiQSg33j4PcQYE_8sf8.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local lgl6dzUzddWbdG = _vsIVYiQSg33j4PcQYE_8sf8.sq_GetDelaySum(); 
 local XPdn3b0y8NMc = TpnOu2RhelPvLgXI.tofloat() / lgl6dzUzddWbdG.tofloat() * 100.0; 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("speedRate").setFloat(0, XPdn3b0y8NMc); 
 switch(vUpqIMkAGzgwCLEtu)
 {
 case 0:
 local kBBxe5RX3drKLt = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/human/backdust_11.ani", ENUM_DRAWLAYER_NORMAL, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos() - 1, _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 local P1LJTmR82sTDd9a9fNj9jh7 = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/human/frontdust_00.ani", ENUM_DRAWLAYER_NORMAL, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos(), _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 local gwuJd8Oeo6m669J = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/human/floorspin_02.ani", ENUM_DRAWLAYER_BOTTOM, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos(), _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, kBBxe5RX3drKLt); sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, P1LJTmR82sTDd9a9fNj9jh7); sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, gwuJd8Oeo6m669J); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(kBBxe5RX3drKLt); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(P1LJTmR82sTDd9a9fNj9jh7); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(gwuJd8Oeo6m669J); 
 break;
 case 1:
 local kBBxe5RX3drKLt = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/devil/backdust_11.ani", ENUM_DRAWLAYER_NORMAL, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos() - 1, _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 local P1LJTmR82sTDd9a9fNj9jh7 = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/devil/frontdust_00.ani", ENUM_DRAWLAYER_NORMAL, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos(), _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 local gwuJd8Oeo6m669J = CreateAniRate(_vsIVYiQSg33j4PcQYE_8sf8, "character/priest/effect/animation/devilfist/devil/floorspin_02.ani", ENUM_DRAWLAYER_BOTTOM, _vsIVYiQSg33j4PcQYE_8sf8.getXPos(), _vsIVYiQSg33j4PcQYE_8sf8.getYPos(), _vsIVYiQSg33j4PcQYE_8sf8.getZPos(), false, XPdn3b0y8NMc); 
 sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, kBBxe5RX3drKLt); sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, P1LJTmR82sTDd9a9fNj9jh7); sq_moveWithParent(_vsIVYiQSg33j4PcQYE_8sf8, gwuJd8Oeo6m669J); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(kBBxe5RX3drKLt); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(P1LJTmR82sTDd9a9fNj9jh7); 
 _vsIVYiQSg33j4PcQYE_8sf8.getVar("aniobj").push_obj_vector(gwuJd8Oeo6m669J); 
 break;
 }
} ;

function onAttack_priest_devilfist(bVamxmusfhktEDrEGuja4, EUvCFwNgYJ57bZ9DN9qLHS, Z5lcKSkj_OEgY2, G4fMSW9cyal2puqr0D)
{
 bVamxmusfhktEDrEGuja4 = sq_GetCNRDObjectToSQRCharacter(bVamxmusfhktEDrEGuja4);
 if(!bVamxmusfhktEDrEGuja4) return;
 if(G4fMSW9cyal2puqr0D || !EUvCFwNgYJ57bZ9DN9qLHS.isObjectType(OBJECTTYPE_ACTIVE)) return;
 if(sq_IsGrabable(bVamxmusfhktEDrEGuja4, EUvCFwNgYJ57bZ9DN9qLHS) 
 && sq_IsHoldable(bVamxmusfhktEDrEGuja4, EUvCFwNgYJ57bZ9DN9qLHS) 
 && !sq_IsFixture(EUvCFwNgYJ57bZ9DN9qLHS) 
 && !CNSquirrelAppendage.sq_IsAppendAppendage(EUvCFwNgYJ57bZ9DN9qLHS, "character/new_priest/devilfist/ap_devilfist.nut")) 
 {
 local PHaI7Rtj5jCccAf = bVamxmusfhktEDrEGuja4.getXDistance(EUvCFwNgYJ57bZ9DN9qLHS); 
 if(PHaI7Rtj5jCccAf < 160) PHaI7Rtj5jCccAf = 160; 
 local ycJ1UOWrqgP79Jx = CNSquirrelAppendage.sq_AppendAppendage(EUvCFwNgYJ57bZ9DN9qLHS, bVamxmusfhktEDrEGuja4, 135, false, "character/new_priest/devilfist/ap_devilfist.nut", true);
 sq_MoveToAppendage(EUvCFwNgYJ57bZ9DN9qLHS, bVamxmusfhktEDrEGuja4, bVamxmusfhktEDrEGuja4, PHaI7Rtj5jCccAf + 1, 1, 0, 150, true, ycJ1UOWrqgP79Jx); 
 ycJ1UOWrqgP79Jx.sq_SetValidTime(150); 
 }
 if(bVamxmusfhktEDrEGuja4.getVar().getBool(0) == false)
 {
 bVamxmusfhktEDrEGuja4.getVar().setBool(0, true); 
 local UufDkgudvw34aJNpVZ4 = sq_CreateDrawOnlyObject(bVamxmusfhktEDrEGuja4, "character/priest/effect/animation/devilfist/hit_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 UufDkgudvw34aJNpVZ4.setCurrentPos(EUvCFwNgYJ57bZ9DN9qLHS.getXPos(), EUvCFwNgYJ57bZ9DN9qLHS.getYPos(), EUvCFwNgYJ57bZ9DN9qLHS.getZPos() + sq_GetCenterZPos(Z5lcKSkj_OEgY2)); 
 }
} ;

function onEndState_priest_devilfist(wTg_RUjN1YHLvmC85HHH8Of, MP29Y5jTlBWSrLaaiYla3Jn)
{
 wTg_RUjN1YHLvmC85HHH8Of = sq_GetCNRDObjectToSQRCharacter(wTg_RUjN1YHLvmC85HHH8Of);
 if(!wTg_RUjN1YHLvmC85HHH8Of) return;
 if(MP29Y5jTlBWSrLaaiYla3Jn != 135 && MP29Y5jTlBWSrLaaiYla3Jn != STATE_STAND) 
 RemoveAllAni(wTg_RUjN1YHLvmC85HHH8Of); 
} ;

function onKeyFrameFlag_priest_devilfist(up0_PmNGzc1, OuiqpYHBSBrC)
{
 up0_PmNGzc1 = sq_GetCNRDObjectToSQRCharacter(up0_PmNGzc1);
 if(!up0_PmNGzc1) return false;
 local zyORbQ6tDBjswV7XgNUdg3Y = up0_PmNGzc1.getSkillSubState(); 
 switch(zyORbQ6tDBjswV7XgNUdg3Y)
 {
 case 0:
 case 1:
 if(OuiqpYHBSBrC == 0)
 {
 local z6iZ1sq554 = up0_PmNGzc1.sq_GetLevelData(135, 0 + (zyORbQ6tDBjswV7XgNUdg3Y * 3), sq_GetSkillLevel(up0_PmNGzc1, 135)); 
 local kuqVCVBZaKH8PO2 = up0_PmNGzc1.getCurrentAnimation().getDelaySum(9, 18); 
 up0_PmNGzc1.setTimeEvent(0, kuqVCVBZaKH8PO2 / z6iZ1sq554, z6iZ1sq554 - 1, false); 
 }
 break;
 }
 switch(zyORbQ6tDBjswV7XgNUdg3Y)
 {
 case 0:
 if(OuiqpYHBSBrC == 1)
 sq_SetMyShake(up0_PmNGzc1, 4, 400); 
 else if(OuiqpYHBSBrC == 2)
 {
 if(up0_PmNGzc1.sq_IsMyControlObject())
 {
 up0_PmNGzc1.sq_StartWrite();
 up0_PmNGzc1.sq_WriteDword(135); 
 up0_PmNGzc1.sq_WriteDword(up0_PmNGzc1.sq_GetBonusRateWithPassive(135, 135, 2, 1.0)); 
 up0_PmNGzc1.sq_WriteFloat(1.0); 
 up0_PmNGzc1.sq_SendCreatePassiveObjectPacket(24374, 0, 189, 1, 62);
 }
 }
 break;
 case 1:
 if(OuiqpYHBSBrC == 1)
 sq_SetMyShake(up0_PmNGzc1, 5, 400); 
 else if(OuiqpYHBSBrC == 2)
 {
 if(up0_PmNGzc1.sq_IsMyControlObject())
 {
 up0_PmNGzc1.sq_StartWrite();
 up0_PmNGzc1.sq_WriteDword(135); 
 up0_PmNGzc1.sq_WriteDword(up0_PmNGzc1.sq_GetBonusRateWithPassive(135, 135, 5, 1.0)); 
 up0_PmNGzc1.sq_WriteFloat(1.25); 
 up0_PmNGzc1.sq_SendCreatePassiveObjectPacket(24374, 0, 236, 1, 82);
 }
 }
 break;
 }
 return true;
} ;

function onTimeEvent_priest_devilfist(ycieMhToYF, ydmdMZW1jxf, U15DHjDoVNJUPE)
{
 ycieMhToYF = sq_GetCNRDObjectToSQRCharacter(ycieMhToYF);
 if(!ycieMhToYF) return false;
 if(ydmdMZW1jxf == 0)
 {
 ycieMhToYF.getVar().setBool(0, false); 
 ycieMhToYF.resetHitObjectList(); 
 }
 return false;
} ;

 
function onEndCurrentAni_priest_devilfist(JUIjNmUunWE6USs)
{
 JUIjNmUunWE6USs = sq_GetCNRDObjectToSQRCharacter(JUIjNmUunWE6USs);
 if(!JUIjNmUunWE6USs) return;
 if(JUIjNmUunWE6USs.sq_IsMyControlObject())
 JUIjNmUunWE6USs.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;


