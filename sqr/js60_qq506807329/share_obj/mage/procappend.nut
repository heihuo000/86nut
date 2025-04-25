
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function procAppend_po_qq506807329new_mage_24372(_5ALPW4YtE881_z0dEM)
{
 if(!_5ALPW4YtE881_z0dEM) return;
 local SI3uOQbPgM = _5ALPW4YtE881_z0dEM.getVar("skill").get_vector(0);
 switch(SI3uOQbPgM)
 {
 case 242: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 10: 
 local h2zq83sitS9fI5r1xR0CmDf = _5ALPW4YtE881_z0dEM.getVar("aniobj").get_obj_vector(0); 
 if(h2zq83sitS9fI5r1xR0CmDf && sq_IsEnd(h2zq83sitS9fI5r1xR0CmDf.getCurrentAnimation())) 
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 {
 
 local H8C796M1GjErvO = sq_GetGlobalIntVector();
 sq_IntVectorClear(H8C796M1GjErvO);
 _5ALPW4YtE881_z0dEM.addSetStatePacket(11, H8C796M1GjErvO, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 11: 
 local VHLIVHmSbgrhuB3dvYqg08 = _5ALPW4YtE881_z0dEM.getVar("move"); 
 local i8D8Quz0cDF65 = _5ALPW4YtE881_z0dEM.getVar("moveStart"); 
 local tkxrfgAVIP5A46ndaJDW = _5ALPW4YtE881_z0dEM.getVar("aniobj"); 
 local RqIMc3fPRxJNYkrIqRSz = tkxrfgAVIP5A46ndaJDW.get_obj_vector_size(); 
 local b32Jwfl9lBacB = sq_GetObjectTime(_5ALPW4YtE881_z0dEM) - tkxrfgAVIP5A46ndaJDW.get_vector(0); 
 for(local gGtZade3tyDjUsYqe1 = 0; gGtZade3tyDjUsYqe1 < RqIMc3fPRxJNYkrIqRSz; gGtZade3tyDjUsYqe1++)
 {
 local h2zq83sitS9fI5r1xR0CmDf = tkxrfgAVIP5A46ndaJDW.get_obj_vector(gGtZade3tyDjUsYqe1); 
 if(h2zq83sitS9fI5r1xR0CmDf)
 {
 local nIXBZVSj60hHF4DO7 = VHLIVHmSbgrhuB3dvYqg08.get_vector(gGtZade3tyDjUsYqe1 * 2 + 1); 
 local hAoflkq95mTlTLIAo = (VHLIVHmSbgrhuB3dvYqg08.get_vector(gGtZade3tyDjUsYqe1 * 2) + 360 * b32Jwfl9lBacB / nIXBZVSj60hHF4DO7) % 360; 
 local HhFtlW1vOpK4n_G5XGr5 = i8D8Quz0cDF65.get_vector(gGtZade3tyDjUsYqe1) + 10 * sq_SinTable(hAoflkq95mTlTLIAo); 
 sq_setCurrentAxisPos(h2zq83sitS9fI5r1xR0CmDf, 2, HhFtlW1vOpK4n_G5XGr5.tointeger()); 
 }
 }
 break;
 case 12: 
 if(_5ALPW4YtE881_z0dEM.isExistTimeEvent(2))return; 
 local tkxrfgAVIP5A46ndaJDW = _5ALPW4YtE881_z0dEM.getVar("aniobj"); 
 local RqIMc3fPRxJNYkrIqRSz = tkxrfgAVIP5A46ndaJDW.get_obj_vector_size(); 
 for(local gGtZade3tyDjUsYqe1 = 0; gGtZade3tyDjUsYqe1 < RqIMc3fPRxJNYkrIqRSz; gGtZade3tyDjUsYqe1++)
 {
 local h2zq83sitS9fI5r1xR0CmDf = tkxrfgAVIP5A46ndaJDW.get_obj_vector(gGtZade3tyDjUsYqe1); 
 if(h2zq83sitS9fI5r1xR0CmDf && !sq_IsEnd(h2zq83sitS9fI5r1xR0CmDf.getCurrentAnimation())) 
 return;
 }
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 break;
 }
 break;
 case 249: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 10: 
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local xWY2Th54ybOq3jLqz = _5ALPW4YtE881_z0dEM.getVar("aniobj"); 
 local RqIMc3fPRxJNYkrIqRSz = xWY2Th54ybOq3jLqz.get_obj_vector_size(); 
 if(RqIMc3fPRxJNYkrIqRSz <= 0)return;
 local NNujO2bUwWi = sq_GetUniformVelocity(200, 0, b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 for(local gGtZade3tyDjUsYqe1 = 0; gGtZade3tyDjUsYqe1 < RqIMc3fPRxJNYkrIqRSz; gGtZade3tyDjUsYqe1++)
 {
 local h2zq83sitS9fI5r1xR0CmDf = xWY2Th54ybOq3jLqz.get_obj_vector(gGtZade3tyDjUsYqe1); 
 local hvm_YoyIMA = h2zq83sitS9fI5r1xR0CmDf.getCurrentAnimation(); 
 local v2qq6lkvc9ALVuBQ = sq_AniLayerListSize(hvm_YoyIMA); 
 for(local jQoJYTQK_Ac = 0; jQoJYTQK_Ac < v2qq6lkvc9ALVuBQ; jQoJYTQK_Ac++)
 {
 local _LMY1nsQ40BzcKLn = sq_getAniLayerListObject(hvm_YoyIMA, jQoJYTQK_Ac); 
 _LMY1nsQ40BzcKLn.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 hvm_YoyIMA.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 break;
 }
 break;
 case 250: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").getBool(0); 
 if(MDsCy_LMM99CUMVkREyXZBB == 10)
 {
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local NNujO2bUwWi = sq_GetUniformVelocity(30, 255, b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 MuSVlMOqvRSbetB7Tnk.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 break;
 case 251: 
 if(_5ALPW4YtE881_z0dEM.getVar("loop").getBool(0) == false) 
 {
 local vGQtFslW8ch9RDQli3l = _5ALPW4YtE881_z0dEM.getVar("aniobj"); 
 local CYssschoh9Alt4ggjtq = vGQtFslW8ch9RDQli3l.get_obj_vector(0); 
 if(sq_IsEnd(CYssschoh9Alt4ggjtq.getCurrentAnimation())) 
 {
 local TUiVZAKkUisBtj = _5ALPW4YtE881_z0dEM.getVar().get_vector(0); 
 local GlyZoVqwMDBCngw23Z94r = TUiVZAKkUisBtj.tofloat() / 100.0; 
 local vlEYMR8GFtGaRBq = vGQtFslW8ch9RDQli3l.get_obj_vector(1); 
 local Xfjco9BHo2xto35 = vGQtFslW8ch9RDQli3l.get_obj_vector(2); 
 local Wf1FuRBb2qMP7tA = sq_CreateAnimation("", "character/mage/effect/animation/crystalofovermind/loop/crystalofmind_side_back01.ani"); 
 local ZO0DYP5icFfB8 = sq_CreateAnimation("", "character/mage/effect/animation/crystalofovermind/loop/crystalofmind_side_front_loop01.ani"); 
 local WA8lGuCg5yjZl7wtO4otfQ3 = sq_CreateAnimation("", "character/mage/effect/animation/crystalofovermind/loop/crystalofovermind_background_01.ani"); 
 Wf1FuRBb2qMP7tA.setImageRateFromOriginal(GlyZoVqwMDBCngw23Z94r, GlyZoVqwMDBCngw23Z94r); 
 Wf1FuRBb2qMP7tA.setAutoLayerWorkAnimationAddSizeRate(GlyZoVqwMDBCngw23Z94r); 
 ZO0DYP5icFfB8.setImageRateFromOriginal(GlyZoVqwMDBCngw23Z94r, GlyZoVqwMDBCngw23Z94r); 
 ZO0DYP5icFfB8.setAutoLayerWorkAnimationAddSizeRate(GlyZoVqwMDBCngw23Z94r); 
 WA8lGuCg5yjZl7wtO4otfQ3.setImageRateFromOriginal(GlyZoVqwMDBCngw23Z94r, GlyZoVqwMDBCngw23Z94r); 
 WA8lGuCg5yjZl7wtO4otfQ3.setAutoLayerWorkAnimationAddSizeRate(GlyZoVqwMDBCngw23Z94r); 
 
 CYssschoh9Alt4ggjtq.setCurrentAnimation(Wf1FuRBb2qMP7tA);
 vlEYMR8GFtGaRBq.setCurrentAnimation(ZO0DYP5icFfB8);
 Xfjco9BHo2xto35.setCurrentAnimation(WA8lGuCg5yjZl7wtO4otfQ3);
 _5ALPW4YtE881_z0dEM.getVar("loop").setBool(0, true); 
 }
 }
 else if(_5ALPW4YtE881_z0dEM.getVar("state").get_vector(0) == 14) 
 {
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local NNujO2bUwWi = sq_GetUniformVelocity(255, 0, b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 local Xfjco9BHo2xto35 = _5ALPW4YtE881_z0dEM.getVar("aniobj").get_obj_vector(2); 
 local hvm_YoyIMA = Xfjco9BHo2xto35.getCurrentAnimation(); 
 local v2qq6lkvc9ALVuBQ = sq_AniLayerListSize(hvm_YoyIMA); 
 for(local jQoJYTQK_Ac = 0; jQoJYTQK_Ac < v2qq6lkvc9ALVuBQ; jQoJYTQK_Ac++)
 {
 local _LMY1nsQ40BzcKLn = sq_getAniLayerListObject(hvm_YoyIMA, jQoJYTQK_Ac); 
 _LMY1nsQ40BzcKLn.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 hvm_YoyIMA.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 break;
 case 252: 
 local pLSp4G_CSbK_aGmPbAJ54oLF = _5ALPW4YtE881_z0dEM.getVar("subType").get_vector(0);
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 switch(pLSp4G_CSbK_aGmPbAJ54oLF)
 {
 case 1:
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 {
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 10:
 case 11:
 local gCVoaQyPsGJcOsyLmHLX0V = sq_GetCNRDObjectToActiveObject(sq_GetMoveParent(_5ALPW4YtE881_z0dEM)); 
 if(!gCVoaQyPsGJcOsyLmHLX0V || gCVoaQyPsGJcOsyLmHLX0V.isDead()) 
 {
 
 local H8C796M1GjErvO = sq_GetGlobalIntVector();
 sq_IntVectorClear(H8C796M1GjErvO);
 _5ALPW4YtE881_z0dEM.addSetStatePacket(12, H8C796M1GjErvO, STATE_PRIORITY_AUTO, false, ""); 
 return;
 }
 break;
 }
 }
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 10: 
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local NNujO2bUwWi = sq_GetUniformVelocity(0, 255, b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 local UcwV8STFCpdx = sq_AniLayerListSize(MuSVlMOqvRSbetB7Tnk); 
 for(local jQoJYTQK_Ac = 0; jQoJYTQK_Ac < UcwV8STFCpdx; jQoJYTQK_Ac++)
 {
 local Xosp697pWK7vvHLUh = sq_getAniLayerListObject(MuSVlMOqvRSbetB7Tnk, jQoJYTQK_Ac); 
 Xosp697pWK7vvHLUh.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 MuSVlMOqvRSbetB7Tnk.setRGBA(255, 255, 255, NNujO2bUwWi); 
 break;
 case 12: 
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local NNujO2bUwWi = sq_GetUniformVelocity(255, 0, b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 local UcwV8STFCpdx = sq_AniLayerListSize(MuSVlMOqvRSbetB7Tnk); 
 for(local jQoJYTQK_Ac = 0; jQoJYTQK_Ac < UcwV8STFCpdx; jQoJYTQK_Ac++)
 {
 local Xosp697pWK7vvHLUh = sq_getAniLayerListObject(MuSVlMOqvRSbetB7Tnk, jQoJYTQK_Ac); 
 Xosp697pWK7vvHLUh.setRGBA(255, 255, 255, NNujO2bUwWi); 
 }
 MuSVlMOqvRSbetB7Tnk.setRGBA(255, 255, 255, NNujO2bUwWi); 
 break;
 }
 break;
 case 2:
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 {
 if(_5ALPW4YtE881_z0dEM.getZPos() <= 0)
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 }
 break;
 }
 break;
 case 253: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 if(MDsCy_LMM99CUMVkREyXZBB != 10) 
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 {
 local ndPuAa7XDHCerQnrr = _5ALPW4YtE881_z0dEM.getParent(); 
 if(!ndPuAa7XDHCerQnrr)
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 }
 local xEkvkdmmw1Xwcr9FAebMFPP = _5ALPW4YtE881_z0dEM.getVar().get_vector(0); 
 setRangeObjectPosEx(_5ALPW4YtE881_z0dEM, 420, 0, 150, ENUM_DIRECTION_NEUTRAL, 0, 800, 260, xEkvkdmmw1Xwcr9FAebMFPP); 
 }
 break;
 case 133: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 if(MDsCy_LMM99CUMVkREyXZBB == 11) 
 {
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = 150; 
 local VHLIVHmSbgrhuB3dvYqg08 = _5ALPW4YtE881_z0dEM.getVar("move"); 
 local dCO66MBFwkp = sq_GetUniformVelocity(VHLIVHmSbgrhuB3dvYqg08.get_vector(0), VHLIVHmSbgrhuB3dvYqg08.get_vector(3), b32Jwfl9lBacB, nIXBZVSj60hHF4DO7);
 local QNGTBOGz_MQRF4JfPqgHij = sq_GetUniformVelocity(VHLIVHmSbgrhuB3dvYqg08.get_vector(1), VHLIVHmSbgrhuB3dvYqg08.get_vector(4), b32Jwfl9lBacB, nIXBZVSj60hHF4DO7);
 local HhFtlW1vOpK4n_G5XGr5 = sq_GetUniformVelocity(VHLIVHmSbgrhuB3dvYqg08.get_vector(2), VHLIVHmSbgrhuB3dvYqg08.get_vector(5), b32Jwfl9lBacB, nIXBZVSj60hHF4DO7);
 _5ALPW4YtE881_z0dEM.setCurrentPos(dCO66MBFwkp, QNGTBOGz_MQRF4JfPqgHij, HhFtlW1vOpK4n_G5XGr5); 
 local p16us4a29Q312xm4bGrAs = _5ALPW4YtE881_z0dEM.getVar().get_timer_vector(0);
 if(p16us4a29Q312xm4bGrAs)
 {
 if(p16us4a29Q312xm4bGrAs.isOnEvent(sq_GetObjectTime(_5ALPW4YtE881_z0dEM)) == true)
 {
 local grcalCLsla1WTy = _5ALPW4YtE881_z0dEM.getVar().get_vector(0); 
 local oYdXasRPleUp8B = (grcalCLsla1WTy == 1)
 ? "particle_white.ani" 
 : "particle_black.ani"; 
 local h2zq83sitS9fI5r1xR0CmDf = sq_AddDrawOnlyAniFromParent(_5ALPW4YtE881_z0dEM, "passiveobject/script_sqr_nut_qq506807329/mage/animation/lollipopcrush/" + oYdXasRPleUp8B, 0, -1, 0);
 _5ALPW4YtE881_z0dEM.getVar("aniobj").push_obj_vector(h2zq83sitS9fI5r1xR0CmDf); 
 }
 }
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 if(b32Jwfl9lBacB >= nIXBZVSj60hHF4DO7) 
 {
 local H8C796M1GjErvO = sq_GetGlobalIntVector();
 sq_IntVectorClear(H8C796M1GjErvO);
 _5ALPW4YtE881_z0dEM.addSetStatePacket(12, H8C796M1GjErvO, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 132: 
 local pLSp4G_CSbK_aGmPbAJ54oLF = _5ALPW4YtE881_z0dEM.getVar("subType").get_vector(0); 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 switch(pLSp4G_CSbK_aGmPbAJ54oLF)
 {
 case 1: 
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 10:
 case 11:
 local CYssschoh9Alt4ggjtq = _5ALPW4YtE881_z0dEM.getVar("aniobj").get_obj_vector(0); 
 if(CYssschoh9Alt4ggjtq && sq_IsEnd(CYssschoh9Alt4ggjtq.getCurrentAnimation())) 
 CYssschoh9Alt4ggjtq.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/jackfrosticewater/loop/jackfrosticewaterloopfloortwister_01.ani")); 
 local vlEYMR8GFtGaRBq = _5ALPW4YtE881_z0dEM.getVar("aniobj").get_obj_vector(1); 
 if(vlEYMR8GFtGaRBq && sq_IsEnd(vlEYMR8GFtGaRBq.getCurrentAnimation())) 
 vlEYMR8GFtGaRBq.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/jackfrosticewater/loop/jackfrosticewaterloopfloor_01.ani")); 
 local Xfjco9BHo2xto35 = _5ALPW4YtE881_z0dEM.getVar("aniobj").get_obj_vector(2); 
 if(Xfjco9BHo2xto35 && sq_IsEnd(Xfjco9BHo2xto35.getCurrentAnimation())) 
 Xfjco9BHo2xto35.setCurrentAnimation(sq_CreateAnimation("", "character/mage/effect/animation/jackfrosticewater/loop/jackfrosticewaterloopfront_06.ani")); 
 
 local p16us4a29Q312xm4bGrAs = _5ALPW4YtE881_z0dEM.getVar().get_timer_vector(0);
 if(p16us4a29Q312xm4bGrAs)
 {
 if(p16us4a29Q312xm4bGrAs.isOnEvent(sq_GetObjectTime(_5ALPW4YtE881_z0dEM)) == true) 
 {
 _5ALPW4YtE881_z0dEM.resetHitObjectList(); 
 local XnK9xz7Wr1vW = _5ALPW4YtE881_z0dEM.getMyPassiveObject(24372, 0); 
 if(XnK9xz7Wr1vW) XnK9xz7Wr1vW.resetHitObjectList(); 
 }
 }
 break;
 }
 break;
 }
 break;
 case 136: 
 local pLSp4G_CSbK_aGmPbAJ54oLF = _5ALPW4YtE881_z0dEM.getVar("subType").get_vector(0); 
 switch(pLSp4G_CSbK_aGmPbAJ54oLF)
 {
 case 1: 
 local ndPuAa7XDHCerQnrr = _5ALPW4YtE881_z0dEM.getParent(); 
 if(!ndPuAa7XDHCerQnrr)
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 return;
 }
 break;
 }
 break;
 case 139: 
 local pLSp4G_CSbK_aGmPbAJ54oLF = _5ALPW4YtE881_z0dEM.getVar("subType").get_vector(0); 
 switch(pLSp4G_CSbK_aGmPbAJ54oLF)
 {
 case 1: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 switch(MDsCy_LMM99CUMVkREyXZBB)
 {
 case 11: 
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = 250; 
 local dCO66MBFwkp = sq_GetUniformVelocity(_5ALPW4YtE881_z0dEM.getVar().get_vector(0),
 _5ALPW4YtE881_z0dEM.getVar().get_vector(1), b32Jwfl9lBacB, nIXBZVSj60hHF4DO7);
 sq_setCurrentAxisPos(_5ALPW4YtE881_z0dEM, 0, dCO66MBFwkp); 
 if(b32Jwfl9lBacB >= nIXBZVSj60hHF4DO7) 
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 {
 local H8C796M1GjErvO = sq_GetGlobalIntVector();
 sq_IntVectorClear(H8C796M1GjErvO);
 _5ALPW4YtE881_z0dEM.addSetStatePacket(12, H8C796M1GjErvO, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 }
 break;
 case 2: 
 local ndPuAa7XDHCerQnrr = _5ALPW4YtE881_z0dEM.getParent(); 
 if(!ndPuAa7XDHCerQnrr)
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 return;
 }
 break;
 case 3: 
 local MDsCy_LMM99CUMVkREyXZBB = _5ALPW4YtE881_z0dEM.getVar("state").get_vector(0); 
 if(MDsCy_LMM99CUMVkREyXZBB == 10)
 {
 local MuSVlMOqvRSbetB7Tnk = _5ALPW4YtE881_z0dEM.getCurrentAnimation(); 
 local b32Jwfl9lBacB = sq_GetCurrentTime(MuSVlMOqvRSbetB7Tnk); 
 local nIXBZVSj60hHF4DO7 = MuSVlMOqvRSbetB7Tnk.getDelaySum(false); 
 local dCO66MBFwkp = sq_GetUniformVelocity(_5ALPW4YtE881_z0dEM.getVar("move").get_vector(0),
 _5ALPW4YtE881_z0dEM.getVar("move").get_vector(1), b32Jwfl9lBacB, nIXBZVSj60hHF4DO7); 
 sq_setCurrentAxisPos(_5ALPW4YtE881_z0dEM, 0, dCO66MBFwkp); 
 }
 break;
 }
 break;
 case 138: 
 local pLSp4G_CSbK_aGmPbAJ54oLF = _5ALPW4YtE881_z0dEM.getVar("subType").get_vector(0); 
 if(pLSp4G_CSbK_aGmPbAJ54oLF == 1)
 {
 local ndPuAa7XDHCerQnrr = _5ALPW4YtE881_z0dEM.getParent(); 
 if(!ndPuAa7XDHCerQnrr)
 {
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 return;
 }
 }
 break;
 default: 
 
 if(_5ALPW4YtE881_z0dEM.getVar("isProc").getBool(0) == true)return;
 _5ALPW4YtE881_z0dEM.getVar("isProc").setBool(0, true); 
 local ndPuAa7XDHCerQnrr = _5ALPW4YtE881_z0dEM.getParent(); 
 if(!ndPuAa7XDHCerQnrr.isObjectType(OBJECTTYPE_MONSTER))return; 
 local ciZ_rYgFO0B6HrQZZoZTkU = _5ALPW4YtE881_z0dEM.getTopCharacter(); 
 if(!ciZ_rYgFO0B6HrQZZoZTkU || sq_getJob(ciZ_rYgFO0B6HrQZZoZTkU) != ENUM_CHARACTERJOB_MAGE) 
 {
 if(ndPuAa7XDHCerQnrr.isMyControlObject())
 ndPuAa7XDHCerQnrr.sendDestroyPacket(true); 
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 return;
 }
 local ZchzYt5U4Rln7pfKpYkg3 = _5ALPW4YtE881_z0dEM.getZPos(); 
 switch(ZchzYt5U4Rln7pfKpYkg3)
 {
 case 10000 + 1111: 
 if(ndPuAa7XDHCerQnrr.getCollisionObjectIndex() == 50680731) 
 if(ciZ_rYgFO0B6HrQZZoZTkU.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetGroup(ndPuAa7XDHCerQnrr)); 
 sq_BinaryWriteDword(sq_GetUniqueId(ndPuAa7XDHCerQnrr)); 
 sq_SendChangeSkillEffectPacket(ciZ_rYgFO0B6HrQZZoZTkU, 136); 
 }
 break;
 case 10000 + 1113: 
 if(ndPuAa7XDHCerQnrr.getCollisionObjectIndex() == 50680733) 
 if(ciZ_rYgFO0B6HrQZZoZTkU.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetGroup(ndPuAa7XDHCerQnrr)); 
 sq_BinaryWriteDword(sq_GetUniqueId(ndPuAa7XDHCerQnrr)); 
 sq_SendChangeSkillEffectPacket(ciZ_rYgFO0B6HrQZZoZTkU, 138); 
 }
 break;
 case 10000 + 1112: 
 if(ndPuAa7XDHCerQnrr.getCollisionObjectIndex() == 50680732) 
 if(ciZ_rYgFO0B6HrQZZoZTkU.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(sq_GetGroup(ndPuAa7XDHCerQnrr)); 
 sq_BinaryWriteDword(sq_GetUniqueId(ndPuAa7XDHCerQnrr)); 
 sq_SendChangeSkillEffectPacket(ciZ_rYgFO0B6HrQZZoZTkU, 139); 
 }
 break;
 }
 if(_5ALPW4YtE881_z0dEM.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(_5ALPW4YtE881_z0dEM); 
 break;
 }
} ;
 
