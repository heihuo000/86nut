
SUB_STATE_ICEMAN_0	<- 0
SUB_STATE_ICEMAN_1	<- 1
SUB_STATE_ICEMAN_2	<- 2
SUB_STATE_ICEMAN_3	<- 3
SUB_STATE_ICEMAN_4	<- 4
SUB_STATE_ICEMAN_WAIT <- 5

function checkExecutableSkill_IceMan(obj)
{

	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_ICEMAN);

	if(b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_0); // substate����
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}	
	
	return false;

}

function checkCommandEnable_IceMan(obj)
{

	if(!obj) return false;

	local state = obj.sq_GetState();

	if(state == STATE_ATTACK) {
		// ĵ�� ��ų ���� �۾���: ������ [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_ICEMAN);
	}

	return true;

}

function onSetState_IceMan(obj, state, datas, isResetTimer)
{

	if(!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);
	
	obj.sq_StopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	
	obj.getVar("state").clear_ct_vector();
	obj.getVar("state").push_ct_vector();
	local t = obj.getVar("state").get_ct_vector(0);
	t.Reset();
	t.Start(10000,0);
	
	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);
	

	if(substate == SUB_STATE_ICEMAN_0)
	{
		//ICEBLADE_CAST
		obj.sq_PlaySound("ICEBLADE_CAST");
		local offsetX = 100;
		offsetX = obj.sq_GetDistancePos(posX, obj.sq_GetDirection(), offsetX);

		local vX = obj.sq_GetIntData(SKILL_ICEMAN, 0); // 0. ������ �̵��ӵ�
		local vY = 0;

		obj.sq_AddAimPointMark(offsetX, posY, vX, vY);
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN1);
	}
	else if(substate == SUB_STATE_ICEMAN_WAIT)
	{
		local dstX = obj.sq_GetVectorData(datas, 1);
		
		obj.getVar("dash").clear_vector();
		obj.getVar("dash").push_vector(dstX); //
		
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN6);
	}
	else if(substate == SUB_STATE_ICEMAN_1)
	{
		// Ÿ���� ���α�
		print(" sub_state_1");
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN2);
		
	}
	else if(substate == SUB_STATE_ICEMAN_2)
	{
		// �޷�����	
		
		local dstX = obj.getVar("dash").get_vector(0);
		obj.getVar("dash").push_vector(posX); // ���� x : i: 1
		obj.getVar("dash").push_vector(posY); // ���� y : i: 2
		
		local disX = sq_Abs(dstX - posX);
		local disY = posY;
		
		if(dstX > posX)
		{
			obj.setDirection(ENUM_DIRECTION_RIGHT);
		}
		else
		{
			obj.setDirection(ENUM_DIRECTION_LEFT);
		}
		
		disX = disX - 120;
		
		if(disX <= 0)
			disX = 0;
		
		obj.getVar("dash").push_vector(disX); // x�� �̵��Ÿ� : i: 3
		obj.getVar("dash").push_vector(disY); // y�� �̵��Ÿ� : i: 4
	
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN3);
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
	// ������
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN4);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_ICEMAN);
		
		local multiHitAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
		STATE_ICEMAN, SKL_LVL_COLUMN_IDX_1, 1.0); //1.��Ÿ���ݷ�(%)
		
		obj.sq_SetCurrentAttackBonusRate(multiHitAttackRate);
		//CUSTOM_ATTACK_INFO_ICEMAN
		// ũ�δ�Ŭ �۾� ��Ÿ�ӵ��� �޶��� �� �ֽ��ϴ�.
		local currentAni = sq_GetCurrentAnimation(obj);
		if(currentAni)
		{
			local multiHitSpeed100Rate = obj.sq_GetIntData(SKILL_ICEMAN, 2); // 2. ��Ÿ�ӵ�
			currentAni.setSpeedRate(multiHitSpeed100Rate.tofloat());
		}
		//setSpeedRate
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
	// ����
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_ICEMAN5);
	}
	
	
obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED , SPEED_TYPE_CAST_SPEED , SPEED_VALUE_DEFAULT , SPEED_VALUE_DEFAULT , 1.0 , 1.0);
}

function prepareDraw_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
}

function onProc_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);

	local sq_var = obj.getVar();
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	if(substate == SUB_STATE_ICEMAN_0)
	{ // Ÿ���� ����
		if(obj.isMyControlObject())
		{
			local targetTime = obj.sq_GetIntData(SKILL_ICEMAN, 1); // 1. ���������� Ÿ�ٰ��� �ð�
			
			print( " targetTime:" + targetTime);
			
			if(currentT > targetTime)
			{
				local skillLevel = sq_GetSkillLevel(obj, SKILL_ICEMAN);

				local value = 0;
				
				local freezeRate = obj.sq_GetLevelData(SKILL_ICEMAN,
				 SKL_LVL_COLUMN_IDX_0, skillLevel); // ����Ȯ��(%)
				 
				local multiHitAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_1, 1.0); //1.��Ÿ���ݷ�(%)
				
				local smashAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_2, 1.0); //2.��Ÿ���ݷ�(%)
				
				local expPower = obj.sq_GetPowerWithPassive(SKILL_ICEMAN, 
				STATE_ICEMAN, SKL_LVL_COLUMN_IDX_3, -1, 1.0); //3.�������� �������?���ݷ�(+)				

				sq_BinaryStartWrite();
				sq_BinaryWriteDword(freezeRate); // 
				sq_BinaryWriteDword(multiHitAttackRate); // 
				sq_BinaryWriteDword(smashAttackRate); // 
				sq_BinaryWriteDword(expPower); // 
				
				local aimPosX = obj.sq_GetAimPosX(posX, posY, true);
				local offsetX = aimPosX - posX;

				if (offsetX < 0)
				{
					offsetX = -offsetX;
				}

				local offsetY = -1;
				obj.sq_SendCreatePassiveObjectPacket(24255, 0, offsetX, offsetY, 0); // ������ ���̽��� ������ 
				
				
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICEMAN_WAIT); // substate����
				obj.sq_IntVectPush(aimPosX); // substate����
				obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
	}
	else if(substate == SUB_STATE_ICEMAN_WAIT)
	{
		local t = obj.getVar("state").get_ct_vector(0);
		local currentT = t.Get();
		
		if(currentT > 620)
		//if(currentT > 880)
		{		
			if(obj.isMyControlObject())
			{
				obj.sq_IntVectClear();
				obj.sq_IntVectPush(SUB_STATE_ICEMAN_1); //
				obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
			}
		}
	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		// Ÿ���� ���α�
		if(!obj.getVar().get_vector(0))
		{
			if(frmIndex >= 4)
			{
				obj.sq_PlaySound("MW_ICEMAN");
				obj.getVar().set_vector(0, 1);
			}
		}
	}
	else if(substate == SUB_STATE_ICEMAN_2)
	{
		// �޷�����
		local dash_t = pAni.getDelaySum(false); //
		local srcX = obj.getVar("dash").get_vector(1); // ����x
		local srcY = obj.getVar("dash").get_vector(2); // ����y
    	    	
    	local dis_x_len = obj.getVar("dash").get_vector(3); // �� �̵��Ÿ�
		local dis_y_len = obj.getVar("dash").get_vector(4); // y�� �̵��Ÿ�
		
		local v = sq_GetAccel(0, dis_x_len, currentT, dash_t, true);
		
		//local my = sq_GetUniformVelocity(0, dis_y_len, currentT, dash_t);
		
		local dstX = sq_GetDistancePos(srcX, obj.getDirection(), v);
		//local dstY = srcY + my;
		 
		sq_setCurrentAxisPos(obj, 0, dstX);
		//sq_setCurrentAxisPos(obj, 1, dstY);
		
	}
	else if(substate == SUB_STATE_ICEMAN_3)
	{
		// ������
		local isHit = false;
		
			local particleX = sq_GetXPos(obj);
			local particleY = sq_GetYPos(obj);
			local particleZ = sq_GetZPos(obj);
			
		local offsetLen = 140;
			
		if(frmIndex >= 1 && !obj.getVar().get_vector(0))
		{
			isHit = true;
			offsetLen = 140;
			obj.getVar().set_vector(0, 1);
		}

		if(frmIndex >= 4 && !obj.getVar().get_vector(1))
		{
			isHit = true;
			offsetLen = 114;
			
			obj.getVar().set_vector(1, 1);
		}

		if(frmIndex >= 8 && !obj.getVar().get_vector(2))
		{
			isHit = true;
			offsetLen = 90;
			obj.getVar().set_vector(2, 1);
		}

		if(frmIndex >= 11 && !obj.getVar().get_vector(3))
		{
			isHit = true;
			offsetLen = 150;
			obj.getVar().set_vector(3, 1);
		}

		if(frmIndex >= 16 && !obj.getVar().get_vector(4))
		{
			isHit = true;
			offsetLen = 85;
			obj.getVar().set_vector(4, 1);
		}
		
		
		if(isHit)
		{		
			obj.resetHitObjectList();
			particleX = sq_GetDistancePos(posX, obj.getDirection(), offsetLen);
			sq_SetMyShake(obj,2,100);
			
			local particleCreater = obj.getVar().GetparticleCreaterMap("AtIceManPoleD2", 
			"PassiveObject/Character/Mage/Particle/ATIceManPoleDestroy.ptl", obj);
			particleCreater.Restart(0);
			particleCreater.SetPos(particleX, particleY + 5, particleZ + 65);
			sq_AddParticleObject(obj, particleCreater);
		}
		
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		// ����
	}
	

}

function onProcCon_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();
	
	if(substate == SUB_STATE_ICEMAN_0)
	{
		local disX = sq_GetDistancePos(obj.getXPos(), sq_GetDirection(obj), 50);

		local iPX = obj.sq_GetAimPosX(obj.getXPos(), posY, false);

		if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT)
		{
			if (disX < iPX)
			{
				obj.sq_SetAimPointMarkPosition(disX, posY);
			}
		}

		if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT)
		{
			if (disX > iPX)
			{
				obj.sq_SetAimPointMarkPosition(disX, posY);
			}
		}
	
	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		// SUB_STATE_ICEMAN_1 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICEMAN_2) {
		// SUB_STATE_ICEMAN_2 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
		// SUB_STATE_ICEMAN_3 ���꽺����Ʈ �۾�
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		// SUB_STATE_ICEMAN_4 ���꽺����Ʈ �۾�
	}
	

}

function onEndCurrentAni_IceMan(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(!obj.isMyControlObject())
		return;
	
	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();	

	if(substate == SUB_STATE_ICEMAN_0)
	{
	}
	else if(substate == SUB_STATE_ICEMAN_1) {
		//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_2); // substate����
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
		
	}
	else if(substate == SUB_STATE_ICEMAN_2) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_3); // substate����
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_ICEMAN_3) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_ICEMAN_4); // substate����
		obj.sq_AddSetStatePacket(STATE_ICEMAN, STATE_PRIORITY_IGNORE_FORCE, true);
	}
	else if(substate == SUB_STATE_ICEMAN_4) {
		sq_SimpleMoveToNearMovablePos(obj,200);
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	

}

function onKeyFrameFlag_IceMan(obj, flagIndex)
{

	if(!obj) return false;

	local substate = obj.getSkillSubState();


	return false;

}

function onEndState_IceMan(obj, new_state)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	
	if(new_state != STATE_ICEMAN)
		obj.sq_RemoveAimPointMark();


}

