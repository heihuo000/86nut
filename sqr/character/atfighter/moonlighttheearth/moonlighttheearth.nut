
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atfighter_moonlighttheearth(_qV7y1mSVObiiEzFP)
{
 if(!_qV7y1mSVObiiEzFP) return false; 
 local kfa9we4p0FvH9lD = _qV7y1mSVObiiEzFP.sq_IsUseSkill(221); 
 if(kfa9we4p0FvH9lD) 
 {
 _qV7y1mSVObiiEzFP.sq_IntVectClear();
 _qV7y1mSVObiiEzFP.sq_IntVectPush(0); 
 _qV7y1mSVObiiEzFP.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atfighter_moonlighttheearth(AdssrwWAJx1iEHlcYFvcyJ)
{
 if(!AdssrwWAJx1iEHlcYFvcyJ) return false; 
 local Gf3CehPfZwSnBxuqI7qdg = AdssrwWAJx1iEHlcYFvcyJ.sq_GetState(); 
 if(Gf3CehPfZwSnBxuqI7qdg == STATE_STAND) 
 return true; 
 if(Gf3CehPfZwSnBxuqI7qdg == STATE_ATTACK) 
 {
 return AdssrwWAJx1iEHlcYFvcyJ.sq_IsCommandEnable(221); 
 }
 return true; 
} ;

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_atfighter_moonlighttheearth(AdssrwWAJx1iEHlcYFvcyJ, Gf3CehPfZwSnBxuqI7qdg, jvl9UXckHEJQmMqiga6785Ki, qgEHf4cgG3bz2AJLk)
{
 if(!AdssrwWAJx1iEHlcYFvcyJ) return; 
 local iOfVo0jPKyuJrUq = AdssrwWAJx1iEHlcYFvcyJ.sq_GetVectorData(jvl9UXckHEJQmMqiga6785Ki, 0); 
 AdssrwWAJx1iEHlcYFvcyJ.setSkillSubState(iOfVo0jPKyuJrUq); 
 switch(iOfVo0jPKyuJrUq)
 {
 case 0:
 AdssrwWAJx1iEHlcYFvcyJ.sq_StopMove(); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetCurrentAnimation(142);
 AdssrwWAJx1iEHlcYFvcyJ.sq_PlaySound("MF_MOONLIGHT_EARTH"); 
 break;
 case 1:
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetCurrentAnimation(143);
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetCurrentAttackInfo(86);
 local OcXEknaeSVRGsQuyIPO = AdssrwWAJx1iEHlcYFvcyJ.sq_GetBonusRateWithPassive(221, Gf3CehPfZwSnBxuqI7qdg, 2, 1.0); 
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetCurrentAttackBonusRate(OcXEknaeSVRGsQuyIPO); 
 local i56WhTry7MJLoh5sMH = sq_GetSkillLevel(AdssrwWAJx1iEHlcYFvcyJ, 221); 
 local YgwqdgRfu_18cNEcmhorGa5 = AdssrwWAJx1iEHlcYFvcyJ.sq_GetLevelData(221, 0, i56WhTry7MJLoh5sMH); 
 local H5ScBcVuKG7 = AdssrwWAJx1iEHlcYFvcyJ.sq_GetLevelData(221, 1, i56WhTry7MJLoh5sMH); 
 AdssrwWAJx1iEHlcYFvcyJ.getVar().clear_timer_vector();
 AdssrwWAJx1iEHlcYFvcyJ.getVar().push_timer_vector();
 local NVArDuNu6KsX = AdssrwWAJx1iEHlcYFvcyJ.getVar().get_timer_vector(0);
 NVArDuNu6KsX.setParameter(YgwqdgRfu_18cNEcmhorGa5 / H5ScBcVuKG7, H5ScBcVuKG7); 
 NVArDuNu6KsX.setEventOnStart(true); 
 NVArDuNu6KsX.resetInstant(0); 
 break;
 case 2:
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetCurrentAnimation(144);
 break;
 }
 AdssrwWAJx1iEHlcYFvcyJ.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

 
function onEndCurrentAni_atfighter_moonlighttheearth(H1Nsp49mua)
{
 if(!H1Nsp49mua) return;
 if(!H1Nsp49mua.sq_IsMyControlObject()) return;
 local YAvHbZRvEK5EG = H1Nsp49mua.getSkillSubState(); 
 if(YAvHbZRvEK5EG != 2)
 {
 H1Nsp49mua.sq_IntVectClear();
 H1Nsp49mua.sq_IntVectPush(YAvHbZRvEK5EG + 1); 
 H1Nsp49mua.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 }
 else
 H1Nsp49mua.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

 
function onProcCon_atfighter_moonlighttheearth(mrfmoyqnq7PW3OGu)
{
 if(!mrfmoyqnq7PW3OGu) return;
 local ePADGefWz2wu5SFdqQZvp = mrfmoyqnq7PW3OGu.getSkillSubState(); 
 if(ePADGefWz2wu5SFdqQZvp == 1)
 {
 local Hw3Uqdpu2d84Y0tTU0_MJe = mrfmoyqnq7PW3OGu.getVar().get_timer_vector(0); 
 if(!Hw3Uqdpu2d84Y0tTU0_MJe) return; 
 if(Hw3Uqdpu2d84Y0tTU0_MJe.isOnEvent(mrfmoyqnq7PW3OGu.sq_GetStateTimer()) == true) 
 {
 local h5fVtX8VAxeBmO711or_H805 = mrfmoyqnq7PW3OGu.getXPos(); 
 local ibXLbs2mwDWGj4fXkgWz4 = mrfmoyqnq7PW3OGu.getYPos(); 
 local Bn_MUErw94iq5dt3r89d = mrfmoyqnq7PW3OGu.getZPos(); 
 local BbtWrK6fAhROzWs = 300; 
 local RUjd0Rvbu_0YfwlpOo_1Dfl = 130; 
 local yGjYTlEDZwYzA0dp1IstJ = 300; 
 local qmNa0qEa7wrTyreJ = mrfmoyqnq7PW3OGu.getObjectManager(); 
 local JfyFev_mIBU041tVUFKOplk = qmNa0qEa7wrTyreJ.getCollisionObjectNumber(); 
 for(local R3zu6D86qGbJ = 0; R3zu6D86qGbJ < JfyFev_mIBU041tVUFKOplk; R3zu6D86qGbJ++)
 {
 local OG2NSptVa39MOmjd9Qs = qmNa0qEa7wrTyreJ.getCollisionObject(R3zu6D86qGbJ); 
 if(!mrfmoyqnq7PW3OGu.isEnemy(OG2NSptVa39MOmjd9Qs) || !OG2NSptVa39MOmjd9Qs || !OG2NSptVa39MOmjd9Qs.isInDamagableState(mrfmoyqnq7PW3OGu)) continue; 
 if(sq_Abs(h5fVtX8VAxeBmO711or_H805 - sq_GetXPos(OG2NSptVa39MOmjd9Qs)) > BbtWrK6fAhROzWs
 || sq_Abs(ibXLbs2mwDWGj4fXkgWz4 - sq_GetYPos(OG2NSptVa39MOmjd9Qs)) > RUjd0Rvbu_0YfwlpOo_1Dfl
 || sq_Abs(Bn_MUErw94iq5dt3r89d - sq_GetZPos(OG2NSptVa39MOmjd9Qs)) > yGjYTlEDZwYzA0dp1IstJ) continue; 
 local tr93AzVGQJucga1_GAn8rtt = sq_GetCNRDObjectToActiveObject(OG2NSptVa39MOmjd9Qs); 
 if(tr93AzVGQJucga1_GAn8rtt)
 {
 if(!tr93AzVGQJucga1_GAn8rtt.isDead())
 sq_SendHitObjectPacket(mrfmoyqnq7PW3OGu, OG2NSptVa39MOmjd9Qs, 0, 0, sq_GetHeightObject(OG2NSptVa39MOmjd9Qs) / 2); 
 }
 else if(OG2NSptVa39MOmjd9Qs.isObjectType(OBJECTTYPE_PASSIVE))
 sq_SendHitObjectPacket(mrfmoyqnq7PW3OGu, OG2NSptVa39MOmjd9Qs, 0, 0, sq_GetHeightObject(OG2NSptVa39MOmjd9Qs) / 2); 
 }
 sq_SetMyShake(mrfmoyqnq7PW3OGu, 3, Hw3Uqdpu2d84Y0tTU0_MJe.getEventTerm()); 
 }
 if(Hw3Uqdpu2d84Y0tTU0_MJe.isEnd()) 
 {
 mrfmoyqnq7PW3OGu.sq_IntVectClear();
 mrfmoyqnq7PW3OGu.sq_IntVectPush(ePADGefWz2wu5SFdqQZvp + 1); 
 mrfmoyqnq7PW3OGu.sq_AddSetStatePacket(221, STATE_PRIORITY_USER, true); 
 }
 }
} ;


