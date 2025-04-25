
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_fighter_elbowthrow(jcEMinG8qVeSqLyFUOGyT8hS)
{
 if(!jcEMinG8qVeSqLyFUOGyT8hS) return false; 
 local xDn5Yabq5pSPQXDc = jcEMinG8qVeSqLyFUOGyT8hS.sq_IsUseSkill(237); 
 if(xDn5Yabq5pSPQXDc) 
 {
 jcEMinG8qVeSqLyFUOGyT8hS.sq_IntVectClear();
 if(sq_GetSkillLevel(jcEMinG8qVeSqLyFUOGyT8hS, 240) > 0) 
 jcEMinG8qVeSqLyFUOGyT8hS.sq_IntVectPush(3); 
 else
 jcEMinG8qVeSqLyFUOGyT8hS.sq_IntVectPush(0); 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && jcEMinG8qVeSqLyFUOGyT8hS.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && jcEMinG8qVeSqLyFUOGyT8hS.getDirection() == ENUM_DIRECTION_RIGHT)
 {
 jcEMinG8qVeSqLyFUOGyT8hS.sq_IntVectPush(170); 
 }
 jcEMinG8qVeSqLyFUOGyT8hS.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_elbowthrow(_I1euPH63OISc4)
{
 if(!_I1euPH63OISc4) return false; 
 local WW8_fmK_aO8IB = _I1euPH63OISc4.sq_GetState(); 
 if(WW8_fmK_aO8IB == STATE_STAND) 
 return true; 
 if(WW8_fmK_aO8IB == STATE_ATTACK) 
 {
 return _I1euPH63OISc4.sq_IsCommandEnable(237); 
 }
 return true; 
} ;

 
function onSetState_fighter_elbowthrow(_I1euPH63OISc4, WW8_fmK_aO8IB, RbMmU_0RaM3BzKXdXBQY9wdG, F9IIc71K8cwOw)
{
 if(!_I1euPH63OISc4) return; 
 _I1euPH63OISc4.sq_StopMove(); 
 local rtXuqBj6_6NHe6oHfwqdCJ = _I1euPH63OISc4.sq_GetVectorData(RbMmU_0RaM3BzKXdXBQY9wdG, 0); 
 _I1euPH63OISc4.setSkillSubState(rtXuqBj6_6NHe6oHfwqdCJ); 
 switch(rtXuqBj6_6NHe6oHfwqdCJ)
 {
 case 0:
 _I1euPH63OISc4.sq_SetCurrentAnimation(143); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(82); 
 _I1euPH63OISc4.sq_SetCurrentAttackBonusRate(_I1euPH63OISc4.sq_GetBonusRateWithPassive(237, 237, 1, 1.0)); 
 _I1euPH63OISc4.getVar("moveCount").clear_vector(); 
 _I1euPH63OISc4.getVar("moveCount").push_vector(_I1euPH63OISc4.sq_GetLevelData(237, 0, sq_GetSkillLevel(_I1euPH63OISc4, 237)) - 1); 
 break;
 case 1:
 _I1euPH63OISc4.sq_SetCurrentAnimation(145); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(81); 
 _I1euPH63OISc4.sq_SetCurrentAttackBonusRate(_I1euPH63OISc4.sq_GetBonusRateWithPassive(237, 237, 1, 1.0)); 
 break;
 case 2:
 _I1euPH63OISc4.sq_SetCurrentAnimation(144); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(81); 
 _I1euPH63OISc4.sq_SetCurrentAttackBonusRate(_I1euPH63OISc4.sq_GetBonusRateWithPassive(237, 237, 1, 1.0)); 
 break;
 case 3:
 _I1euPH63OISc4.sq_SetCurrentAnimation(146); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(83); 
 _I1euPH63OISc4.sq_SetCurrentAttackBonusRate(_I1euPH63OISc4.sq_GetBonusRateWithPassive(237, 237, 4, 1.0)); 
 _I1euPH63OISc4.getVar("moveCount").clear_vector(); 
 _I1euPH63OISc4.getVar("moveCount").push_vector(0); 
 _I1euPH63OISc4.getVar("range").clear_vector(); 
 _I1euPH63OISc4.getVar("range").push_vector(_I1euPH63OISc4.sq_GetLevelData(237, 6, sq_GetSkillLevel(_I1euPH63OISc4, 237))); 
 break;
 case 4:
 _I1euPH63OISc4.sq_SetCurrentAnimation(147); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(84); 
 break;
 case 5:
 _I1euPH63OISc4.sq_SetCurrentAnimation(148); 
 _I1euPH63OISc4.sq_SetCurrentAttackInfo(85); 
 _I1euPH63OISc4.sq_SetCurrentAttackBonusRate(_I1euPH63OISc4.sq_GetBonusRateWithPassive(237, 237, 5, 1.0)); 
 break;
 case 6:
 _I1euPH63OISc4.sq_SetCurrentAnimation(149); 
 break;
 }
 _I1euPH63OISc4.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 switch(rtXuqBj6_6NHe6oHfwqdCJ)
 {
 case 0:
 case 3:
 _I1euPH63OISc4.getVar("pos").clear_vector(); 
 _I1euPH63OISc4.getVar("pos").push_vector(0); 
 _I1euPH63OISc4.getVar("pos").push_vector(0); 
 _I1euPH63OISc4.getVar("pos").push_vector(0); 
 _I1euPH63OISc4.getVar().setBool(0, false); 
 _I1euPH63OISc4.getVar().setBool(1, false); 
 _I1euPH63OISc4.getVar().clear_obj_vector(); 
 _I1euPH63OISc4.getVar().clear_vector(); 
 local BJL15ssPTO7cju = _I1euPH63OISc4.sq_GetVectorData(RbMmU_0RaM3BzKXdXBQY9wdG, 1); 
 if(BJL15ssPTO7cju != -1)
 {
 _I1euPH63OISc4.getVar().push_vector(_I1euPH63OISc4.getXPos()); 
 _I1euPH63OISc4.getVar().push_vector(BJL15ssPTO7cju);
 }
 break;
 case 1:
 _I1euPH63OISc4.getVar("moveCount").set_vector(0, _I1euPH63OISc4.getVar("moveCount").get_vector(0) - 1); 
 _I1euPH63OISc4.getVar().clear_vector(); 
 _I1euPH63OISc4.getVar().push_vector(0); 
 _I1euPH63OISc4.getVar().push_vector(0); 
 _I1euPH63OISc4.getVar().push_vector(0); 
 _I1euPH63OISc4.getVar().push_vector(0); 
 local BJL15ssPTO7cju = _I1euPH63OISc4.sq_GetVectorData(RbMmU_0RaM3BzKXdXBQY9wdG, 1); 
 local GYga64WLnl_oQuU = _I1euPH63OISc4.sq_GetVectorData(RbMmU_0RaM3BzKXdXBQY9wdG, 2); 
 if(BJL15ssPTO7cju != -1)
 {
 _I1euPH63OISc4.getVar().set_vector(0,_I1euPH63OISc4.getXPos()); 
 _I1euPH63OISc4.getVar().set_vector(1,BJL15ssPTO7cju);
 }
 if(GYga64WLnl_oQuU != -1)
 {
 _I1euPH63OISc4.getVar().set_vector(2,_I1euPH63OISc4.getYPos()); 
 _I1euPH63OISc4.getVar().set_vector(3,GYga64WLnl_oQuU);
 }
 break;
 }
} ;

function onProc_fighter_elbowthrow(Tg5ThJMAPN4fhLB1)
{
 if(!Tg5ThJMAPN4fhLB1) return;
 local AgLRPJnqNVVUuoDVc4LIjsr = Tg5ThJMAPN4fhLB1.getSkillSubState(); 
 switch(AgLRPJnqNVVUuoDVc4LIjsr)
 {
 case 0:
 case 3:
 if(Tg5ThJMAPN4fhLB1.getVar().size_vector() <= 0) break; 
 local fxl8ZjD54n = Tg5ThJMAPN4fhLB1.getCurrentAnimation(); 
 local N1GKnnzkX34zUolCG4sk = sq_GetCurrentTime(fxl8ZjD54n); 
 local pGfyfhonqJWORHZ = fxl8ZjD54n.getDelaySum(0, 4); 
 local sa8BXp0w1FJjvN0A6aFt = sq_GetDistancePos(Tg5ThJMAPN4fhLB1.getVar().get_vector(0),
 Tg5ThJMAPN4fhLB1.getDirection(), 
 sq_GetAccel(0, Tg5ThJMAPN4fhLB1.getVar().get_vector(1), N1GKnnzkX34zUolCG4sk, pGfyfhonqJWORHZ, true)); 
 if(Tg5ThJMAPN4fhLB1.isMovablePos(sa8BXp0w1FJjvN0A6aFt, Tg5ThJMAPN4fhLB1.getYPos())) 
 sq_setCurrentAxisPos(Tg5ThJMAPN4fhLB1, 0, sa8BXp0w1FJjvN0A6aFt); 
 else
 Tg5ThJMAPN4fhLB1.getVar().clear_vector(); 
 break;
 case 1:
 local fxl8ZjD54n = Tg5ThJMAPN4fhLB1.getCurrentAnimation(); 
 local N1GKnnzkX34zUolCG4sk = sq_GetCurrentTime(fxl8ZjD54n); 
 local pGfyfhonqJWORHZ = fxl8ZjD54n.getDelaySum(false); 
 local zQQpZbgE9SlZV = Tg5ThJMAPN4fhLB1.getVar(); 
 local UrPki_zNLr_PHQa_g7t1yQhl = zQQpZbgE9SlZV.get_vector(0); 
 if(UrPki_zNLr_PHQa_g7t1yQhl!=0) 
 {
 local sa8BXp0w1FJjvN0A6aFt = sq_GetDistancePos(UrPki_zNLr_PHQa_g7t1yQhl,
 Tg5ThJMAPN4fhLB1.getDirection(),
 sq_GetAccel(0, zQQpZbgE9SlZV.get_vector(1), N1GKnnzkX34zUolCG4sk, pGfyfhonqJWORHZ, false)); 
 if(Tg5ThJMAPN4fhLB1.isMovablePos(sa8BXp0w1FJjvN0A6aFt, Tg5ThJMAPN4fhLB1.getYPos())) 
 sq_setCurrentAxisPos(Tg5ThJMAPN4fhLB1, 0, sa8BXp0w1FJjvN0A6aFt); 
 else
 zQQpZbgE9SlZV.set_vector(0,0); 
 }
 local nTlDhOfp9PGo9dsYCP2Gupr = zQQpZbgE9SlZV.get_vector(2); 
 if(nTlDhOfp9PGo9dsYCP2Gupr!=0) 
 {
 local zKXp0fgV_7VzFuJL29 = nTlDhOfp9PGo9dsYCP2Gupr + sq_GetAccel(0, zQQpZbgE9SlZV.get_vector(3), N1GKnnzkX34zUolCG4sk, pGfyfhonqJWORHZ, false); 
 if(Tg5ThJMAPN4fhLB1.isMovablePos(Tg5ThJMAPN4fhLB1.getXPos(), zKXp0fgV_7VzFuJL29)) 
 sq_setCurrentAxisPos(Tg5ThJMAPN4fhLB1, 1, zKXp0fgV_7VzFuJL29); 
 else
 zQQpZbgE9SlZV.set_vector(2,0); 
 }
 if(Tg5ThJMAPN4fhLB1.sq_IsMyControlObject())
 if(Tg5ThJMAPN4fhLB1.getVar().getBool(0) == false)
 {
 Tg5ThJMAPN4fhLB1.setSkillCommandEnable(237, true); 
 if(Tg5ThJMAPN4fhLB1.sq_IsEnterSkill(237) != -1) 
 Tg5ThJMAPN4fhLB1.getVar().setBool(0, true); 
 }
 break;
 }
 switch(AgLRPJnqNVVUuoDVc4LIjsr)
 {
 case 3:
 case 4:
 local lEGNEnskOEbEqkZhmH3pDaZo = Tg5ThJMAPN4fhLB1.getVar("range").get_vector(0); 
 setRangeObjectPosEx(Tg5ThJMAPN4fhLB1, 250, sq_GetDistancePos(0, Tg5ThJMAPN4fhLB1.getDirection(), 50), 0, ENUM_DIRECTION_NEUTRAL, 0, 200, 100, lEGNEnskOEbEqkZhmH3pDaZo); 
 break;
 case 0:
 case 1:
 case 2:
 local vZZYZqS7aL = Tg5ThJMAPN4fhLB1.getVar().get_obj_vector_size(); 
 if(vZZYZqS7aL <= 0 || Tg5ThJMAPN4fhLB1.getVar("pos").size_vector() <= 0) break; 
 local RXiDYBUpzcD2XLi3MKr0PvCq = Tg5ThJMAPN4fhLB1.getVar("pos").get_vector(0); 
 local nDHkDcJmCJUboTJYmJnT = Tg5ThJMAPN4fhLB1.getYPos() + Tg5ThJMAPN4fhLB1.getVar("pos").get_vector(1); 
 local MGE7Fu7Ly3M66ewLLI_BzM = Tg5ThJMAPN4fhLB1.getZPos()+10; 
 local YvIegdqUfc = (Tg5ThJMAPN4fhLB1.getVar("pos").get_vector(2) == 1) 
 ? sq_GetOppositeDirection(Tg5ThJMAPN4fhLB1.getDirection()) 
 : Tg5ThJMAPN4fhLB1.getDirection(); 
 local sa8BXp0w1FJjvN0A6aFt = sq_GetDistancePos(Tg5ThJMAPN4fhLB1.getXPos(), Tg5ThJMAPN4fhLB1.getDirection(), RXiDYBUpzcD2XLi3MKr0PvCq); 
 local zQQpZbgE9SlZV = Tg5ThJMAPN4fhLB1.getVar(); 
 for(local tcSAmznGFlvwwPCq_eWh5JX = 0; tcSAmznGFlvwwPCq_eWh5JX < vZZYZqS7aL; tcSAmznGFlvwwPCq_eWh5JX++)
 {
 local b89lHcWYn6vWa0VEJGGJe = sq_GetCNRDObjectToActiveObject(zQQpZbgE9SlZV.get_obj_vector(tcSAmznGFlvwwPCq_eWh5JX)); 
 if(b89lHcWYn6vWa0VEJGGJe && !b89lHcWYn6vWa0VEJGGJe.isDead())
 {
 b89lHcWYn6vWa0VEJGGJe.setCurrentPos(sa8BXp0w1FJjvN0A6aFt, nDHkDcJmCJUboTJYmJnT, MGE7Fu7Ly3M66ewLLI_BzM); 
 sq_SetCurrentDirection(b89lHcWYn6vWa0VEJGGJe, YvIegdqUfc); 
 }
 }
 break;
 }
} ;

function onAttack_fighter_elbowthrow(ZgBRUcTy1z, jFN17behrllaY_CmEmWD, fN6C4s9EXz0x, WZKfZzuXTm)
{
 if(!ZgBRUcTy1z) return;
 if(WZKfZzuXTm || !jFN17behrllaY_CmEmWD.isObjectType(OBJECTTYPE_ACTIVE))return;
 local riTSB1UjIv3HL73w = ZgBRUcTy1z.getSkillSubState(); 
 switch(riTSB1UjIv3HL73w)
 {
 case 0:
 case 1:
 
 if(sq_IsGrabable(ZgBRUcTy1z, jFN17behrllaY_CmEmWD)
 && sq_IsHoldable(ZgBRUcTy1z, jFN17behrllaY_CmEmWD)
 && !sq_IsFixture(jFN17behrllaY_CmEmWD))
 {
 ZgBRUcTy1z.getVar().push_obj_vector(jFN17behrllaY_CmEmWD); 
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(ZgBRUcTy1z, "character/fighter/elbowthrow/ap_elbowthrow.nut"))
 {
 local HaMkJEz2Ot = CNSquirrelAppendage.sq_AppendAppendage(jFN17behrllaY_CmEmWD, ZgBRUcTy1z, 237, false, "character/fighter/elbowthrow/ap_elbowthrow.nut", true); 
 sq_HoldAndDelayDie(jFN17behrllaY_CmEmWD, ZgBRUcTy1z, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, HaMkJEz2Ot); 
 }
 }
 else if(ZgBRUcTy1z.getVar().getBool(1) == false) 
 ZgBRUcTy1z.getVar().setBool(1, true); 
 break;
 case 5:
 if(ZgBRUcTy1z.getVar().getBool(0) == false && sq_GetCurrentFrameIndex(ZgBRUcTy1z) <= 6)
 {
 ZgBRUcTy1z.getVar().setBool(0, true); 
 sq_SetMyShake(ZgBRUcTy1z, 8, 300);
 sq_AddDrawOnlyAniFromParent(ZgBRUcTy1z, "character/fighter/effect/animation/elbowthrow/trunheel/end/giantswingnewendeffect_00.ani", 90, 0, 80); 
 }
 break;
 }
} ;

function onKeyFrameFlag_fighter_elbowthrow(fSD5TJIeH3Ypkf0Qf4Fzo, QFmkglshr238xjLJawFDRd)
{
 if(!fSD5TJIeH3Ypkf0Qf4Fzo) return false;
 local cfMEWXvj3khuN = fSD5TJIeH3Ypkf0Qf4Fzo.getSkillSubState(); 
 switch(cfMEWXvj3khuN)
 {
 case 0:
 case 1:
 case 2: 
 switch(QFmkglshr238xjLJawFDRd)
 {
 case 100:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, 90); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, -1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 1); 
 break;
 case 101:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, -30); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, -1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 2); 
 break;
 case 102:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, -50); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 2); 
 break;
 case 103:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, -25); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 2); 
 break;
 case 104:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, 0); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 2); 
 break;
 case 105:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, 30); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 1); 
 break;
 case 106:
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(0, 60); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(1, 1); 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").set_vector(2, 1); 
 break;
 case 110: 
 fSD5TJIeH3Ypkf0Qf4Fzo.getVar("pos").clear_vector(); 
 if(fSD5TJIeH3Ypkf0Qf4Fzo.sq_IsMyControlObject())
 {
 local sltLhJRyoZWObSEUv = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL); 
 local imq3hKAvOE0O5 = (sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && fSD5TJIeH3Ypkf0Qf4Fzo.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && fSD5TJIeH3Ypkf0Qf4Fzo.getDirection() == ENUM_DIRECTION_RIGHT)
 ? 1600 
 : 900; 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteBool(sltLhJRyoZWObSEUv);
 sq_BinaryWriteDword(imq3hKAvOE0O5);
 sq_SendChangeSkillEffectPacket(fSD5TJIeH3Ypkf0Qf4Fzo, 237); 
 }
 break;
 }
 break;
 case 6: 
 if(QFmkglshr238xjLJawFDRd == 1)
 {
 sq_SetMyShake(fSD5TJIeH3Ypkf0Qf4Fzo, 4, 210); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_SetCurrentAttackInfo(85); 
 fSD5TJIeH3Ypkf0Qf4Fzo.sq_SetCurrentAttackBonusRate(fSD5TJIeH3Ypkf0Qf4Fzo.sq_GetBonusRateWithPassive(237, 237, 3, 1.0)); 
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_fighter_elbowthrow(b604HEGZUA4)
{
 if(!b604HEGZUA4) return;
 if(!b604HEGZUA4.sq_IsMyControlObject()) return;
 local ADATGSGOvaqLlAGQionNEFq = b604HEGZUA4.getSkillSubState(); 
 switch(ADATGSGOvaqLlAGQionNEFq)
 {
 case 0:
 
 if(b604HEGZUA4.getVar().getBool(1) == true && b604HEGZUA4.getVar().get_obj_vector_size() <= 0)
 {
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(6); 
 b604HEGZUA4.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 else
 {
 if(b604HEGZUA4.getVar().get_obj_vector_size() <= 0) 
 {
 b604HEGZUA4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 return;
 }
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(1); 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_RIGHT)
 b604HEGZUA4.sq_IntVectPush(170); 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_LEFT)
 b604HEGZUA4.sq_IntVectPush(-170); 
 else
 b604HEGZUA4.sq_IntVectPush(0); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 b604HEGZUA4.sq_IntVectPush(-25); 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
 b604HEGZUA4.sq_IntVectPush(25); 
 else
 b604HEGZUA4.sq_IntVectPush(0); 
 b604HEGZUA4.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 break;
 case 1:
 
 if(b604HEGZUA4.getVar().getBool(0) == true || b604HEGZUA4.getVar("moveCount").get_vector(0) <= 0)
 {
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(ADATGSGOvaqLlAGQionNEFq + 1); 
 b604HEGZUA4.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 else if(b604HEGZUA4.getVar("moveCount").get_vector(0) > 0) 
 {
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(ADATGSGOvaqLlAGQionNEFq); 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_RIGHT)
 b604HEGZUA4.sq_IntVectPush(170); 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && b604HEGZUA4.getDirection() == ENUM_DIRECTION_LEFT)
 b604HEGZUA4.sq_IntVectPush(-170); 
 else
 b604HEGZUA4.sq_IntVectPush(0); 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL))
 b604HEGZUA4.sq_IntVectPush(-25); 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL))
 b604HEGZUA4.sq_IntVectPush(25); 
 else
 b604HEGZUA4.sq_IntVectPush(0); 
 b604HEGZUA4.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 }
 break;
 case 3:
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(ADATGSGOvaqLlAGQionNEFq + 2); 
 b604HEGZUA4.sq_AddSetStatePacket(237, STATE_PRIORITY_USER, true); 
 break;
 default:
 b604HEGZUA4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onChangeSkillEffect_fighter_elbowthrow(B8lvZKhUC9, dzL47Lle4NMq2, CJM0m9oeFCN3to8voDupVsw8)
{
 if(!B8lvZKhUC9) return;
 local ddX54NNhnM0 = CJM0m9oeFCN3to8voDupVsw8.readWord(); 
 switch(ddX54NNhnM0)
 {
 case 1:
 local Od0B2UN73R93mUrX = false; 
 local wmTKZaFh6PB_YIa86Tjus = CJM0m9oeFCN3to8voDupVsw8.readBool(); 
 local Pt04WeJbhS3YvhdmD1rbVN0 = CJM0m9oeFCN3to8voDupVsw8.readDword(); 
 local cBJVz2FTg9X = B8lvZKhUC9.getXPos(); 
 local LHAQQQpeB_qCDbLg = B8lvZKhUC9.getYPos(); 
 local KBOtZYTfC3 = sq_GetDistancePos(cBJVz2FTg9X, B8lvZKhUC9.getDirection(), 50); 
 local NhidcBPBoTNdTGw = B8lvZKhUC9.getVar().get_obj_vector_size(); 
 local HVqVqhEQeewBq5rY = B8lvZKhUC9.getVar(); 
 for(local NybPHhHGV6hKW3jOy = 0; NybPHhHGV6hKW3jOy < NhidcBPBoTNdTGw; NybPHhHGV6hKW3jOy++)
 {
 local bS8enGOqoSDFejoJInTINvs = sq_GetCNRDObjectToActiveObject(HVqVqhEQeewBq5rY.get_obj_vector(NybPHhHGV6hKW3jOy)); 
 if(bS8enGOqoSDFejoJInTINvs && !bS8enGOqoSDFejoJInTINvs.isDead())
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(bS8enGOqoSDFejoJInTINvs, "character/fighter/elbowthrow/ap_elbowthrow.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(bS8enGOqoSDFejoJInTINvs, "character/fighter/elbowthrow/ap_elbowthrow.nut");
 
 sq_MoveToNearMovablePos(bS8enGOqoSDFejoJInTINvs,
 KBOtZYTfC3, LHAQQQpeB_qCDbLg, bS8enGOqoSDFejoJInTINvs.getZPos(), 
 cBJVz2FTg9X, LHAQQQpeB_qCDbLg, bS8enGOqoSDFejoJInTINvs.getZPos(),
 50, -1, 5);
 
 if(Od0B2UN73R93mUrX == false)
 {
 Od0B2UN73R93mUrX = true; 
 if(B8lvZKhUC9.sq_IsMyControlObject())
 {
 B8lvZKhUC9.sq_StartWrite();
 B8lvZKhUC9.sq_WriteDword(237); 
 B8lvZKhUC9.sq_WriteDword(sq_GetGroup(bS8enGOqoSDFejoJInTINvs)); 
 B8lvZKhUC9.sq_WriteDword(sq_GetUniqueId(bS8enGOqoSDFejoJInTINvs)); 
 if(wmTKZaFh6PB_YIa86Tjus == false) 
 B8lvZKhUC9.sq_WriteDword(17);
 else 
 B8lvZKhUC9.sq_WriteDword(18);
 B8lvZKhUC9.sq_WriteDword(B8lvZKhUC9.sq_GetBonusRateWithPassive(237, 237, 2, 1.0)); 
 sq_SendCreatePassiveObjectPacketPos(B8lvZKhUC9, 24373, 0, bS8enGOqoSDFejoJInTINvs.getXPos(), bS8enGOqoSDFejoJInTINvs.getYPos(), bS8enGOqoSDFejoJInTINvs.getZPos());
 }
 }
 
 if(bS8enGOqoSDFejoJInTINvs.isMyControlObject())
 {
 local dpePW9DyXrS = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(dpePW9DyXrS); 
 sq_IntVectorPush(dpePW9DyXrS, sq_GetOppositeDirection(bS8enGOqoSDFejoJInTINvs.getDirection())); 
 sq_IntVectorPush(dpePW9DyXrS, 0);
 sq_IntVectorPush(dpePW9DyXrS, 1);
 if(wmTKZaFh6PB_YIa86Tjus == false) 
 {
 sq_IntVectorPush(dpePW9DyXrS, Pt04WeJbhS3YvhdmD1rbVN0);
 sq_IntVectorPush(dpePW9DyXrS, 100);
 }
 else
 {
 sq_IntVectorPush(dpePW9DyXrS, 0);
 sq_IntVectorPush(dpePW9DyXrS, 0);
 }
 sq_AddSetStatePacketActiveObject(bS8enGOqoSDFejoJInTINvs, STATE_DOWN, dpePW9DyXrS, STATE_PRIORITY_FORCE); 
 bS8enGOqoSDFejoJInTINvs.flushSetStatePacket(); 
 }
 }
 }
 break;
 }
} ;
