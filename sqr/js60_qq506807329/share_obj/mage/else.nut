
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onAttack_po_qq506807329new_mage_24372(MzBiGC58q1fxgN, vm7w6fF9332crYeb, rssnOssiRqBoqz, st6Jrt6Bwp)
{
 if(!MzBiGC58q1fxgN) return 0;
 local sDjZxMz5j2TZPtDCxrJLXQ2 = MzBiGC58q1fxgN.getVar("skill").get_vector(0);
 switch(sDjZxMz5j2TZPtDCxrJLXQ2)
 {
 case 245: 
 if(st6Jrt6Bwp 
 || !vm7w6fF9332crYeb.isObjectType(OBJECTTYPE_ACTIVE) 
 || MzBiGC58q1fxgN.getVar().is_obj_vector(vm7w6fF9332crYeb)) 
 return; 
 local _nfs3BhqtH7QKA = MzBiGC58q1fxgN.getCurrentAnimation(); 
 if(sq_IsEnd(_nfs3BhqtH7QKA)) return; 
 if(sq_IsHoldable(MzBiGC58q1fxgN, vm7w6fF9332crYeb)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vm7w6fF9332crYeb, "character/mage/avatar/ap_avatar_attack.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(vm7w6fF9332crYeb, "character/mage/avatar/ap_avatar_attack.nut");
 local MH42NQsgWkpRPsl_TP8L = CNSquirrelAppendage.sq_AppendAppendage(vm7w6fF9332crYeb, MzBiGC58q1fxgN, 245, true, "character/mage/avatar/ap_avatar_attack.nut", true);
 sq_HoldAndDelayDie(vm7w6fF9332crYeb, MzBiGC58q1fxgN, true, true, true, 400, 250, ENUM_DIRECTION_NEUTRAL, MH42NQsgWkpRPsl_TP8L); 
 
 local Y82zTzYC7e3AbL2Jn4OTqDXP = sq_GetObjectHeight(vm7w6fF9332crYeb) / 2; 
 local PHDHzKPLAfU1mp = sq_AddDrawOnlyAniFromParent(vm7w6fF9332crYeb, "character/mage/effect/animation/avatar/avataratkfinishbot_eff_t.ani", 0, -1, Y82zTzYC7e3AbL2Jn4OTqDXP); 
 local AxxtyZexhq6 = sq_AddDrawOnlyAniFromParent(vm7w6fF9332crYeb, "character/mage/effect/animation/avatar/avataratkfinishtop_eff_j.ani", 0, 0, Y82zTzYC7e3AbL2Jn4OTqDXP); 
 
 sq_moveWithParent(vm7w6fF9332crYeb, PHDHzKPLAfU1mp);
 sq_moveWithParent(vm7w6fF9332crYeb, AxxtyZexhq6);
 MzBiGC58q1fxgN.getVar().push_obj_vector(vm7w6fF9332crYeb); 
 MzBiGC58q1fxgN.getVar("aniobj").push_obj_vector(PHDHzKPLAfU1mp);
 MzBiGC58q1fxgN.getVar("aniobj").push_obj_vector(AxxtyZexhq6);
 }
 break;
 case 250: 
 if(st6Jrt6Bwp 
 || !vm7w6fF9332crYeb.isObjectType(OBJECTTYPE_ACTIVE) 
 || !sq_IsHoldable(MzBiGC58q1fxgN, vm7w6fF9332crYeb) 
 || CNSquirrelAppendage.sq_IsAppendAppendage(vm7w6fF9332crYeb, "character/mage/elementalquake/ap_elementalquake.nut")) 
 return; 
 
 if(sq_GetCurrentFrameIndex(MzBiGC58q1fxgN) < 17)
 {
 local MH42NQsgWkpRPsl_TP8L = CNSquirrelAppendage.sq_AppendAppendage(vm7w6fF9332crYeb, MzBiGC58q1fxgN, 250, true, "character/mage/elementalquake/ap_elementalquake.nut", true); 
 sq_HoldAndDelayDie(vm7w6fF9332crYeb, MzBiGC58q1fxgN, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, MH42NQsgWkpRPsl_TP8L); 
 MzBiGC58q1fxgN.getVar().push_obj_vector(vm7w6fF9332crYeb); 
 }
 break;
 case 252: 
 if(st6Jrt6Bwp) return;
 local GENIiUxlzadYfepRMblOjslD = MzBiGC58q1fxgN.getVar("subType").get_vector(0);
 switch(GENIiUxlzadYfepRMblOjslD)
 {
 case 2:
 if(MzBiGC58q1fxgN.getVar().getBool(0) == false) 
 {
 MzBiGC58q1fxgN.getVar().setBool(0, true); 
 
 
 
 
 
 sq_SetMyShake(MzBiGC58q1fxgN, 1, 30); 
 if(MzBiGC58q1fxgN.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(MzBiGC58q1fxgN); 
 }
 break;
 }
 break;
 case 131: 
 
 if(!vm7w6fF9332crYeb || !vm7w6fF9332crYeb.isObjectType(OBJECTTYPE_ACTIVE) || st6Jrt6Bwp) return;
 local LXV0j02d8ZHu5mm = MzBiGC58q1fxgN.getVar("state").get_vector(0);
 if(LXV0j02d8ZHu5mm != 13) 
 {
 local Scabji81yHBC6njqwokDmk = (sq_GetObjectHeight(vm7w6fF9332crYeb)).tofloat() / 150.0; 
 local _nfs3BhqtH7QKA = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/elecrabbit/hiteffect_dodge03.ani"); 
 _nfs3BhqtH7QKA.setImageRateFromOriginal(Scabji81yHBC6njqwokDmk, Scabji81yHBC6njqwokDmk); 
 _nfs3BhqtH7QKA.setAutoLayerWorkAnimationAddSizeRate(Scabji81yHBC6njqwokDmk); 
 local SK7uNmSCSE37uQzT5G8Guuk = sq_CreatePooledObject(_nfs3BhqtH7QKA, true); 
 sq_SetCurrentDirection(SK7uNmSCSE37uQzT5G8Guuk, MzBiGC58q1fxgN.getDirection()); 
 SK7uNmSCSE37uQzT5G8Guuk.setCurrentPos(vm7w6fF9332crYeb.getXPos(), vm7w6fF9332crYeb.getYPos(), vm7w6fF9332crYeb.getZPos() + sq_GetCenterZPos(rssnOssiRqBoqz)); 
 SK7uNmSCSE37uQzT5G8Guuk = sq_SetEnumDrawLayer(SK7uNmSCSE37uQzT5G8Guuk, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(MzBiGC58q1fxgN, SK7uNmSCSE37uQzT5G8Guuk, OBJECTTYPE_DRAWONLY, false); 
 }
 break;
 }
} ;
 

 
 
function onKeyFrameFlag_po_qq506807329new_mage_24372(Z_QcNLtFVx, yNQ8rVtgzcNhI)
{
 if(!Z_QcNLtFVx) return false;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local yJDz_5T0QP9LI = Z_QcNLtFVx.getVar("skill").get_vector(0);
 switch(yJDz_5T0QP9LI)
 {
 case 249: 
 if(yNQ8rVtgzcNhI == 1)
 sq_SetMyShake(Z_QcNLtFVx, 8, 200); 
 break;
 case 250: 
 switch(yNQ8rVtgzcNhI)
 {
 case 100: Z_QcNLtFVx.resetHitObjectList(); break; 
 case 1:
 sq_SetMyShake(Z_QcNLtFVx, 6, 360);
 if(Z_QcNLtFVx.isMyControlObject())
 sq_flashScreen(Z_QcNLtFVx, 0, 50, 150, 51, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 2:
 sq_SetMyShake(Z_QcNLtFVx, 7, 360);
 if(Z_QcNLtFVx.isMyControlObject())
 sq_flashScreen(Z_QcNLtFVx, 0, 50, 200, 76, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 case 3:
 sq_SetMyShake(Z_QcNLtFVx, 8, 500);
 if(Z_QcNLtFVx.isMyControlObject())
 {
 sq_flashScreen(Z_QcNLtFVx, 0, 300, 300, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 local ioFDjK0tJbqMX7PnZWZ = sq_GetCNRDObjectToSQRCharacter(Z_QcNLtFVx.getParent()); 
 if(ioFDjK0tJbqMX7PnZWZ
 && ioFDjK0tJbqMX7PnZWZ.getState() == 250
 && ioFDjK0tJbqMX7PnZWZ.getSkillSubState() == 2) 
 { 
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectClear();
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectPush(3); 
 ioFDjK0tJbqMX7PnZWZ.sq_AddSetStatePacket(250, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 case 4:
 local Z2zpBgR5gK_dtW = sq_GetCurrentAttackInfo(Z_QcNLtFVx); 
 sq_SetCurrentAttackBonusRate(Z2zpBgR5gK_dtW, Z_QcNLtFVx.getVar().get_vector(1)); 
 sq_SetCurrentAttackeDamageAct(Z2zpBgR5gK_dtW, 2); 
 sq_SetCurrentAttacknBackForce(Z2zpBgR5gK_dtW, 100); 
 sq_SetCurrentAttacknUpForce(Z2zpBgR5gK_dtW, 400); 
 Z_QcNLtFVx.resetHitObjectList(); 
 local pPe_KrZ_to0ev = Z_QcNLtFVx.getVar(); 
 for(local wJmMjD7JzJ1tCH = 0; wJmMjD7JzJ1tCH < pPe_KrZ_to0ev.get_obj_vector_size(); wJmMjD7JzJ1tCH++)
 {
 local RHSoZnJIW23_2t0Ve6Gd0jgF = pPe_KrZ_to0ev.get_obj_vector(wJmMjD7JzJ1tCH); 
 if(!RHSoZnJIW23_2t0Ve6Gd0jgF) continue; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(RHSoZnJIW23_2t0Ve6Gd0jgF, "character/mage/elementalquake/ap_elementalquake.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(RHSoZnJIW23_2t0Ve6Gd0jgF, "character/mage/elementalquake/ap_elementalquake.nut");
 }
 break;
 case 5:
 sq_SetMyShake(Z_QcNLtFVx, 10, 800);
 if(Z_QcNLtFVx.isMyControlObject())
 sq_flashScreen(Z_QcNLtFVx, 0, 60, 500, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 break;
 case 251: 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 switch(udydNRo20UxyXTAe9NVdD5)
 {
 case 10:
 case 11:
 case 12:
 if(Z_QcNLtFVx.isMyControlObject())
 Z_QcNLtFVx.addSetStatePacket(udydNRo20UxyXTAe9NVdD5 + 1, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 13:
 if(yNQ8rVtgzcNhI == 1)
 {
 local nCH76zN7kBzSeWsTjS = (Z_QcNLtFVx.getVar().get_vector(0)).tofloat() / 100.0; 
 local wmbUol3qLzlk32SDl8cwm3n3 = Z_QcNLtFVx.getCurrentAnimation();
 local vZnWGacEJ32Btv = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/crystalofovermind/crystalofovermind_grow04_loop.ani");
 vZnWGacEJ32Btv.setImageRateFromOriginal(nCH76zN7kBzSeWsTjS, nCH76zN7kBzSeWsTjS); 
 vZnWGacEJ32Btv.setAutoLayerWorkAnimationAddSizeRate(nCH76zN7kBzSeWsTjS); 
 wmbUol3qLzlk32SDl8cwm3n3.addLayerAnimation(-1, vZnWGacEJ32Btv, true); 
 }
 break;
 case 14:
 if(yNQ8rVtgzcNhI == 1)
 {
 if(Z_QcNLtFVx.isMyControlObject())
 sq_flashScreen(Z_QcNLtFVx, 300, 0, 300, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 else if(yNQ8rVtgzcNhI == 2)
 sq_SetMyShake(Z_QcNLtFVx, 8, 200);
 break;
 }
 break;
 case 253: 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 switch(udydNRo20UxyXTAe9NVdD5)
 {
 case 10:
 if(yNQ8rVtgzcNhI == 1)
 {
 if(Z_QcNLtFVx.isMyControlObject())
 {
 sq_SetMyShake(Z_QcNLtFVx, 7, 320);
 sq_flashScreen(Z_QcNLtFVx, 0, 120, 800, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_MIDDLEBACK);
 }
 RemoveAllFlash(Z_QcNLtFVx); 
 Z_QcNLtFVx.sq_PlaySound("SESTOELEMENTO_EXP");
 }
 break;
 default:
 if(yNQ8rVtgzcNhI == 1)
 {
 Z_QcNLtFVx.stopTimeEvent(0); 
 if(Z_QcNLtFVx.isMyControlObject())
 {
 local ioFDjK0tJbqMX7PnZWZ = sq_GetCNRDObjectToSQRCharacter(Z_QcNLtFVx.getParent()); 
 if(ioFDjK0tJbqMX7PnZWZ)
 {
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectClear();
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectPush(2); 
 ioFDjK0tJbqMX7PnZWZ.sq_AddSetStatePacket(253, STATE_PRIORITY_USER, true); 
 }
 }
 }
 break;
 }
 break;
 case 131: 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 if(udydNRo20UxyXTAe9NVdD5 == 10 && yNQ8rVtgzcNhI == 1)
 sq_SetMyShake(Z_QcNLtFVx, 1, 80);
 break;
 case 133: 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 if(udydNRo20UxyXTAe9NVdD5 == 12
 && Z_QcNLtFVx.getVar().get_vector(0) == 3
 && yNQ8rVtgzcNhI == 1) 
 sq_SetMyShake(Z_QcNLtFVx, 2, 80);
 break;
 case 134: 
 if(!Z_QcNLtFVx.isMyControlObject())return;
 local tk607gQKjjFqafGFZIfsNAW = Z_QcNLtFVx.getVar("subType").get_vector(0); 
 if(tk607gQKjjFqafGFZIfsNAW == 2) 
 if(yNQ8rVtgzcNhI == 1)
 sq_flashScreen(Z_QcNLtFVx, 60, 60, 10, 153, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 else if(yNQ8rVtgzcNhI == 2)
 sq_SetMyShake(Z_QcNLtFVx, 10, 20);
 break;
 case 132: 
 local tk607gQKjjFqafGFZIfsNAW = Z_QcNLtFVx.getVar("subType").get_vector(0); 
 switch(tk607gQKjjFqafGFZIfsNAW)
 {
 case 1: 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 switch(udydNRo20UxyXTAe9NVdD5)
 {
 case 10:
 switch(yNQ8rVtgzcNhI)
 {
 case 1:
 
 Z_QcNLtFVx.sq_PlaySound("JACKFROST_ICEWATER_ROLL_LOOP", 9007);
 
 if(Z_QcNLtFVx.isMyControlObject())
 {
 local ioFDjK0tJbqMX7PnZWZ = sq_GetCNRDObjectToSQRCharacter(Z_QcNLtFVx.getParent()); 
 if(ioFDjK0tJbqMX7PnZWZ)
 {
 
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectClear();
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectPush(1); 
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectPush(ioFDjK0tJbqMX7PnZWZ.getVar().get_vector(6)); 
 ioFDjK0tJbqMX7PnZWZ.sq_IntVectPush(ioFDjK0tJbqMX7PnZWZ.getVar().get_vector(7)); 
 ioFDjK0tJbqMX7PnZWZ.sq_AddSetStatePacket(132, STATE_PRIORITY_USER, true); 
 }
 }
 break;
 case 2:
 local i4cW4qjukn = sq_CreateDrawOnlyObject(Z_QcNLtFVx, "character/mage/effect/animation/jackfrosticewater/start/jackfrosticewaterstartfront_14.ani", ENUM_DRAWLAYER_NORMAL, false); 
 sq_setCurrentAxisPos(i4cW4qjukn, 1, Z_QcNLtFVx.getYPos() + 2); 
 Z_QcNLtFVx.getVar("aniobj").push_obj_vector(i4cW4qjukn); 
 if(Z_QcNLtFVx.isMyControlObject())
 {
 sq_SetMyShake(Z_QcNLtFVx, 3, 200);
 sq_flashScreen(Z_QcNLtFVx, 1, 20, 30, 89, sq_RGB(135, 206, 250), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 break;
 case 3:
 if(Z_QcNLtFVx.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(132); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(Z_QcNLtFVx.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(Z_QcNLtFVx, 24372, 0, 0, 0, 0, Z_QcNLtFVx.getDirection()); 
 }
 break;
 }
 break;
 case 12:
 if(Z_QcNLtFVx.isMyControlObject())
 switch(yNQ8rVtgzcNhI)
 {
 case 1:
 sq_SetMyShake(Z_QcNLtFVx, 4, 260);
 break;
 case 2:
 sq_SetMyShake(Z_QcNLtFVx, 3, 220);
 sq_flashScreen(Z_QcNLtFVx, 1, 30, 50, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 break;
 }
 break;
 }
 break;
 }
 break;
 case 139: 
 local tk607gQKjjFqafGFZIfsNAW = Z_QcNLtFVx.getVar("subType").get_vector(0); 
 local udydNRo20UxyXTAe9NVdD5 = Z_QcNLtFVx.getVar("state").get_vector(0); 
 switch(tk607gQKjjFqafGFZIfsNAW)
 {
 case 1: 
 if(udydNRo20UxyXTAe9NVdD5 == 13 && yNQ8rVtgzcNhI == 1 && Z_QcNLtFVx.isMyControlObject())
 {
 local ioFDjK0tJbqMX7PnZWZ = sq_GetCNRDObjectToSQRCharacter(Z_QcNLtFVx.getParent()); 
 if(!ioFDjK0tJbqMX7PnZWZ)return;
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(139); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteWord(Z_QcNLtFVx.getDirection()); 
 sq_SendCreatePassiveObjectPacketPos(ioFDjK0tJbqMX7PnZWZ, 24372, 0, Z_QcNLtFVx.getXPos(), Z_QcNLtFVx.getYPos(), 1112); 
 }
 break;
 }
 break;
 }
 return true;
} ;
 

 
 
function onTimeEvent_po_qq506807329new_mage_24372(Wnb8lOEArZBMOf, T0m_mCv9RPiHgC, DAZiL_aDcFoUuFX)
{
 if(!Wnb8lOEArZBMOf) return false;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local CIzdlNFQg0hXjqXrGJ9 = Wnb8lOEArZBMOf.getVar("skill").get_vector(0);
 switch(CIzdlNFQg0hXjqXrGJ9)
 {
 case 245: 
 switch(T0m_mCv9RPiHgC)
 {
 case 0:
 local tjcoyt4euyudO = sq_GetCurrentAttackInfo(Wnb8lOEArZBMOf); 
 sq_SetCurrentAttackBonusRate(tjcoyt4euyudO, Wnb8lOEArZBMOf.getVar().get_vector(0)); 
 local x7VmVDBoXLQ = Wnb8lOEArZBMOf.getVar(); 
 local laX5LjTObzwq6rXQ = x7VmVDBoXLQ.get_obj_vector_size(); 
 for(local iA2epFDoyXfuFv = 0; iA2epFDoyXfuFv < laX5LjTObzwq6rXQ; iA2epFDoyXfuFv++)
 {
 local SHZAowfKP0QVVSzPZdN = sq_GetCNRDObjectToActiveObject(x7VmVDBoXLQ.get_obj_vector(iA2epFDoyXfuFv)); 
 if(SHZAowfKP0QVVSzPZdN && !SHZAowfKP0QVVSzPZdN.isDead()) 
 if(Wnb8lOEArZBMOf.isMyControlObject())
 sq_SendHitObjectPacket(Wnb8lOEArZBMOf, SHZAowfKP0QVVSzPZdN, 0, 0, sq_GetObjectHeight(SHZAowfKP0QVVSzPZdN) / 2); 
 }
 break;
 case 1:
 if(Wnb8lOEArZBMOf.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Wnb8lOEArZBMOf); 
 break;
 }
 break;
 case 242: 
 switch(T0m_mCv9RPiHgC)
 {
 case 0: 
 if(Wnb8lOEArZBMOf.isMyControlObject())
 Wnb8lOEArZBMOf.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 1: 
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 break;
 case 2: 
 
 local ubt2n8FRvukABnzoa9o8S = [1.2857142857142858, 0.8571428571428571, 1.4285714285714286, 0.8571428571428571, 1.0, 0.7142857142857143, 0.42857142857142855, 0.8571428571428571];
 local kwAKJbFwcXGDvwQJeqgSazm = Wnb8lOEArZBMOf.getVar("aniobj"); 
 local _goqgA4KMtr3pIpuKaSbVq = kwAKJbFwcXGDvwQJeqgSazm.get_vector(8); 
 if(_goqgA4KMtr3pIpuKaSbVq > 7)
 {
 Wnb8lOEArZBMOf.stopTimeEvent(2); 
 return false;
 }
 local hOxN7S0mLE = kwAKJbFwcXGDvwQJeqgSazm.get_vector(_goqgA4KMtr3pIpuKaSbVq); 
 local XktEFDJNFoNbbcL8C_O2XHs = kwAKJbFwcXGDvwQJeqgSazm.get_obj_vector(hOxN7S0mLE); 
 local nXFB5MYdkh = ubt2n8FRvukABnzoa9o8S[hOxN7S0mLE]; 
 local Z1yb_OMfSaqNluR6Q9Q_35 = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/mage/animation/chasercluster/chaserclusterend_00.ani"); 
 Z1yb_OMfSaqNluR6Q9Q_35.setImageRateFromOriginal(nXFB5MYdkh, nXFB5MYdkh); 
 Z1yb_OMfSaqNluR6Q9Q_35.setAutoLayerWorkAnimationAddSizeRate(nXFB5MYdkh); 
 XktEFDJNFoNbbcL8C_O2XHs.setCurrentAnimation(Z1yb_OMfSaqNluR6Q9Q_35); 
 sq_SetCustomRotate(XktEFDJNFoNbbcL8C_O2XHs, 0.0); 
 kwAKJbFwcXGDvwQJeqgSazm.set_vector(8, _goqgA4KMtr3pIpuKaSbVq + 1); 
 break;
 }
 break;
 case 249: 
 if(T0m_mCv9RPiHgC == 0)
 {
 local uX_ZZHRE66U_6 = Wnb8lOEArZBMOf.getVar().get_vector(1); 
 if(uX_ZZHRE66U_6 > 0)
 {
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 Wnb8lOEArZBMOf.getVar().set_vector(1, uX_ZZHRE66U_6 - 1); 
 }
 
 else
 {
 if(Wnb8lOEArZBMOf.isMyControlObject())
 Wnb8lOEArZBMOf.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 252: 
 switch(T0m_mCv9RPiHgC)
 {
 case 0:
 local _goqgA4KMtr3pIpuKaSbVq = Wnb8lOEArZBMOf.getVar().get_vector(2); 
 if(_goqgA4KMtr3pIpuKaSbVq > 0)
 {
 if(Wnb8lOEArZBMOf.isMyControlObject())
 {
 local O0H5n7P4KFu = ENUM_DIRECTION_LEFT; 
 local v6ly3WxnJNYehBnht = sq_getRandom(-50, 50); 
 local CrpmHIvJXxNt5bjBlMSE = sq_ToDegree(
 sq_Atan2((Wnb8lOEArZBMOf.getZPos()).tofloat(), sq_Abs(v6ly3WxnJNYehBnht).tofloat())
 ); 
 if(v6ly3WxnJNYehBnht < 0)
 O0H5n7P4KFu = ENUM_DIRECTION_RIGHT; 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(252); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteWord(O0H5n7P4KFu); 
 sq_BinaryWriteWord(Wnb8lOEArZBMOf.getVar().get_vector(0)); 
 sq_BinaryWriteDword(Wnb8lOEArZBMOf.getVar().get_vector(3)); 
 sq_BinaryWriteFloat(CrpmHIvJXxNt5bjBlMSE / -1.0); 
 sq_SendCreatePassiveObjectPacket(Wnb8lOEArZBMOf, 24372, 0, v6ly3WxnJNYehBnht, 0, 0, ENUM_DIRECTION_RIGHT); 
 }
 Wnb8lOEArZBMOf.getVar().set_vector(2, _goqgA4KMtr3pIpuKaSbVq - 1); 
 }
 else if(Wnb8lOEArZBMOf.isMyControlObject())
 Wnb8lOEArZBMOf.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 253: 
 if(T0m_mCv9RPiHgC == 0)
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 break;
 case 131: 
 if(T0m_mCv9RPiHgC == 0)
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 break;
 case 132: 
 switch(T0m_mCv9RPiHgC)
 {
 case 0:
 if(Wnb8lOEArZBMOf.isMyControlObject())
 {
 local poyiIsRIEmpJwX3 = Wnb8lOEArZBMOf.getMyPassiveObject(24372, 0);
 if(poyiIsRIEmpJwX3) 
 poyiIsRIEmpJwX3.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 Wnb8lOEArZBMOf.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 }
 break;
 case 135: 
 if(T0m_mCv9RPiHgC == 0)
 {
 local laX5LjTObzwq6rXQ = Wnb8lOEArZBMOf.getVar().get_vector(0); 
 if(DAZiL_aDcFoUuFX < laX5LjTObzwq6rXQ)
 {
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 
 local TYRpPV3i8sZ9iVYgX = sq_CreateAnimation("", "character/mage/effect/animation/moonshadow/moonshadow_expl_normal.ani"); 
 local XktEFDJNFoNbbcL8C_O2XHs = sq_CreatePooledObject(TYRpPV3i8sZ9iVYgX, true); 
 sq_SetCurrentDirection(XktEFDJNFoNbbcL8C_O2XHs, Wnb8lOEArZBMOf.getDirection()); 
 XktEFDJNFoNbbcL8C_O2XHs.setCurrentPos(Wnb8lOEArZBMOf.getXPos() + sq_getRandom(-130, 130), Wnb8lOEArZBMOf.getYPos() + sq_getRandom(-25, 25), Wnb8lOEArZBMOf.getZPos() + 70); 
 XktEFDJNFoNbbcL8C_O2XHs = sq_SetEnumDrawLayer(XktEFDJNFoNbbcL8C_O2XHs, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(Wnb8lOEArZBMOf, XktEFDJNFoNbbcL8C_O2XHs, OBJECTTYPE_DRAWONLY, false); 
 }
 else if(Wnb8lOEArZBMOf.isMyControlObject()) 
 Wnb8lOEArZBMOf.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 136: 
 if(T0m_mCv9RPiHgC == 0)
 if(Wnb8lOEArZBMOf.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Wnb8lOEArZBMOf); 
 break;
 case 139: 
 if(T0m_mCv9RPiHgC == 0)
 {
 if(Wnb8lOEArZBMOf.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Wnb8lOEArZBMOf); 
 }
 else if(T0m_mCv9RPiHgC == 1)
 Wnb8lOEArZBMOf.resetHitObjectList(); 
 break;
 case 138: 
 if(T0m_mCv9RPiHgC == 0)
 {
 if(Wnb8lOEArZBMOf.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(Wnb8lOEArZBMOf); 
 }
 break;
 }
} ;
 

 
function getCustomHitEffectFileName_po_qq506807329new_mage_24372(To21Y3g97nvXgu, TsHFjk3_1Ou5Sd)
{
 if(!To21Y3g97nvXgu) return "";
 local tLH6U2aYTaCc1mw = To21Y3g97nvXgu.getVar("skill").get_vector(0);
 switch(tLH6U2aYTaCc1mw)
 {
 case 249: 
 if(To21Y3g97nvXgu.isExistTimeEvent(0)) 
 return "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_hit.ani";
 else 
 return "passiveobject/script_sqr_nut_qq506807329/mage/animation/elementalcurtain/elementalcurtain_finishhit.ani";
 case 252: 
 local l1rWr3D0Xb = To21Y3g97nvXgu.getVar().get_vector(0); 
 switch(l1rWr3D0Xb)
 {
 case ENUM_ELEMENT_FIRE: return "passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/fire/fire_attackeffect.ani";
 case ENUM_ELEMENT_WATER: return "passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/ice/ice_attackeffect.ani";
 case ENUM_ELEMENT_DARK: return "passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/dark/dark_attackeffect.ani";
 case ENUM_ELEMENT_LIGHT: return "passiveobject/script_sqr_nut_qq506807329/mage/animation/thegate/light/light_attackeffect.ani";
 }
 return "";
 }
 return "";
} ;

 
function destroy_po_qq506807329new_mage_24372(_FyGDDC0TWtr)
{
 if(!_FyGDDC0TWtr) return;
 local GIZTtWj7Qtxs = _FyGDDC0TWtr.getVar("skill").get_vector(0);
 switch(GIZTtWj7Qtxs)
 {
 case 242: 
 local xClZ2Xesaznr = ["aniobj", "aniobj2"]; 
 for(local L54Pzg8QcesB = 0; L54Pzg8QcesB < xClZ2Xesaznr.len(); L54Pzg8QcesB++)
 {
 local K13hnSkWg0mDma1Kltsj3Sa2 = _FyGDDC0TWtr.getVar(xClZ2Xesaznr[L54Pzg8QcesB]); 
 local G6rQXO6C44qoVCFFml5vNX = K13hnSkWg0mDma1Kltsj3Sa2.get_obj_vector_size(); 
 for(local uA3N0nX4I1 = 0; uA3N0nX4I1 < G6rQXO6C44qoVCFFml5vNX; uA3N0nX4I1++)
 {
 local HYt1xolKxuKnbpnTco = K13hnSkWg0mDma1Kltsj3Sa2.get_obj_vector(uA3N0nX4I1);
 if(HYt1xolKxuKnbpnTco) HYt1xolKxuKnbpnTco.setValid(false); 
 }
 }
 break;
 case 245: 
 local K13hnSkWg0mDma1Kltsj3Sa2 = _FyGDDC0TWtr.getVar("aniobj"); 
 local G6rQXO6C44qoVCFFml5vNX = K13hnSkWg0mDma1Kltsj3Sa2.get_obj_vector_size(); 
 for(local uA3N0nX4I1 = 0; uA3N0nX4I1 < G6rQXO6C44qoVCFFml5vNX; uA3N0nX4I1++)
 {
 local HYt1xolKxuKnbpnTco = K13hnSkWg0mDma1Kltsj3Sa2.get_obj_vector(uA3N0nX4I1);
 if(HYt1xolKxuKnbpnTco) sq_moveWithParent(HYt1xolKxuKnbpnTco, HYt1xolKxuKnbpnTco); 
 }
 break;
 case 249: 
 case 251: 
 case 131: 
 case 133: 
 RemoveAllAni(_FyGDDC0TWtr); 
 break;
 case 253: 
 RemoveAllFlash(_FyGDDC0TWtr); 
 break;
 case 132: 
 RemoveAllAni(_FyGDDC0TWtr); 
 _FyGDDC0TWtr.stopSound(9007); 
 break;
 }
} ;

 
function onChangeSkillEffect_po_qq506807329new_mage_24372(tlLFKYlK4kkvaz3, Z3WbPH4boHWzjaefMqY8UbS, SHtHII4boBBx9tTugsc)
{
 if(!tlLFKYlK4kkvaz3) return;
} ;
 


