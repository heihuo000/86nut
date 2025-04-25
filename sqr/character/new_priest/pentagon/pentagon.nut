
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function checkExecutableSkill_priest_pentagon(DawgKQWbxXypahAl)
{
 if(!DawgKQWbxXypahAl) return false; 
 local qThIahtE17 = DawgKQWbxXypahAl.sq_IsUseSkill(238); 
 if(qThIahtE17) 
 {
 DawgKQWbxXypahAl.sq_IntVectClear();
 DawgKQWbxXypahAl.sq_IntVectPush(0); 
 DawgKQWbxXypahAl.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_priest_pentagon(K_GgBz9fCPlRl66xyKR)
{
 if(!K_GgBz9fCPlRl66xyKR) return false; 
 local hmtunUaFBVYn3jP1D = K_GgBz9fCPlRl66xyKR.sq_GetState(); 
 if(hmtunUaFBVYn3jP1D == STATE_STAND) 
 return true; 
 if(hmtunUaFBVYn3jP1D == STATE_ATTACK) 
 {
 return K_GgBz9fCPlRl66xyKR.sq_IsCommandEnable(238); 
 }
 return true; 
} ;

 
function onSetState_priest_pentagon(sdTJXGeaPpkR6c5, tP1F9Mhh8e9RPA5jKW6bWwXR, _4EcsHlpqeNNset, dOOTQEMr0DcgnsXJggqXGXGf)
{
 if(!sdTJXGeaPpkR6c5) return; 
 sdTJXGeaPpkR6c5.sq_StopMove(); 
 local kmb8zvgLQdxw_Gf5gxmp = sdTJXGeaPpkR6c5.sq_GetVectorData(_4EcsHlpqeNNset, 0); 
 sdTJXGeaPpkR6c5.setSkillSubState(kmb8zvgLQdxw_Gf5gxmp); 
 switch(kmb8zvgLQdxw_Gf5gxmp)
 {
 case 0:
 sdTJXGeaPpkR6c5.setCurrentAnimation(sdTJXGeaPpkR6c5.sq_GetThrowShootAni(1));
 sdTJXGeaPpkR6c5.sq_AddStateLayerAnimation(1, sdTJXGeaPpkR6c5.sq_CreateCNRDAnimation("effect/animation/pentagon/pentagonobject/cast/pentagoncast01.ani"), 0, 0); 
 sdTJXGeaPpkR6c5.sq_SetSuperArmor(6); 
 sdTJXGeaPpkR6c5.sq_PlaySound("PR_PENTAGON");
 break;
 case 1:
 sdTJXGeaPpkR6c5.setCurrentAnimation(sdTJXGeaPpkR6c5.sq_GetThrowShootAni(2));
 sq_AddDrawOnlyAniFromParent(sdTJXGeaPpkR6c5, "character/priest/effect/animation/pentagon/pentagonobject/cast/pentagoncastafter.ani", 0, -1, 0); 
 local FHp7mB2s9s = sq_GetSkillLevel(sdTJXGeaPpkR6c5, 238); 
 local kBy3l5ny6vM_jThQFGjjt4R = sdTJXGeaPpkR6c5.sq_GetLevelData(238, 0, sq_GetSkillLevel(sdTJXGeaPpkR6c5, 238)); 
 local Ft0XQdbk0QK2maTpVp = kBy3l5ny6vM_jThQFGjjt4R.tofloat() / 340.0; 
 sdTJXGeaPpkR6c5.getVar().setFloat(0, Ft0XQdbk0QK2maTpVp); 
 if(sdTJXGeaPpkR6c5.sq_IsMyControlObject())
 {
 sdTJXGeaPpkR6c5.sq_StartWrite();
 sdTJXGeaPpkR6c5.sq_WriteDword(238); 
 sdTJXGeaPpkR6c5.sq_WriteDword(1); 
 sdTJXGeaPpkR6c5.sq_WriteDword(kBy3l5ny6vM_jThQFGjjt4R); 
 sdTJXGeaPpkR6c5.sq_WriteDword(sdTJXGeaPpkR6c5.sq_GetLevelData(238, 1, FHp7mB2s9s)); 
 sdTJXGeaPpkR6c5.sq_WriteDword(sdTJXGeaPpkR6c5.sq_GetLevelData(238, 2, FHp7mB2s9s)); 
 sdTJXGeaPpkR6c5.sq_WriteDword(sdTJXGeaPpkR6c5.sq_GetBonusRateWithPassive(238, 238, 3, 1.0)); 
 sdTJXGeaPpkR6c5.sq_WriteDword(sdTJXGeaPpkR6c5.sq_GetBonusRateWithPassive(238, 238, 4, 1.0)); 
 sdTJXGeaPpkR6c5.sq_SendCreatePassiveObjectPacket(24374, 0, (250.0 * Ft0XQdbk0QK2maTpVp).tointeger(), (20.0 * Ft0XQdbk0QK2maTpVp).tointeger(), 0);
 }
 break;
 }
 sdTJXGeaPpkR6c5.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0); 
} ;

function onEndState_priest_pentagon(CApi8GCGHg1n8_9xQ6j, K65TbYW9gZ0U_yv)
{
 if(!CApi8GCGHg1n8_9xQ6j) return;
 if(K65TbYW9gZ0U_yv != 238)
 {
 CApi8GCGHg1n8_9xQ6j.sq_RemoveSuperArmor(6); 
 if(CApi8GCGHg1n8_9xQ6j.getSkillSubState() == 1)
 {
 local HWLW7crvQLS = CApi8GCGHg1n8_9xQ6j.getVar().getFloat(0); 
 local KInGjdJFYUAzeShVgsn = CApi8GCGHg1n8_9xQ6j.getXPos(); local n4O_yJipZm4UXBaOsruRhAj = CApi8GCGHg1n8_9xQ6j.getYPos(); local Zggd6o8yoZw = CApi8GCGHg1n8_9xQ6j.getZPos();
 CreateAniRate(CApi8GCGHg1n8_9xQ6j, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Spot/CastWorkPriestBack_01.ani", ENUM_DRAWLAYER_NORMAL, KInGjdJFYUAzeShVgsn, n4O_yJipZm4UXBaOsruRhAj - 1, Zggd6o8yoZw, HWLW7crvQLS, false); 
 CreateAniRate(CApi8GCGHg1n8_9xQ6j, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/Spot/CastWorkPriestFront_01.ani", ENUM_DRAWLAYER_NORMAL, KInGjdJFYUAzeShVgsn, n4O_yJipZm4UXBaOsruRhAj, Zggd6o8yoZw, HWLW7crvQLS, false); 
 CreateAniRate(CApi8GCGHg1n8_9xQ6j, "passiveobject/script_sqr_nut_qq506807329/priest/animation/pentagonobject/pentagon/startpentagon_08.ani", ENUM_DRAWLAYER_BOTTOM, KInGjdJFYUAzeShVgsn, n4O_yJipZm4UXBaOsruRhAj, Zggd6o8yoZw, HWLW7crvQLS, false); 
 }
 }
} ;

 
function onEndCurrentAni_priest_pentagon(t4nuaQ1zU4)
{
 if(!t4nuaQ1zU4) return;
 if(!t4nuaQ1zU4.sq_IsMyControlObject()) return;
 local pghZn1FkR1QAPhM1 = t4nuaQ1zU4.getSkillSubState(); 
 if(pghZn1FkR1QAPhM1 != 1)
 {
 t4nuaQ1zU4.sq_IntVectClear();
 t4nuaQ1zU4.sq_IntVectPush(pghZn1FkR1QAPhM1 + 1); 
 t4nuaQ1zU4.sq_AddSetStatePacket(238, STATE_PRIORITY_USER, true); 
 }
 else
 t4nuaQ1zU4.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
} ;

