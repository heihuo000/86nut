
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_bloodnchain(nbQfOGveQGCejCH)
{
 if(!nbQfOGveQGCejCH) return false; 
 local KOYRmdjs9JBtbgjP7o5kx = nbQfOGveQGCejCH.sq_IsUseSkill(239); 
 if(KOYRmdjs9JBtbgjP7o5kx) 
 {
 nbQfOGveQGCejCH.sq_IntVectClear();
 nbQfOGveQGCejCH.sq_IntVectPush(0); 
 nbQfOGveQGCejCH.sq_AddSetStatePacket(239, STATE_PRIORITY_USER, true); 
 
 return true; 
 }
 return false;
} ;

 
function checkCommandEnable_atgunner_bloodnchain(nbQfOGveQGCejCH)
{
 if(!nbQfOGveQGCejCH) return false; 
 local KOYRmdjs9JBtbgjP7o5kx = nbQfOGveQGCejCH.sq_GetState(); 
 if(KOYRmdjs9JBtbgjP7o5kx == STATE_STAND) 
 return true; 
 if(KOYRmdjs9JBtbgjP7o5kx == STATE_ATTACK) 
 {
 return nbQfOGveQGCejCH.sq_IsCommandEnable(239); 
 }
 return true; 
} ;

 
function onSetState_atgunner_bloodnchain(oP_EINnqzQheA7JxA8LA, e0ClQKYjoT9vZFIgV, uC4d28dLYDOdzp7r6O5q67XA, NyULa85GqAKj)
{
 
 
 
 
 
 
 if(!oP_EINnqzQheA7JxA8LA) return; 
 local MD5PwZOBqJhYI_oFL01p = oP_EINnqzQheA7JxA8LA.sq_GetVectorData(uC4d28dLYDOdzp7r6O5q67XA, 0); 
 oP_EINnqzQheA7JxA8LA.setSkillSubState(MD5PwZOBqJhYI_oFL01p); 
 switch(MD5PwZOBqJhYI_oFL01p)
 {
 case 0:
 if(oP_EINnqzQheA7JxA8LA.isMyControlObject()) 
 CNSquirrelAppendage.sq_AppendAppendage(oP_EINnqzQheA7JxA8LA, oP_EINnqzQheA7JxA8LA, 239, true, "character/atgunner/appendage/ap_cutin_ani.nut", true); 
 oP_EINnqzQheA7JxA8LA.sq_StopMove(); 
 oP_EINnqzQheA7JxA8LA.getVar().clear_vector(); 
 oP_EINnqzQheA7JxA8LA.getVar().clear_obj_vector(); 
 oP_EINnqzQheA7JxA8LA.sq_SetCurrentAnimation(124);
 oP_EINnqzQheA7JxA8LA.sq_SetCurrentAttackInfo(33);
 oP_EINnqzQheA7JxA8LA.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 break;
 }
} ;

function onAttack_atgunner_bloodnchain(LXhJU8Q9ffZ, rpHeYm3ZjSEz, lD4prLQVzxBoU3hdtqxtF, dZmm6QaY5oV)
{
 if(!LXhJU8Q9ffZ) return;
 local kfcKqvpuEJL = LXhJU8Q9ffZ.getSkillSubState();
 switch(kfcKqvpuEJL)
 {
 case 0:
 if(dZmm6QaY5oV || !rpHeYm3ZjSEz.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 local _vYbeW7yVtbeATS0WGgTdQO = sq_GetCurrentFrameIndex(LXhJU8Q9ffZ); 
 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(rpHeYm3ZjSEz, "character/atgunner/bloodnchain/ap_bloodnchain.nut"))
 {
 if(sq_IsHoldable(LXhJU8Q9ffZ, rpHeYm3ZjSEz)) 
 {
 local Zf_NCbcg0T = CNSquirrelAppendage.sq_AppendAppendage(rpHeYm3ZjSEz, LXhJU8Q9ffZ, 239, true, "character/atgunner/bloodnchain/ap_bloodnchain.nut", true);
 sq_HoldAndDelayDie(rpHeYm3ZjSEz, LXhJU8Q9ffZ, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, Zf_NCbcg0T);
 if(_vYbeW7yVtbeATS0WGgTdQO >= 19 && !sq_IsFixture(rpHeYm3ZjSEz) && sq_IsGrabable(LXhJU8Q9ffZ, rpHeYm3ZjSEz))
 {
 Zf_NCbcg0T.getVar().setBool(0, true); 
 sq_MoveToAppendage(rpHeYm3ZjSEz, LXhJU8Q9ffZ, LXhJU8Q9ffZ, 265, -20, 0, 100, true, Zf_NCbcg0T); 
 }
 LXhJU8Q9ffZ.getVar().push_obj_vector(rpHeYm3ZjSEz); 
 }
 }
 
 local TVGzxqI96Jp7vSoYGk = sq_GetXPos(rpHeYm3ZjSEz); 
 local RhGRUHWqahP8w = sq_GetYPos(rpHeYm3ZjSEz) + 1; 
 local rq5GsXxUkEe = sq_GetZPos(rpHeYm3ZjSEz); 
 local fzeELOBF6wFo7TZ0dA = sq_GetHeightObject(rpHeYm3ZjSEz); 
 if(_vYbeW7yVtbeATS0WGgTdQO < 16)
 onAddHitEff_atgunner_bloodnchain(LXhJU8Q9ffZ, "character/gunner/effect/animation/atbloodnchain/hit/bloodattc05.ani", TVGzxqI96Jp7vSoYGk, RhGRUHWqahP8w, rq5GsXxUkEe + fzeELOBF6wFo7TZ0dA / 2, false);
 else if(_vYbeW7yVtbeATS0WGgTdQO < 23)
 onAddHitEff_atgunner_bloodnchain(LXhJU8Q9ffZ, "character/gunner/effect/animation/atbloodnchain/hit/bloodattc05.ani", TVGzxqI96Jp7vSoYGk, RhGRUHWqahP8w, rq5GsXxUkEe + fzeELOBF6wFo7TZ0dA / 2, (fzeELOBF6wFo7TZ0dA / 120.0).tofloat());
 else
 onAddHitEff_atgunner_bloodnchain(LXhJU8Q9ffZ, "character/gunner/effect/animation/atbloodnchain/hit/bloodattc05.ani", TVGzxqI96Jp7vSoYGk, RhGRUHWqahP8w, rq5GsXxUkEe + fzeELOBF6wFo7TZ0dA / 2, false);
 break;
 }
} ;

function onKeyFrameFlag_atgunner_bloodnchain(Bm1HD18_Gr5ce0, dZh301_kvU_N)
{
 if(!Bm1HD18_Gr5ce0) return false;
 local gY13OoHRj_YeMNUHbsQ = sq_IsMyControlObject(Bm1HD18_Gr5ce0); 
 local MqbRXbyB8v9D3 = Bm1HD18_Gr5ce0.getSkillSubState(); 
 switch(MqbRXbyB8v9D3)
 {
 case 0:
 switch(dZh301_kvU_N)
 {
 case 1:
 if(gY13OoHRj_YeMNUHbsQ) sq_SetMyShake(Bm1HD18_Gr5ce0, 2, 100); 
 break;
 case 2:
 if(gY13OoHRj_YeMNUHbsQ) sq_SetMyShake(Bm1HD18_Gr5ce0, 7, 200); 
 break;
 case 3:
 if(gY13OoHRj_YeMNUHbsQ)
 {
 sq_SetMyShake(Bm1HD18_Gr5ce0, 5, 300); 
 sq_flashScreen(Bm1HD18_Gr5ce0, 50, 100, 150, 178, sq_RGB(128, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 Bm1HD18_Gr5ce0.resetHitObjectList(); 
 break;
 case 4:
 if(gY13OoHRj_YeMNUHbsQ) sq_SetMyShake(Bm1HD18_Gr5ce0, 2, 100); 
 break;
 case 5:
 local D9w2GCenHXSL23aEM = Bm1HD18_Gr5ce0.getVar().get_obj_vector_size(); 
 if(D9w2GCenHXSL23aEM <= 0)break;
 local cPY67gqq2ZxXJL = Bm1HD18_Gr5ce0.getVar(); 
 for(local myvRxnI4jdTL = 0; myvRxnI4jdTL < D9w2GCenHXSL23aEM; myvRxnI4jdTL++)
 {
 local QwEvbHfsJE = cPY67gqq2ZxXJL.get_obj_vector(myvRxnI4jdTL); 
 if(!QwEvbHfsJE) continue; 
 local JZRLp3C3LI = CNSquirrelAppendage.sq_GetAppendage(QwEvbHfsJE, "character/atgunner/bloodnchain/ap_bloodnchain.nut"); 
 if(!JZRLp3C3LI || JZRLp3C3LI.getVar().getBool(0) == true)continue; 
 if(!sq_IsFixture(QwEvbHfsJE) && sq_IsGrabable(Bm1HD18_Gr5ce0, QwEvbHfsJE)) 
 {
 JZRLp3C3LI.getVar().setBool(0, true); 
 sq_MoveToAppendage(QwEvbHfsJE, Bm1HD18_Gr5ce0, Bm1HD18_Gr5ce0, 265, -20, 0, 100, true, JZRLp3C3LI); 
 }
 }
 break;
 case 6:
 if(gY13OoHRj_YeMNUHbsQ) sq_SetMyShake(Bm1HD18_Gr5ce0, 10, 200); 
 Bm1HD18_Gr5ce0.resetHitObjectList(); 
 
 local QwEvbHfsJE = Bm1HD18_Gr5ce0.getVar().get_obj_vector(0); 
 if(QwEvbHfsJE)
 {
 local KTRxJWCHSdlQ0aBfF = sq_GetXPos(QwEvbHfsJE); 
 local q2YIWZniSN036b2dXX = sq_GetYPos(QwEvbHfsJE) + 1; 
 local k9CLXXLoXvGP = sq_GetZPos(QwEvbHfsJE); 
 local bjdMK82AVmJNHIuCb = sq_GetHeightObject(QwEvbHfsJE); 
 onAddHitEff_atgunner_bloodnchain(Bm1HD18_Gr5ce0, "character/gunner/effect/animation/atbloodnchain/hit/bloodattc05.ani", KTRxJWCHSdlQ0aBfF, q2YIWZniSN036b2dXX, k9CLXXLoXvGP + bjdMK82AVmJNHIuCb / 2, (bjdMK82AVmJNHIuCb / 120.0).tofloat());
 onAddHitEff_atgunner_bloodnchain(Bm1HD18_Gr5ce0, "character/gunner/effect/animation/atbloodnchain/hit/bloodfinishhitattach_1.ani", KTRxJWCHSdlQ0aBfF, q2YIWZniSN036b2dXX, k9CLXXLoXvGP + bjdMK82AVmJNHIuCb / 2, (bjdMK82AVmJNHIuCb / 120.0).tofloat());
 }
 break;
 case 7:
 break;
 case 8:
 if(gY13OoHRj_YeMNUHbsQ)
 {
 sq_SetMyShake(Bm1HD18_Gr5ce0, 3, 150); 
 sq_flashScreen(Bm1HD18_Gr5ce0, 50, 100, 50, 178, sq_RGB(128, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 }
 
 local QwEvbHfsJE = Bm1HD18_Gr5ce0.getVar().get_obj_vector(0); 
 if(QwEvbHfsJE)
 {
 local KTRxJWCHSdlQ0aBfF = sq_GetXPos(QwEvbHfsJE); 
 local q2YIWZniSN036b2dXX = sq_GetYPos(QwEvbHfsJE) + 1; 
 local k9CLXXLoXvGP = sq_GetZPos(QwEvbHfsJE); 
 local bjdMK82AVmJNHIuCb = sq_GetHeightObject(QwEvbHfsJE); 
 onAddHitEff_atgunner_bloodnchain(Bm1HD18_Gr5ce0, "character/gunner/effect/animation/atbloodnchain/hit/bloodhitattach_1.ani", KTRxJWCHSdlQ0aBfF, q2YIWZniSN036b2dXX, k9CLXXLoXvGP + bjdMK82AVmJNHIuCb / 2, (bjdMK82AVmJNHIuCb / 120.0).tofloat());
 }
 break;
 case 9:
 if(gY13OoHRj_YeMNUHbsQ) sq_SetMyShake(Bm1HD18_Gr5ce0, 5, 50); 
 break;
 case 10:
 if(gY13OoHRj_YeMNUHbsQ) sq_flashScreen(Bm1HD18_Gr5ce0, 500, 500, 1000, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 break;
 case 11:
 onDeleteAllAp_atgunner_bloodnchain(Bm1HD18_Gr5ce0); 
 if(gY13OoHRj_YeMNUHbsQ)
 {
 sq_SetMyShake(Bm1HD18_Gr5ce0, 20, 500); 
 sq_flashScreen(Bm1HD18_Gr5ce0, 50, 50, 150, 178, sq_RGB(128, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 local u0TXPPnWCtrnhSwN_Zpr6 = 140; 
 Bm1HD18_Gr5ce0.sq_StartWrite();
 Bm1HD18_Gr5ce0.sq_WriteDword(239); 
 Bm1HD18_Gr5ce0.sq_WriteDword(1); 
 Bm1HD18_Gr5ce0.sq_WriteDword(Bm1HD18_Gr5ce0.sq_GetBonusRateWithPassive(239, 239, 0, 1.0)); 
 Bm1HD18_Gr5ce0.sq_WriteDword(u0TXPPnWCtrnhSwN_Zpr6); 
 Bm1HD18_Gr5ce0.sq_SendCreatePassiveObjectPacket(24376, 0, 106, 0, 91);
 }
 break;
 }
 break;
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_bloodnchain(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return;
 if(!sq_IsMyControlObject(K5U2VMuTmU)) return;
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.getSkillSubState(); 
 switch(uFEX1yvudqwU9K3ow5lmjYve)
 {
 case 0:
 K5U2VMuTmU.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function getScrollBasisPos_atgunner_bloodnchain(K5U2VMuTmU)
{
 if(!K5U2VMuTmU) return;
 if(!K5U2VMuTmU.isMyControlObject())return;
 local uFEX1yvudqwU9K3ow5lmjYve = K5U2VMuTmU.getSkillSubState();
 switch(uFEX1yvudqwU9K3ow5lmjYve)
 {
 case 0:
 local TsB5TWcBrZHZi = K5U2VMuTmU.getCurrentAnimation(); 
 local ApF9KThveZU4n = sq_GetCurrentTime(TsB5TWcBrZHZi); 
 local yQzuhYlXQwO = sq_GetCurrentFrameIndex(K5U2VMuTmU);
 if(yQzuhYlXQwO < 38)
 {
 local AABNtjXKSyRvUnJ394 = TsB5TWcBrZHZi.getDelaySum(0, 5); 
 local R2fJTjmzRFFAWjoB = sq_GetDistancePos(K5U2VMuTmU.getXPos(), K5U2VMuTmU.getDirection(), sq_GetUniformVelocity(0, 300, ApF9KThveZU4n, AABNtjXKSyRvUnJ394)); 
 K5U2VMuTmU.sq_SetCameraScrollPosition(R2fJTjmzRFFAWjoB, K5U2VMuTmU.getYPos(), 0);
 return true;
 }
 else if(yQzuhYlXQwO < 41)
 {
 ApF9KThveZU4n -= TsB5TWcBrZHZi.getDelaySum(0, 37); 
 local AABNtjXKSyRvUnJ394 = TsB5TWcBrZHZi.getDelaySum(38, 40); 
 local jnUNu4Mv25fQ9xCkqfs1MOl = K5U2VMuTmU.getXPos(); 
 local R2fJTjmzRFFAWjoB = sq_GetUniformVelocity(sq_GetDistancePos(jnUNu4Mv25fQ9xCkqfs1MOl, K5U2VMuTmU.getDirection(), 300), jnUNu4Mv25fQ9xCkqfs1MOl, ApF9KThveZU4n, AABNtjXKSyRvUnJ394); 
 K5U2VMuTmU.sq_SetCameraScrollPosition(R2fJTjmzRFFAWjoB, K5U2VMuTmU.getYPos(), 0);
 return true;
 }
 break;
 }
 return false;
} ;

function onDeleteAllAp_atgunner_bloodnchain(BSo21LHz_vekX)
{
 if(!BSo21LHz_vekX) return;
 local f3zduxDjveFOvA = BSo21LHz_vekX.getVar().get_obj_vector_size(); 
 if(f3zduxDjveFOvA <= 0)return;
 local CAZksnCOYb = sq_GetXPos(BSo21LHz_vekX); 
 local fa0ovkpCgJYK6dkcy6upd4j = BSo21LHz_vekX.getVar(); 
 for(local Hp0mDsdHHgt = 0; Hp0mDsdHHgt < f3zduxDjveFOvA; Hp0mDsdHHgt++)
 {
 local vtUdhEdrtXF5X2UW = fa0ovkpCgJYK6dkcy6upd4j.get_obj_vector(Hp0mDsdHHgt); 
 if(!vtUdhEdrtXF5X2UW) continue; 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(vtUdhEdrtXF5X2UW, "character/atgunner/bloodnchain/ap_bloodnchain.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(vtUdhEdrtXF5X2UW, "character/atgunner/bloodnchain/ap_bloodnchain.nut");
 }
 BSo21LHz_vekX.getVar().clear_obj_vector(); 
} ;

function onAddHitEff_atgunner_bloodnchain(BSo21LHz_vekX, f3zduxDjveFOvA, CAZksnCOYb, fa0ovkpCgJYK6dkcy6upd4j, Hp0mDsdHHgt, vtUdhEdrtXF5X2UW)
{
 if(!BSo21LHz_vekX) return;
 local dbwCXcekA83xK2O = sq_CreateAnimation("", f3zduxDjveFOvA); 
 if(vtUdhEdrtXF5X2UW != false)
 {
 dbwCXcekA83xK2O.setImageRateFromOriginal(vtUdhEdrtXF5X2UW, vtUdhEdrtXF5X2UW); 
 dbwCXcekA83xK2O.setAutoLayerWorkAnimationAddSizeRate(vtUdhEdrtXF5X2UW); 
 }
 local q51jXCSOeZZ = sq_CreatePooledObject(dbwCXcekA83xK2O, true); 
 sq_SetCurrentDirection(q51jXCSOeZZ, BSo21LHz_vekX.getDirection()); 
 q51jXCSOeZZ.setCurrentPos(CAZksnCOYb, fa0ovkpCgJYK6dkcy6upd4j, Hp0mDsdHHgt); 
 q51jXCSOeZZ = sq_SetEnumDrawLayer(q51jXCSOeZZ, ENUM_DRAWLAYER_NORMAL); 
 sq_AddObject(BSo21LHz_vekX, q51jXCSOeZZ, OBJECTTYPE_DRAWONLY, false); 
} ;


