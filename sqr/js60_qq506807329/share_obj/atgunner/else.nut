
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 
function onAttack_po_qq506807329new_atgunner_24376(o1p7YHd3BquCnX5VHt, rtK6sAOAsrM8FT, GEtHFUf_7tf1kBABxrC1apC, xB51KN2xuU8xI_lQIyAZMPuF)
{
 if(!o1p7YHd3BquCnX5VHt || !rtK6sAOAsrM8FT) return 0;
 local gcCLRnkIilJWd99wZSS = o1p7YHd3BquCnX5VHt.getVar("skill").get_vector(0);
 switch(gcCLRnkIilJWd99wZSS)
 {
 case 249: 
 local fyxDss5Q3MYUojQz7RR7IF = o1p7YHd3BquCnX5VHt.getVar("subType").get_vector(0); 
 switch(fyxDss5Q3MYUojQz7RR7IF)
 {
 case 1:
 if(xB51KN2xuU8xI_lQIyAZMPuF || !rtK6sAOAsrM8FT.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 local REMa5QI6NcMs108v = ""; 
 local nLRoFqpBQU4y7R = o1p7YHd3BquCnX5VHt.getState(); 
 switch(nLRoFqpBQU4y7R)
 {
 case 18:
 REMa5QI6NcMs108v = "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack03/Hit01_Dodge01.ani";
 break;
 case 19:
 REMa5QI6NcMs108v = "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack03/Hit02_Dodge01.ani";
 break;
 case 21:
 break;
 default:
 REMa5QI6NcMs108v = (sq_getRandom(0, 100) < 20)
 ?
 "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/HitEffect02_Dodge.ani"
 :
 "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATMecaBolt/Attack02/HitEffect01_Dodge.ani";
 break;
 }
 if(REMa5QI6NcMs108v != "")
 {
 local nHB9d0_0fZI = (nLRoFqpBQU4y7R < 18)
 ? sq_GetZPos(rtK6sAOAsrM8FT) + sq_GetHeightObject(rtK6sAOAsrM8FT) / 2
 : sq_GetZPos(rtK6sAOAsrM8FT);
 
 local j4nzM6sYJq8S = sq_CreateAnimation("", REMa5QI6NcMs108v); 
 local PgvXEKJKLZe3Mqiz = sq_CreatePooledObject(j4nzM6sYJq8S, true); 
 sq_SetCurrentDirection(PgvXEKJKLZe3Mqiz, o1p7YHd3BquCnX5VHt.getDirection()); 
 PgvXEKJKLZe3Mqiz.setCurrentPos(sq_GetXPos(rtK6sAOAsrM8FT), sq_GetYPos(rtK6sAOAsrM8FT) + 1, nHB9d0_0fZI); 
 PgvXEKJKLZe3Mqiz = sq_SetEnumDrawLayer(PgvXEKJKLZe3Mqiz, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(o1p7YHd3BquCnX5VHt, PgvXEKJKLZe3Mqiz, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 }
 break;
 case 232: 
 
 if(xB51KN2xuU8xI_lQIyAZMPuF
 || !rtK6sAOAsrM8FT.isObjectType(OBJECTTYPE_ACTIVE)
 || o1p7YHd3BquCnX5VHt.getVar().is_obj_vector(rtK6sAOAsrM8FT)
 || !sq_IsHoldable(o1p7YHd3BquCnX5VHt, rtK6sAOAsrM8FT)) break;
 o1p7YHd3BquCnX5VHt.getVar().push_obj_vector(rtK6sAOAsrM8FT); 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(rtK6sAOAsrM8FT, "character/atgunner/plasmaboost/ap_plasmaboost.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(rtK6sAOAsrM8FT, "character/atgunner/plasmaboost/ap_plasmaboost.nut");
 local fh6M0L1r58DMioIwOUEx7A = CNSquirrelAppendage.sq_AppendAppendage(rtK6sAOAsrM8FT, o1p7YHd3BquCnX5VHt, 232, true, "character/atgunner/plasmaboost/ap_plasmaboost.nut", true);
 sq_HoldAndDelayDie(rtK6sAOAsrM8FT, o1p7YHd3BquCnX5VHt, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, fh6M0L1r58DMioIwOUEx7A); 
 fh6M0L1r58DMioIwOUEx7A.getVar().clear_vector(); 
 fh6M0L1r58DMioIwOUEx7A.getVar().push_vector(o1p7YHd3BquCnX5VHt.getVar().get_vector(0)); 
 break;
 case 233: 
 
 if(xB51KN2xuU8xI_lQIyAZMPuF
 || !rtK6sAOAsrM8FT.isObjectType(OBJECTTYPE_ACTIVE)
 || o1p7YHd3BquCnX5VHt.getState() != 10) break;
 if(o1p7YHd3BquCnX5VHt.isMyControlObject())
 {
 local Zakwsh_V4e = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(Zakwsh_V4e); 
 sq_IntVectorPush(Zakwsh_V4e, sq_GetXPos(rtK6sAOAsrM8FT)); 
 sq_IntVectorPush(Zakwsh_V4e, sq_GetYPos(rtK6sAOAsrM8FT)); 
 sq_IntVectorPush(Zakwsh_V4e, sq_GetZPos(rtK6sAOAsrM8FT) + sq_GetObjectHeight(rtK6sAOAsrM8FT) / 2); 
 o1p7YHd3BquCnX5VHt.addSetStatePacket(11, Zakwsh_V4e, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 235: 
 local fyxDss5Q3MYUojQz7RR7IF = o1p7YHd3BquCnX5VHt.getVar("subType").get_vector(0); 
 if(fyxDss5Q3MYUojQz7RR7IF == 4)
 {
 
 local j4nzM6sYJq8S = sq_CreateAnimation("", "passiveobject/common/animation/fireexplosionparticle1.ani"); 
 j4nzM6sYJq8S.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/common/animation/fireexplosionparticle2.ani"), true); 
 j4nzM6sYJq8S.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/common/animation/fireexplosionparticle3.ani"), true); 
 j4nzM6sYJq8S.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/common/animation/fireexplosionparticle4.ani"), true); 
 local PgvXEKJKLZe3Mqiz = sq_CreatePooledObject(j4nzM6sYJq8S, true); 
 sq_SetCurrentDirection(PgvXEKJKLZe3Mqiz, o1p7YHd3BquCnX5VHt.getDirection()); 
 PgvXEKJKLZe3Mqiz.setCurrentPos(o1p7YHd3BquCnX5VHt.getXPos(), o1p7YHd3BquCnX5VHt.getYPos(), o1p7YHd3BquCnX5VHt.getZPos()); 
 PgvXEKJKLZe3Mqiz = sq_SetEnumDrawLayer(PgvXEKJKLZe3Mqiz, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(o1p7YHd3BquCnX5VHt, PgvXEKJKLZe3Mqiz, OBJECTTYPE_DRAWONLY, false); 
 if(o1p7YHd3BquCnX5VHt.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(o1p7YHd3BquCnX5VHt); 
 }
 break;
 case 239: 
 local fyxDss5Q3MYUojQz7RR7IF = o1p7YHd3BquCnX5VHt.getVar("subType").get_vector(0); 
 switch(fyxDss5Q3MYUojQz7RR7IF)
 {
 case 1:
 if(xB51KN2xuU8xI_lQIyAZMPuF || !rtK6sAOAsrM8FT.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 
 local gfDoQ3_E5hXyenDHlfmgu9 = sq_GetXPos(rtK6sAOAsrM8FT); 
 local NJrV7o0EhSVW4P3vtrV = sq_GetYPos(rtK6sAOAsrM8FT) + 1; 
 local nHB9d0_0fZI = sq_GetZPos(rtK6sAOAsrM8FT); 
 local bd7La4FcxiBI5gKawaL0dc = sq_GetHeightObject(rtK6sAOAsrM8FT); 
 onAddHitEff_atgunner_bloodnchain(o1p7YHd3BquCnX5VHt, "character/gunner/effect/animation/atbloodnchain/hit/bloodattc05.ani", gfDoQ3_E5hXyenDHlfmgu9, NJrV7o0EhSVW4P3vtrV, nHB9d0_0fZI + bd7La4FcxiBI5gKawaL0dc / 2, (bd7La4FcxiBI5gKawaL0dc / 120.0).tofloat()); 
 onAddHitEff_atgunner_bloodnchain(o1p7YHd3BquCnX5VHt, "character/gunner/effect/animation/atbloodnchain/hit/bloodfinishhitattach_1.ani", gfDoQ3_E5hXyenDHlfmgu9, NJrV7o0EhSVW4P3vtrV, nHB9d0_0fZI + bd7La4FcxiBI5gKawaL0dc / 2, (bd7La4FcxiBI5gKawaL0dc / 120.0).tofloat()); 
 break;
 }
 break;
 case 243: 
 local fyxDss5Q3MYUojQz7RR7IF = o1p7YHd3BquCnX5VHt.getVar("subType").get_vector(0); 
 switch(fyxDss5Q3MYUojQz7RR7IF)
 {
 case 1:
 local X6JvGH9QMHviu = o1p7YHd3BquCnX5VHt.getState(); 
 if(X6JvGH9QMHviu != 10) return;
 if(o1p7YHd3BquCnX5VHt.isMyControlObject())
 {
 
 
 local Zakwsh_V4e = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(Zakwsh_V4e); 
 local nHB9d0_0fZI = o1p7YHd3BquCnX5VHt.getZPos(); 
 if(nHB9d0_0fZI <= 20)
 sq_IntVectorPush(Zakwsh_V4e, 2); 
 else
 sq_IntVectorPush(Zakwsh_V4e, 1); 
 o1p7YHd3BquCnX5VHt.addSetStatePacket(11, Zakwsh_V4e, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 }
} ;
 

 
 
function onKeyFrameFlag_po_qq506807329new_atgunner_24376(LhMmXJ4v2uKKQgqzaRUUXMS, iweLZ832Fbw9jtST6c)
{
 if(!LhMmXJ4v2uKKQgqzaRUUXMS) return false;
 local ulnhquzJ4g3NK = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("skill").get_vector(0);
 switch(ulnhquzJ4g3NK)
 {
 case 249: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 1:
 local I9WF1Ejp_YAmpv1H20XL = LhMmXJ4v2uKKQgqzaRUUXMS.getState(); 
 switch(I9WF1Ejp_YAmpv1H20XL)
 {
 case 13:
 if(iweLZ832Fbw9jtST6c == 0)
 {
 LhMmXJ4v2uKKQgqzaRUUXMS.sq_PlaySound("BOLT_MX_SEPARATION"); 
 if(!LhMmXJ4v2uKKQgqzaRUUXMS.isMyControlObject()) return true;
 local BRxsBuhArdxQ9_y = LhMmXJ4v2uKKQgqzaRUUXMS.getVar(); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(249); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(0)); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(1)); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(2)); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(3)); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(4)); 
 sq_BinaryWriteDword(BRxsBuhArdxQ9_y.get_vector(5)); 
 sq_SendCreatePassiveObjectPacket(LhMmXJ4v2uKKQgqzaRUUXMS, 24376, 0, 0, 0, 45, LhMmXJ4v2uKKQgqzaRUUXMS.getDirection());
 }
 break;
 case 18:
 if(iweLZ832Fbw9jtST6c == 0)
 LhMmXJ4v2uKKQgqzaRUUXMS.resetHitObjectList(); 
 break;
 }
 break;
 }
 break;
 case 246: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 2:
 local I9WF1Ejp_YAmpv1H20XL = LhMmXJ4v2uKKQgqzaRUUXMS.getState(); 
 switch(I9WF1Ejp_YAmpv1H20XL)
 {
 case 13:
 case 16:
 local cpYAPxqK2Ff = null;
 switch(iweLZ832Fbw9jtST6c)
 {
 case 1:
 cpYAPxqK2Ff = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_left_turn.ani"); 
 cpYAPxqK2Ff.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_left_dust1.ani"), true); 
 cpYAPxqK2Ff.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_left_dust2.ani"), true); 
 break;
 case 0:
 cpYAPxqK2Ff = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_right_turn.ani"); 
 cpYAPxqK2Ff.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_right_dust1.ani"), true); 
 cpYAPxqK2Ff.addLayerAnimation(1, sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/g4/effect/turn_right_dust2.ani"), true); 
 break;
 }
 local xsH3GoPPcvyr2jL5 = LhMmXJ4v2uKKQgqzaRUUXMS.getXPos();
 local FBtiOEfLE_2VW3QR6 = LhMmXJ4v2uKKQgqzaRUUXMS.getYPos();
 if(cpYAPxqK2Ff != null)
 {
 local NjVdy3uEZ3kOoR4 = (LhMmXJ4v2uKKQgqzaRUUXMS.getVar().get_vector(0)).tofloat() / 100.0; 
 cpYAPxqK2Ff.setImageRateFromOriginal(NjVdy3uEZ3kOoR4, NjVdy3uEZ3kOoR4); 
 cpYAPxqK2Ff.setAutoLayerWorkAnimationAddSizeRate(NjVdy3uEZ3kOoR4); 
 local gJ9qIPlewoIFXl = sq_CreatePooledObject(cpYAPxqK2Ff, true); 
 sq_SetCurrentDirection(gJ9qIPlewoIFXl, LhMmXJ4v2uKKQgqzaRUUXMS.getDirection()); 
 gJ9qIPlewoIFXl.setCurrentPos(xsH3GoPPcvyr2jL5, FBtiOEfLE_2VW3QR6, 0); 
 gJ9qIPlewoIFXl = sq_SetEnumDrawLayer(gJ9qIPlewoIFXl, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(LhMmXJ4v2uKKQgqzaRUUXMS, gJ9qIPlewoIFXl, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 }
 break;
 }
 break;
 case 247: 
 if(!LhMmXJ4v2uKKQgqzaRUUXMS.isMyControlObject()) break;
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 local I9WF1Ejp_YAmpv1H20XL = LhMmXJ4v2uKKQgqzaRUUXMS.getState(); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 1: 
 switch(I9WF1Ejp_YAmpv1H20XL)
 {
 case 11: 
 local oE_9DiEiVTIC7_aIIKtDGbdp = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subStateType").get_vector(0); 
 switch(oE_9DiEiVTIC7_aIIKtDGbdp)
 {
 case 3:
 if(iweLZ832Fbw9jtST6c == 1)
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 2, 80); 
 break;
 }
 break;
 }
 break;
 case 2:
 switch(I9WF1Ejp_YAmpv1H20XL)
 {
 case 11:
 if(iweLZ832Fbw9jtST6c == 1)
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 5, 180); 
 break;
 }
 break;
 }
 break;
 case 244: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 2: 
 if(iweLZ832Fbw9jtST6c == 1)
 {
 local wPXYswRyUtr8eQc8FiRrylZZ = LhMmXJ4v2uKKQgqzaRUUXMS.getCurrentAnimation(); 
 local bOMoQkJfxYPEyo = wPXYswRyUtr8eQc8FiRrylZZ.getDelaySum(1, 1); 
 local oKnQSD8v3BBw7n = LhMmXJ4v2uKKQgqzaRUUXMS.getVar().get_vector(0); 
 LhMmXJ4v2uKKQgqzaRUUXMS.setTimeEvent(0, bOMoQkJfxYPEyo / (oKnQSD8v3BBw7n + 1), oKnQSD8v3BBw7n - 1, false); 
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 4, bOMoQkJfxYPEyo); 
 }
 break;
 }
 break;
 case 233: 
 if(LhMmXJ4v2uKKQgqzaRUUXMS.getState() == 11 && iweLZ832Fbw9jtST6c == 1)
 {
 local wPXYswRyUtr8eQc8FiRrylZZ = LhMmXJ4v2uKKQgqzaRUUXMS.getCurrentAnimation(); 
 local bOMoQkJfxYPEyo = wPXYswRyUtr8eQc8FiRrylZZ.getDelaySum(10, 17); 
 local VjKvXzFf1hWijgrHxo = LhMmXJ4v2uKKQgqzaRUUXMS.getVar().get_vector(0); 
 LhMmXJ4v2uKKQgqzaRUUXMS.setTimeEvent(0, bOMoQkJfxYPEyo / (VjKvXzFf1hWijgrHxo + 1), VjKvXzFf1hWijgrHxo, false); 
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 10, 300); 
 }
 break;
 case 234: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 1:
 switch(iweLZ832Fbw9jtST6c)
 {
 case 1:
 break;
 case 2:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full.ani", 0, 0, 0);
 break;
 case 3:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full2.ani", 0, 0, 0);
 break;
 case 4:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full3.ani", 0, 0, 0);
 break;
 case 5:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full4.ani", 0, 0, 0);
 break;
 case 6:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full5.ani", 0, 0, 0);
 break;
 case 7:
 sq_AddDrawOnlyAniFromParent(LhMmXJ4v2uKKQgqzaRUUXMS, "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/pt15/pt-15_wind_full6.ani", 0, 0, 0);
 break;
 }
 break;
 case 3:
 if(iweLZ832Fbw9jtST6c == 1)
 {
 if(LhMmXJ4v2uKKQgqzaRUUXMS.isMyControlObject())
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 7, 180); 
 }
 break;
 }
 break;
 case 235: 
 if(iweLZ832Fbw9jtST6c == 1000)
 LhMmXJ4v2uKKQgqzaRUUXMS.resetHitObjectList(); 
 break;
 case 240: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 1:
 local I9WF1Ejp_YAmpv1H20XL = LhMmXJ4v2uKKQgqzaRUUXMS.getState(); 
 switch(I9WF1Ejp_YAmpv1H20XL)
 {
 case 14:
 if(sq_IsMyControlObject(LhMmXJ4v2uKKQgqzaRUUXMS))
 {
 switch(iweLZ832Fbw9jtST6c)
 {
 case 1:
 sq_flashScreen(LhMmXJ4v2uKKQgqzaRUUXMS, 0, 50, 0, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 2:
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 3, 200); 
 sq_flashScreen(LhMmXJ4v2uKKQgqzaRUUXMS, 0, 20, 180, 127, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 }
 }
 break;
 }
 break;
 }
 break;
 case 243: 
 local xjOTeTCeH33r035L1mg = LhMmXJ4v2uKKQgqzaRUUXMS.getVar("subType").get_vector(0); 
 switch(xjOTeTCeH33r035L1mg)
 {
 case 1:
 if(iweLZ832Fbw9jtST6c == 1)
 sq_SetMyShake(LhMmXJ4v2uKKQgqzaRUUXMS, 2, 240); 
 break;
 }
 break;
 }
 return true;
} ;
 

 
 
function onTimeEvent_po_qq506807329new_atgunner_24376(jRIreXdGzM854FQFNiuv, eKlD3DfhRde, TRRTIjIXVAG)
{
 if(!jRIreXdGzM854FQFNiuv) return false;
 local r5N_ls4jcRuDyk98_gJEV_z = jRIreXdGzM854FQFNiuv.getVar("skill").get_vector(0);
 switch(r5N_ls4jcRuDyk98_gJEV_z)
 {
 case 249: 
 switch(eKlD3DfhRde)
 {
 case 0:
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 1:
 if(jRIreXdGzM854FQFNiuv.isMyControlObject())
 jRIreXdGzM854FQFNiuv.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local B8iKQTwp2bOB = jRIreXdGzM854FQFNiuv.getVar(); 
 local xNioFENdLgyimXbXe_5EF = B8iKQTwp2bOB.get_vector(6); 
 local j4rKLkBAOA = B8iKQTwp2bOB.get_vector(7); 
 local kWkmp9gbG5A2 = B8iKQTwp2bOB.get_vector(4); 
 local wAYjJnRd_sTr5VAvj7 = B8iKQTwp2bOB.get_vector(5); 
 local Q6tp5aZJI50Nm2TJ8FbZ = 300; 
 local uHsuFstrT0fB = jRIreXdGzM854FQFNiuv.getObjectManager(); 
 local ExGkm5BOVu = uHsuFstrT0fB.getCollisionObjectNumber(); 
 for(local z5qk6EPXtvfiX2o_YR34R0cc = 0; z5qk6EPXtvfiX2o_YR34R0cc < ExGkm5BOVu; z5qk6EPXtvfiX2o_YR34R0cc++)
 {
 local wOtkBlemdXOq = uHsuFstrT0fB.getCollisionObject(z5qk6EPXtvfiX2o_YR34R0cc); 
 if(wOtkBlemdXOq
 && wOtkBlemdXOq.isObjectType(OBJECTTYPE_ACTIVE)
 && jRIreXdGzM854FQFNiuv.isEnemy(wOtkBlemdXOq)
 && wOtkBlemdXOq.isInDamagableState(jRIreXdGzM854FQFNiuv))
 {
 local y1ixPb9eXgu6o5LwddQUi = sq_GetXPos(wOtkBlemdXOq); 
 local Vclo4wOn9WG = sq_GetYPos(wOtkBlemdXOq); 
 local W1G8oNdN7pNaTfaf_b7cv1 = sq_GetZPos(wOtkBlemdXOq); 
 if(sq_Abs(xNioFENdLgyimXbXe_5EF - y1ixPb9eXgu6o5LwddQUi) <= kWkmp9gbG5A2
 && sq_Abs(j4rKLkBAOA - Vclo4wOn9WG) <= wAYjJnRd_sTr5VAvj7
 && W1G8oNdN7pNaTfaf_b7cv1 <= Q6tp5aZJI50Nm2TJ8FbZ) 
 {
 local H2jzMxdyUok = sq_GetCNRDObjectToActiveObject(wOtkBlemdXOq); 
 if(H2jzMxdyUok && !H2jzMxdyUok.isDead())
 {
 if(jRIreXdGzM854FQFNiuv.isMyControlObject())
 sq_SendHitObjectPacket(jRIreXdGzM854FQFNiuv, H2jzMxdyUok, 0, 0, sq_GetHeightObject(H2jzMxdyUok) / 2); 
 }
 }
 }
 }
 break;
 }
 break;
 case 246: 
 switch(eKlD3DfhRde)
 {
 case 0:
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 1:
 if(jRIreXdGzM854FQFNiuv.isMyControlObject())
 jRIreXdGzM854FQFNiuv.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 248: 
 switch(eKlD3DfhRde)
 {
 case 0:
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 1:
 if(jRIreXdGzM854FQFNiuv.isMyControlObject())
 jRIreXdGzM854FQFNiuv.addSetStatePacket(14, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 244: 
 switch(eKlD3DfhRde)
 {
 case 0:
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 1: 
 
 local Lgr4RaaBEn8YOKsnEz = jRIreXdGzM854FQFNiuv.getVar("pos").get_vector(0); 
 local lcV06LcfzD3i1e = jRIreXdGzM854FQFNiuv.getVar("pos").get_vector(1); 
 local mMDzcww4cyXDS79HTe_53X = jRIreXdGzM854FQFNiuv.getXPos() + sq_getRandom(-Lgr4RaaBEn8YOKsnEz, Lgr4RaaBEn8YOKsnEz); 
 local ye8BLwnu6lXfdD8 = jRIreXdGzM854FQFNiuv.getYPos() + sq_getRandom(-lcV06LcfzD3i1e, lcV06LcfzD3i1e); 
 if(jRIreXdGzM854FQFNiuv.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(3); 
 sq_SendCreatePassiveObjectPacketPos(jRIreXdGzM854FQFNiuv, 24376, 0, mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, 0);
 }
 CreateAniRate(jRIreXdGzM854FQFNiuv, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/BombBard/DDayMissileAtkFloor_DangerTarget.ani", ENUM_DRAWLAYER_BOTTOM, mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, 0, false, false); 
 break;
 case 2: 
 
 local uqkjDe6AupBj516SQWYifyaL = 1.5; 
 local Lgr4RaaBEn8YOKsnEz = jRIreXdGzM854FQFNiuv.getVar("pos").get_vector(0); 
 local lcV06LcfzD3i1e = jRIreXdGzM854FQFNiuv.getVar("pos").get_vector(1); 
 local mMDzcww4cyXDS79HTe_53X = jRIreXdGzM854FQFNiuv.getXPos() + sq_getRandom(-Lgr4RaaBEn8YOKsnEz, Lgr4RaaBEn8YOKsnEz); 
 local ye8BLwnu6lXfdD8 = jRIreXdGzM854FQFNiuv.getYPos() + sq_getRandom(-lcV06LcfzD3i1e, lcV06LcfzD3i1e); 
 CreateAniRate(jRIreXdGzM854FQFNiuv, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/BombBard/DDayAtkA_Eff_A.ani", ENUM_DRAWLAYER_NORMAL, mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, 0, uqkjDe6AupBj516SQWYifyaL, false); 
 CreateAniRate(jRIreXdGzM854FQFNiuv, "passiveobject/script_sqr_nut_qq506807329/atgunner/Animation/ATDday/BombBard/DDayAtkAFloor_FloorDodge_A.ani", ENUM_DRAWLAYER_BOTTOM, mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, 0, uqkjDe6AupBj516SQWYifyaL, false); 
 break;
 case 3: 
 
 jRIreXdGzM854FQFNiuv.sq_PlaySound("D_DAY_READY"); 
 if(!jRIreXdGzM854FQFNiuv.isMyControlObject())break;
 local mMDzcww4cyXDS79HTe_53X = sq_GetDistancePos(jRIreXdGzM854FQFNiuv.getXPos(), jRIreXdGzM854FQFNiuv.getDirection(), -350); 
 local ye8BLwnu6lXfdD8 = jRIreXdGzM854FQFNiuv.getYPos(); 
 for(local z5qk6EPXtvfiX2o_YR34R0cc = 0; z5qk6EPXtvfiX2o_YR34R0cc < 6; z5qk6EPXtvfiX2o_YR34R0cc++)
 {
 local MTW6KqZiW2c = mMDzcww4cyXDS79HTe_53X + sq_getRandom(-25, 25); 
 local qlaehfyh1ZOsja5JtBOg0OP = ye8BLwnu6lXfdD8 + sq_getRandom(-50, 50); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(4); 
 sq_BinaryWriteDword(z5qk6EPXtvfiX2o_YR34R0cc + 1); 
 sq_SendCreatePassiveObjectPacketPos(jRIreXdGzM854FQFNiuv, 24376, 0, MTW6KqZiW2c, qlaehfyh1ZOsja5JtBOg0OP, 0);
 }
 break;
 case 4: 
 
 jRIreXdGzM854FQFNiuv.sq_PlaySound("D_DAY_READY"); 
 if(!jRIreXdGzM854FQFNiuv.isMyControlObject())break;
 local Az4HKFmpaBvCuaNnJg = jRIreXdGzM854FQFNiuv.getDirection(); 
 local tVyUb522Ys7 = 5 * sq_GetDistancePos(0, Az4HKFmpaBvCuaNnJg, 1); 
 local mMDzcww4cyXDS79HTe_53X = sq_GetDistancePos(jRIreXdGzM854FQFNiuv.getXPos(), Az4HKFmpaBvCuaNnJg, -350); 
 local ye8BLwnu6lXfdD8 = jRIreXdGzM854FQFNiuv.getYPos() - 50; 
 local EtrACx8UqmuI5348SIDxh = 50 * 2 / 6; 
 for(local z5qk6EPXtvfiX2o_YR34R0cc = 0; z5qk6EPXtvfiX2o_YR34R0cc < 6; z5qk6EPXtvfiX2o_YR34R0cc++)
 {
 local MTW6KqZiW2c = mMDzcww4cyXDS79HTe_53X + tVyUb522Ys7 * z5qk6EPXtvfiX2o_YR34R0cc + sq_getRandom(-20, 20); 
 local qlaehfyh1ZOsja5JtBOg0OP = ye8BLwnu6lXfdD8 + EtrACx8UqmuI5348SIDxh * z5qk6EPXtvfiX2o_YR34R0cc; 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(5); 
 
 sq_BinaryWriteDword(z5qk6EPXtvfiX2o_YR34R0cc / 3 % 2 + 1); 
 sq_SendCreatePassiveObjectPacketPos(jRIreXdGzM854FQFNiuv, 24376, 0, MTW6KqZiW2c, qlaehfyh1ZOsja5JtBOg0OP, 0);
 }
 break;
 case 5: 
 if(!jRIreXdGzM854FQFNiuv.isMyControlObject())break;
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(244); 
 sq_BinaryWriteDword(6); 
 sq_SendCreatePassiveObjectPacket(jRIreXdGzM854FQFNiuv, 24376, 0, 0, 0, 40, jRIreXdGzM854FQFNiuv.getDirection());
 break;
 }
 break;
 case 232: 
 if(eKlD3DfhRde == 0)
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 233: 
 if(eKlD3DfhRde == 0)
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 case 235: 
 if(eKlD3DfhRde == 0)
 {
 local mMDzcww4cyXDS79HTe_53X = jRIreXdGzM854FQFNiuv.getXPos();
 local ye8BLwnu6lXfdD8 = jRIreXdGzM854FQFNiuv.getYPos() + sq_getRandom(-35, 35);
 local COTHMAcPN6 = jRIreXdGzM854FQFNiuv.getZPos();
 local Az4HKFmpaBvCuaNnJg = jRIreXdGzM854FQFNiuv.getDirection(); 
 
 local XMLZAyW79mDmrK1qm = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/missile02_01.ani"); 
 local lBOMLtVCgEmhvWrG6 = sq_CreatePooledObject(XMLZAyW79mDmrK1qm, true); 
 sq_SetCurrentDirection(lBOMLtVCgEmhvWrG6, Az4HKFmpaBvCuaNnJg); 
 lBOMLtVCgEmhvWrG6.setCurrentPos(mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, COTHMAcPN6); 
 lBOMLtVCgEmhvWrG6 = sq_SetEnumDrawLayer(lBOMLtVCgEmhvWrG6, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(jRIreXdGzM854FQFNiuv, lBOMLtVCgEmhvWrG6, OBJECTTYPE_DRAWONLY, false); 
 sq_SetVelocity(lBOMLtVCgEmhvWrG6, 0, sq_GetDistancePos(0, Az4HKFmpaBvCuaNnJg, 280).tofloat()); 
 sq_SetVelocity(lBOMLtVCgEmhvWrG6, 2, -550.0); 
 
 local bAoUYoXlOqIS7DABqRG = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atgunner/animation/atoperationraze/missileshootout_01.ani"); 
 local uRNJL_mA2wdhSjPJrYih5hv = sq_CreatePooledObject(bAoUYoXlOqIS7DABqRG, true); 
 sq_SetCurrentDirection(uRNJL_mA2wdhSjPJrYih5hv, Az4HKFmpaBvCuaNnJg); 
 uRNJL_mA2wdhSjPJrYih5hv.setCurrentPos(mMDzcww4cyXDS79HTe_53X, ye8BLwnu6lXfdD8, COTHMAcPN6); 
 uRNJL_mA2wdhSjPJrYih5hv = sq_SetEnumDrawLayer(uRNJL_mA2wdhSjPJrYih5hv, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(jRIreXdGzM854FQFNiuv, uRNJL_mA2wdhSjPJrYih5hv, OBJECTTYPE_DRAWONLY, false); 
 jRIreXdGzM854FQFNiuv.getVar("aniobj").push_obj_vector(lBOMLtVCgEmhvWrG6); 
 }
 else if(eKlD3DfhRde == 1)
 {
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 }
 break;
 case 240: 
 switch(eKlD3DfhRde)
 {
 case 0:
 if(sq_IsMyControlObject(jRIreXdGzM854FQFNiuv))
 jRIreXdGzM854FQFNiuv.addSetStatePacket(14, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 1:
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 }
 break;
 case 242: 
 if(eKlD3DfhRde == 0)
 jRIreXdGzM854FQFNiuv.resetHitObjectList(); 
 break;
 }
 return false;
} ;

 
 
function onDestroyObject_po_qq506807329new_atgunner_24376(Pf35UCFPY9aN8FI, M24AkowBm0YkAVrAfZzP0cf)
{
 if(!Pf35UCFPY9aN8FI) return;
 local lN1R470g2x1SdnXfw6v = Pf35UCFPY9aN8FI.getVar("skill").get_vector(0);
 switch(lN1R470g2x1SdnXfw6v)
 {
 case -1: 
 break;
 }
} ;


 
 
function destroy_po_qq506807329new_atgunner_24376(Pf35UCFPY9aN8FI)
{
 if(!Pf35UCFPY9aN8FI) return;
 local M24AkowBm0YkAVrAfZzP0cf = Pf35UCFPY9aN8FI.getVar("skill").get_vector(0);
 switch(M24AkowBm0YkAVrAfZzP0cf)
 {
 case 244: 
 local lN1R470g2x1SdnXfw6v = Pf35UCFPY9aN8FI.getVar("subType").get_vector(0); 
 switch(lN1R470g2x1SdnXfw6v)
 {
 case 3: 
 RemoveAllAni(Pf35UCFPY9aN8FI);
 break;
 }
 break;
 case 247: 
 local lN1R470g2x1SdnXfw6v = Pf35UCFPY9aN8FI.getVar("subType").get_vector(0); 
 switch(lN1R470g2x1SdnXfw6v)
 {
 case 1: 
 RemoveAllAni(Pf35UCFPY9aN8FI); 
 break;
 }
 break;
 }
} ;


 

function onChangeSkillEffect_po_qq506807329new_atgunner_24376(zmzpY4HOnBGNlMOWZzuK, qFvLSQKRJkqDz9N, dlXF7J3qmuB9dtgESadFBlX)
{
 if(!zmzpY4HOnBGNlMOWZzuK) return;
 switch(qFvLSQKRJkqDz9N)
 {
 case 246: 
 zmzpY4HOnBGNlMOWZzuK.getVar("isProc").setBool(0, false); 
 break;
 case 247: 
 local M4PvRw_HPUT1f4yqO = zmzpY4HOnBGNlMOWZzuK.getVar().get_vector(0); 
 local hcROiW2m08GeNFn = zmzpY4HOnBGNlMOWZzuK.getVar().get_vector(1); 
 if(M4PvRw_HPUT1f4yqO == hcROiW2m08GeNFn)
 {
 local K26nbgi7jUWfyU5 = zmzpY4HOnBGNlMOWZzuK.getVar().get_vector(2); 
 
 zmzpY4HOnBGNlMOWZzuK.getVar().clear_ct_vector(); 
 zmzpY4HOnBGNlMOWZzuK.getVar().push_ct_vector(); 
 local eWqhLuG8z4qJ = zmzpY4HOnBGNlMOWZzuK.getVar().get_ct_vector(0); 
 eWqhLuG8z4qJ.Reset(); 
 eWqhLuG8z4qJ.Start(10000, 0); 
 
 zmzpY4HOnBGNlMOWZzuK.getVar().clear_timer_vector();
 zmzpY4HOnBGNlMOWZzuK.getVar().push_timer_vector();
 local WOKzMyr3wH = zmzpY4HOnBGNlMOWZzuK.getVar().get_timer_vector(0);
 WOKzMyr3wH.setParameter(K26nbgi7jUWfyU5, -1); 
 WOKzMyr3wH.resetInstant(0); 
 }
 zmzpY4HOnBGNlMOWZzuK.getVar().set_vector(0, zmzpY4HOnBGNlMOWZzuK.getVar().get_vector(0) - 1); 
 if(zmzpY4HOnBGNlMOWZzuK.isMyControlObject())
 {
 local sciE0Upa3E8fR9bmtM4lrj6 = zmzpY4HOnBGNlMOWZzuK.getState(); 
 local MAXikL7ZDuwfMe7GDJGjgst = -1; 
 switch(sciE0Upa3E8fR9bmtM4lrj6)
 {
 case 10:
 case 11:
 case 12: MAXikL7ZDuwfMe7GDJGjgst = 3; break;
 }
 local bUM56fIGhgTiD1 = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(bUM56fIGhgTiD1); 
 sq_IntVectorPush(bUM56fIGhgTiD1, MAXikL7ZDuwfMe7GDJGjgst); 
 switch(sciE0Upa3E8fR9bmtM4lrj6)
 {
 case 11:
 local pxuWdNqQ2KiUfEIvRcQJSZ2 = sq_GetCNRDObjectToSQRCharacter(zmzpY4HOnBGNlMOWZzuK.getTopCharacter()); 
 if(pxuWdNqQ2KiUfEIvRcQJSZ2)
 {
 local cQfNWmK1AVEV7ALdi6BtH = sq_GetSkillLevel(pxuWdNqQ2KiUfEIvRcQJSZ2, 247); 
 sq_IntVectorPush(bUM56fIGhgTiD1, pxuWdNqQ2KiUfEIvRcQJSZ2.sq_GetBonusRateWithPassive(247, 247, 4, 1.0)); 
 sq_IntVectorPush(bUM56fIGhgTiD1, pxuWdNqQ2KiUfEIvRcQJSZ2.sq_GetLevelData(247, 5, cQfNWmK1AVEV7ALdi6BtH)); 
 }
 break;
 case 12:
 sq_IntVectorPush(bUM56fIGhgTiD1, dlXF7J3qmuB9dtgESadFBlX.readDword()); 
 sq_IntVectorPush(bUM56fIGhgTiD1, dlXF7J3qmuB9dtgESadFBlX.readDword()); 
 break;
 }
 zmzpY4HOnBGNlMOWZzuK.addSetStatePacket(sciE0Upa3E8fR9bmtM4lrj6, bUM56fIGhgTiD1, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
} ;

 

 
function getCustomHitEffectFileName_po_qq506807329new_atgunner_24376(ohcbA8gvZmcuX, ed1Sz7XBe75qOJxwH4BZeCV)
{
 if(!ohcbA8gvZmcuX)
 return "";
 local iMK09Jmm_ndHjb = ohcbA8gvZmcuX.getVar("skill").get_vector(0);
 switch(iMK09Jmm_ndHjb)
 {
 case -1: 
 return "";
 default: 
 return "";
 }
} ;

 


 
 
 
function SKILL_ATGUNNER_GSPFALCON_home_po_qq506807329new_atgunner_24376(ohcbA8gvZmcuX, ed1Sz7XBe75qOJxwH4BZeCV, iMK09Jmm_ndHjb)
{
 ohcbA8gvZmcuX.getVar("home").setBool(0, false); 
 ohcbA8gvZmcuX.getVar("home").clear_vector(); 
 local odrrfkmkm2OS = ohcbA8gvZmcuX.getVar("home"); 
 switch(iMK09Jmm_ndHjb)
 {
 case 1:
 odrrfkmkm2OS.push_vector(sq_GetObjectTime(ohcbA8gvZmcuX)); 
 odrrfkmkm2OS.push_vector(150); 
 odrrfkmkm2OS.push_vector(ohcbA8gvZmcuX.getXPos()); 
 odrrfkmkm2OS.push_vector(ohcbA8gvZmcuX.getYPos()); 
 odrrfkmkm2OS.push_vector(ohcbA8gvZmcuX.getZPos()); 
 break;
 }
 ohcbA8gvZmcuX.setDirection(sq_GetDirection(ed1Sz7XBe75qOJxwH4BZeCV)); 
} ;

 
function SKILL_ATGUNNER_GSPFALCON_UseSkill_po_qq506807329new_atgunner_24376(ohcbA8gvZmcuX, ed1Sz7XBe75qOJxwH4BZeCV, iMK09Jmm_ndHjb)
{
 if(ed1Sz7XBe75qOJxwH4BZeCV.isMyControlObject()) 
 {
 local odrrfkmkm2OS = sq_GetCNRDObjectToSQRCharacter(ed1Sz7XBe75qOJxwH4BZeCV); 
 if(odrrfkmkm2OS)
 {
 local j1I9hAExuXGdmbq9 = ohcbA8gvZmcuX.getVar().get_vector(0); 
 if(j1I9hAExuXGdmbq9 > 0)
 {
 odrrfkmkm2OS.setSkillCommandEnable(247, true); 
 if(odrrfkmkm2OS.sq_IsEnterSkill(247) != -1) 
 {
 switch(iMK09Jmm_ndHjb)
 {
 case 12:
 local PDuZFv_ImKQnoNl47 = ohcbA8gvZmcuX.getXPos();
 local MKrhUBOXzhKGX = ohcbA8gvZmcuX.getYPos();
 local g5fBcnbcOlJZ1BN = false; 
 local likiepuu5aqZ3QKDVwueWcQ = ohcbA8gvZmcuX.getObjectManager(); 
 local Sz9DQFCDVb4mdReMJ6 = likiepuu5aqZ3QKDVwueWcQ.getCollisionObjectNumber(); 
 for(local ofYl7W4NKUDsKOLQA9xIoh = 0; ofYl7W4NKUDsKOLQA9xIoh < Sz9DQFCDVb4mdReMJ6; ofYl7W4NKUDsKOLQA9xIoh++)
 {
 local NvvihpMofxTje302 = likiepuu5aqZ3QKDVwueWcQ.getCollisionObject(ofYl7W4NKUDsKOLQA9xIoh); 
 if(NvvihpMofxTje302 
 && NvvihpMofxTje302.isInDamagableState(ohcbA8gvZmcuX) 
 && NvvihpMofxTje302.isObjectType(OBJECTTYPE_ACTIVE) 
 && ohcbA8gvZmcuX.isEnemy(NvvihpMofxTje302)) 
 {
 local WJ359erLc3zH = sq_GetDistance(PDuZFv_ImKQnoNl47, MKrhUBOXzhKGX, sq_GetXPos(NvvihpMofxTje302), sq_GetYPos(NvvihpMofxTje302), true); 
 if(WJ359erLc3zH <= 500)
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(sq_GetGroup(NvvihpMofxTje302)); 
 sq_BinaryWriteDword(sq_GetUniqueId(NvvihpMofxTje302)); 
 g5fBcnbcOlJZ1BN = true; 
 break;
 }
 }
 }
 if(g5fBcnbcOlJZ1BN == false) return false;
 break;
 }
 odrrfkmkm2OS.sq_IsUseSkill(247); 
 sq_SendChangeSkillEffectPacket(ohcbA8gvZmcuX, 247); 
 return true;
 }
 }
 else
 odrrfkmkm2OS.setSkillCommandEnable(247, false); 
 }
 }
 return false;
} ;

 
function SKILL_ATGUNNER_GSPFALCON_isTeleport_po_qq506807329new_atgunner_24376(BubSGeMsreeQdFh6q1YdjZ)
{
 local DpQHHabwM8otJMsJ3CZ = BubSGeMsreeQdFh6q1YdjZ.getTopCharacter(); 
 if(DpQHHabwM8otJMsJ3CZ && DpQHHabwM8otJMsJ3CZ.getState() != STATE_DIE) 
 {
 local UBnA8QiWODQf3TGkt = sq_GetDistance(BubSGeMsreeQdFh6q1YdjZ.getXPos(), BubSGeMsreeQdFh6q1YdjZ.getYPos(), sq_GetXPos(DpQHHabwM8otJMsJ3CZ), sq_GetYPos(DpQHHabwM8otJMsJ3CZ), true); 
 if(UBnA8QiWODQf3TGkt > 300) 
 {
 local o0I0tl4nm8JwWlv = BubSGeMsreeQdFh6q1YdjZ.getState(); 
 local qFDKIy3VxenCwewX = -1; 
 switch(o0I0tl4nm8JwWlv)
 {
 case 10:
 case 12:
 qFDKIy3VxenCwewX = 5;
 break;
 case 11:
 qFDKIy3VxenCwewX = 4;
 break;
 }
 local ASXFEP6YQ08Dvq8KTR = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(ASXFEP6YQ08Dvq8KTR); 
 sq_IntVectorPush(ASXFEP6YQ08Dvq8KTR, qFDKIy3VxenCwewX); 
 BubSGeMsreeQdFh6q1YdjZ.addSetStatePacket(o0I0tl4nm8JwWlv, ASXFEP6YQ08Dvq8KTR, STATE_PRIORITY_AUTO, false, ""); 
 return true;
 }
 }
 return false;
} ;
 





