
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function checkExecutableSkill_fighter_saintillusion(Uv8N7K680yJqcd8)
{
 if(!Uv8N7K680yJqcd8) return false; 
 local zJWIR6KodfovUO4maka = Uv8N7K680yJqcd8.sq_IsUseSkill(226); 
 if(zJWIR6KodfovUO4maka) 
 {
 Uv8N7K680yJqcd8.sq_IntVectClear();
 Uv8N7K680yJqcd8.sq_IntVectPush(0); 
 Uv8N7K680yJqcd8.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_fighter_saintillusion(q_aPtQT_bonz)
{
 if(!q_aPtQT_bonz) return false; 
 local ZvNUyhUpT5D0uQ = q_aPtQT_bonz.sq_GetState(); 
 if(ZvNUyhUpT5D0uQ == STATE_STAND) 
 return true; 
 if(ZvNUyhUpT5D0uQ == STATE_ATTACK) 
 {
 return q_aPtQT_bonz.sq_IsCommandEnable(226); 
 }
 return true; 
} ;

 
function onSetState_fighter_saintillusion(q_aPtQT_bonz, ZvNUyhUpT5D0uQ, Gy1WOUMVzrFEhgE4Wmv, Iga6h7LfCmON__touBDRZQ)
{
 if(!q_aPtQT_bonz) return; 
 q_aPtQT_bonz.sq_StopMove(); 
 local nlFuC10qlAP1fCCwQ = q_aPtQT_bonz.sq_GetVectorData(Gy1WOUMVzrFEhgE4Wmv, 0); 
 q_aPtQT_bonz.setSkillSubState(nlFuC10qlAP1fCCwQ); 
 switch(nlFuC10qlAP1fCCwQ)
 {
 case 0: 
 q_aPtQT_bonz.sq_PlaySound("FT_SAINTILLUSION_01");
 q_aPtQT_bonz.sq_SetCurrentAnimation(101);
 local Y0XcJRjqaGTFXM3XLYRKBs = sq_GetSkillLevel(q_aPtQT_bonz, 226); 
 local xuriNKfdDeHimWNEqJSOebY = sq_GetCastTime(q_aPtQT_bonz, 226, Y0XcJRjqaGTFXM3XLYRKBs); 
 sq_StartDrawCastGauge(q_aPtQT_bonz, xuriNKfdDeHimWNEqJSOebY, true); 
 local DNx3umALy6vtRslpBlZW5I = q_aPtQT_bonz.getCurrentAnimation(); 
 local hC2z0eTOLWfn0fa5e = DNx3umALy6vtRslpBlZW5I.getDelaySum(false); 
 q_aPtQT_bonz.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local N1z5P_HfkDAY4S2z = DNx3umALy6vtRslpBlZW5I.getDelaySum(false); 
 local it6PUEgYTyGl = N1z5P_HfkDAY4S2z.tofloat() / hC2z0eTOLWfn0fa5e.tofloat(); 
 local UdU87Y1rw2TRSLMevRcvweL6 = (xuriNKfdDeHimWNEqJSOebY.tofloat() * it6PUEgYTyGl).tointeger(); 
 q_aPtQT_bonz.getVar("move").clear_vector(); 
 q_aPtQT_bonz.getVar().clear_vector(); 
 q_aPtQT_bonz.getVar().push_vector(UdU87Y1rw2TRSLMevRcvweL6); 
 q_aPtQT_bonz.getVar().push_vector(sq_GetLevelData(q_aPtQT_bonz, 226, 2, Y0XcJRjqaGTFXM3XLYRKBs)); 
 break;
 case 1: 
 q_aPtQT_bonz.sq_SetCurrentAnimation(102);
 break;
 case 2: 
 q_aPtQT_bonz.sq_SetCurrentAnimation(103);
 break;
 case 3: 
 q_aPtQT_bonz.sq_SetCurrentAnimation(104);
 
 q_aPtQT_bonz.sq_AddStateLayerAnimation(1, q_aPtQT_bonz.sq_CreateCNRDAnimation("effect/animation/saintillusion/shoot3_nomal_land_electric.ani"), 0, 0);
 q_aPtQT_bonz.sq_AddStateLayerAnimation(1, q_aPtQT_bonz.sq_CreateCNRDAnimation("effect/animation/saintillusion/shoot3_nomal_line_dodge.ani"), 0, 0);
 q_aPtQT_bonz.getVar().setBool(0,false); 
 break;
 case 4: 
 q_aPtQT_bonz.sq_SetCurrentAnimation(105);
 break;
 }
 q_aPtQT_bonz.sq_SetCurrentAttackInfo(58); 
 if(nlFuC10qlAP1fCCwQ!=0)
 q_aPtQT_bonz.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onAttack_fighter_saintillusion(JKdBoRrGLCyFSSLPGvWVJ, QfyUOREWhcZ50LcuxI, hVLMnulKKcu_bZrsM, UVQwivACUS0tn2XlmTTg)
{
 if(!JKdBoRrGLCyFSSLPGvWVJ) return;
 local cyFD58vdeFvvmLDZ6Yst = JKdBoRrGLCyFSSLPGvWVJ.getSkillSubState(); 
 switch(cyFD58vdeFvvmLDZ6Yst)
 {
 case 3:
 if(JKdBoRrGLCyFSSLPGvWVJ.getVar().getBool(0) == true)return;
 JKdBoRrGLCyFSSLPGvWVJ.getVar().setBool(0, true); 
 if(JKdBoRrGLCyFSSLPGvWVJ.sq_IsMyControlObject())
 {
 local YOKRNt54amOW0rIGjef = sq_GetSkillLevel(JKdBoRrGLCyFSSLPGvWVJ, 226); 
 local RzNxP_w8mz_o9 = sq_GetAbilityConvertRate(JKdBoRrGLCyFSSLPGvWVJ, CONVERT_TABLE_TYPE_HP); 
 local KbB87CjiLr = (sq_GetLevelData(JKdBoRrGLCyFSSLPGvWVJ, 226, 1, YOKRNt54amOW0rIGjef) * RzNxP_w8mz_o9.tofloat()).tointeger();
 
 JKdBoRrGLCyFSSLPGvWVJ.sq_StartWrite();
 JKdBoRrGLCyFSSLPGvWVJ.sq_WriteDword(226); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_WriteDword(2); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_WriteDword(JKdBoRrGLCyFSSLPGvWVJ.sq_GetBonusRateWithPassive(226, 226, 0, 1.0)); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_WriteDword(KbB87CjiLr); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_SendCreatePassiveObjectPacket(24373, 0, 65, 0, 0);
 sq_SetMyShake(JKdBoRrGLCyFSSLPGvWVJ, 2, 100); 
 
 JKdBoRrGLCyFSSLPGvWVJ.sq_IntVectClear();
 JKdBoRrGLCyFSSLPGvWVJ.sq_IntVectPush(4); 
 JKdBoRrGLCyFSSLPGvWVJ.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 break;
 }
} ;

 
function onKeyFrameFlag_fighter_saintillusion(CvMBgvDToSl6ZltS1dE2lHa, paCeQ2mNYCdbRm5x)
{
 if(!CvMBgvDToSl6ZltS1dE2lHa) return false;
 local wkei6SxBlxF = CvMBgvDToSl6ZltS1dE2lHa.getSkillSubState(); 
 switch(wkei6SxBlxF)
 {
 case 1:
 case 2:
 if(paCeQ2mNYCdbRm5x == 1)
 {
 if(CvMBgvDToSl6ZltS1dE2lHa.sq_IsMyControlObject())
 {
 local Fx4wmS3EQ3uwxk = sq_GetSkillLevel(CvMBgvDToSl6ZltS1dE2lHa, 226); 
 local yI8li6Nkf885Qjy8mDYVkid3 = sq_GetAbilityConvertRate(CvMBgvDToSl6ZltS1dE2lHa, CONVERT_TABLE_TYPE_HP); 
 local wZvNw0GYFgua1veD3I3kUz = (sq_GetLevelData(CvMBgvDToSl6ZltS1dE2lHa, 226, 1, Fx4wmS3EQ3uwxk)* yI8li6Nkf885Qjy8mDYVkid3.tofloat()).tointeger();
 CvMBgvDToSl6ZltS1dE2lHa.sq_StartWrite();
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(226); 
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(1); 
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(CvMBgvDToSl6ZltS1dE2lHa.sq_GetBonusRateWithPassive(226, 226, 0, 1.0)); 
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(wkei6SxBlxF); 
 if(CvMBgvDToSl6ZltS1dE2lHa.getDirection() == ENUM_DIRECTION_RIGHT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(sq_GetLevelData(CvMBgvDToSl6ZltS1dE2lHa, 226, 4, Fx4wmS3EQ3uwxk)); 
 else
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(sq_GetLevelData(CvMBgvDToSl6ZltS1dE2lHa, 226, 3, Fx4wmS3EQ3uwxk)); 
 CvMBgvDToSl6ZltS1dE2lHa.sq_WriteDword(wZvNw0GYFgua1veD3I3kUz); 
 CvMBgvDToSl6ZltS1dE2lHa.sq_SendCreatePassiveObjectPacket(24373, 0, 0, 0, 0);
 }
 }
 break;
 case 3:
 if(paCeQ2mNYCdbRm5x == 2)
 {
 
 sq_CreateDrawOnlyObject(CvMBgvDToSl6ZltS1dE2lHa, "character/fighter/effect/animation/saintillusion/shoot2_nomal_shoot.ani", ENUM_DRAWLAYER_NORMAL, true);
 
 CvMBgvDToSl6ZltS1dE2lHa.sq_AddStateLayerAnimation(-1, CvMBgvDToSl6ZltS1dE2lHa.sq_CreateCNRDAnimation("effect/animation/saintillusion/shoot3_illusion_body3.ani"), 0, 0);
 if(CvMBgvDToSl6ZltS1dE2lHa.sq_IsMyControlObject())
 {
 local jVOjHvnJa4Yy = (CvMBgvDToSl6ZltS1dE2lHa.getDirection() == ENUM_DIRECTION_RIGHT && sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL))
 ? sq_GetLevelData(CvMBgvDToSl6ZltS1dE2lHa, 226, 4, sq_GetSkillLevel(CvMBgvDToSl6ZltS1dE2lHa, 226)) 
 : sq_GetLevelData(CvMBgvDToSl6ZltS1dE2lHa, 226, 3, sq_GetSkillLevel(CvMBgvDToSl6ZltS1dE2lHa, 226)); 
 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_BinaryWriteDword(jVOjHvnJa4Yy);
 sq_SendChangeSkillEffectPacket(CvMBgvDToSl6ZltS1dE2lHa, 226); 
 }
 }
 break;
 }
 return true;
} ;

 
function onProc_fighter_saintillusion(Af0qzQslRg8jadQvq)
{
 if(!Af0qzQslRg8jadQvq) return;
 local JoMDS0hA2wkgBLJagzT = Af0qzQslRg8jadQvq.getSkillSubState(); 
 switch(JoMDS0hA2wkgBLJagzT)
 {
 case 3:
 if(Af0qzQslRg8jadQvq.getVar("move").size_vector() <= 0)return;
 local GQ8CSMU5x49CYBZ9cVE = Af0qzQslRg8jadQvq.getCurrentAnimation();
 local FPnq1ykiQ0N6KnLt940DsayB = sq_GetCurrentTime(GQ8CSMU5x49CYBZ9cVE)- GQ8CSMU5x49CYBZ9cVE.getDelaySum(0, 1); 
 local WP__IHzKYK = GQ8CSMU5x49CYBZ9cVE.getDelaySum(2, 3); 
 local wMXvngvx73 = sq_GetDistancePos(Af0qzQslRg8jadQvq.getVar("move").get_vector(0),
 Af0qzQslRg8jadQvq.getDirection(),
 sq_GetUniformVelocity(0, Af0qzQslRg8jadQvq.getVar("move").get_vector(1), FPnq1ykiQ0N6KnLt940DsayB, WP__IHzKYK)); 
 if(Af0qzQslRg8jadQvq.isMovablePos(wMXvngvx73, Af0qzQslRg8jadQvq.getYPos())) 
 sq_setCurrentAxisPos(Af0qzQslRg8jadQvq, 0, wMXvngvx73); 
 else
 Af0qzQslRg8jadQvq.getVar("move").clear_vector(); 
 break;
 }
} ;

function onProcCon_fighter_saintillusion(xnjgkSfkbqRjYnmy53_jCz)
{
 if(!xnjgkSfkbqRjYnmy53_jCz) return;
 local TOcBWaoqoyC5Pmd = xnjgkSfkbqRjYnmy53_jCz.getSkillSubState(); 
 if(TOcBWaoqoyC5Pmd == 0)
 {
 if(xnjgkSfkbqRjYnmy53_jCz.sq_GetStateTimer() >= xnjgkSfkbqRjYnmy53_jCz.getVar().get_vector(0))
 {
 xnjgkSfkbqRjYnmy53_jCz.sq_IntVectClear();
 xnjgkSfkbqRjYnmy53_jCz.sq_IntVectPush(TOcBWaoqoyC5Pmd + 1); 
 xnjgkSfkbqRjYnmy53_jCz.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 }
} ;

 
function onEndCurrentAni_fighter_saintillusion(H2R9nzXo3rsPl3VngzGh)
{
 if(!H2R9nzXo3rsPl3VngzGh) return;
 if(!H2R9nzXo3rsPl3VngzGh.sq_IsMyControlObject()) return;
 local qQ3sgyAhJ7aE9A9FVd = H2R9nzXo3rsPl3VngzGh.getSkillSubState(); 
 if(qQ3sgyAhJ7aE9A9FVd < 3)
 {
 H2R9nzXo3rsPl3VngzGh.sq_IntVectClear();
 local FTuaMTM6yvRxed5 = H2R9nzXo3rsPl3VngzGh.getVar().get_vector(1); 
 if(FTuaMTM6yvRxed5 <= 1) 
 H2R9nzXo3rsPl3VngzGh.sq_IntVectPush(3); 
 else
 {
 H2R9nzXo3rsPl3VngzGh.getVar().set_vector(1, FTuaMTM6yvRxed5 - 1); 
 if(qQ3sgyAhJ7aE9A9FVd == 2) qQ3sgyAhJ7aE9A9FVd = 0;
 H2R9nzXo3rsPl3VngzGh.sq_IntVectClear();
 H2R9nzXo3rsPl3VngzGh.sq_IntVectPush(qQ3sgyAhJ7aE9A9FVd + 1); 
 }
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 else if(qQ3sgyAhJ7aE9A9FVd != 4)
 {
 H2R9nzXo3rsPl3VngzGh.sq_IntVectClear();
 H2R9nzXo3rsPl3VngzGh.sq_IntVectPush(qQ3sgyAhJ7aE9A9FVd + 1); 
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(226, STATE_PRIORITY_USER, true); 
 }
 else
 H2R9nzXo3rsPl3VngzGh.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

function onEndState_fighter_saintillusion(mr2fbTVuN0, DFyVupX0bvOqRT99qiAaD1)
{
 if(!mr2fbTVuN0) return;
 if(DFyVupX0bvOqRT99qiAaD1 != 226)
 sq_EndDrawCastGauge(mr2fbTVuN0); 
} ;

function onChangeSkillEffect_fighter_saintillusion(phlEvGNyLGaP6lC, dseYkhSwVC4QqTneja7YWhbV, NXe9vztxt3AODNDTuUW)
{
 if(!phlEvGNyLGaP6lC) return;
 local z4ru7pFauhHGy1xvm2hkH = phlEvGNyLGaP6lC.getSkillSubState();
 switch(z4ru7pFauhHGy1xvm2hkH)
 {
 case 3:
 local BWGxYdd0aAC = NXe9vztxt3AODNDTuUW.readWord(); 
 switch(BWGxYdd0aAC)
 {
 case 1: 
 local gZUB1rIXrJtBl = NXe9vztxt3AODNDTuUW.readDword(); 
 phlEvGNyLGaP6lC.getVar("move").clear_vector(); 
 phlEvGNyLGaP6lC.getVar("move").push_vector(phlEvGNyLGaP6lC.getXPos()); 
 phlEvGNyLGaP6lC.getVar("move").push_vector(gZUB1rIXrJtBl); 
 break;
 }
 break;
 }
} ;

