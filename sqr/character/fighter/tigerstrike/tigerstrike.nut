
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_fighter_tigerstrike(nCALmF6gxkNM)
{
 if(!nCALmF6gxkNM) return false; 
 local nYHtGWtDC5ws1uzx3J8ZPlxJ = nCALmF6gxkNM.sq_IsUseSkill(230); 
 if(nYHtGWtDC5ws1uzx3J8ZPlxJ) 
 {
 nCALmF6gxkNM.sq_IntVectClear();
 nCALmF6gxkNM.sq_IntVectPush(0); 
 nCALmF6gxkNM.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_tigerstrike(ZgBRUcTy1z)
{
 if(!ZgBRUcTy1z) return false; 
 local jFN17behrllaY_CmEmWD = ZgBRUcTy1z.sq_GetState(); 
 if(jFN17behrllaY_CmEmWD == STATE_STAND) 
 return true; 
 if(jFN17behrllaY_CmEmWD == STATE_ATTACK) 
 {
 return ZgBRUcTy1z.sq_IsCommandEnable(230); 
 }
 return true; 
} ;

 
function onSetState_fighter_tigerstrike(ZgBRUcTy1z, jFN17behrllaY_CmEmWD, fN6C4s9EXz0x, WZKfZzuXTm)
{
 if(!ZgBRUcTy1z) return; 
 local riTSB1UjIv3HL73w = ZgBRUcTy1z.sq_GetVectorData(fN6C4s9EXz0x, 0); 
 ZgBRUcTy1z.setSkillSubState(riTSB1UjIv3HL73w); 
 switch(riTSB1UjIv3HL73w)
 {
 case 0:
 ZgBRUcTy1z.sq_StopMove(); 
 ZgBRUcTy1z.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 ZgBRUcTy1z.sq_SetCurrentAnimation(114); 
 ZgBRUcTy1z.sq_SetCurrentAttackInfo(63); 
 local HaMkJEz2Ot = sq_GetSkillLevel(ZgBRUcTy1z, 230); 
 local ubuEgUJFOgUZFQGbz3_u = ZgBRUcTy1z.sq_GetLevelData(230, 3, HaMkJEz2Ot); 
 local hr7aWMtYwPtF_oqykjwiiz = ZgBRUcTy1z.sq_GetLevelData(230, 4, HaMkJEz2Ot); 
 ZgBRUcTy1z.getVar().clear_vector(); 
 ZgBRUcTy1z.getVar().push_vector(ubuEgUJFOgUZFQGbz3_u); 
 ZgBRUcTy1z.getVar().push_vector(hr7aWMtYwPtF_oqykjwiiz); 
 ZgBRUcTy1z.getVar().push_vector(0); 
 ZgBRUcTy1z.sq_PlaySound("FT_TIGERSTRIKE_01");
 
 sq_CreateDrawOnlyObject(ZgBRUcTy1z, "character/fighter/effect/animation/tigerstrike/tiger_start_eff_00.ani", ENUM_DRAWLAYER_NORMAL, true);
 break;
 case 1:
 
 ZgBRUcTy1z.getVar().set_vector(0, ZgBRUcTy1z.getVar().get_vector(0) - 1);
 ZgBRUcTy1z.sq_SetCurrentAnimation(115); 
 ZgBRUcTy1z.sq_SetCurrentAttackInfo(63); 
 ZgBRUcTy1z.sq_SetCurrentAttackBonusRate(ZgBRUcTy1z.sq_GetBonusRateWithPassive(230, 230, 0, 1.0)); 
 local ukwL250MPMLJa9iGOE7 = ZgBRUcTy1z.sq_GetDelaySum(); 
 sq_SetMyShake(ZgBRUcTy1z, 2, ukwL250MPMLJa9iGOE7); 
 local hr7aWMtYwPtF_oqykjwiiz = ZgBRUcTy1z.getVar().get_vector(1); 
 ZgBRUcTy1z.setTimeEvent(0, ukwL250MPMLJa9iGOE7 / hr7aWMtYwPtF_oqykjwiiz, hr7aWMtYwPtF_oqykjwiiz - 1, false);
 break;
 case 2:
 ZgBRUcTy1z.sq_StopMove(); 
 ZgBRUcTy1z.stopTimeEvent(0); 
 ZgBRUcTy1z.sq_SetCurrentAnimation(116); 
 ZgBRUcTy1z.sq_SetCurrentAttackInfo(64); 
 ZgBRUcTy1z.sq_SetCurrentAttackBonusRate(ZgBRUcTy1z.sq_GetBonusRateWithPassive(230, 230, 1, 1.0)); 
 if(ZgBRUcTy1z.sq_IsMyControlObject())
 {
 ZgBRUcTy1z.sq_StartWrite();
 ZgBRUcTy1z.sq_WriteDword(230); 
 ZgBRUcTy1z.sq_WriteDword(ZgBRUcTy1z.sq_GetBonusRateWithPassive(230, 230, 2, 1.0));
 ZgBRUcTy1z.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 sq_SetMyShake(ZgBRUcTy1z, 8, 300); 
 break;
 }
} ;

function onProcCon_fighter_tigerstrike(lkg4APy2yXLEm4fEWCGWC5a)
{
 if(!lkg4APy2yXLEm4fEWCGWC5a) return;
 local Q5W1pKgcJNJ5_8VMhv8OvV = lkg4APy2yXLEm4fEWCGWC5a.getSkillSubState(); 
 switch(Q5W1pKgcJNJ5_8VMhv8OvV)
 {
 case 1:
 switch(lkg4APy2yXLEm4fEWCGWC5a.getVar().get_vector(2))
 {
 case 0: 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && lkg4APy2yXLEm4fEWCGWC5a.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && lkg4APy2yXLEm4fEWCGWC5a.getDirection() == ENUM_DIRECTION_RIGHT)
 {
 return;
 }
 else
 {
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetStaticMoveInfo(0, 100, 100, false);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetMoveDirection(lkg4APy2yXLEm4fEWCGWC5a.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().set_vector(2, 1); 
 }
 break;
 case 1: 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && lkg4APy2yXLEm4fEWCGWC5a.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && lkg4APy2yXLEm4fEWCGWC5a.getDirection() == ENUM_DIRECTION_RIGHT)
 {
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetStaticMoveInfo(0, 0, 0, false);
 lkg4APy2yXLEm4fEWCGWC5a.sq_SetMoveDirection(lkg4APy2yXLEm4fEWCGWC5a.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 lkg4APy2yXLEm4fEWCGWC5a.getVar().set_vector(2, 0); 
 }
 break;
 }
 break;
 }
} ;

function onTimeEvent_fighter_tigerstrike(b604HEGZUA4, ADATGSGOvaqLlAGQionNEFq, ulbD0yT3Hcd2GGJQ3zE7C)
{
 if(!b604HEGZUA4) return false;
 if(ADATGSGOvaqLlAGQionNEFq == 0)
 b604HEGZUA4.resetHitObjectList(); 
 return false;
} ;

 
function onEndCurrentAni_fighter_tigerstrike(b604HEGZUA4)
{
 if(!b604HEGZUA4) return;
 if(!b604HEGZUA4.sq_IsMyControlObject())return;
 local ADATGSGOvaqLlAGQionNEFq = b604HEGZUA4.getSkillSubState(); 
 if(ADATGSGOvaqLlAGQionNEFq == 0)
 {
 b604HEGZUA4.sq_IntVectClear();
 b604HEGZUA4.sq_IntVectPush(1); 
 b604HEGZUA4.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 else if(ADATGSGOvaqLlAGQionNEFq == 1)
 {
 b604HEGZUA4.sq_IntVectClear();
 if(b604HEGZUA4.getVar().get_vector(0) <= 0) 
 b604HEGZUA4.sq_IntVectPush(2); 
 else 
 b604HEGZUA4.sq_IntVectPush(1); 
 b604HEGZUA4.sq_AddSetStatePacket(230, STATE_PRIORITY_USER, true); 
 }
 else if(ADATGSGOvaqLlAGQionNEFq == 2) 
 b604HEGZUA4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

