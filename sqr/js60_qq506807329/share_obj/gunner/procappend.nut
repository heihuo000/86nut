
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function procAppend_po_qq506807329new_gunner_24371(nlCmXw8MK7Tkm5)
{
 if(!nlCmXw8MK7Tkm5) return;
 local LnURtZ_rAbk8SrLxEwlD8v = nlCmXw8MK7Tkm5.getVar("skill").get_vector(0);
 switch(LnURtZ_rAbk8SrLxEwlD8v)
 {
 case 232: 
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 if(c5nuCQ34XBsF3c72 != 12) 
 {
 local myq1z3gSMT2u7aY = nlCmXw8MK7Tkm5.getVar("move"); 
 if(myq1z3gSMT2u7aY.size_vector() <= 0) return;
 local iunIR4RUlbwhjG = nlCmXw8MK7Tkm5.getVar(); 
 local m83oZsgB1qcVB1HFRUxCyQdS = false; 
 
 if(c5nuCQ34XBsF3c72 == 11 && iunIR4RUlbwhjG.get_obj_vector_size() <= 0)
 m83oZsgB1qcVB1HFRUxCyQdS = true;
 local UcmBZMsqUn832FNS = nlCmXw8MK7Tkm5.getYPos(); 
 local Wv79ITTSnABCPX = nlCmXw8MK7Tkm5.getDirection(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetObjectTime(nlCmXw8MK7Tkm5) - myq1z3gSMT2u7aY.get_vector(1); 
 local fVKVwayguBRfS9v7Baf = 150; 
 local NfjwN1NKjSGLVY = sq_GetDistancePos(myq1z3gSMT2u7aY.get_vector(0),
 Wv79ITTSnABCPX,
 sq_GetUniformVelocity(0, iunIR4RUlbwhjG.get_vector(1), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf)
 ); 
 local l_ZHJBDvaJaMkfgeWUc = sq_GetDistancePos(NfjwN1NKjSGLVY, Wv79ITTSnABCPX, 55); 
 for(local XcUMqdgNc8Dk5vw83vnf = 0; XcUMqdgNc8Dk5vw83vnf < iunIR4RUlbwhjG.get_obj_vector_size(); XcUMqdgNc8Dk5vw83vnf++)
 {
 local Z5sT3vz2meeh = sq_GetCNRDObjectToActiveObject(iunIR4RUlbwhjG.get_obj_vector(XcUMqdgNc8Dk5vw83vnf)); 
 
 if(Z5sT3vz2meeh && !Z5sT3vz2meeh.isDead())
 {
 
 if(Z5sT3vz2meeh.isMovablePos(l_ZHJBDvaJaMkfgeWUc, UcmBZMsqUn832FNS))
 {
 sq_setCurrentAxisPos(Z5sT3vz2meeh, 0, l_ZHJBDvaJaMkfgeWUc); 
 sq_setCurrentAxisPos(Z5sT3vz2meeh, 1, UcmBZMsqUn832FNS); 
 }
 
 else if(m83oZsgB1qcVB1HFRUxCyQdS == false)
 {
 m83oZsgB1qcVB1HFRUxCyQdS = true;
 break;
 }
 }
 }
 if(m83oZsgB1qcVB1HFRUxCyQdS == false && jZuKH09wqDizIPWXv9V2J <= fVKVwayguBRfS9v7Baf)
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, NfjwN1NKjSGLVY); 
 else if(nlCmXw8MK7Tkm5.isMyControlObject())
 nlCmXw8MK7Tkm5.addSetStatePacket(12, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 233: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 switch(FJaCTznG1e4ZZVeu8588c1ja)
 {
 case 1:
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10: 
 local zKXuDqWiDj64izPj_QbTRL = nlCmXw8MK7Tkm5.isMyControlObject(); 
 if(zKXuDqWiDj64izPj_QbTRL)
 {
 local m83oZsgB1qcVB1HFRUxCyQdS = false; 
 local pv4QByYqvJcA = sq_GetCNRDObjectToSQRCharacter(nlCmXw8MK7Tkm5.getVar().get_obj_vector(0)); 
 if(pv4QByYqvJcA
 && pv4QByYqvJcA.getState() == 233
 && pv4QByYqvJcA.getSkillSubState() == 0)
 {
 local iunIR4RUlbwhjG = nlCmXw8MK7Tkm5.getVar(); 
 local knXC0QgMOmj0575BRjXR5ThL = sq_GetObjectTime(nlCmXw8MK7Tkm5); 
 local OnFyL6NxDpc1Cm = iunIR4RUlbwhjG.get_vector(0); 
 local etGerSKifzU0MgZI80Ed1 = iunIR4RUlbwhjG.get_vector(1); 
 local DKzzvpGQVPK8QLJeUnF = 0; 
 local vDw5M6ZRd0orAj = 0; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj += etGerSKifzU0MgZI80Ed1;
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF += etGerSKifzU0MgZI80Ed1;
 if(DKzzvpGQVPK8QLJeUnF != 0)
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, nlCmXw8MK7Tkm5.getXPos() + DKzzvpGQVPK8QLJeUnF); 
 if(vDw5M6ZRd0orAj != 0)
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 1, nlCmXw8MK7Tkm5.getYPos() + vDw5M6ZRd0orAj); 
 if(knXC0QgMOmj0575BRjXR5ThL >= OnFyL6NxDpc1Cm) 
 m83oZsgB1qcVB1HFRUxCyQdS = true;
 }
 else
 m83oZsgB1qcVB1HFRUxCyQdS = true;
 if(m83oZsgB1qcVB1HFRUxCyQdS)
 {
 if(pv4QByYqvJcA)
 {
 
 pv4QByYqvJcA.sq_IntVectClear();
 pv4QByYqvJcA.sq_IntVectPush(1); 
 pv4QByYqvJcA.sq_AddSetStatePacket(233, STATE_PRIORITY_USER, true); 
 }
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(NAAybzFnB9JG1KVa4); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, nlCmXw8MK7Tkm5.getXPos()); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, nlCmXw8MK7Tkm5.getYPos()); 
 nlCmXw8MK7Tkm5.addSetStatePacket(11, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 }
 break;
 case 12:
 local FeNYfcjjwrCkRh9fXl = nlCmXw8MK7Tkm5.getCurrentAnimation(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetCurrentTime(FeNYfcjjwrCkRh9fXl); 
 local fVKVwayguBRfS9v7Baf = 200; 
 local vGttNjVHE5Oz9b4WAh = sq_GetUniformVelocity(900, 0, jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf);
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 2, vGttNjVHE5Oz9b4WAh); 
 if(jZuKH09wqDizIPWXv9V2J >= fVKVwayguBRfS9v7Baf) 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 nlCmXw8MK7Tkm5.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 13:
 case 14:
 local iunIR4RUlbwhjG = nlCmXw8MK7Tkm5.getVar(); 
 local DJdgIa8hx7 = iunIR4RUlbwhjG.get_vector(9); 
 local qYzsRKBGmfu0A8HSQYpw = iunIR4RUlbwhjG.get_vector(10); 
 setRangeObjectXPos(nlCmXw8MK7Tkm5, DJdgIa8hx7, ENUM_DIRECTION_NEUTRAL, 0, 300, 0, qYzsRKBGmfu0A8HSQYpw); 
 break;
 }
 }
 break;
 case 234: 
 if(!nlCmXw8MK7Tkm5.isMyControlObject()) break;
 local LIVfkmW7yTwIqVrt = nlCmXw8MK7Tkm5.getTopCharacter(); 
 if(nlCmXw8MK7Tkm5.getState() != 10) 
 if(!LIVfkmW7yTwIqVrt || LIVfkmW7yTwIqVrt.getState() != 234 || nlCmXw8MK7Tkm5.sq_GetParentSkillSubState() > 1) 
 {
 nlCmXw8MK7Tkm5.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 239: 
 local dVzx_TzJEyLmn = nlCmXw8MK7Tkm5.getVar().get_vector(0); 
 if(dVzx_TzJEyLmn == ENUM_DIRECTION_DOWN)
 if(nlCmXw8MK7Tkm5.getZPos() <= 0)
 {
 
 sq_CreateDrawOnlyObject(nlCmXw8MK7Tkm5, "character/gunner/effect/animation/hiteffect/collisionfloor.ani", ENUM_DRAWLAYER_NORMAL, true);
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(nlCmXw8MK7Tkm5); 
 }
 break;
 case 242: 
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 if(c5nuCQ34XBsF3c72 == 13) 
 {
 local DMK3znHpPnIX0SC = nlCmXw8MK7Tkm5.getVar().get_vector(3); 
 local fIy2T7FUCgv22u3eaFrua = nlCmXw8MK7Tkm5.getVar().get_vector(4); 
 setRangeObjectXPos(nlCmXw8MK7Tkm5, DMK3znHpPnIX0SC, ENUM_DIRECTION_NEUTRAL, 0, 100, fIy2T7FUCgv22u3eaFrua, 1); 
 }
 else if(c5nuCQ34XBsF3c72 == 10) 
 if(nlCmXw8MK7Tkm5.getZPos() <= 0) 
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 nlCmXw8MK7Tkm5.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 }
 break;
 case 243: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 switch(FJaCTznG1e4ZZVeu8588c1ja)
 {
 case 1:
 if(c5nuCQ34XBsF3c72 == 10)
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local pv4QByYqvJcA = sq_GetCNRDObjectToSQRCharacter(nlCmXw8MK7Tkm5.getTopCharacter()); 
 if(pv4QByYqvJcA)
 {
 if(pv4QByYqvJcA.getState() == 243)
 {
 local DKzzvpGQVPK8QLJeUnF = 0; 
 local vDw5M6ZRd0orAj = 0; 
 local etGerSKifzU0MgZI80Ed1 = 4; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj += etGerSKifzU0MgZI80Ed1;
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF += etGerSKifzU0MgZI80Ed1;
 if(DKzzvpGQVPK8QLJeUnF != 0) sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, nlCmXw8MK7Tkm5.getXPos() + DKzzvpGQVPK8QLJeUnF); 
 if(vDw5M6ZRd0orAj != 0) sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 1, nlCmXw8MK7Tkm5.getYPos() + vDw5M6ZRd0orAj); 
 }
 else
 {
 local nn2Ouae0RhITU4jSgECR4Gbq = nlCmXw8MK7Tkm5.getXPos(); 
 local UcmBZMsqUn832FNS = nlCmXw8MK7Tkm5.getYPos(); 
 local rL_OWywHLMHnhKW = nlCmXw8MK7Tkm5.getVar().get_vector(3); 
 local P0Zz0eeL191ixWgvciKD55V = nlCmXw8MK7Tkm5.getVar().get_vector(4); 
 local rki2a2KJSuG1djsZU7IktXa = sq_ToDegree(
 sq_Atan2(
 sq_Abs(P0Zz0eeL191ixWgvciKD55V - (UcmBZMsqUn832FNS + 1000)).tofloat(),
 sq_Abs(nn2Ouae0RhITU4jSgECR4Gbq - rL_OWywHLMHnhKW).tofloat()
 )
 ) + 90.0; 
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, nn2Ouae0RhITU4jSgECR4Gbq); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, UcmBZMsqUn832FNS); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4,
 (nn2Ouae0RhITU4jSgECR4Gbq > rL_OWywHLMHnhKW) ? ENUM_DIRECTION_LEFT : ENUM_DIRECTION_RIGHT 
 ); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, rki2a2KJSuG1djsZU7IktXa.tointeger()); 
 nlCmXw8MK7Tkm5.addSetStatePacket(11, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 else
 sq_SendDestroyPacketPassiveObject(nlCmXw8MK7Tkm5); 
 }
 }
 break;
 case 2: 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10:
 break;
 default:
 local jZuKH09wqDizIPWXv9V2J = sq_GetObjectTime(nlCmXw8MK7Tkm5); 
 local fVKVwayguBRfS9v7Baf = 400; 
 local iunIR4RUlbwhjG = nlCmXw8MK7Tkm5.getVar(); 
 
 local NfjwN1NKjSGLVY = sq_GetUniformVelocity(iunIR4RUlbwhjG.get_vector(0), iunIR4RUlbwhjG.get_vector(2), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf);
 local _nGqQ0f7Aa1F1PbUFdVJsC0 = sq_GetUniformVelocity(iunIR4RUlbwhjG.get_vector(1), iunIR4RUlbwhjG.get_vector(3), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf);
 local vGttNjVHE5Oz9b4WAh = sq_GetUniformVelocity(1000, 0, jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf);
 sq_SetCurrentPos(nlCmXw8MK7Tkm5, NfjwN1NKjSGLVY, _nGqQ0f7Aa1F1PbUFdVJsC0, vGttNjVHE5Oz9b4WAh); 
 if(jZuKH09wqDizIPWXv9V2J >= fVKVwayguBRfS9v7Baf) 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 nlCmXw8MK7Tkm5.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 }
 break;
 case 244: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 if(FJaCTznG1e4ZZVeu8588c1ja != 1) return; 
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10: 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 if(nlCmXw8MK7Tkm5.getZPos() <= 0) 
 nlCmXw8MK7Tkm5.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 break;
 case 11: 
 if(nlCmXw8MK7Tkm5.isExistTimeEvent(1)) return; 
 local zGUWq1s3QfIv = sq_GetCNRDObjectToActiveObject(nlCmXw8MK7Tkm5.getVar().get_obj_vector(0)); 
 
 if(zGUWq1s3QfIv && !zGUWq1s3QfIv.isDead())
 {
 if(nlCmXw8MK7Tkm5.getVar().getBool(0) == false) 
 {
 local nn2Ouae0RhITU4jSgECR4Gbq = nlCmXw8MK7Tkm5.getXPos(); 
 local UcmBZMsqUn832FNS = nlCmXw8MK7Tkm5.getYPos(); 
 local jBzcqRF4f1H = zGUWq1s3QfIv.getXPos(); 
 local xTmqkq1ANq3hf0TkThhvUdX = zGUWq1s3QfIv.getYPos(); 
 local cMw8X0bFBFE6mqfFpe9 = sq_Abs(nn2Ouae0RhITU4jSgECR4Gbq - jBzcqRF4f1H); 
 local X489_skMRpy1 = sq_Abs(UcmBZMsqUn832FNS - xTmqkq1ANq3hf0TkThhvUdX); 
 if(cMw8X0bFBFE6mqfFpe9 <= 10 && X489_skMRpy1 <= 10) 
 {
 nlCmXw8MK7Tkm5.getVar("move").clear_vector(); 
 nlCmXw8MK7Tkm5.getVar("move").push_vector(sq_GetObjectTime(nlCmXw8MK7Tkm5)); 
 nlCmXw8MK7Tkm5.sq_PlaySound("G_38ARG_GRAB"); 
 nlCmXw8MK7Tkm5.getVar().setBool(0, true); 
 return; 
 }
 else
 {
 
 if(cMw8X0bFBFE6mqfFpe9 > 0)
 {
 local DKzzvpGQVPK8QLJeUnF = cMw8X0bFBFE6mqfFpe9 / 10 + 1; 
 
 if(nn2Ouae0RhITU4jSgECR4Gbq > jBzcqRF4f1H) DKzzvpGQVPK8QLJeUnF /= -1;
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, nn2Ouae0RhITU4jSgECR4Gbq + DKzzvpGQVPK8QLJeUnF); 
 }
 
 if(X489_skMRpy1 > 0)
 {
 local vDw5M6ZRd0orAj = X489_skMRpy1 / 10 + 1; 
 
 if(UcmBZMsqUn832FNS > xTmqkq1ANq3hf0TkThhvUdX) vDw5M6ZRd0orAj /= -1;
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 1, UcmBZMsqUn832FNS + vDw5M6ZRd0orAj); 
 }
 }
 }
 else 
 {
 local jZuKH09wqDizIPWXv9V2J = sq_GetObjectTime(nlCmXw8MK7Tkm5) - nlCmXw8MK7Tkm5.getVar("move").get_vector(0); 
 local fVKVwayguBRfS9v7Baf = 200; 
 local vGttNjVHE5Oz9b4WAh = sq_GetUniformVelocity(0, zGUWq1s3QfIv.getZPos() + sq_GetObjectHeight(zGUWq1s3QfIv) / 2, jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf); 
 nlCmXw8MK7Tkm5.setCurrentPos(zGUWq1s3QfIv.getXPos(), zGUWq1s3QfIv.getYPos() + 1, vGttNjVHE5Oz9b4WAh); 
 if(jZuKH09wqDizIPWXv9V2J >= fVKVwayguBRfS9v7Baf) 
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(NAAybzFnB9JG1KVa4); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, 1); 
 nlCmXw8MK7Tkm5.addSetStatePacket(12, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 }
 }
 else 
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 nlCmXw8MK7Tkm5.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 }
 break;
 }
 break;
 case 245: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 if(FJaCTznG1e4ZZVeu8588c1ja == 1)
 {
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 if(c5nuCQ34XBsF3c72 == 10)
 {
 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 if(nlCmXw8MK7Tkm5.getZPos() <= 0) 
 nlCmXw8MK7Tkm5.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
 }
 }
 break;
 case 246: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 switch(FJaCTznG1e4ZZVeu8588c1ja)
 {
 case 1: 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10: 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local pv4QByYqvJcA = sq_GetCNRDObjectToSQRCharacter(nlCmXw8MK7Tkm5.getTopCharacter()); 
 if(pv4QByYqvJcA)
 {
 if(pv4QByYqvJcA.getState() == 246)
 {
 local DKzzvpGQVPK8QLJeUnF = 0; 
 local vDw5M6ZRd0orAj = 0; 
 local etGerSKifzU0MgZI80Ed1 = 4; 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 vDw5M6ZRd0orAj += etGerSKifzU0MgZI80Ed1;
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF -= etGerSKifzU0MgZI80Ed1;
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) 
 DKzzvpGQVPK8QLJeUnF += etGerSKifzU0MgZI80Ed1;
 if(DKzzvpGQVPK8QLJeUnF != 0) sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, nlCmXw8MK7Tkm5.getXPos() + DKzzvpGQVPK8QLJeUnF); 
 if(vDw5M6ZRd0orAj != 0) sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 1, nlCmXw8MK7Tkm5.getYPos() + vDw5M6ZRd0orAj); 
 }
 else
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, nlCmXw8MK7Tkm5.getXPos()); 
 sq_IntVectorPush(NAAybzFnB9JG1KVa4, nlCmXw8MK7Tkm5.getYPos()); 
 nlCmXw8MK7Tkm5.addSetStatePacket(11, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 else
 sq_SendDestroyPacketPassiveObject(nlCmXw8MK7Tkm5); 
 }
 break;
 case 14: 
 local ucFNbdnFzMqiCchx0e = nlCmXw8MK7Tkm5.getXPos(); 
 local uUdvKYdgMiB436DpOP9kCJh = nlCmXw8MK7Tkm5.getYPos(); 
 local kXCg34qgJCzZDMVpwMQc = nlCmXw8MK7Tkm5.getVar("move").get_vector(0); 
 local V6w8wOSKD0ouYwNSN = nlCmXw8MK7Tkm5.getVar("move").get_vector(1); 
 local cMw8X0bFBFE6mqfFpe9 = sq_Abs(ucFNbdnFzMqiCchx0e - kXCg34qgJCzZDMVpwMQc); 
 local X489_skMRpy1 = sq_Abs(uUdvKYdgMiB436DpOP9kCJh - V6w8wOSKD0ouYwNSN); 
 if(cMw8X0bFBFE6mqfFpe9 <= 10 && X489_skMRpy1 <= 10) 
 {
 
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(15, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 return; 
 }
 else
 {
 
 if(cMw8X0bFBFE6mqfFpe9 > 0)
 {
 local DKzzvpGQVPK8QLJeUnF = cMw8X0bFBFE6mqfFpe9 / 10 + 1; 
 
 if(ucFNbdnFzMqiCchx0e > kXCg34qgJCzZDMVpwMQc) DKzzvpGQVPK8QLJeUnF /= -1;
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, ucFNbdnFzMqiCchx0e + DKzzvpGQVPK8QLJeUnF); 
 }
 
 if(X489_skMRpy1 > 0)
 {
 local vDw5M6ZRd0orAj = X489_skMRpy1 / 10 + 1; 
 
 if(uUdvKYdgMiB436DpOP9kCJh > V6w8wOSKD0ouYwNSN) vDw5M6ZRd0orAj /= -1;
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 1, uUdvKYdgMiB436DpOP9kCJh + vDw5M6ZRd0orAj); 
 }
 }
 break;
 }
 break;
 case 2: 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10:
 local iunIR4RUlbwhjG = nlCmXw8MK7Tkm5.getVar(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetObjectTime(nlCmXw8MK7Tkm5); 
 local fVKVwayguBRfS9v7Baf = iunIR4RUlbwhjG.get_vector(5); 
 local S9GZEmfQvkGm2F6zsYsJ = iunIR4RUlbwhjG.get_vector(0); 
 switch(S9GZEmfQvkGm2F6zsYsJ)
 {
 case 1: 
 local qT8tL8fDziot_4J = sq_GetAccel(0, 180, jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf, false);
 if(qT8tL8fDziot_4J >= 90)
 {
 iunIR4RUlbwhjG.set_vector(4, nlCmXw8MK7Tkm5.getZPos());
 iunIR4RUlbwhjG.set_vector(0, jZuKH09wqDizIPWXv9V2J);
 return;
 }
 local vGttNjVHE5Oz9b4WAh = iunIR4RUlbwhjG.get_vector(2) + iunIR4RUlbwhjG.get_vector(4) * sq_SinTable(qT8tL8fDziot_4J);
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 2, vGttNjVHE5Oz9b4WAh.tointeger()); 
 sq_SetCustomRotate(nlCmXw8MK7Tkm5, sq_ToRadian(qT8tL8fDziot_4J.tofloat()) / -1); 
 break;
 default: 
 local OjjgfIcYTAj_H2qva = jZuKH09wqDizIPWXv9V2J - S9GZEmfQvkGm2F6zsYsJ;
 local DuuPP0VqvY = fVKVwayguBRfS9v7Baf - S9GZEmfQvkGm2F6zsYsJ;
 local AB0HuHKLKRfsnMwVCdlGL = iunIR4RUlbwhjG.get_vector(4) * sq_SinTable(sq_GetUniformVelocity(90, 180, OjjgfIcYTAj_H2qva, DuuPP0VqvY)); 
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 2, AB0HuHKLKRfsnMwVCdlGL.tointeger()); 
 local rki2a2KJSuG1djsZU7IktXa = sq_GetAccel(90, 165, OjjgfIcYTAj_H2qva, DuuPP0VqvY, true); 
 sq_SetCustomRotate(nlCmXw8MK7Tkm5, sq_ToRadian(rki2a2KJSuG1djsZU7IktXa.tofloat()) / -1); 
 break;
 }
 local NfjwN1NKjSGLVY = sq_GetDistancePos(iunIR4RUlbwhjG.get_vector(1),
 nlCmXw8MK7Tkm5.getDirection(),
 sq_GetAccel(0, iunIR4RUlbwhjG.get_vector(3), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf, false));
 sq_setCurrentAxisPos(nlCmXw8MK7Tkm5, 0, NfjwN1NKjSGLVY); 
 if(jZuKH09wqDizIPWXv9V2J >= fVKVwayguBRfS9v7Baf) 
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(11, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 break;
 }
 break;
 }
 break;
 case 247: 
 local FJaCTznG1e4ZZVeu8588c1ja = nlCmXw8MK7Tkm5.getVar("subType").get_vector(0); 
 if(FJaCTznG1e4ZZVeu8588c1ja == 1)
 {
 local c5nuCQ34XBsF3c72 = nlCmXw8MK7Tkm5.getVar("state").get_vector(0); 
 switch(c5nuCQ34XBsF3c72)
 {
 case 10:
 local DRc7bP06M25mEbYI3iX = nlCmXw8MK7Tkm5.getVar("aniobj"); 
 local eYkB_jj_F7foWhA = DRc7bP06M25mEbYI3iX.get_obj_vector(0); 
 if(eYkB_jj_F7foWhA && sq_IsEnd(eYkB_jj_F7foWhA.getCurrentAnimation()))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(11, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 return; 
 }
 break;
 case 12: 
 local DRc7bP06M25mEbYI3iX = nlCmXw8MK7Tkm5.getVar("aniobj1"); 
 local eYkB_jj_F7foWhA = DRc7bP06M25mEbYI3iX.get_obj_vector(0); 
 local jrNmzX9BrcXLRf = DRc7bP06M25mEbYI3iX.get_obj_vector(1); 
 local FeNYfcjjwrCkRh9fXl = eYkB_jj_F7foWhA.getCurrentAnimation(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetCurrentTime(FeNYfcjjwrCkRh9fXl); 
 local fVKVwayguBRfS9v7Baf = FeNYfcjjwrCkRh9fXl.getDelaySum(0, 0); 
 local JQf8wFDwee6jPrRdyuJ = sq_GetAccel(0, nlCmXw8MK7Tkm5.getVar().get_vector(5), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf, true); 
 local XsiVR3QPkqb0OcoV2 = sq_GetDistancePos(DRc7bP06M25mEbYI3iX.get_vector(0), sq_GetDirection(eYkB_jj_F7foWhA), JQf8wFDwee6jPrRdyuJ); 
 local ZREeZlxUUHlJ5VGGFlolc8 = sq_GetDistancePos(DRc7bP06M25mEbYI3iX.get_vector(1), sq_GetDirection(jrNmzX9BrcXLRf), JQf8wFDwee6jPrRdyuJ); 
 sq_setCurrentAxisPos(eYkB_jj_F7foWhA, 0, XsiVR3QPkqb0OcoV2); 
 sq_setCurrentAxisPos(jrNmzX9BrcXLRf, 0, ZREeZlxUUHlJ5VGGFlolc8); 
 
 local eA2U5PtCIpghr = nlCmXw8MK7Tkm5.getVar("clarity").get_vector(0); 
 local AlJlNfDuE5ErCPJTWfPjmzJ = eA2U5PtCIpghr + sq_GetUniformVelocity(0, nlCmXw8MK7Tkm5.getVar().get_vector(6), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf); 
 local xNlXDvOvQV60l_nDkF8B4 = sq_getAniLayerListObject(FeNYfcjjwrCkRh9fXl, 0); 
 local Kv53P0IGorW33_CZc6f5RME = sq_getAniLayerListObject(xNlXDvOvQV60l_nDkF8B4, 0); 
 xNlXDvOvQV60l_nDkF8B4.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 Kv53P0IGorW33_CZc6f5RME.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 if(sq_IsEnd(FeNYfcjjwrCkRh9fXl)) 
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(13, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 break;
 case 13: 
 local DRc7bP06M25mEbYI3iX = nlCmXw8MK7Tkm5.getVar("aniobj1"); 
 local eYkB_jj_F7foWhA = DRc7bP06M25mEbYI3iX.get_obj_vector(0); 
 local jrNmzX9BrcXLRf = DRc7bP06M25mEbYI3iX.get_obj_vector(1); 
 local FeNYfcjjwrCkRh9fXl = eYkB_jj_F7foWhA.getCurrentAnimation(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetCurrentTime(FeNYfcjjwrCkRh9fXl); 
 local fVKVwayguBRfS9v7Baf = FeNYfcjjwrCkRh9fXl.getDelaySum(0, 0); 
 local JQf8wFDwee6jPrRdyuJ = sq_GetAccel(0, nlCmXw8MK7Tkm5.getVar().get_vector(5), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf, true); 
 local XsiVR3QPkqb0OcoV2 = sq_GetDistancePos(DRc7bP06M25mEbYI3iX.get_vector(0), sq_GetDirection(eYkB_jj_F7foWhA), JQf8wFDwee6jPrRdyuJ); 
 local ZREeZlxUUHlJ5VGGFlolc8 = sq_GetDistancePos(DRc7bP06M25mEbYI3iX.get_vector(1), sq_GetDirection(jrNmzX9BrcXLRf), JQf8wFDwee6jPrRdyuJ); 
 sq_setCurrentAxisPos(eYkB_jj_F7foWhA, 0, XsiVR3QPkqb0OcoV2); 
 sq_setCurrentAxisPos(jrNmzX9BrcXLRf, 0, ZREeZlxUUHlJ5VGGFlolc8); 
 
 
 local QXo755kkADfCrjm7Nt7 = nlCmXw8MK7Tkm5.getVar("clarity"); 
 local eA2U5PtCIpghr = QXo755kkADfCrjm7Nt7.get_vector(0); 
 local AlJlNfDuE5ErCPJTWfPjmzJ = eA2U5PtCIpghr + sq_GetUniformVelocity(0, nlCmXw8MK7Tkm5.getVar().get_vector(6), jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf); 
 local xO2MRj6kfXm = sq_getAniLayerListObject(eYkB_jj_F7foWhA.getCurrentAnimation(), 0); 
 local n2bb_uzOwd4DMJk04tFo = sq_getAniLayerListObject(xO2MRj6kfXm, 0); 
 local FIKvzbLNSey4ZHxIvZUqWX1 = sq_getAniLayerListObject(jrNmzX9BrcXLRf.getCurrentAnimation(), 0); 
 local f_G_5f86iGOsU0vAWAj = sq_getAniLayerListObject(FIKvzbLNSey4ZHxIvZUqWX1, 0); 
 xO2MRj6kfXm.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 n2bb_uzOwd4DMJk04tFo.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 FIKvzbLNSey4ZHxIvZUqWX1.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 f_G_5f86iGOsU0vAWAj.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 
 local KO51Bpms78oJ = QXo755kkADfCrjm7Nt7.size_vector() - 1; 
 local suxAZZg39F5680cfBmLz = nlCmXw8MK7Tkm5.getVar("aniobj2"); 
 for(local JmXD2DGG_8cLUzS20PL17U = 1; JmXD2DGG_8cLUzS20PL17U <= KO51Bpms78oJ; JmXD2DGG_8cLUzS20PL17U++)
 {
 local qCGp4MqmkfGjOQNJ6Wy9TQy = QXo755kkADfCrjm7Nt7.get_vector(JmXD2DGG_8cLUzS20PL17U); 
 local EAaBK_lA7TXLyzAH = (JmXD2DGG_8cLUzS20PL17U - 1) * 12; 
 for(local XcUMqdgNc8Dk5vw83vnf = 0; XcUMqdgNc8Dk5vw83vnf < 12; XcUMqdgNc8Dk5vw83vnf++) 
 {
 local V4o3I5QRKja4vDQx = suxAZZg39F5680cfBmLz.get_obj_vector(EAaBK_lA7TXLyzAH + XcUMqdgNc8Dk5vw83vnf); 
 local XXNt0ZQglrXOheWLRmGA = sq_getAniLayerListObject(V4o3I5QRKja4vDQx.getCurrentAnimation(), 0); 
 local GNp8WkewVXSiTDaSeCwPUtZU = sq_getAniLayerListObject(XXNt0ZQglrXOheWLRmGA, 0); 
 XXNt0ZQglrXOheWLRmGA.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 GNp8WkewVXSiTDaSeCwPUtZU.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 }
 }
 
 if(sq_IsEnd(FeNYfcjjwrCkRh9fXl))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 local yjYR2pb5Rr9el = nlCmXw8MK7Tkm5.getVar().get_vector(0); 
 if(yjYR2pb5Rr9el > 0) 
 nlCmXw8MK7Tkm5.addSetStatePacket(13, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 else 
 nlCmXw8MK7Tkm5.addSetStatePacket(14, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 }
 break;
 case 14: 
 local eIMnBUg56xAsxOmbcUGz7zn9 = nlCmXw8MK7Tkm5.getVar("aniobj"); 
 local zmK2XitCtxRqZHSZ0aqL = eIMnBUg56xAsxOmbcUGz7zn9.get_obj_vector(0); 
 if(zmK2XitCtxRqZHSZ0aqL && sq_IsEnd(zmK2XitCtxRqZHSZ0aqL.getCurrentAnimation())) 
 {
 
 for(local XcUMqdgNc8Dk5vw83vnf = 0; XcUMqdgNc8Dk5vw83vnf < 4; XcUMqdgNc8Dk5vw83vnf++)
 {
 local frVfEK3W68fi_nPa = eIMnBUg56xAsxOmbcUGz7zn9.get_obj_vector(XcUMqdgNc8Dk5vw83vnf); 
 if(frVfEK3W68fi_nPa)
 frVfEK3W68fi_nPa.setValid(false); 
 else
 break;
 }
 }
 
 
 local QXo755kkADfCrjm7Nt7 = nlCmXw8MK7Tkm5.getVar("clarity"); 
 local eA2U5PtCIpghr = QXo755kkADfCrjm7Nt7.get_vector(0); 
 local AlJlNfDuE5ErCPJTWfPjmzJ = eA2U5PtCIpghr + 1; 
 if(AlJlNfDuE5ErCPJTWfPjmzJ < 255) 
 {
 local Ft5wxcEzIGq = nlCmXw8MK7Tkm5.getVar("aniobj1"); 
 local f8K5bOSUo7Oc1 = Ft5wxcEzIGq.get_obj_vector(0); 
 local oEhdY73uzLVtw0oKFthg96oV = Ft5wxcEzIGq.get_obj_vector(1); 
 local xO2MRj6kfXm = f8K5bOSUo7Oc1.getCurrentAnimation(); 
 local n2bb_uzOwd4DMJk04tFo = sq_getAniLayerListObject(xO2MRj6kfXm, 0); 
 local FIKvzbLNSey4ZHxIvZUqWX1 = oEhdY73uzLVtw0oKFthg96oV.getCurrentAnimation(); 
 local f_G_5f86iGOsU0vAWAj = sq_getAniLayerListObject(FIKvzbLNSey4ZHxIvZUqWX1, 0); 
 xO2MRj6kfXm.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 n2bb_uzOwd4DMJk04tFo.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 FIKvzbLNSey4ZHxIvZUqWX1.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 f_G_5f86iGOsU0vAWAj.setRGBA(255, 255, 255, AlJlNfDuE5ErCPJTWfPjmzJ); 
 QXo755kkADfCrjm7Nt7.set_vector(0, AlJlNfDuE5ErCPJTWfPjmzJ); 
 }
 
 local KO51Bpms78oJ = QXo755kkADfCrjm7Nt7.size_vector() - 1; 
 local suxAZZg39F5680cfBmLz = nlCmXw8MK7Tkm5.getVar("aniobj2"); 
 for(local JmXD2DGG_8cLUzS20PL17U = 1; JmXD2DGG_8cLUzS20PL17U <= KO51Bpms78oJ; JmXD2DGG_8cLUzS20PL17U++)
 {
 local qCGp4MqmkfGjOQNJ6Wy9TQy = QXo755kkADfCrjm7Nt7.get_vector(JmXD2DGG_8cLUzS20PL17U); 
 local vJOBiTmlp8d = qCGp4MqmkfGjOQNJ6Wy9TQy + 1; 
 if(vJOBiTmlp8d >= 255) continue; 
 local EAaBK_lA7TXLyzAH = (JmXD2DGG_8cLUzS20PL17U - 1) * 12; 
 for(local XcUMqdgNc8Dk5vw83vnf = 0; XcUMqdgNc8Dk5vw83vnf < 12; XcUMqdgNc8Dk5vw83vnf++) 
 {
 local V4o3I5QRKja4vDQx = suxAZZg39F5680cfBmLz.get_obj_vector(EAaBK_lA7TXLyzAH + XcUMqdgNc8Dk5vw83vnf); 
 local XXNt0ZQglrXOheWLRmGA = V4o3I5QRKja4vDQx.getCurrentAnimation(); 
 local GNp8WkewVXSiTDaSeCwPUtZU = sq_getAniLayerListObject(XXNt0ZQglrXOheWLRmGA, 0); 
 XXNt0ZQglrXOheWLRmGA.setRGBA(255, 255, 255, vJOBiTmlp8d); 
 GNp8WkewVXSiTDaSeCwPUtZU.setRGBA(255, 255, 255, vJOBiTmlp8d); 
 }
 QXo755kkADfCrjm7Nt7.set_vector(JmXD2DGG_8cLUzS20PL17U, vJOBiTmlp8d); 
 }
 local eYkB_jj_F7foWhA = nlCmXw8MK7Tkm5.getVar("aniobj1").get_obj_vector(0); 
 if(eYkB_jj_F7foWhA && sq_IsEnd(eYkB_jj_F7foWhA.getCurrentAnimation()))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(15, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 return; 
 }
 break;
 case 15: 
 local vmKpQo24VTok44Lv24PlzL = nlCmXw8MK7Tkm5.getVar("aniobj2"); 
 local eYkB_jj_F7foWhA = vmKpQo24VTok44Lv24PlzL.get_obj_vector(0); 
 if(sq_IsEnd(eYkB_jj_F7foWhA.getCurrentAnimation()))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(16, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 return; 
 }
 break;
 case 16: 
 local zejBNZiEfpPO8iCtyk9jYaNg = nlCmXw8MK7Tkm5.getVar("aniobj1"); 
 local eYkB_jj_F7foWhA = zejBNZiEfpPO8iCtyk9jYaNg.get_obj_vector(0); 
 if(sq_IsEnd(eYkB_jj_F7foWhA.getCurrentAnimation()))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 {
 local NAAybzFnB9JG1KVa4 = sq_GetGlobalIntVector();
 sq_IntVectorClear(NAAybzFnB9JG1KVa4);
 nlCmXw8MK7Tkm5.addSetStatePacket(17, NAAybzFnB9JG1KVa4, STATE_PRIORITY_AUTO, false, "");
 }
 return; 
 }
 break;
 case 17: 
 local zejBNZiEfpPO8iCtyk9jYaNg = nlCmXw8MK7Tkm5.getVar("aniobj1"); 
 local eYkB_jj_F7foWhA = zejBNZiEfpPO8iCtyk9jYaNg.get_obj_vector(0); 
 if(eYkB_jj_F7foWhA)
 if(sq_IsEnd(eYkB_jj_F7foWhA.getCurrentAnimation()))
 {
 if(nlCmXw8MK7Tkm5.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(nlCmXw8MK7Tkm5); 
 return; 
 }
 else 
 {
 local jZmM4PUZ0uiiG57CaweUlFL = nlCmXw8MK7Tkm5.getVar("aniobj").get_obj_vector(0); 
 if(jZmM4PUZ0uiiG57CaweUlFL)
 {
 local FeNYfcjjwrCkRh9fXl = jZmM4PUZ0uiiG57CaweUlFL.getCurrentAnimation(); 
 local jZuKH09wqDizIPWXv9V2J = sq_GetCurrentTime(FeNYfcjjwrCkRh9fXl); 
 local fVKVwayguBRfS9v7Baf = FeNYfcjjwrCkRh9fXl.getDelaySum(false); 
 local JQf8wFDwee6jPrRdyuJ = sq_GetUniformVelocity(255, 50, jZuKH09wqDizIPWXv9V2J, fVKVwayguBRfS9v7Baf); 
 FeNYfcjjwrCkRh9fXl.setRGBA(255, 255, 255, JQf8wFDwee6jPrRdyuJ); 
 local t5IO_dD6AcApkGWiwBJr = sq_AniLayerListSize(FeNYfcjjwrCkRh9fXl); 
 for(local XcUMqdgNc8Dk5vw83vnf = 0; XcUMqdgNc8Dk5vw83vnf < t5IO_dD6AcApkGWiwBJr; XcUMqdgNc8Dk5vw83vnf++)
 {
 local wP8xLvWGg42gbBv = sq_getAniLayerListObject(FeNYfcjjwrCkRh9fXl, XcUMqdgNc8Dk5vw83vnf); 
 wP8xLvWGg42gbBv.setRGBA(255, 255, 255, JQf8wFDwee6jPrRdyuJ); 
 }
 }
 }
 break;
 }
 }
 break;
 }
} ;
 
