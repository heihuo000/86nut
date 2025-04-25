




 
function setEnableCancelSkill_Thief(P17_Ie67RvIkHnpfoMfPp0, XfsYmB3qtYof_mmblqAAafN)
{
 if(!P17_Ie67RvIkHnpfoMfPp0)
 return false;
 if(!P17_Ie67RvIkHnpfoMfPp0.isMyControlObject())
 return false;
 if(!XfsYmB3qtYof_mmblqAAafN)
 return true;
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(220, XfsYmB3qtYof_mmblqAAafN); 
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(221, XfsYmB3qtYof_mmblqAAafN); 
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(222, XfsYmB3qtYof_mmblqAAafN); 
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(223, XfsYmB3qtYof_mmblqAAafN); 
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(224, XfsYmB3qtYof_mmblqAAafN); 
 P17_Ie67RvIkHnpfoMfPp0.setSkillCommandEnable(225, XfsYmB3qtYof_mmblqAAafN); 
 return true;
} 



function onChangeSkillEffect_Thief(zebrUf85bpwk, Fp6rhQKtOvlY, TMJNfY3L4tl)
{
 if(!zebrUf85bpwk) return;
 switch(Fp6rhQKtOvlY)
 {
 case 224: 
 local UPEZnSzjrt4aFf = TMJNfY3L4tl.readWord(); 
 switch(UPEZnSzjrt4aFf)
 {
 case 1: 
 local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(zebrUf85bpwk, TMJNfY3L4tl.readDword(), TMJNfY3L4tl.readDword())); 
 if(aNYI5nmGqumVvgiY.isDead())return; 
 local OCFKys9S_yL = CNSquirrelAppendage.sq_AppendAppendage(aNYI5nmGqumVvgiY, aNYI5nmGqumVvgiY, 224, true, "character/new_thief/appendage/ap_monster_nicolas.nut", false); 
 CNSquirrelAppendage.sq_Append(OCFKys9S_yL, aNYI5nmGqumVvgiY, aNYI5nmGqumVvgiY, false);
 
 OCFKys9S_yL.getVar("sqrChr").clear_obj_vector(); 
 OCFKys9S_yL.getVar("sqrChr").push_obj_vector(zebrUf85bpwk); 
 break;
 case 2: 
 local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(zebrUf85bpwk, TMJNfY3L4tl.readDword(), TMJNfY3L4tl.readDword())); 
 if(aNYI5nmGqumVvgiY.isDead())return; 
 if(aNYI5nmGqumVvgiY.isMyControlObject())
 {
 local KB2Bn0UZWmBEcV6oIluSgBuv = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(KB2Bn0UZWmBEcV6oIluSgBuv); 
 sq_IntVectorPush(KB2Bn0UZWmBEcV6oIluSgBuv, 7); 
 sq_AddSetStatePacketActiveObject(aNYI5nmGqumVvgiY, 8, KB2Bn0UZWmBEcV6oIluSgBuv, STATE_PRIORITY_USER); 
 }
 break;
 case 3: 
 local aNYI5nmGqumVvgiY = sq_GetCNRDObjectToActiveObject(sq_GetObject(zebrUf85bpwk, TMJNfY3L4tl.readDword(), TMJNfY3L4tl.readDword())); 
 if(aNYI5nmGqumVvgiY.isDead())return; 
 sq_SetCurrentDirection(aNYI5nmGqumVvgiY, zebrUf85bpwk.getDirection()); 
 sq_MoveToNearMovablePos(aNYI5nmGqumVvgiY, 
 sq_GetDistancePos(zebrUf85bpwk.getXPos(), zebrUf85bpwk.getDirection(), 100), zebrUf85bpwk.getYPos(), 0,
 zebrUf85bpwk.getXPos(), zebrUf85bpwk.getYPos(), 0, 100, -1, 5); 
 sq_AddDrawOnlyAniFromParent(aNYI5nmGqumVvgiY, "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_smokenormal.ani", 0, -1, 0); 
 sq_CreateDrawOnlyObject(aNYI5nmGqumVvgiY, "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_blackground.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 }
 break;
 }
} 

