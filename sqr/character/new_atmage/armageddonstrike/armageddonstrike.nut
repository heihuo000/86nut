
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 

 
function checkExecutableSkill_atmage_armageddonstrike(dVYcNc9a7RzvMZcLIwj)
{
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 if(!dVYcNc9a7RzvMZcLIwj) return false; 
 local WNNmJKXZ8yU4RY8wDvMPK27 = dVYcNc9a7RzvMZcLIwj.sq_IsUseSkill(245); 
 if(WNNmJKXZ8yU4RY8wDvMPK27) 
 {
 dVYcNc9a7RzvMZcLIwj.sq_IntVectClear();
 dVYcNc9a7RzvMZcLIwj.sq_IntVectPush(0); 
 dVYcNc9a7RzvMZcLIwj.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atmage_armageddonstrike(B74PVUwp1h)
{
 if(!B74PVUwp1h) return false; 
return true; 
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.sq_GetState(); 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_STAND) 
 return true; 
 if(Wp5xWEER1lYn77EGo1qZc1yH == STATE_ATTACK) 
 {
 return B74PVUwp1h.sq_IsCommandEnable(245); 
 }
 return true; 
} ;

 
function onSetState_atmage_armageddonstrike(B74PVUwp1h, Wp5xWEER1lYn77EGo1qZc1yH, Pu4_oeBhaVMEmOM5, BmumNWaLZiLblx4u3Vd)
{
 if(!B74PVUwp1h) return; 
 B74PVUwp1h.sq_StopMove(); 
 local UAuP9GeRePaeGL5UmK = B74PVUwp1h.sq_GetVectorData(Pu4_oeBhaVMEmOM5, 0); 
 B74PVUwp1h.setSkillSubState(UAuP9GeRePaeGL5UmK); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 RemoveAllAni(B74PVUwp1h); 
 B74PVUwp1h.getVar().clear_obj_vector(); 
 B74PVUwp1h.getVar("move").clear_vector(); 
 B74PVUwp1h.sq_SetCurrentAnimation(101);
 break;
 case 1:
 B74PVUwp1h.sq_SetCurrentAnimation(102);
 break;
 case 2:
 B74PVUwp1h.sq_SetCurrentAnimation(103);
 break;
 }
 local OA8hC4ZLkCdvFEb1epnj = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
 local cOU9NUPWhgIe = B74PVUwp1h.sq_GetDelaySum(); 
 B74PVUwp1h.getVar("speedRate").setFloat(0, OA8hC4ZLkCdvFEb1epnj.tofloat() / cOU9NUPWhgIe.tofloat()); 
 B74PVUwp1h.getVar("speedRate").setFloat(1, cOU9NUPWhgIe.tofloat() / OA8hC4ZLkCdvFEb1epnj.tofloat()); 
 switch(UAuP9GeRePaeGL5UmK)
 {
 case 0:
 local AHcssTiVDPKrb = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p1/asstartcloud_cloud_normal_b.ani", ENUM_DRAWLAYER_COVER, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(AHcssTiVDPKrb); 
 break;
 case 1:
 sq_mySetShake_qq506807329(B74PVUwp1h, 5, 1600, false); 
 local fKXf1kmu1lyBh9i2vT = sq_GetCNRDObjectToCollisionObject(B74PVUwp1h.getVar().get_obj_vector(0)); 
 if(fKXf1kmu1lyBh9i2vT && fKXf1kmu1lyBh9i2vT.isMyControlObject())
 {
 local TCPvKNX9rTMJVj = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(TCPvKNX9rTMJVj); 
 sq_IntVectorPush(TCPvKNX9rTMJVj, (B74PVUwp1h.getVar("speedRate").getFloat(0)*100.0).tointeger()); 
 fKXf1kmu1lyBh9i2vT.addSetStatePacket(12, TCPvKNX9rTMJVj, STATE_PRIORITY_AUTO, false, ""); 
 }
 local nAc1USTkF26 = B74PVUwp1h.sq_GetCurrentAni(); 
 local d7YPewCMYba2h7os = nAc1USTkF26.getDelaySum(0, 16); 
 local eRpbpInbcMnVxBxSmY1 = B74PVUwp1h.sq_GetIntData(245, 2); 
 B74PVUwp1h.getVar().clear_timer_vector();
 B74PVUwp1h.getVar().push_timer_vector();
 local VFT1lkVhzEmzpGAjFL = B74PVUwp1h.getVar().get_timer_vector(0);
 VFT1lkVhzEmzpGAjFL.setParameter(d7YPewCMYba2h7os/ eRpbpInbcMnVxBxSmY1, eRpbpInbcMnVxBxSmY1-1); 
 VFT1lkVhzEmzpGAjFL.resetInstant(0); 
 local AHcssTiVDPKrb = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p2/newasphase2atkeff_01.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos()+1, B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0-30.0); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(AHcssTiVDPKrb); 
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 local Xj5EUe4NUP = B74PVUwp1h.getObjectManager(); 
 local nO4lYhuamwD6rb5xkc = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p2/armageddonstrikecreate_bot_16.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos() - 1, B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 local eUM8JDikchFpqPYp0wbRUE = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p2/asphase2blackscreentop_add03.ani", ENUM_DRAWLAYER_COVER, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 local TZ6aL4QPRzZUVxQy = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p2/asphase2blackscreentop_01.ani", ENUM_DRAWLAYER_COVER, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(nO4lYhuamwD6rb5xkc); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(eUM8JDikchFpqPYp0wbRUE); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(TZ6aL4QPRzZUVxQy); 
 }
 break;
 case 2:
 sq_myFlashScreen_qq506807329(B74PVUwp1h, 0, 80, 480, 255, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 sq_mySetShake_qq506807329(B74PVUwp1h, 4, 1200, false); 
 local AHcssTiVDPKrb = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p3/asphase3floor_floor.ani", ENUM_DRAWLAYER_BOTTOM, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 local nO4lYhuamwD6rb5xkc = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p3/backexplosion_stone_e.ani", ENUM_DRAWLAYER_NORMAL, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(AHcssTiVDPKrb); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(nO4lYhuamwD6rb5xkc); 
 
 if(B74PVUwp1h.sq_IsMyControlObject())
 {
 local H0cNaKcjPQAyO5pvr = sq_GetSkillLevel(B74PVUwp1h, 245); 
 B74PVUwp1h.sq_StartWrite();
 B74PVUwp1h.sq_WriteDword(245); 
 B74PVUwp1h.sq_WriteDword(2); 
 B74PVUwp1h.sq_WriteDword(B74PVUwp1h.sq_GetBonusRateWithPassive(245, 245, 0, 1.0)); 
 B74PVUwp1h.sq_SendCreatePassiveObjectPacket(24379, 0, 0, 0, 0);
 local Xj5EUe4NUP = B74PVUwp1h.getObjectManager(); 
 local eUM8JDikchFpqPYp0wbRUE = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p3/asphase3cloud_cloud_a.ani", ENUM_DRAWLAYER_COVER, Xj5EUe4NUP.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL), Xj5EUe4NUP.getFieldYPos(600, 0, ENUM_DRAWLAYER_NORMAL), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 local TZ6aL4QPRzZUVxQy = CreateAniRate(B74PVUwp1h, "character/mage/effect/animation/atarmageddonstrike/p3/asphase3blackstone_01.ani", ENUM_DRAWLAYER_COVER, B74PVUwp1h.getXPos(), B74PVUwp1h.getYPos(), B74PVUwp1h.getZPos(), false, B74PVUwp1h.getVar("speedRate").getFloat(0) * 100.0); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(eUM8JDikchFpqPYp0wbRUE); 
 B74PVUwp1h.getVar("aniobj").push_obj_vector(TZ6aL4QPRzZUVxQy); 
 }
 break;
 }
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_atmage_armageddonstrike(ulpO7loMZ5f8mxrT, hRuY8re0Cr)
{
 if(!ulpO7loMZ5f8mxrT) return false;
 local N3rkQZvFCZuWvUN5 = ulpO7loMZ5f8mxrT.getSkillSubState(); 
 switch(N3rkQZvFCZuWvUN5)
 {
 case 0:
 switch(hRuY8re0Cr)
 {
 case 1:
 sq_mySetShake_qq506807329(ulpO7loMZ5f8mxrT, 2, 780, false); 
 break;
 case 2:
 sq_myFlashScreen_qq506807329(ulpO7loMZ5f8mxrT, 300, 2500, 0, 204, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 break;
 case 3:
 sq_myFlashScreen_qq506807329(ulpO7loMZ5f8mxrT, 0, 120, 420, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM, false); 
 sq_mySetShake_qq506807329(ulpO7loMZ5f8mxrT, 4, 1440, false); 
 
 
 if(ulpO7loMZ5f8mxrT.sq_IsMyControlObject())
 {
 local wBYSXC9udAMy6OrtL1JZVmY = sq_GetSkillLevel(ulpO7loMZ5f8mxrT, 245); 
 ulpO7loMZ5f8mxrT.sq_StartWrite();
 ulpO7loMZ5f8mxrT.sq_WriteDword(245); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(1); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(ulpO7loMZ5f8mxrT.sq_GetBonusRateWithPassive(245, 245, 1, 1.0)); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(ulpO7loMZ5f8mxrT.sq_GetBonusRateWithPassive(245, 245, 2, 1.0)); 
 ulpO7loMZ5f8mxrT.sq_WriteDword(ulpO7loMZ5f8mxrT.sq_GetIntData(245, 0)); 
 ulpO7loMZ5f8mxrT.sq_SendCreatePassiveObjectPacket(24379, 0, 0, 0, 350);
 }
 break;
 case 4:
 
 local vAw11S_w7iMNnY384qt9bnGq = onGetMyPassiveObject_My(ulpO7loMZ5f8mxrT, 24379, 245, 1); 
 if(vAw11S_w7iMNnY384qt9bnGq)
 {
 if(vAw11S_w7iMNnY384qt9bnGq.isMyControlObject())
 vAw11S_w7iMNnY384qt9bnGq.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, ""); 
 ulpO7loMZ5f8mxrT.getVar().push_obj_vector(vAw11S_w7iMNnY384qt9bnGq); 
 ulpO7loMZ5f8mxrT.getVar("move").clear_vector(); 
 ulpO7loMZ5f8mxrT.getVar("move").push_vector(ulpO7loMZ5f8mxrT.sq_GetStateTimer()); 
 ulpO7loMZ5f8mxrT.getVar("move").push_vector(ulpO7loMZ5f8mxrT.sq_GetIntData(245, 1)); 
 ulpO7loMZ5f8mxrT.getVar("move").push_vector(vAw11S_w7iMNnY384qt9bnGq.getZPos()); 
 }
 local zTT7r_ziIs = CreateAniRate(ulpO7loMZ5f8mxrT, "character/mage/effect/animation/atarmageddonstrike/p1/asmark_01.ani", ENUM_DRAWLAYER_BOTTOM, ulpO7loMZ5f8mxrT.getXPos(), ulpO7loMZ5f8mxrT.getYPos(), ulpO7loMZ5f8mxrT.getZPos(), false, ulpO7loMZ5f8mxrT.getVar("speedRate").getFloat(0) * 100.0); 
 ulpO7loMZ5f8mxrT.getVar("aniobj").push_obj_vector(zTT7r_ziIs); 
 if(ulpO7loMZ5f8mxrT.sq_IsMyControlObject())
 {
 local D7yWSG8JPyUe = ulpO7loMZ5f8mxrT.getObjectManager(); 
 local SGSabkZV0NU6d4XivIKaZhBC = CreateAniRate(ulpO7loMZ5f8mxrT, "character/mage/effect/animation/atarmageddonstrike/p1/addasatkeff2_01.ani", ENUM_DRAWLAYER_COVER, D7yWSG8JPyUe.getFieldXPos(400, ENUM_DRAWLAYER_NORMAL), ulpO7loMZ5f8mxrT.getYPos(), D7yWSG8JPyUe.getFieldZPos(400, ulpO7loMZ5f8mxrT.getYPos(), ENUM_DRAWLAYER_NORMAL), false, 130.0); 
 ulpO7loMZ5f8mxrT.getVar("aniobj").push_obj_vector(SGSabkZV0NU6d4XivIKaZhBC); 
 }
 break;
 }
 break;
 case 1:
 if(ulpO7loMZ5f8mxrT.sq_IsMyControlObject())
 {
 sq_ChangeDrawLayer(ulpO7loMZ5f8mxrT, ENUM_DRAWLAYER_COVER); 
 
 }
 break;
 case 2:
 switch(hRuY8re0Cr)
 {
 case 1:
 sq_mySetShake_qq506807329(ulpO7loMZ5f8mxrT, 1, 800, false); 
 break;
 }
 break;
 }
 return true;
} ;

function onProc_atmage_armageddonstrike(QH8q5FsBIUs)
{
 if(!QH8q5FsBIUs) return;
 local sZe6X91vvnga = QH8q5FsBIUs.getSkillSubState(); 
 switch(sZe6X91vvnga)
 {
 case 0:
 if(QH8q5FsBIUs.getVar("move").size_vector() <= 0)return;
 local v2uPLTpg3XoPdkqhMm = QH8q5FsBIUs.sq_GetStateTimer()- QH8q5FsBIUs.getVar("move").get_vector(0); 
 local yClF_RshFSENkGQYA5rH12S9 = QH8q5FsBIUs.getVar("move").get_vector(1); 
 local CfbPK7bMjtUMuu6byvRlBLVD = sq_GetUniformVelocity(QH8q5FsBIUs.getVar("move").get_vector(2), 0, v2uPLTpg3XoPdkqhMm, yClF_RshFSENkGQYA5rH12S9); 
 local vaDSB39oH5yGIVT4_0QXU = QH8q5FsBIUs.getVar().get_obj_vector(0); 
 if(vaDSB39oH5yGIVT4_0QXU)
 sq_setCurrentAxisPos(vaDSB39oH5yGIVT4_0QXU, 2, CfbPK7bMjtUMuu6byvRlBLVD); 
 if(v2uPLTpg3XoPdkqhMm >= yClF_RshFSENkGQYA5rH12S9 && QH8q5FsBIUs.sq_IsMyControlObject())
 {
 QH8q5FsBIUs.sq_IntVectClear();
 QH8q5FsBIUs.sq_IntVectPush(sZe6X91vvnga + 1); 
 QH8q5FsBIUs.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 }
 break;
 case 1:
 local J6oDb8I22lSBkGDrz = QH8q5FsBIUs.getVar().get_timer_vector(0);
 if(J6oDb8I22lSBkGDrz) 
 {
 if(J6oDb8I22lSBkGDrz.isOnEvent(QH8q5FsBIUs.sq_GetStateTimer()) == true) 
 {
 local WUkwLAmQMfBJ = sq_GetCNRDObjectToCollisionObject(QH8q5FsBIUs.getVar().get_obj_vector(0)); 
 if(WUkwLAmQMfBJ) 
 WUkwLAmQMfBJ.resetHitObjectList(); 
 }
 }
 break;
 }
} ;

 
function onEndCurrentAni_atmage_armageddonstrike(VpsVevLGrP3l0gmhemHve5RG)
{
 if(!VpsVevLGrP3l0gmhemHve5RG) return;
 if(!VpsVevLGrP3l0gmhemHve5RG.sq_IsMyControlObject()) return;
 local jshGhWsSonPBC = VpsVevLGrP3l0gmhemHve5RG.getSkillSubState(); 
 switch(jshGhWsSonPBC)
 {
 case 1:
 VpsVevLGrP3l0gmhemHve5RG.sq_IntVectClear();
 VpsVevLGrP3l0gmhemHve5RG.sq_IntVectPush(jshGhWsSonPBC + 1); 
 VpsVevLGrP3l0gmhemHve5RG.sq_AddSetStatePacket(245, STATE_PRIORITY_USER, true); 
 break;
 case 2:
 VpsVevLGrP3l0gmhemHve5RG.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 }
} ;

function onEndState_atmage_armageddonstrike(VpsVevLGrP3l0gmhemHve5RG, jshGhWsSonPBC)
{
 if(!VpsVevLGrP3l0gmhemHve5RG) return;
 if(jshGhWsSonPBC != 245 
 && jshGhWsSonPBC != STATE_STAND) 
 {
 RemoveAllAni(VpsVevLGrP3l0gmhemHve5RG); 
 }
 sq_ChangeDrawLayer(VpsVevLGrP3l0gmhemHve5RG, ENUM_DRAWLAYER_NORMAL); 
} ;


