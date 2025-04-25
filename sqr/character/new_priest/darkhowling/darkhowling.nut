
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_darkhowling(dh9fxoGISRXeOIENS1j)
{
 dh9fxoGISRXeOIENS1j = sq_GetCNRDObjectToSQRCharacter(dh9fxoGISRXeOIENS1j);
 if(!dh9fxoGISRXeOIENS1j) return false; 
 local NULchLBUnbdkMb8vz = dh9fxoGISRXeOIENS1j.sq_IsUseSkill(136); 
 if(NULchLBUnbdkMb8vz) 
 {
 dh9fxoGISRXeOIENS1j.sq_IsEnterSkillLastKeyUnits(136); 
 dh9fxoGISRXeOIENS1j.sq_IntVectClear();
 if(isAvengerAwakenning(dh9fxoGISRXeOIENS1j)) 
 dh9fxoGISRXeOIENS1j.sq_IntVectPush(3); 
 else
 dh9fxoGISRXeOIENS1j.sq_IntVectPush(0); 
 dh9fxoGISRXeOIENS1j.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_darkhowling(wuwWndgc5uQvq)
{
 wuwWndgc5uQvq = sq_GetCNRDObjectToSQRCharacter(wuwWndgc5uQvq);
 if(!wuwWndgc5uQvq) return false; 
 local NOZoRDxEi6Ru4YgXAs = wuwWndgc5uQvq.sq_GetState(); 
 if(NOZoRDxEi6Ru4YgXAs == STATE_STAND) 
 return true; 
 if(NOZoRDxEi6Ru4YgXAs == STATE_ATTACK) 
 {
 return wuwWndgc5uQvq.sq_IsCommandEnable(136); 
 }
 return true; 
} ;

 
function onSetState_priest_darkhowling(DkEHbbjx_24vxFBkGP, ChaLUV1_4iGNDnbLOh93py, d9NAuEjSh3nZqhmVZvnse, tpNNVy1YUvTW)
{
 DkEHbbjx_24vxFBkGP = sq_GetCNRDObjectToSQRCharacter(DkEHbbjx_24vxFBkGP);
 if(!DkEHbbjx_24vxFBkGP) return; 
 DkEHbbjx_24vxFBkGP.sq_StopMove(); 
 local DOwDfYbgXrY = DkEHbbjx_24vxFBkGP.sq_GetVectorData(d9NAuEjSh3nZqhmVZvnse, 0); 
 DkEHbbjx_24vxFBkGP.setSkillSubState(DOwDfYbgXrY); 
 switch(DOwDfYbgXrY)
 {
 case 0:
 DkEHbbjx_24vxFBkGP.sq_SetCurrentAnimation(228);
 DkEHbbjx_24vxFBkGP.getVar().clear_vector(); 
 DkEHbbjx_24vxFBkGP.getVar().push_vector(2); 
 if(DkEHbbjx_24vxFBkGP.sq_IsMyControlObject())
 sq_flashScreen(DkEHbbjx_24vxFBkGP, 0, 0, 250, 170, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 1:
 DkEHbbjx_24vxFBkGP.sq_SetCurrentAnimation(229);
 DkEHbbjx_24vxFBkGP.getVar().set_vector(0, DkEHbbjx_24vxFBkGP.getVar().get_vector(0) - 1); 
 local b8zunDCW24YFoIq = DkEHbbjx_24vxFBkGP.sq_GetVectorData(d9NAuEjSh3nZqhmVZvnse, 1); 
 if(b8zunDCW24YFoIq != -1)consumeDevilGauge(DkEHbbjx_24vxFBkGP, b8zunDCW24YFoIq); 
 if(DkEHbbjx_24vxFBkGP.sq_IsMyControlObject())
 {
 local Ff2ynaKtOSqUUGw5iQz6 = sq_GetSkillLevel(DkEHbbjx_24vxFBkGP, 136); 
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(136); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(1); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(28); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(136, 136, 12, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 6, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 3, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 4, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 5, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(0); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 2, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 case 2:
 DkEHbbjx_24vxFBkGP.sq_SetCurrentAnimation(230);
 break;
 case 3:
 local c8AP02Y3gzIcGTvwkH = DkEHbbjx_24vxFBkGP.getVar().GetAnimationMap("priest_avenger_darkhowlingawakeningcast", "character/priest/animation/avengerawakening/darkhowlingawakeningcast.ani");
 DkEHbbjx_24vxFBkGP.setCurrentAnimation(c8AP02Y3gzIcGTvwkH);
 DkEHbbjx_24vxFBkGP.getVar().clear_vector(); 
 DkEHbbjx_24vxFBkGP.getVar().push_vector(2 + DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 11, sq_GetSkillLevel(DkEHbbjx_24vxFBkGP, 136))); 
 sq_SetCustomDamageType(DkEHbbjx_24vxFBkGP, true, 1); 
 break;
 case 4:
 local c8AP02Y3gzIcGTvwkH = DkEHbbjx_24vxFBkGP.getVar().GetAnimationMap("priest_avenger_darkhowlingawakeningloop", "character/priest/animation/avengerawakening/darkhowlingawakeningloop.ani");
 DkEHbbjx_24vxFBkGP.setCurrentAnimation(c8AP02Y3gzIcGTvwkH);
 if(DkEHbbjx_24vxFBkGP.sq_GetVectorData(d9NAuEjSh3nZqhmVZvnse, 1) == 1) 
 {
 if(DkEHbbjx_24vxFBkGP.sq_IsMyControlObject())
 sq_flashScreen(DkEHbbjx_24vxFBkGP, 0, 0, 250, 170, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local s4qsyovbiwqpixwLqYXJ = sq_CreateDrawOnlyObject(DkEHbbjx_24vxFBkGP, "character/priest/effect/animation/darkhowling/shockwave_cast_dh2_shockwave_normal.ani", ENUM_DRAWLAYER_NORMAL, false); 
 sq_moveWithParent(DkEHbbjx_24vxFBkGP, s4qsyovbiwqpixwLqYXJ); 
 DkEHbbjx_24vxFBkGP.getVar("aniobj").clear_obj_vector(); 
 DkEHbbjx_24vxFBkGP.getVar("aniobj").push_obj_vector(s4qsyovbiwqpixwLqYXJ); 
 DkEHbbjx_24vxFBkGP.sq_PlaySound("PR_DGUARDIAN_DARKHOWLING");
 }
 local b8zunDCW24YFoIq = DkEHbbjx_24vxFBkGP.sq_GetVectorData(d9NAuEjSh3nZqhmVZvnse, 2); 
 if(b8zunDCW24YFoIq != -1)consumeDevilGauge(DkEHbbjx_24vxFBkGP, b8zunDCW24YFoIq); 
 DkEHbbjx_24vxFBkGP.getVar().set_vector(0, DkEHbbjx_24vxFBkGP.getVar().get_vector(0) - 1); 
 if(DkEHbbjx_24vxFBkGP.sq_IsMyControlObject())
 {
 local Ff2ynaKtOSqUUGw5iQz6 = sq_GetSkillLevel(DkEHbbjx_24vxFBkGP, 136); 
 DkEHbbjx_24vxFBkGP.sq_StartWrite();
 DkEHbbjx_24vxFBkGP.sq_WriteDword(136); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(3); 
 if(DkEHbbjx_24vxFBkGP.getVar().get_vector(0) > 1) 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(136, 136, 10, 1.0)); 
 else 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetBonusRateWithPassive(136, 136, 12, 1.0)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 6, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 3, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 4, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 5, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_WriteDword(DkEHbbjx_24vxFBkGP.sq_GetLevelData(136, 2, Ff2ynaKtOSqUUGw5iQz6)); 
 DkEHbbjx_24vxFBkGP.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 case 5:
 local c8AP02Y3gzIcGTvwkH = DkEHbbjx_24vxFBkGP.getVar().GetAnimationMap("priest_avenger_darkhowlingawakeningend", "character/priest/animation/avengerawakening/darkhowlingawakeningend.ani");
 DkEHbbjx_24vxFBkGP.setCurrentAnimation(c8AP02Y3gzIcGTvwkH);
 local s4qsyovbiwqpixwLqYXJ = DkEHbbjx_24vxFBkGP.getVar("aniobj").get_obj_vector(0); 
 if(s4qsyovbiwqpixwLqYXJ)
 s4qsyovbiwqpixwLqYXJ.setCurrentAnimation(sq_CreateAnimation("", "character/priest/effect/animation/darkhowling/shockwave_end_dh2_shockwave_normal.ani")); 
 break;
 }
 DkEHbbjx_24vxFBkGP.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onProc_priest_darkhowling(nA3stPQKq6spCz8GtprKsg)
{
 nA3stPQKq6spCz8GtprKsg = sq_GetCNRDObjectToSQRCharacter(nA3stPQKq6spCz8GtprKsg);
 if(!nA3stPQKq6spCz8GtprKsg) return;
 local _hey4w9B0d3GWZ64z = nA3stPQKq6spCz8GtprKsg.getSkillSubState(); 
 switch(_hey4w9B0d3GWZ64z)
 {
 case 4:
 local QxooDgG5wRrrqc3i4V2zcU1 = nA3stPQKq6spCz8GtprKsg.getVar("aniobj").get_obj_vector(0); 
 if(QxooDgG5wRrrqc3i4V2zcU1)
 if(sq_IsEnd(QxooDgG5wRrrqc3i4V2zcU1.getCurrentAnimation())) 
 QxooDgG5wRrrqc3i4V2zcU1.setCurrentAnimation(sq_CreateAnimation("", "character/priest/effect/animation/darkhowling/showckwave_loop_dh2_shockwave_normal.ani")); 
 break;
 }
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(nA3stPQKq6spCz8GtprKsg, "character/new_priest/metamorphosis/ap_metamorphosis.nut"))
 {
 local kBKUnV7yANJX = nA3stPQKq6spCz8GtprKsg.getCurrentAnimation(); 
 if(!kBKUnV7yANJX)return;
 local STGk__vAGwmA = nA3stPQKq6spCz8GtprKsg.sq_GetStateTimer(); 
 local Jq10gJl9NHb8ny = kBKUnV7yANJX.getDelaySum(false); 
 local MzrU86fot1vUvjbDi = -1; 
 switch(_hey4w9B0d3GWZ64z)
 {
 case 0:
 case 3:
 MzrU86fot1vUvjbDi = sq_GetUniformVelocity(0, 255, STGk__vAGwmA, Jq10gJl9NHb8ny); 
 break;
 case 1:
 case 4:
 MzrU86fot1vUvjbDi = 255; 
 break;
 case 2:
 case 5:
 MzrU86fot1vUvjbDi = sq_GetUniformVelocity(255, 0, STGk__vAGwmA, Jq10gJl9NHb8ny); 
 break;
 }
 if(MzrU86fot1vUvjbDi != -1)
 {
 local d7NrPQ_z1AHipkA_DaMZEej = sq_ALPHA(MzrU86fot1vUvjbDi); 
 local J_Z9BPj3yrp8mSSRUU5RxNO = sq_RGB(0, 0, 0); 
 kBKUnV7yANJX.setEffectLayer(true, GRAPHICEFFECT_NONE, true, J_Z9BPj3yrp8mSSRUU5RxNO, d7NrPQ_z1AHipkA_DaMZEej, true, false); 
 
 local BvYrFhp1I5j = sq_AniLayerListSize(kBKUnV7yANJX);
 for(local AKvpaS157Ek0QsrB7GgJu = 0; AKvpaS157Ek0QsrB7GgJu < BvYrFhp1I5j; AKvpaS157Ek0QsrB7GgJu++)
 {
 local sj3riKColxa0VJ9FpPVTBa = sq_getAniLayerListObject(kBKUnV7yANJX, AKvpaS157Ek0QsrB7GgJu); 
 if(sj3riKColxa0VJ9FpPVTBa)
 {
 local OTkedCZIWzZ = sj3riKColxa0VJ9FpPVTBa.GetCurrentFrame().GetGraphicEffect(); 
 if(OTkedCZIWzZ != GRAPHICEFFECT_LINEARDODGE) 
 sj3riKColxa0VJ9FpPVTBa.setEffectLayer(true, GRAPHICEFFECT_NONE, true, J_Z9BPj3yrp8mSSRUU5RxNO, d7NrPQ_z1AHipkA_DaMZEej, true, false);
 }
 }
 }
 }
} ;

function onEndState_priest_darkhowling(EEBnQlGqGyTnAzQT16jlI4fO, R_SVJHpLBLmi5mND)
{
 EEBnQlGqGyTnAzQT16jlI4fO = sq_GetCNRDObjectToSQRCharacter(EEBnQlGqGyTnAzQT16jlI4fO);
 if(!EEBnQlGqGyTnAzQT16jlI4fO) return;
 if(R_SVJHpLBLmi5mND != 136) 
 {
 RemoveAllAni(EEBnQlGqGyTnAzQT16jlI4fO); 
 sq_SetCustomDamageType(EEBnQlGqGyTnAzQT16jlI4fO, false, 1); 
 }
} ;

function onKeyFrameFlag_priest_darkhowling(IimnUsd0t5JK, oVUyBjmopeSgrepXi_DTDrt)
{
 IimnUsd0t5JK = sq_GetCNRDObjectToSQRCharacter(IimnUsd0t5JK);
 if(!IimnUsd0t5JK) return;
 local xqSgsJlZB3vI2Oc3 = IimnUsd0t5JK.getSkillSubState(); 
 switch(xqSgsJlZB3vI2Oc3)
 {
 case 0:
 if(oVUyBjmopeSgrepXi_DTDrt == 0 && IimnUsd0t5JK.sq_IsMyControlObject())
 {
 local Xa4H9l837N54r6NU = sq_GetSkillLevel(IimnUsd0t5JK, 136); 
 IimnUsd0t5JK.sq_StartWrite();
 IimnUsd0t5JK.sq_WriteDword(136); 
 IimnUsd0t5JK.sq_WriteDword(1); 
 IimnUsd0t5JK.sq_WriteDword(27); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetBonusRateWithPassive(136, 136, 0, 1.0)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 6, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 3, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 4, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 5, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 1, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_WriteDword(IimnUsd0t5JK.sq_GetLevelData(136, 2, Xa4H9l837N54r6NU)); 
 IimnUsd0t5JK.sq_SendCreatePassiveObjectPacket(24374, 0, 0, 0, 0);
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_priest_darkhowling(sMR_HlvTXstxDB)
{
 sMR_HlvTXstxDB = sq_GetCNRDObjectToSQRCharacter(sMR_HlvTXstxDB);
 if(!sMR_HlvTXstxDB) return;
 if(!sMR_HlvTXstxDB.sq_IsMyControlObject()) return;
 local abxJ3dw2NK1liWMSm0Q = sMR_HlvTXstxDB.getSkillSubState(); 
 switch(abxJ3dw2NK1liWMSm0Q)
 {
 case 0:
 case 1:
 local yzxbCc8z1YVbI7 = sMR_HlvTXstxDB.getVar().get_vector(0); 
 if(sMR_HlvTXstxDB.isDownSkillLastKey() && yzxbCc8z1YVbI7 > 0 && isInDevilStrikeSkill(sMR_HlvTXstxDB)) 
 {
 local rGetV1VY8F0y2CQYxwUbP2NX = sq_GetSkillLevel(sMR_HlvTXstxDB, 136); 
 local sP1pVcS9RCBfDYuqHs = (CNSquirrelAppendage.sq_IsAppendAppendage(sMR_HlvTXstxDB, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 ? 0
 : sMR_HlvTXstxDB.sq_GetLevelData(136, 13, rGetV1VY8F0y2CQYxwUbP2NX) / 2; 
 local Vu5mk0ld1Qy1KoUOpCdro = getDevilGauge(sMR_HlvTXstxDB); 
 if(Vu5mk0ld1Qy1KoUOpCdro >= sP1pVcS9RCBfDYuqHs) 
 {
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(1); 
 sMR_HlvTXstxDB.sq_IntVectPush(sP1pVcS9RCBfDYuqHs); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return;
 }
 else if(sMR_HlvTXstxDB.isMessage())
 sq_AddMessage(29002); 
 }
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(2); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 break;
 case 3:
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(abxJ3dw2NK1liWMSm0Q + 1); 
 sMR_HlvTXstxDB.sq_IntVectPush(1); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 break;
 case 4:
 local th0ToOvhdCIeM = sMR_HlvTXstxDB.getVar().get_vector(0); 
 if(th0ToOvhdCIeM > 2) 
 {
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(abxJ3dw2NK1liWMSm0Q); 
 sMR_HlvTXstxDB.sq_IntVectPush(0); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return;
 }
 else if(th0ToOvhdCIeM > 0) 
 {
 if(sMR_HlvTXstxDB.isDownSkillLastKey() && isInDevilStrikeSkill(sMR_HlvTXstxDB)) 
 {
 local rGetV1VY8F0y2CQYxwUbP2NX = sq_GetSkillLevel(sMR_HlvTXstxDB, 136); 
 local sP1pVcS9RCBfDYuqHs = sMR_HlvTXstxDB.sq_GetLevelData(136, 13, rGetV1VY8F0y2CQYxwUbP2NX) / 2; 
 local Vu5mk0ld1Qy1KoUOpCdro = getDevilGauge(sMR_HlvTXstxDB); 
 if(Vu5mk0ld1Qy1KoUOpCdro >= sP1pVcS9RCBfDYuqHs) 
 {
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(abxJ3dw2NK1liWMSm0Q); 
 sMR_HlvTXstxDB.sq_IntVectPush(0); 
 sMR_HlvTXstxDB.sq_IntVectPush(sP1pVcS9RCBfDYuqHs); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 return;
 }
 else if(sMR_HlvTXstxDB.isMessage())
 sq_AddMessage(29002); 
 }
 }
 sMR_HlvTXstxDB.sq_IntVectClear();
 sMR_HlvTXstxDB.sq_IntVectPush(abxJ3dw2NK1liWMSm0Q + 1); 
 sMR_HlvTXstxDB.sq_AddSetStatePacket(136, STATE_PRIORITY_USER, true); 
 break;
 case 2: case 5:
 sMR_HlvTXstxDB.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;


