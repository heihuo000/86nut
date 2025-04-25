
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_priest_metamorphosis") 
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_metamorphosis") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_priest_metamorphosis") 
}




function onStart_appendage_priest_metamorphosis(oyF5wAjOnz)
{
 if(!oyF5wAjOnz) return;
 local w2lhMtKHi0C8_043wKAT = sq_GetCNRDObjectToSQRCharacter(oyF5wAjOnz.getParent()); 
 if(!w2lhMtKHi0C8_043wKAT)
 {
 oyF5wAjOnz.setValid(false);
 return;
 }
 local CYzDRPMaGQ4 = sq_GetSkillLevel(w2lhMtKHi0C8_043wKAT, 139); 
 local UZrYwu_W4o2u6F56ItKHHR8 = w2lhMtKHi0C8_043wKAT.sq_GetLevelData(139, 7, CYzDRPMaGQ4); 
 
 oyF5wAjOnz.getVar().clear_timer_vector();
 oyF5wAjOnz.getVar().push_timer_vector();
 local _RdcZcxjJtg7Lh0 = oyF5wAjOnz.getVar().get_timer_vector(0);
 _RdcZcxjJtg7Lh0.setParameter(UZrYwu_W4o2u6F56ItKHHR8, -1); 
 _RdcZcxjJtg7Lh0.resetInstant(50); 
 
 
 
 oyF5wAjOnz.getVar().setBool(0, false); 
 oyF5wAjOnz.getVar().setBool(1, false); 
} ;

function proc_appendage_priest_metamorphosis(PgWKfdxhvdW)
{
 if(!PgWKfdxhvdW) return;
 local MY8pS6RgoUrcWRmXXPS = PgWKfdxhvdW.getParent(); 
 if(!MY8pS6RgoUrcWRmXXPS)
 {
 PgWKfdxhvdW.setValid(false);
 return;
 }
 if(MY8pS6RgoUrcWRmXXPS.isDead()) 
 {
 sendEndPacket_appendage_priest_metamorphosis(PgWKfdxhvdW, MY8pS6RgoUrcWRmXXPS); 
 return;
 }
 if(PgWKfdxhvdW.getVar().getBool(0) == true) 
 switch(MY8pS6RgoUrcWRmXXPS.getState()) 
 {
 case STATE_STAND: case STATE_ATTACK: case STATE_DASH: 
 sendEndPacket_appendage_priest_metamorphosis(PgWKfdxhvdW, MY8pS6RgoUrcWRmXXPS); 
 return;
 }
 MY8pS6RgoUrcWRmXXPS.setCustomOutline(true, sq_RGBA(255, 0, 0, 20), false, 4); 
 local eOzLME5TQXiq7bB9uE = MY8pS6RgoUrcWRmXXPS.getCurrentAnimation(); 
 if(eOzLME5TQXiq7bB9uE)
 {
 local wlcFMw6uSGWcGW2Eueus = sq_RGB(0, 0, 0); 
 local q_Hgh2g3IhRi = sq_ALPHA(220); 
 eOzLME5TQXiq7bB9uE.setEffectLayer(true, GRAPHICEFFECT_NONE, true, wlcFMw6uSGWcGW2Eueus, q_Hgh2g3IhRi, true, false); 
 local F7nVxILsaKMhxQ4VUN0iQ1lU = sq_AniLayerListSize(eOzLME5TQXiq7bB9uE); 
 local T8Pr4gMrGKV3sOmz = sq_GetAniFrameNumber(eOzLME5TQXiq7bB9uE, 0); 
 local P9K_Vzp80lR1jPYLvCn97 = eOzLME5TQXiq7bB9uE.getDelaySum(false); 
 for(local b0eUA9LsykGFs = 0; b0eUA9LsykGFs < F7nVxILsaKMhxQ4VUN0iQ1lU; b0eUA9LsykGFs++)
 {
 local LhTUh54Bsef7uw = sq_getAniLayerListObject(eOzLME5TQXiq7bB9uE, b0eUA9LsykGFs); 
 if(LhTUh54Bsef7uw 
 && sq_GetAniFrameNumber(LhTUh54Bsef7uw, 0) == T8Pr4gMrGKV3sOmz 
 && LhTUh54Bsef7uw.getDelaySum(false) == P9K_Vzp80lR1jPYLvCn97) 
 {
 local J1pUjIKGyA9uYeerTgd26u = LhTUh54Bsef7uw.GetCurrentFrame().GetGraphicEffect(); 
 if(J1pUjIKGyA9uYeerTgd26u != GRAPHICEFFECT_LINEARDODGE) 
 LhTUh54Bsef7uw.setEffectLayer(true, GRAPHICEFFECT_NONE, true, wlcFMw6uSGWcGW2Eueus, q_Hgh2g3IhRi, true, false);
 }
 }
 }
 MY8pS6RgoUrcWRmXXPS = sq_GetCNRDObjectToSQRCharacter(MY8pS6RgoUrcWRmXXPS); 
 if(!MY8pS6RgoUrcWRmXXPS)
 {
 PgWKfdxhvdW.setValid(false);
 return;
 }
 if(MY8pS6RgoUrcWRmXXPS.isCarryWeapon()) 
 MY8pS6RgoUrcWRmXXPS.setCarryWeapon(false); 
 local F2evY0pEXUbljx6VE_EgBu = PgWKfdxhvdW.getVar().get_timer_vector(0);
 if(F2evY0pEXUbljx6VE_EgBu) 
 if(F2evY0pEXUbljx6VE_EgBu.isOnEvent(PgWKfdxhvdW.getTimer().Get()) == true) 
 {
 local cA8MAAX9Ob9mRrwwGB7uW8 = sq_GetSkillLevel(MY8pS6RgoUrcWRmXXPS, 139); 
 consumeDevilGauge(MY8pS6RgoUrcWRmXXPS, MY8pS6RgoUrcWRmXXPS.sq_GetLevelData(139, 8, cA8MAAX9Ob9mRrwwGB7uW8)); 
 local HPblA3xLCxtFDv1QL_bHX = MY8pS6RgoUrcWRmXXPS.sq_GetLevelData(139, 7, cA8MAAX9Ob9mRrwwGB7uW8); 
 if(F2evY0pEXUbljx6VE_EgBu.getEventTerm() != HPblA3xLCxtFDv1QL_bHX) 
 F2evY0pEXUbljx6VE_EgBu.setEventTerm(HPblA3xLCxtFDv1QL_bHX); 
 if(getDevilGauge(MY8pS6RgoUrcWRmXXPS) <= 0 && PgWKfdxhvdW.getVar().getBool(0) == false) 
 PgWKfdxhvdW.getVar().setBool(0, true); 
 }
} ;

function onEnd_appendage_priest_metamorphosis(W_9NYSJTAYLX6lb4tRE)
{
 if(!W_9NYSJTAYLX6lb4tRE) return;
 local l9xcG0Nte1cWqBpKM = sq_GetCNRDObjectToSQRCharacter(W_9NYSJTAYLX6lb4tRE.getParent()); 
 if(!l9xcG0Nte1cWqBpKM)
 {
 W_9NYSJTAYLX6lb4tRE.setValid(false);
 return;
 }
 if(l9xcG0Nte1cWqBpKM.getState() != 67) 
 {
 sq_EffectLayerAppendageOnlyBody(l9xcG0Nte1cWqBpKM, sq_RGB(0, 0, 0), 200, 0, 0, 200); 
 
 local VyyEdPDB84rpYi0sad = sq_CreateAnimation("", "character/priest/effect/animation/metamorphosis/end/end_normal.ani");
 local OqTGWkO9iA99U4IOd = sq_CreatePooledObject(VyyEdPDB84rpYi0sad, true);
 sq_SetCurrentDirection(OqTGWkO9iA99U4IOd, sq_GetDirection(l9xcG0Nte1cWqBpKM)); 
 OqTGWkO9iA99U4IOd = sq_SetEnumDrawLayer(OqTGWkO9iA99U4IOd, ENUM_DRAWLAYER_NORMAL); 
 OqTGWkO9iA99U4IOd.setCurrentPos(sq_GetXPos(l9xcG0Nte1cWqBpKM), sq_GetYPos(l9xcG0Nte1cWqBpKM), sq_GetZPos(l9xcG0Nte1cWqBpKM));
 sq_AddObject(l9xcG0Nte1cWqBpKM, OqTGWkO9iA99U4IOd, OBJECTTYPE_DRAWONLY, false); 
 if(l9xcG0Nte1cWqBpKM.sq_IsMyControlObject())
 sq_flashScreen(l9xcG0Nte1cWqBpKM, 0, 100, 100, 102, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 l9xcG0Nte1cWqBpKM.setCustomOutline(false, sq_RGBA(255, 0, 0, 10), false, 4); 
 if(!l9xcG0Nte1cWqBpKM.isCarryWeapon()) 
 l9xcG0Nte1cWqBpKM.setCarryWeapon(true); 
} ;

function sendEndPacket_appendage_priest_metamorphosis(ccFqHONoc7DvU3yK, DHLxsP8N4oF0H3N7wU)
{
 if(!ccFqHONoc7DvU3yK || !DHLxsP8N4oF0H3N7wU) return;
 if(ccFqHONoc7DvU3yK.getVar().getBool(1) == false) 
 {
 ccFqHONoc7DvU3yK.getVar().setBool(1, true); 
 if(DHLxsP8N4oF0H3N7wU.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(2); 
 sq_SendChangeSkillEffectPacket(DHLxsP8N4oF0H3N7wU, 139); 
 }
 }
} ;

