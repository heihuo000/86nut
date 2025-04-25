// ����Ʈ�� ���ÿ� �����Ǵ� ���� �帷
PO_LIGHTNING_WALL_CREATE	<- 2; // �нú� ������Ʈ�� state�� 2���� �����Ѵ�.
PO_LIGHTNING_WALL_MOVE		<- 3;
PO_LIGHTNING_WALL_DESTROY	<- 4;

PO_LIGHTNING_VAR_LIGHTNING_1 <- 0;
PO_LIGHTNING_VAR_LIGHTNING_2 <- 1;
PO_LIGHTNING_VAR_TARGET_X_POS <- 2;
PO_LIGHTNING_VAR_DIRECTION	  <- 3; // �帷�� ������ �׻� ���� ������ �ʱ� ������ ����


PO_LIGHTNING_1_DISTANCE_X <- 61;
PO_LIGHTNING_1_DISTANCE_Y <- 32;
PO_LIGHTNING_2_DISTANCE_X <- -76;
PO_LIGHTNING_2_DISTANCE_Y <- -32;

PO_LIGHTNING_TIMER_BLACK_MARK_SMALL  <- 0; // ���� �ٴ� �ڱ� ���� �ð�		
PO_LIGHTNING_TIMER_BLACK_MARK_BIG	 <- 1; // ū �ٴ� �ڱ� ���� �ð�
PO_LIGHTNING_TIMER_ELEC_MARK_1		 <- 2; // ���� ��ũ 1
PO_LIGHTNING_TIMER_ELEC_MARK_2		 <- 3; // ���� ��ũ 2		
		
		

// ����ƽ �����͸� �ݿ��Ͽ� ������ ����
function lightingWallObjAniResizeing(parentObj, obj){
	local parentChr = parentObj.getTopCharacter();
	if(!parentChr)
		return;
		
	local size = sq_GetIntData(parentChr, SKILL_LIGHTNING_WALL, 0);	
	size = size.tofloat()/100.0;
	
	local ani = sq_GetCurrentAnimation(obj);	
	if(ani)
		ani.resizeWithChild(size);	
}


// ������ ��ȭ�� ���� ������ ��ġ�� ����.
function getLightningWallPos(obj, offset) {
	local parentChr = obj.getTopCharacter();
	if(!parentChr)
		return offset;
			
	local walllGap = sq_GetIntData(parentChr, SKILL_LIGHTNING_WALL, 0);		
	offset = offset.tofloat() * (walllGap.tofloat()/100.0);
	
	return offset.tointeger();	
}

// �ٴ� ���� ��ũ ����
function lightningWallMakeElectMark(obj, x, y)
{
	local randNum = sq_getRandom(0,1);
	local elecMark  = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/8_el-p2_dodge_" + randNum + ".ani", 0, 0, 0);
	local x = obj.getXPos() + getLightningWallPos(obj, x);
	local y = obj.getYPos() + getLightningWallPos(obj, y);
	elecMark.setCurrentPos(x, y, 0);
	lightingWallObjAniResizeing(obj, elecMark);
	local ani = sq_GetCurrentAnimation(obj);
}

function setCustomData_po_ATLightningWall(obj, receiveData)
{
	if(!obj) return;
		
	local moveDistance = receiveData.readDword();	
	local attackPower  = receiveData.readDword();	
	local skill_level  = receiveData.readDword();	
	local prob		   = receiveData.readFloat();	
	local level		   = receiveData.readDword();	
	local duration	   = receiveData.readDword();	
	local lightDamage  = receiveData.readDword();	
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	
	sq_SetCurrentAttackBonusRate(attackInfo, attackPower);	
	sq_SetChangeStatusIntoAttackInfoWithEtc(attackInfo, 0, ACTIVESTATUS_LIGHTNING ,prob.tointeger() ,level ,duration, lightDamage, 0);
	sq_SetCurrentAttackeHitStunTime(attackInfo, 0);
	
	// �¿� ����Ʈ�� ��ü ����
	local var = obj.getVar();	
	local lightningObj1 = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/5_el-p_normal_1.ani", PO_LIGHTNING_1_DISTANCE_X, PO_LIGHTNING_1_DISTANCE_Y, 0);
	local lightningObj2 = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/5_el-p_normal_2.ani", PO_LIGHTNING_2_DISTANCE_X, PO_LIGHTNING_2_DISTANCE_Y, 0);
	lightingWallObjAniResizeing(obj, lightningObj1);
	lightingWallObjAniResizeing(obj, lightningObj2);
	
	var.setObject(PO_LIGHTNING_VAR_LIGHTNING_1, lightningObj1);
	var.setObject(PO_LIGHTNING_VAR_LIGHTNING_2, lightningObj2);	
		
	local targetXPos = sq_GetDistancePos(50, sq_GetDirection(obj), moveDistance); // ���������� x��ǥ 
	var.setInt(PO_LIGHTNING_VAR_TARGET_X_POS, targetXPos);	
	var.setInt(PO_LIGHTNING_VAR_DIRECTION,  sq_GetDirection(obj));	
		
	// ���� �帷�� ������ �׻� �������̾�� �Ѵ�.
	obj.setDirection(ENUM_DIRECTION_RIGHT);
	lightingWallObjAniResizeing(obj, obj);
	
	obj.sendStateOnlyPacket(PO_LIGHTNING_WALL_CREATE);
}



function onKeyFrameFlag_po_ATLightningWall(obj, keyIndex)
{
	// ������ ����
	if(keyIndex == 1) {
		sq_SetMyShake(obj,4,200);
		return false;		
	}
	
	return true;
}



function onTimeEvent_po_ATLightningWall(obj, timeEventIndex, timeEventCount)
{
	if(timeEventIndex == PO_LIGHTNING_TIMER_BLACK_MARK_SMALL) // �ٴڿ� �˴��� �ڱ�
	{
		if(obj.isCurrentAnimationIndex(0)) {			
			local var = obj.getVar();
			local lightningObj1 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_1);
			local lightningObj2 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_2);
						
			if(lightningObj1) {					
				local floorMark = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/0_bottom_normal_1.ani", 0, 0, 0);
				floorMark.setCurrentPos(lightningObj1.getXPos(), lightningObj1.getYPos(), 0);				
				lightingWallObjAniResizeing(obj, floorMark);
				sq_ChangeDrawLayer(floorMark, ENUM_DRAWLAYER_BOTTOM);				
			}
			
			if(lightningObj2) {							
				local floorMark = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/0_bottom_normal_1.ani", 0, 0, 0);
				floorMark.setCurrentPos(lightningObj2.getXPos(), lightningObj2.getYPos(), 0);					
				lightingWallObjAniResizeing(obj, floorMark);
				sq_ChangeDrawLayer(floorMark, ENUM_DRAWLAYER_BOTTOM);
			}
		
			return false;
		}
		else
			return true;
		
	}
	else if(timeEventIndex == PO_LIGHTNING_TIMER_BLACK_MARK_BIG)  // �ٴڿ� �˴��� �ڱ�
	{
		if(obj.isCurrentAnimationIndex(0)) {		
			local randNum = sq_getRandom(0,2);			
			local floorDark = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/0_bottom_normal_2.ani", 0, 0, 0);
			sq_ChangeDrawLayer(floorDark, ENUM_DRAWLAYER_BOTTOM);
			lightingWallObjAniResizeing(obj, floorDark);
			
			local floorElec = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/4_el-b_dodge_" + randNum+ ".ani", 0, 0, 0);			
			sq_ChangeDrawLayer(floorElec, ENUM_DRAWLAYER_BOTTOM);
			lightingWallObjAniResizeing(obj, floorElec);
			return false;
		}
		else 
			return true;
	}
	else if(timeEventIndex == PO_LIGHTNING_TIMER_ELEC_MARK_1)  // ���� �ܻ�
	{
		if(obj.isCurrentAnimationIndex(0)) {
			lightningWallMakeElectMark(obj, PO_LIGHTNING_1_DISTANCE_X , PO_LIGHTNING_1_DISTANCE_Y);			
			return false;
		}
		else 
			return true;
	}
	else if(timeEventIndex == PO_LIGHTNING_TIMER_ELEC_MARK_2) // ���� �ܻ�
	{
		if(obj.isCurrentAnimationIndex(0)) {
			lightningWallMakeElectMark(obj, PO_LIGHTNING_2_DISTANCE_X , PO_LIGHTNING_2_DISTANCE_Y);
			return false;
		}
		else 
			return true;
	}
				
				
				
	return true;	
} 

function setState_po_ATLightningWall(obj, state, datas)
{
	if(!obj) return;
	
	if(state == PO_LIGHTNING_WALL_MOVE) { //�̵�		
		setCurrentAnimationFromCutomIndex(obj, 0);			
		obj.sq_SetMoveParticle("Particle/ATLightningWall.ptl", 0.0, 0.0 );// �̵� ��ƼŬ ����		
			
		local parentChr		= obj.getTopCharacter();
		local size = sq_GetIntData(parentChr, SKILL_LIGHTNING_WALL, 0);	
		size = size.tofloat()/100.0; //������. ����� ũ�� �ٴڿ� �̹����� �׸��� ���ݵ� ������.
		
		local speed			= sq_GetIntData(parentChr, SKILL_LIGHTNING_WALL, 1);
		local speedPerSec	= speed.tofloat()/1000.0;
		local calltime		= 55.0/speedPerSec  * size;
				
		if(parentChr) {	
			// ������ ����Ʈ�� ���� ���� �������θ� ���δ�. ���� �ݴ���⿡�� ������� ������ �ڷ� �Ѵ�.
			if(parentChr.getDirection() != obj.getDirection()) 
				speed = -speed;
							
			sq_SetSpeedToMoveParticle(obj,0,speed); // x�� ���ǵ� ����			
		}

		obj.setTimeEvent(PO_LIGHTNING_TIMER_BLACK_MARK_SMALL, calltime.tointeger(),999,true); // ���� �ٴ� �ڱ� ���� �ð�		
		
		calltime = 100.0/speedPerSec * size;		
		obj.setTimeEvent(PO_LIGHTNING_TIMER_BLACK_MARK_BIG, calltime.tointeger(),999,true); // ū �ٴ� �ڱ� ���� �ð�
		
		calltime = 90.0/speedPerSec  * size;
		obj.setTimeEvent(PO_LIGHTNING_TIMER_ELEC_MARK_1, calltime.tointeger(),999,true); // ���� ��ũ
		
		calltime = 110.0/speedPerSec  * size;
		obj.setTimeEvent(PO_LIGHTNING_TIMER_ELEC_MARK_2, calltime.tointeger(),999,true); // ���� ��ũ
		
		local var = obj.getVar();
		local lightningObj1 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_1);
		local lightningObj2 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_2);					
			
		// ����Ʈ ���̱�    /|/|/|   <- �䷱ ���� ���� ����Ʈ
		local currentAni = sq_GetCurrentAnimation(lightningObj1);
		if(currentAni) {
			currentAni.addLayerAnimation(6,sq_CreateAnimation("","PassiveObject/Character/Mage/Animation/ATLightningWall/7_el-p1_dodge_1.ani"),true);
			
			currentAni = sq_GetCurrentAnimation(lightningObj2);
			currentAni.addLayerAnimation(6,sq_CreateAnimation("","PassiveObject/Character/Mage/Animation/ATLightningWall/7_el-p1_dodge_2.ani"),true);
		}
		lightingWallObjAniResizeing(obj, obj);
	}
	else if(state == PO_LIGHTNING_WALL_DESTROY) {
		obj.sq_RemoveMoveParticle(); // �̵���		
		setCurrentAnimationFromCutomIndex(obj, 1); // �ı� �ִ�		
		lightingWallObjAniResizeing(obj, obj);
		
		local var = obj.getVar();
		local lightningObj1 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_1);
		local lightningObj2 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_2);
		if(lightningObj1 && lightningObj2) {
			lightningObj1.setValid(false);
			lightningObj2.setValid(false);
			
			lightningObj1 = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/d5_el-p_normal_1.ani", PO_LIGHTNING_1_DISTANCE_X, PO_LIGHTNING_1_DISTANCE_Y, 0);
			lightningObj2 = sq_AddDrawOnlyAniFromParent(obj,"PassiveObject/Character/Mage/Animation/ATLightningWall/d5_el-p_normal_2.ani", PO_LIGHTNING_2_DISTANCE_X, PO_LIGHTNING_2_DISTANCE_Y, 0);
			
			var.setObject(PO_LIGHTNING_VAR_LIGHTNING_1, lightningObj1);
			var.setObject(PO_LIGHTNING_VAR_LIGHTNING_2, lightningObj2);		
		}
	}
}

function onAttack_po_ATLightningWall(obj, damager, boundingBox, isStuck)
{	
	if(sq_IsHoldable(obj,damager) && sq_IsGrabable(obj,damager) && !sq_IsFixture(damager)) {	
		local parentChr = obj.getTopCharacter();
		local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(damager, obj, SKILL_LIGHTNING_WALL, false, "Character/ATMage/LightningWall/ap_LightningWall.nut", true);				 
		if(parentChr && masterAppendage) {			
			sq_HoldAndDelayDie(damager, obj, true, true, true, 200, 200, ENUM_DIRECTION_NEUTRAL , masterAppendage);			
	
			local time = sq_GetIntData(parentChr, SKILL_LIGHTNING_WALL, 3); // ������ �����ð�
			local appendageInfo = masterAppendage.getAppendageInfo();
			appendageInfo.setValidTime(time);
		}
	}
	return 0;
}

function procAppend_po_ATLightningWall(obj)
{
	if(!obj) return;
	local var = obj.getVar();
	
	if(!var) return;
	
	local lightningObj1 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_1);
	local lightningObj2 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_2);
	
	local pos1X = getLightningWallPos(obj, PO_LIGHTNING_1_DISTANCE_X);	
	local pos1Y = getLightningWallPos(obj, PO_LIGHTNING_1_DISTANCE_Y);
	local pos2X = getLightningWallPos(obj, PO_LIGHTNING_2_DISTANCE_X);
	local pos2Y = getLightningWallPos(obj, PO_LIGHTNING_2_DISTANCE_Y);
			
	if(lightningObj1)
		lightningObj1.setCurrentPos(obj.getXPos() + pos1X.tointeger(), obj.getYPos()+ pos1Y.tointeger(), obj.getZPos()); // �ı��� �ƴ϶� �ı� �ִϷ� ��ü.
	if(lightningObj2)
		lightningObj2.setCurrentPos(obj.getXPos() + pos2X.tointeger(), obj.getYPos()+ pos2Y.tointeger(), obj.getZPos());	
	
	local targetXPos = var.getInt(PO_LIGHTNING_VAR_TARGET_X_POS);
	local direction = var.getInt(PO_LIGHTNING_VAR_DIRECTION);
	
	if(direction == ENUM_DIRECTION_RIGHT) {
		if(obj.getXPos() > targetXPos)
		{	
			sq_SetCurrentPos(obj, targetXPos, obj.getYPos(), obj.getZPos());
			obj.sendStateOnlyPacket(PO_LIGHTNING_WALL_DESTROY);
		}
	}
	else if(direction == ENUM_DIRECTION_LEFT) {
		if(obj.getXPos() < targetXPos)
		{	
			sq_SetCurrentPos(obj, targetXPos, obj.getYPos(), obj.getZPos());
			obj.sendStateOnlyPacket(PO_LIGHTNING_WALL_DESTROY);
		}
	}
	else {
		obj.sendStateOnlyPacket(PO_LIGHTNING_WALL_DESTROY);	 // ������ ������ ������� �������� �ı�
	}
	

}


function onEndCurrentAni_po_ATLightningWall(obj)
{
	if(!obj) return;
	
	if(obj.isCurrentAnimationIndex(1)) {
		if(obj.isMyControlObject())
			sq_SendDestroyPacketPassiveObject(obj); // ������� ����� �ı�
	}
}

function onDestroyObject_po_ATLightningWall(obj, destroyObj)
{
	if(!obj || isSameObject(obj,destroyObj)) {
		local var = obj.getVar();
		local lightningObj1 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_1);
		local lightningObj2 = var.getObject(PO_LIGHTNING_VAR_LIGHTNING_2);
		if(lightningObj1)
			lightningObj1.setValid(false); // �ı��� �ƴ϶� �ı� �ִϷ� ��ü.
		if(lightningObj2)
			lightningObj2.setValid(false);
	}
	
	local parentChr = obj.getTopCharacter();
	if(isSameObject(obj,parentChr)) {
		if(obj.isMyControlObject())
			sq_SendDestroyPacketPassiveObject(obj); 		
	}		
}