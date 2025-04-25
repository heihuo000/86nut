
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_Hedgehog(HmlmuQe6qZH6nJThYW1gng9)
{
 if(!HmlmuQe6qZH6nJThYW1gng9) return false;
 local r95v9Gg7vxx = HmlmuQe6qZH6nJThYW1gng9.sq_IsUseSkill(116);
 if(r95v9Gg7vxx)
 {
 HmlmuQe6qZH6nJThYW1gng9.sq_IntVectClear();
 if(HmlmuQe6qZH6nJThYW1gng9.sq_GetSTATE() == 3) 
 HmlmuQe6qZH6nJThYW1gng9.sq_IntVectPush(1);
 else
 HmlmuQe6qZH6nJThYW1gng9.sq_IntVectPush(2);
 if(isAvengerAwakenning(HmlmuQe6qZH6nJThYW1gng9)) 
 HmlmuQe6qZH6nJThYW1gng9.sq_IntVectPush(1);
 else
 HmlmuQe6qZH6nJThYW1gng9.sq_IntVectPush(2);
 HmlmuQe6qZH6nJThYW1gng9.sq_addSetStatePacket(63, STATE_PRIORITY_IGNORE_FORCE, true);
 return true;
 }
 return false;
} ;

 
function checkCommandEnable_Hedgehog(TjxFaTFCcccj0P_9)
{
 if(!TjxFaTFCcccj0P_9) return false;
 local XtT5amUonec09D1IXbhhTY = TjxFaTFCcccj0P_9.sq_GetSTATE();
 if(XtT5amUonec09D1IXbhhTY == 3 && sq_isPVPMode()) 
 return false;
 if(XtT5amUonec09D1IXbhhTY == STATE_ATTACK)
 {
 return TjxFaTFCcccj0P_9.sq_IsCommandEnable(116); 
 }
 return true;
} ;

 


 
function onSetState_Hedgehog(P56FjbsSVsOP8jdw1Ot, AmgPteh4NWVxzPZ5bNucc, rNbA41KOF6anV5Ignr7uFa, syjnuY4lAyLckwc8)
{
 if(!P56FjbsSVsOP8jdw1Ot) return;
 P56FjbsSVsOP8jdw1Ot.sq_stopMove();
 local syHJqVFFg9h2fy2 = P56FjbsSVsOP8jdw1Ot.sq_getVectorData(rNbA41KOF6anV5Ignr7uFa, 0);
 local RaxYxQ3PYWp4Wur35A3bc = P56FjbsSVsOP8jdw1Ot.sq_getVectorData(rNbA41KOF6anV5Ignr7uFa, 1);
 P56FjbsSVsOP8jdw1Ot.getVar().clear_vector(); 
 P56FjbsSVsOP8jdw1Ot.getVar().push_vector(syHJqVFFg9h2fy2); 
 P56FjbsSVsOP8jdw1Ot.getVar().push_vector(RaxYxQ3PYWp4Wur35A3bc); 
 local eaRDLvYhd_HSLL0zXR = (P56FjbsSVsOP8jdw1Ot.getVar().get_vector(0) == 1) 
 ? P56FjbsSVsOP8jdw1Ot.sq_getBonusRateWithPassive(116, AmgPteh4NWVxzPZ5bNucc, 0, 1.0 +
 P56FjbsSVsOP8jdw1Ot.sq_getLevelData(116, 1, sq_GetSkillLevel(P56FjbsSVsOP8jdw1Ot, 116)) / 100.0)
 : P56FjbsSVsOP8jdw1Ot.sq_getBonusRateWithPassive(116, AmgPteh4NWVxzPZ5bNucc, 0, 1.0); 
 if(P56FjbsSVsOP8jdw1Ot.getVar().get_vector(1) == 2) 
 {
 P56FjbsSVsOP8jdw1Ot.sq_setCurrentAnimation(90);
 P56FjbsSVsOP8jdw1Ot.sq_setCurrentAttackInfo(72);
 P56FjbsSVsOP8jdw1Ot.sq_PlaySound("PR_HEDGEHOG");
 P56FjbsSVsOP8jdw1Ot.sq_setCurrentAttackBonusRate(eaRDLvYhd_HSLL0zXR); 
 }
 else 
 {
 local ywQEPe8BdNTe = P56FjbsSVsOP8jdw1Ot.getVar().GetAnimationMap("devilhedgehog_body", "character/priest/animation/avengerawakening/devilhedgehog/body.ani");
 P56FjbsSVsOP8jdw1Ot.setCurrentAnimation(ywQEPe8BdNTe);
 P56FjbsSVsOP8jdw1Ot.sq_setCurrentAttackInfo(139);
 local d_u92POn3ytpyJgs2 = (P56FjbsSVsOP8jdw1Ot.getVar().get_vector(0) == 1) 
 ? P56FjbsSVsOP8jdw1Ot.sq_getBonusRateWithPassive(116, AmgPteh4NWVxzPZ5bNucc, 2, 1.0 +
 P56FjbsSVsOP8jdw1Ot.sq_getLevelData(116, 1, sq_GetSkillLevel(P56FjbsSVsOP8jdw1Ot, 116)) / 100.0) 
 : P56FjbsSVsOP8jdw1Ot.sq_getBonusRateWithPassive(116, AmgPteh4NWVxzPZ5bNucc, 2, 1.0); 
 P56FjbsSVsOP8jdw1Ot.sq_setCurrentAttackBonusRate(d_u92POn3ytpyJgs2); 
 }
 if(P56FjbsSVsOP8jdw1Ot.getVar().get_vector(1) == 1 && P56FjbsSVsOP8jdw1Ot.sq_isMyControlObject()) 
 {
 local LjsjgxOCmAQpkPGovZQ = 1360.0 / P56FjbsSVsOP8jdw1Ot.sq_getDelaySum() * 100.0; 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(116); 
 sq_BinaryWriteDword(1); 
 sq_BinaryWriteFloat(LjsjgxOCmAQpkPGovZQ);
 sq_BinaryWriteDword(eaRDLvYhd_HSLL0zXR);
 sq_SendCreatePassiveObjectPacket(P56FjbsSVsOP8jdw1Ot, 24374, 0, 0, 0, 110, P56FjbsSVsOP8jdw1Ot.getDirection());
 }
} ;

function onEndCurrentAni_Hedgehog(upHkAWR1d3_NEHDxY)
{
 if(upHkAWR1d3_NEHDxY.sq_isMyControlObject())
 upHkAWR1d3_NEHDxY.sq_addSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
} ;

function onAttack_Hedgehog(KctYPDY0yKxNV1DrQG1AHs, i9KX_f0l5wd, KY90JAgs56)
{
 if(!KctYPDY0yKxNV1DrQG1AHs) return;
 if(KctYPDY0yKxNV1DrQG1AHs.getVar().get_vector(1) == 1) 
 if(i9KX_f0l5wd.isObjectType(OBJECTTYPE_ACTIVE)) 
 {
 local wgInvARe1xj5vZLYRygg = sq_CreateDrawOnlyObject(KctYPDY0yKxNV1DrQG1AHs, "character/priest/animation/avengerawakening/devilhedgehog/monster_shot3_dodge.ani", ENUM_DRAWLAYER_NORMAL, true); 
 wgInvARe1xj5vZLYRygg.setCurrentPos(i9KX_f0l5wd.getXPos(), i9KX_f0l5wd.getYPos(), i9KX_f0l5wd.getZPos() + sq_GetCenterZPos(KY90JAgs56)); 
 }
} ;

function onKeyFrameFlag_Hedgehog(VqKYGYeKUU, g4P7yGT1KjQXw5c6mslE)
{
 if(!VqKYGYeKUU)return false;
 if(VqKYGYeKUU.getVar().get_vector(1) == 2) 
 {
 if(g4P7yGT1KjQXw5c6mslE == 2)
 VqKYGYeKUU.sq_setShake(VqKYGYeKUU, 3, 150);
 }
 else 
 {
 if(g4P7yGT1KjQXw5c6mslE == 1)
 {
 sq_SetMyShake(VqKYGYeKUU, 5, 300); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/priest/particle/hedgehogsub.ptl", VqKYGYeKUU, 0, 0, 110, true, 5, 0, 1); 
 local MwfcFzERd8KkhycjG9 = sq_AddDrawOnlyAniFromParent(VqKYGYeKUU, "character/priest/animation/avengerawakening/devilhedgehog/black_boom.ani", 0, 0, 120); 
 MwfcFzERd8KkhycjG9.getCurrentAnimation().setImageRateFromOriginal(1.66666, 2.0); 
 }
 else if(g4P7yGT1KjQXw5c6mslE == 2 && VqKYGYeKUU.sq_isMyControlObject())
 sq_flashScreen(VqKYGYeKUU, 0, 20, 150, 170, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 return true;
} ;


