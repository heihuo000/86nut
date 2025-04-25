
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function procAppend_po_qq506807329new_atfighter_24375(dkVrZM7aZsEDVrpY5taBFQ)
{
 if(!dkVrZM7aZsEDVrpY5taBFQ) return;
 local l2ptfUCns0I3g7IarGUYL = dkVrZM7aZsEDVrpY5taBFQ.getVar("skill").get_vector(0);
 switch(l2ptfUCns0I3g7IarGUYL)
 {
 case 227: 
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 local Gt9CnhX696VZE = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_timer_vector(1);
 if(Gt9CnhX696VZE)
 {
 local Cp_DhpdPRjPbbSz31U = dkVrZM7aZsEDVrpY5taBFQ.getCurrentAnimation(); 
 if(Gt9CnhX696VZE.isOnEvent(sq_GetCurrentTime(Cp_DhpdPRjPbbSz31U) - Cp_DhpdPRjPbbSz31U.getDelaySum(1, 1)) == true) 
 {
 dkVrZM7aZsEDVrpY5taBFQ.resetHitObjectList(); 
 local nOwFzf7sZ8B = dkVrZM7aZsEDVrpY5taBFQ.getVar("count").get_vector(0) + 1; 
 dkVrZM7aZsEDVrpY5taBFQ.getVar("count").set_vector(0, nOwFzf7sZ8B); 
 local HNWUkSZmxC2WPw0Z8T54 = Gt9CnhX696VZE.getEventMaxCount(); 
 if(!dkVrZM7aZsEDVrpY5taBFQ.getVar("count").getBool(0)
 && nOwFzf7sZ8B.tofloat() / HNWUkSZmxC2WPw0Z8T54.tofloat() >= 0.8)
 {
 dkVrZM7aZsEDVrpY5taBFQ.getVar("count").setBool(0, true); 
 dkVrZM7aZsEDVrpY5taBFQ.stopTimeEvent(0); 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(227); 
 sq_BinaryWriteDword(2); 
 local J9LObvgoNzQUU = dkVrZM7aZsEDVrpY5taBFQ.getVar(); 
 for(local TV51p98WnUQ3ofyry3Zc_GPB = 1; TV51p98WnUQ3ofyry3Zc_GPB < 7; TV51p98WnUQ3ofyry3Zc_GPB++)
 sq_BinaryWriteDword(J9LObvgoNzQUU.get_vector(TV51p98WnUQ3ofyry3Zc_GPB)); 
 sq_SendCreatePassiveObjectPacket(dkVrZM7aZsEDVrpY5taBFQ, 24375, 0, 0, 0, 600, dkVrZM7aZsEDVrpY5taBFQ.getDirection());
 }
 }
 }
 }
 local dcibllV2yjB3EFV6eEe7zt0 = dkVrZM7aZsEDVrpY5taBFQ.getVar("aniobj").get_obj_vector_size(); 
 if(dkVrZM7aZsEDVrpY5taBFQ.getVar("aniobj").getBool(0))
 if(dcibllV2yjB3EFV6eEe7zt0 > 0)
 {
 local FrvFeNDr76 = dkVrZM7aZsEDVrpY5taBFQ.getVar("aniobj"); 
 local IK46rY12Bo = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_timer_vector(0);
 if(IK46rY12Bo.isOnEvent(sq_GetObjectTime(dkVrZM7aZsEDVrpY5taBFQ)) == true)
 {
 for(local TV51p98WnUQ3ofyry3Zc_GPB = 0; TV51p98WnUQ3ofyry3Zc_GPB < dcibllV2yjB3EFV6eEe7zt0; TV51p98WnUQ3ofyry3Zc_GPB++)
 {
 local dV8JoTPBcOoy8cMzlw4SW = FrvFeNDr76.get_obj_vector(TV51p98WnUQ3ofyry3Zc_GPB); 
 if(!dV8JoTPBcOoy8cMzlw4SW)continue; 
 local Cp_DhpdPRjPbbSz31U = dV8JoTPBcOoy8cMzlw4SW.getCurrentAnimation(); 
 if(sq_GetAniFrameNumber(Cp_DhpdPRjPbbSz31U, 0) == 1) 
 sq_AddDrawOnlyAniFromParent(dV8JoTPBcOoy8cMzlw4SW, "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/stonefalls_dust.ani", 0, -1, 0);
 }
 }
 for(local TV51p98WnUQ3ofyry3Zc_GPB = 0; TV51p98WnUQ3ofyry3Zc_GPB < dcibllV2yjB3EFV6eEe7zt0; TV51p98WnUQ3ofyry3Zc_GPB++)
 {
 local dV8JoTPBcOoy8cMzlw4SW = FrvFeNDr76.get_obj_vector(TV51p98WnUQ3ofyry3Zc_GPB); 
 if(!dV8JoTPBcOoy8cMzlw4SW)continue; 
 local Cp_DhpdPRjPbbSz31U = dV8JoTPBcOoy8cMzlw4SW.getCurrentAnimation(); 
 if(sq_GetAniFrameNumber(Cp_DhpdPRjPbbSz31U, 0) == 1) 
 {
 local o6rWt8TtmbpXvbH3JkOj = sq_GetCurrentTime(Cp_DhpdPRjPbbSz31U); 
 local hDr08fEwKSqljlAk6P8 = 300; 
 local EEL8FY8IJazND3Ls_W6S1 = 600; 
 local SF9k545RAO = 0; 
 local O7IC5tzyVsvieUdWgk = sq_GetUniformVelocity(EEL8FY8IJazND3Ls_W6S1, SF9k545RAO, o6rWt8TtmbpXvbH3JkOj, hDr08fEwKSqljlAk6P8);
 if(O7IC5tzyVsvieUdWgk == SF9k545RAO) 
 {
 local UfSxX5_sm3WrWSg7V = ""; 
 if(sq_GetXPos(dV8JoTPBcOoy8cMzlw4SW) % 2 == 0) 
 UfSxX5_sm3WrWSg7V = "atruinrainsmallstonea.ptl";
 else 
 UfSxX5_sm3WrWSg7V = "atruinrainsmallstoneb.ptl";
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/" + UfSxX5_sm3WrWSg7V, dV8JoTPBcOoy8cMzlw4SW, 0, 0, 10, false, 10, 0, 1); 
 dV8JoTPBcOoy8cMzlw4SW.setCurrentAnimation(sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosiona_dust.ani")); 
 local vXfRv6OwcBSP = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atfighter/animation/atruinrain/explosionaground_shock.ani"); 
 local Awt6wCRGJ5ZXwa7Vv = sq_CreatePooledObject(vXfRv6OwcBSP, true); 
 sq_SetCurrentDirection(Awt6wCRGJ5ZXwa7Vv, dkVrZM7aZsEDVrpY5taBFQ.getDirection()); 
 Awt6wCRGJ5ZXwa7Vv.setCurrentPos(sq_GetXPos(dV8JoTPBcOoy8cMzlw4SW), sq_GetYPos(dV8JoTPBcOoy8cMzlw4SW), sq_GetZPos(dV8JoTPBcOoy8cMzlw4SW)); 
 Awt6wCRGJ5ZXwa7Vv = sq_SetEnumDrawLayer(Awt6wCRGJ5ZXwa7Vv, ENUM_DRAWLAYER_BOTTOM); 
 sq_AddObject(dkVrZM7aZsEDVrpY5taBFQ, Awt6wCRGJ5ZXwa7Vv, OBJECTTYPE_DRAWONLY, false); 
 return; 
 }
 else 
 sq_setCurrentAxisPos(dV8JoTPBcOoy8cMzlw4SW, 2, O7IC5tzyVsvieUdWgk); 
 }
 else 
 {
 if(sq_IsEnd(Cp_DhpdPRjPbbSz31U)) 
 dV8JoTPBcOoy8cMzlw4SW.setValid(false); 
 }
 }
 }
 else if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 case 2:
 local RjkNn8_LTDOQ2QKQC2fYe = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 switch(RjkNn8_LTDOQ2QKQC2fYe)
 {
 case 0:
 local Cp_DhpdPRjPbbSz31U = dkVrZM7aZsEDVrpY5taBFQ.getCurrentAnimation(); 
 local o6rWt8TtmbpXvbH3JkOj = sq_GetCurrentTime(Cp_DhpdPRjPbbSz31U); 
 local hDr08fEwKSqljlAk6P8 = 400; 
 local O7IC5tzyVsvieUdWgk = sq_GetUniformVelocity(dkVrZM7aZsEDVrpY5taBFQ.getVar().get_vector(1), 0, o6rWt8TtmbpXvbH3JkOj, hDr08fEwKSqljlAk6P8);
 sq_setCurrentAxisPos(dkVrZM7aZsEDVrpY5taBFQ, 2, O7IC5tzyVsvieUdWgk); 
 if(o6rWt8TtmbpXvbH3JkOj >= hDr08fEwKSqljlAk6P8 && dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject()) 
 dkVrZM7aZsEDVrpY5taBFQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 }
 break;
 case 229: 
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 if(nhVgCvy_o4TUQqQSAYNF != 1) break; 
 local RjkNn8_LTDOQ2QKQC2fYe = dkVrZM7aZsEDVrpY5taBFQ.getState(); 
 switch(RjkNn8_LTDOQ2QKQC2fYe)
 {
 case 11:
 local Gt9CnhX696VZE = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_timer_vector(0);
 if(Gt9CnhX696VZE)
 {
 if(Gt9CnhX696VZE.isOnEvent(sq_GetObjectTime(dkVrZM7aZsEDVrpY5taBFQ)) == true) 
 {
 dkVrZM7aZsEDVrpY5taBFQ.getVar().set_vector(0, dkVrZM7aZsEDVrpY5taBFQ.getVar().get_vector(0) + 1); 
 local MLMV9JhwchelQ = dkVrZM7aZsEDVrpY5taBFQ.getVar().get_vector(0); 
 local KZtpgyl9gXaIx3HhcmL = sq_GetUniformVelocity(50, 0, MLMV9JhwchelQ, Gt9CnhX696VZE.getEventMaxCount()); 
 local yIGYnDJN9PWNrrTYX = dkVrZM7aZsEDVrpY5taBFQ.getVar("atkobj").get_obj_vector_size(); 
 local RPDHx5Wzsd = dkVrZM7aZsEDVrpY5taBFQ.getVar("atkobj"); 
 for(local TV51p98WnUQ3ofyry3Zc_GPB = 0; TV51p98WnUQ3ofyry3Zc_GPB < yIGYnDJN9PWNrrTYX; TV51p98WnUQ3ofyry3Zc_GPB++)
 {
 local zzih9cz0qPorP4 = sq_GetCNRDObjectToActiveObject(RPDHx5Wzsd.get_obj_vector(TV51p98WnUQ3ofyry3Zc_GPB)); 
 if(zzih9cz0qPorP4)
 if(!zzih9cz0qPorP4.isDead()) 
 {
 local vzW3HNg7ObQ = CNSquirrelAppendage.sq_GetAppendage(zzih9cz0qPorP4, "character/atfighter/cyclonecrash/ap_cyclonecrash.nut"); 
 if(vzW3HNg7ObQ && vzW3HNg7ObQ.isValid())
 sq_MoveToAppendageForce(zzih9cz0qPorP4, dkVrZM7aZsEDVrpY5taBFQ, dkVrZM7aZsEDVrpY5taBFQ, 0, 0, KZtpgyl9gXaIx3HhcmL + sq_GetHeightObject(zzih9cz0qPorP4), 0, true, vzW3HNg7ObQ); 
 if(dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())
 sq_SendHitObjectPacket(dkVrZM7aZsEDVrpY5taBFQ, zzih9cz0qPorP4, 0, 0, sq_GetHeightObject(zzih9cz0qPorP4) / -1); 
 sq_SetCurrentDirection(zzih9cz0qPorP4, sq_GetOppositeDirection(sq_GetDirection(zzih9cz0qPorP4))); 
 }
 }
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atcyclonecrashgroundcrashloop_01.ptl", dkVrZM7aZsEDVrpY5taBFQ, 0, 0, 15, true, 10, 0, 12); 
 sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/atfighter/particle/atcyclonecrashgroundcrashloop_02.ptl", dkVrZM7aZsEDVrpY5taBFQ, 0, 0, 15, true, 10, 0, 3); 
 }
 }
 break;
 }
 break;
 case 230: 
 local nhVgCvy_o4TUQqQSAYNF = dkVrZM7aZsEDVrpY5taBFQ.getVar("subType").get_vector(0); 
 switch(nhVgCvy_o4TUQqQSAYNF)
 {
 case 1:
 if(!dkVrZM7aZsEDVrpY5taBFQ.isMyControlObject())return;
 local ztCdxUeBXNKsMdm = dkVrZM7aZsEDVrpY5taBFQ.getParent(); 
 if(!ztCdxUeBXNKsMdm || ztCdxUeBXNKsMdm.getState() != 230) 
 sq_SendDestroyPacketPassiveObject(dkVrZM7aZsEDVrpY5taBFQ); 
 break;
 }
 break;
 }
} ;
 
