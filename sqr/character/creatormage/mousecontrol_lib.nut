DIR_X_I <- 0
DIR_Y_I <- 1

X_NORMALDASH_VELOCITY <- 286		/// �뽬 Ⱦ�̵����� ���� 1�ʵ��� �̵� �ȼ� ��
X_SLANTDASH_VELOCITY <- 238			/// �뽬 �밢�� �̵����� ���� 1�ʵ��� �̵� �ȼ� ��
Y_NORMALDASH_VELOCITY <- 136		/// �뽬 ���̵����� ���� 1�ʵ��� �̵� �ȼ� ��
Y_SLANTDASH_VELOCITY <- 114			/// �뽬 �밢�� �̵����� ���� 1�ʵ��� �̵� �ȼ� ��



// ���õ� ĳ������ ��ų�Ŵ����� �����մϴ�. �̹� ������Ÿ�Կ����� ������ �ص� AI�� ���߸� �ȵǱ� ������ AI Ȱ��ȭ ���¿��� ��ų ���Ը� ���� �����ϴ� ������ ���ϴ�.
// �׸��� ��ư�� ���������� ���� Ŀ�ǵ�üĿ�� �������ݴϴ�.
// aiMode�� true���.. ai����� Ŀ�ǵ�üĿ�� �����ϸ� aiMode�� false��� ai��帶 �����ϰ� ������ ���� ��Ʈ���� �� �ִ� Ŀ�ǵ�üĿ�� �����մϴ�.
function setCommandCheckerMyControlChracter(obj, aiMode)
{
	local aiChr = sq_GetCNRDObjectToSQRCharacter(obj);
	if(!aiChr)
		return;
	
	// aiChr�� Ŀ�ǵ� üĿ�� ����ϴ�.
	local cmdChecker = aiChr.getCommandChecker();	
	if(cmdChecker)
	{
		// ai ĳ���͸� ���̳���ĳ������ �մϴ�.	
		local onlyAiChr = sq_GetCNRDObjectToAICharacter(aiChr);
		// ���� aiĳ���Ϳ��� targetobject�� ���� �ƴ϶�� null�� �����մϴ�.
		// Ŀ�ǵ�üĿ ��ü �� targetobject�� ��۸��� �Ǿ� �ù��װ� �߻��Ͽ� targetobject�����͸� ��ó�� �մϴ�.
		sq_SetTargetObjectAICharacter(onlyAiChr, null, false);
		
		// ���������� �̿��ϱ� ���� ���� �÷��� �Դϴ�. ���� ai�� ��Ʈ���ϴ� ������Ʈ���� üũ�ϴ� �÷��� �Դϴ� (irdsqrcharacter)
		aiChr.setAIModeByControlObject(aiMode); 
		// Ŀ��Ʈ üũ���� ai��尡 on���� off���� üũ�ϴ� �÷��׸� �����ϴ� �Լ� �Դϴ�.
		cmdChecker.setAIMode(aiMode); 
		cmdChecker.commandListReset();
		
		// Ű���� ��� Ǯ��κ��Դϴ�.
		sq_SetEnableKeyInputType(cmdChecker, 0, true, 1);
		//cmdChecker.setEnableKeyInputType(0, true);
		
		aiChr.initCommandChecker(cmdChecker, aiMode);
		aiChr.setCommandChecker(cmdChecker);
		
		
		local skillMgr = aiChr.getSkillManager();
		
		if(skillMgr)
		{
			skillMgr.setParent(aiChr);
			skillMgr.setCommandChecker(cmdChecker);	// ��ų�Ŵ����� Ŀ�ǵ�üĿ�� ����
			local skillTree = aiChr.getCurrentSkillTree();
			skillMgr.addAllKeyCommand(skillTree);
			aiChr.flushCommandEnable();
		}
		
	}	
}

// �ڽ��� �ִ� ��ü���� üũ�ϴ� �Լ��Դϴ�.
function isObjectWithChild(obj)
{	
	local ismychr = sq_IsMyCharacter(obj);
	local chr = sq_GetCNRDObjectToCharacter(obj);
	
	//print(" ismychr:" + ismychr + " job:" + sq_getJob(chr));
	if(ismychr)
	{
		
		local childSize = sq_GetMyControlObjectSize(obj);
		
		if(childSize > 0)
			return true;
	}
	
	return false;
}

// ���� �������� ��Ʈ�ѿ�����Ʈ���� üũ�ϴ� �Լ��Դϴ�.
// �� �Ķ���ͷ� ���޵� obj�� ��Ʈ�� �Ǵ� ai chr���� üũ�ϴ� �Լ� �Դϴ�.
function isMasterControlObject(obj)
{
	if(!obj)
		return false;


	// ������ ĳ����(��ü) CNUser::myCharacter_�� �����ϴ�.
	if(sq_GetMyMasterCharacter())
	{
		// CNUser::myCharacter_ ���� myControlObject_ ���Ϳ��� find_if�� �̿��Ͽ� �´��� �ƴ��� ���س��ϴ�.
		local bRet = sq_GetMyMasterCharacter().isMyControlObject(obj);
		
		return bRet;
	}
	return false;
}


// ��û�� varStr�� obj_vector �� �ִ� obj���� 
// �ܰ����� �� ����ϴ�.
function releaseOutLine(obj, varStr)
{
	local objListSize = obj.getVar(varStr).get_obj_vector_size();	
	for(local i =0;i<objListSize;++i)
	{				
		local vObj = obj.getVar(varStr).get_obj_vector(i);
		
		if(vObj == null)
			continue;
			
		vObj.setCustomOutline(false, 0, true, 2);
	}
	
	obj.getVar(varStr).clear_obj_vector();	
}


// ��Ʈ���ϴ� ��� ������Ʈ�� Ŀ�ǵ� üĿ�� ai���� ��ȯ�մϴ�.
function setAIControlObjCommandChecker(obj)
{
	local objListSize = sq_GetMyControlObjectSize(obj);
	for(local i =0;i < objListSize;++i)
	{
		local vObj =  sq_GetMyControlObject(obj, i);
		
		if(vObj == null)
			continue;

		local grabChr = sq_GetCNRDObjectToSQRCharacter(vObj);
		
		if(grabChr)
		{
			local cmdChecker = grabChr.getCommandChecker();
			grabChr.initCommandChecker(cmdChecker, true); // �ڽ��� ��Ʈ���ϱ� ���� Ŀ�ǵ�üĿ ai�÷��� �κ��� true�� �ٲߴϴ�.
			grabChr.setCommandChecker(cmdChecker);
			// Ŀ��Ʈ üũ���� ai��尡 on���� off���� üũ�ϴ� �÷��׸� �����ϴ� �Լ� �Դϴ�.
			cmdChecker.setAIMode(true);  
			// ���������� �̿��ϱ� ���� ���� �÷��� �Դϴ�. ���� ai�� ��Ʈ���ϴ� ������Ʈ���� üũ�ϴ� �÷��� �Դϴ� (irdsqrcharacter)
			grabChr.setAIModeByControlObject(true);  
			
			local onlyAiChr = sq_GetCNRDObjectToAICharacter(grabChr);

			sq_SetTargetObjectAICharacter(onlyAiChr, null, false);

			local skillMgr = grabChr.getSkillManager();
			
			if(skillMgr)
			{
				skillMgr.setParent(grabChr);
				skillMgr.setCommandChecker(cmdChecker);	// ��ų�Ŵ����� Ŀ�ǵ�üĿ�� ����
				local skillTree = grabChr.getCurrentSkillTree();
				skillMgr.addAllKeyCommand(skillTree);
				grabChr.flushCommandEnable();
			}
		}
	}
}

// ���õ� obj���Ϳ��� obj �ܰ����� �׸��ϴ�.
function setOutLine(obj, varStr, rgb)
{
	local objListSize = obj.getVar(varStr).get_obj_vector_size();	
	for(local i =0;i<objListSize;++i)
	{				
		local vObj = obj.getVar(varStr).get_obj_vector(i);
		
		if(vObj == null)
			continue;

		vObj.setCustomOutline(true, rgb, false, 1);
	}
}

// ��� orgStr ������ ������Ʈ ���͸� ��� dstStr ������ ������Ʈ ���Ϳ� �Ȱ��� ī���մϴ�.
function objCopy(obj, dstStr, orgStr)
{
	obj.getVar(dstStr).clear_obj_vector();
	
	local objListSize = obj.getVar(orgStr).get_obj_vector_size();	
	for(local i =0;i<objListSize;++i)
	{				
		local vObj = obj.getVar(orgStr).get_obj_vector(i);
		
		if(vObj == null)
			continue;
			
		obj.getVar(dstStr).push_obj_vector(vObj);
	}	
}


// �������� �´� ������Ʈ�� �ִ� üũ�ؼ� ������.. ��� hoverd ���� ���Ϳ� Ǫ���մϴ�.
function pushOverClickableObject(obj, x, y, w, h)
{
	if(!obj)
		return null;
		
	local objectManager = obj.getObjectManager();
	

	if (objectManager == null)
		return null;
		
	local target = null;

	releaseOutLine(obj, "hoverd");
	
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		
		if (object)
		{
			// ���� �ƴϰ� ��ü�� �ڽ��̰� ĳ�����̰� 
			 //if( (obj.isEnemy(object) == false && isMasterControlObject(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_CHARACTER)) || sq_IsMyCharacter(object))
			 if( (obj.isEnemy(object) == false && isMasterControlObject(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_CHARACTER)))
			 {
				//sq_GetScreenXPos
				local width = sq_GetWidthObject(object);
				local height = sq_GetHeightObject(object);
				local screenX = sq_GetScreenXPos(object) - (width / 2);
				local screenY = sq_GetScreenYPos(object) - height;
				
				local isUnion = sq_IsIntersectRect(screenX, screenY, width, height, x, y, w, h);
				
				if(isUnion)
				{
					object.setCustomOutline(true, sq_RGBA(255, 255, 0, 255), false, 1);
					obj.getVar("hoverd").push_obj_vector(object);
				}
			}
		}
	}
}



// ���ϴ� �������� ������Ʈ�� �̵���ŵ�ϴ�. 
// �̵����Ѿ� �ϴ� ������Ʈ�� �� ���� ����Ǿ�� �ϴ� �����Լ� �Դϴ�.
function procDestinationMove(obj)
{
	//obj.getVar("dstpos").clear_vector();
	local state = obj.getState();
	
	if (state != STATE_DASH && state != STATE_STAND)
		return;

	// dstpos�� �̵��ϰ��� �ϴ� ������ pos�Դϴ�.
	// 0(DIR_X_I) �� x���� 1(DIR_Y_I) �� y�����Դϴ�.
	if (obj.getVar("dstpos").size_vector() == 0)
		return;		
		
	// movedir�� �̵������� Ǫ���� vector����Ÿ �Դϴ�.
	// 0(DIR_X_I) �� x���� 1(DIR_Y_I) �� y�����Դϴ�.
	if (obj.getVar("movedir").size_vector() == 0)
	{
		obj.getVar("movedir").push_vector(4);
		obj.getVar("movedir").push_vector(4);
	}
		
	
	local destinationXPos_ = obj.getVar("dstpos").get_vector(DIR_X_I);
	local destinationYPos_ = obj.getVar("dstpos").get_vector(DIR_Y_I);


	local xMoveDirection_ = obj.getVar("movedir").get_vector(DIR_X_I);
	local yMoveDirection_ = obj.getVar("movedir").get_vector(DIR_Y_I);
	
	if(obj.getDirection() != xMoveDirection_)
	{
		obj.setCurrentDirection(xMoveDirection_);
	}

	// ���� ���������� ���� ������ �������ִ� �κ��Դϴ�.
	
	// �켱 x��ǥ�� ���� ������ �����մϴ�.
	//if(obj.getXPos() > destinationXPos_ && xMoveDirection_ == ENUM_DIRECTION_RIGHT)
	//{
		//// x��ǥ �����κ��Դϴ�. ��ǥ ��ǥ���� �������� ��� �����ϴ� �κ��Դϴ�.	
		////  ���������� �������� �� : ��ǥ ���� �� ����
		////sq_MoveToNearMovablePos(obj, destinationXPos_, obj.getYPos(), obj.getZPos(), destinationXPos_, obj.getYPos(), obj.getZPos(), 100, -1, 5);
		//obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
	//}
	//else if (obj.getXPos() < destinationXPos_ && xMoveDirection_ == ENUM_DIRECTION_LEFT)
	//{
		//// x��ǥ �����κ��Դϴ�. ��ǥ ��ǥ���� �������� ��� �����ϴ� �κ��Դϴ�.	
		////  �������� �������� �� : ��ǥ ���� �� ����
		////sq_MoveToNearMovablePos(obj, destinationXPos_, obj.getYPos(), obj.getZPos(), destinationXPos_, obj.getYPos(), obj.getZPos(), 100, -1, 5);
		//obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
	//}
	//else if (obj.getXPos() < destinationXPos_)
	
	local offset = sq_Abs(obj.getXPos() - destinationXPos_);
	if(offset <= 1)
	{
		sq_MoveToNearMovablePos(obj, destinationXPos_, obj.getYPos(), obj.getZPos(), destinationXPos_, obj.getYPos(), obj.getZPos(), 100, -1, 5);
		obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
	}
	else
	{
		//print(" offset:" + offset);
		if (obj.getXPos() < destinationXPos_)
		{
			obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_RIGHT);
		}
		else if (obj.getXPos() > destinationXPos_)
		{
			obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_LEFT);
		}
		else
			obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
	}
	//////////////////////////////////////////////////


	// �켱 y��ǥ�� ���� ������ �����մϴ�.
	if (obj.getYPos() > destinationYPos_ && yMoveDirection_ == ENUM_DIRECTION_DOWN)
	{
		// y��ǥ �����κ��Դϴ�. ��ǥ ��ǥ���� �������� ��� �����ϴ� �κ��Դϴ�.
		//  �Ʒ������� �������� �� : ��ǥ ���� �� ����
		//sq_MoveToNearMovablePos(obj, obj.getXPos(), destinationYPos_, obj.getZPos(), obj.getXPos(), destinationYPos_, obj.getZPos(), 100, -1, 5);
		obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_NEUTRAL);
	}
	else if (obj.getYPos() < destinationYPos_ && yMoveDirection_ == ENUM_DIRECTION_UP)
	{
		// y��ǥ �����κ��Դϴ�. ��ǥ ��ǥ���� �������� ��� �����ϴ� �κ��Դϴ�.
		//  �������� �������� �� : ��ǥ ���� �� ����
		//sq_MoveToNearMovablePos(obj, obj.getXPos(), destinationYPos_, obj.getZPos(), obj.getXPos(), destinationYPos_, obj.getZPos(), 100, -1, 5);
		obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_NEUTRAL);
	}
	else if (obj.getYPos() < destinationYPos_)
		obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_DOWN);
	else if (obj.getYPos() > destinationYPos_)
	{
		obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_UP);
		local direction = obj.getVar("movedir").get_vector(DIR_Y_I);
	}
	else
		obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_NEUTRAL);
	//////////////////////////////////////////////////////////////////////////////
	


	// ������ϴ� ������ üũ�Ͽ� ���߰� �մϴ�.
	// �������� �����߰ų� ������Ʈ�� state�� stand�� dash���°� �ƴ϶�� �̵���Ű�� �ȵ˴ϴ�.
	// ���� ��Ҹ� ��� ���ڸ� �ȱ⳪ �ٱ⸦ �ϸ� �ȵǱ� ������ ���� ��ǥ�� �����ߴٰ� 
	// ���������ӿ��� ���غ��� ���� ��ǥ��� ������ ���߰� �մϴ�.
	
	local state = obj.getState(); 
	local beforeXPos = obj.getVar("dstpos").get_vector(2); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (x)
	local beforeYPos = obj.getVar("dstpos").get_vector(3); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (y)
	
	// �������Ӱ� ������ �� ī��Ʈ�� �÷��༭ ī��Ʈ�� ������� á���� �̵��Ұ��� �Ǵ��Ͽ� ���߰� �մϴ�. 
	// �ٷ� ó�� �̵������� �������Ӱ� ������ ��ǥ�� ���⶧���� �� ���� ����� ����ϴ�.
	local samdCnt = obj.getVar("dstpos").get_vector(4);
	if(beforeXPos == obj.getXPos() && beforeYPos == obj.getYPos())
	{
		obj.getVar("dstpos").set_vector(4, samdCnt + 1);
		samdCnt = obj.getVar("dstpos").get_vector(4);
	}
	
	if(obj.isMyControlObject())
	{
		local stage = sq_GetObjectManagerStage(obj);
		local control = stage.getMainControl();
		
		if(!control.IsRBDown())
		{
			if(destinationXPos_ == obj.getXPos() && destinationYPos_ == obj.getYPos() || (state != STATE_STAND && state != STATE_DASH))
			{
				//print(" arrived dstX:" + destinationXPos_ + " getX:" + obj.getXPos() + " samdCnt:" + samdCnt);
				obj.getVar("dstpos").clear_vector();
				sq_SetVelocity(obj, 0, 0.0);
				sq_SetVelocity(obj, 1, 0.0);
				obj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
				obj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_NEUTRAL);

				local actobj = sq_GetCNRDObjectToActiveObject(obj);
				if(actobj)
				{
					print(" state_stand"); 
					sq_AddSetStatePacketCollisionObject(actobj, STATE_STAND, null, STATE_PRIORITY_USER, true);
				}
				
				return;
			}
		}
	}



	//  �ӷ� �˾Ƴ���
	local isDash = obj.getVar("dash").get_vector(0);
	
	// �⺻���� ��ŷ������ �⺻�ӵ��� ���õ˴ϴ�.
	local xNormalVel = X_NORMALMOVE_VELOCITY;
	local yNormalVel = Y_NORMALMOVE_VELOCITY;
	local xSlantVel = X_SLANTMOVE_VELOCITY;
	local ySlantVel = Y_SLANTMOVE_VELOCITY;
	
	// �뽬��� �ӵ��� �޸������մϴ�.
	if(isDash)
	{
		xNormalVel = X_NORMALDASH_VELOCITY;
		yNormalVel = Y_NORMALDASH_VELOCITY;
		xSlantVel = X_SLANTDASH_VELOCITY;
		ySlantVel = Y_SLANTDASH_VELOCITY;
	}
	
	local xVelocity = xNormalVel;
	local yVelocity = yNormalVel;
	
	xMoveDirection_ = obj.getVar("movedir").get_vector(DIR_X_I);
	yMoveDirection_ = obj.getVar("movedir").get_vector(DIR_Y_I);

	if(yMoveDirection_ == ENUM_DIRECTION_NEUTRAL)
		xVelocity = xNormalVel;
	else
		xVelocity = xSlantVel;
		
	if(xMoveDirection_ == ENUM_DIRECTION_NEUTRAL)
		yVelocity = yNormalVel;
	else
		yVelocity = ySlantVel;
		
	if (xMoveDirection_ == ENUM_DIRECTION_NEUTRAL)
		xVelocity = xVelocity.tofloat() * 0.0;
	else if (xMoveDirection_ == ENUM_DIRECTION_LEFT)
		xVelocity = xVelocity.tofloat() * -1.0;
		
	if (yMoveDirection_ == ENUM_DIRECTION_NEUTRAL)
		yVelocity = yVelocity.tofloat() * 0.0;
	else if (yMoveDirection_ == ENUM_DIRECTION_UP)
		yVelocity = yVelocity.tofloat() * -1.0;

	sq_SetVelocity(obj, DIR_X_I, xVelocity.tofloat());
	sq_SetVelocity(obj, DIR_Y_I, yVelocity.tofloat());
	
	// ���� ��Ҹ� ��� ���ڸ� �ȱ⳪ �ٱ⸦ �ϸ� �ȵǱ� ������ ���� ��ǥ�� �����ߴٰ� 
	// ���������ӿ��� ���غ��� ���� ��ǥ��� ������ ���߰� �մϴ�.
	obj.getVar("dstpos").set_vector(2, obj.getXPos()); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (x)
	obj.getVar("dstpos").set_vector(3, obj.getYPos()); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (y)
	
}

// �Ķ���ͷ� ���޵� obj�� �����ǥ �̵��ϴ� ������ �����մϴ�.
function setMovGrabObj(obj, dstX, dstY, isDash)
{
	//  �̵� ������ ��ǥ��
	//  ������ �̵� ����
	local actobj = sq_GetCNRDObjectToActiveObject(obj);
	
	if(actobj)
	{
		actobj.getVar("dstpos").clear_vector();
		actobj.getVar("dstpos").push_vector(dstX);
		actobj.getVar("dstpos").push_vector(dstY);
		actobj.getVar("dstpos").push_vector(0); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (x)
		actobj.getVar("dstpos").push_vector(0); // �������ӿ� �̵��ߴ� ��ǥ ������� �Դϴ�. (y)
		actobj.getVar("dstpos").push_vector(0); // �������ӿ� �̵��ߴ� ��ǥ�� ������ �� ī��Ʈ ���� �Դϴ�.
		
		actobj.getVar("movedir").set_vector(DIR_X_I, ENUM_DIRECTION_NEUTRAL);
		actobj.getVar("movedir").set_vector(DIR_Y_I, ENUM_DIRECTION_NEUTRAL);
		
		actobj.getVar("dash").clear_vector();
		actobj.getVar("dash").push_vector(isDash);
		
		local grabChr = sq_GetCNRDObjectToSQRCharacter(actobj); // chr�� ���̳���ĳ������ �մϴ�.
		
		//if(grabChr)
			//setCommandCheckerMyControlChracter(grabChr, false);
		
		//print(" move obj:" + obj + " dash:" + isDash);
		if(isDash)
		{
			sq_AddSetStatePacketCollisionObject(actobj, STATE_DASH, null, STATE_PRIORITY_USER, true);
			//sq_AddSetStatePacketActiveObject(actobj, STATE_DASH, null, STATE_PRIORITY_USER);
		}
		else
		{
			sq_AddSetStatePacketCollisionObject(actobj, STATE_STAND, null, STATE_PRIORITY_USER, true);
			//sq_AddSetStatePacketActiveObject(actobj, STATE_STAND, null, STATE_PRIORITY_USER);
		}
	}

}



// ���õ� ĳ������ ��ų�Ŵ����� �����մϴ�. �̹� ������Ÿ�Կ����� ������ �ص� AI�� ���߸� �ȵǱ� ������ AI Ȱ��ȭ ���¿��� ��ų ���Ը� ���� �����ϴ� ������ ���ϴ�.
// �׸��� ��ư�� ���������� ���� Ŀ�ǵ�üĿ�� �������ݴϴ�.
function setSkillManagerMyControlChracter(aiChr)
{
	if(!aiChr)
		return;
	
	local cmdChecker = aiChr.getCommandChecker();
	
	if(cmdChecker)
	{
		local onlyAiChr = sq_GetCNRDObjectToAICharacter(aiChr);
		sq_SetTargetObjectAICharacter(onlyAiChr, null, false);
		// ���������� �̿��ϱ� ���� ���� �÷��� �Դϴ�. ���� ai�� ��Ʈ���ϴ� ������Ʈ���� üũ�ϴ� �÷��� �Դϴ� (irdsqrcharacter)
		// ĳ���� ���õǴ��� ai��尡 �����־���ϱ� ������ true�� ���������ݴϴ�.
		aiChr.setAIModeByControlObject(true); 
		
		local skillMgr = aiChr.getSkillManager();
		
		if(skillMgr)
		{
			skillMgr.setParent(aiChr);
			skillMgr.setCommandChecker(cmdChecker);	// ��ų�Ŵ����� Ŀ�ǵ�üĿ�� ����
			local skillTree = aiChr.getCurrentSkillTree();
			skillMgr.addAllKeyCommand(skillTree);
			aiChr.flushCommandEnable();
		}
	}
}


// ��û�� �Ķ������ aiChr�� ��Ʈ���� �� �ֵ��� Ŀ�ǵ�üĿ�� ��ų�Ŵ����� �����մϴ�.
function setMyControlChracter(aiChr)
{
	if(!aiChr)
		return;
	
	local cmdChecker = aiChr.getCommandChecker();	
	if(cmdChecker)
	{
		local onlyAiChr = sq_GetCNRDObjectToAICharacter(aiChr);
		sq_SetTargetObjectAICharacter(onlyAiChr, null, false);
		
		aiChr.setAIModeByControlObject(false); // ���������� �̿��ϱ� ���� ���� �÷��� �Դϴ�. ���� ai�� ��Ʈ���ϴ� ������Ʈ���� üũ�ϴ� �÷��� �Դϴ� (irdsqrcharacter)
		cmdChecker.setAIMode(false); // Ŀ��Ʈ üũ���� ai��尡 on���� off���� üũ�ϴ� �÷��׸� �����ϴ� �Լ� �Դϴ�.
		cmdChecker.commandListReset();
		aiChr.initCommandChecker(cmdChecker, false);
		aiChr.setCommandChecker(cmdChecker);
		
		local skillMgr = aiChr.getSkillManager();
		
		if(skillMgr)
		{
			skillMgr.setParent(aiChr);
			skillMgr.setCommandChecker(cmdChecker);	// ��ų�Ŵ����� Ŀ�ǵ�üĿ�� ����
			local skillTree = aiChr.getCurrentSkillTree();
			skillMgr.addAllKeyCommand(skillTree);
			aiChr.flushCommandEnable();
		}
	}

}


// �������� �´� ������Ʈ�� �ִ� üũ�ؼ� ������.. ������Ʈ ��ü�� �����մϴ�.
function getOverClickableEnemyObject(obj, x, y)
{
	if(!obj)
		return null;
		
	local group = -1;
	local uniqueId = -1;
	
	local objectManager = obj.getObjectManager();
	

	if (objectManager == null)
		return null;
		
	local target = null;

	//releaseOutLine(obj, "hoverd");
	
	for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
	{
		local object = objectManager.getCollisionObject(i);
		
		if (object)
		{
			// ���� �ƴϰ� ��ü�� �ڽ��̰� ĳ�����̰� 
			 if( (obj.isEnemy(object) == true && object.isInDamagableState(obj)) )
			 {
				//local width = sq_GetWidthObject(object);
				//local height = sq_GetHeightObject(object);
				//local screenX = sq_GetScreenXPos(object) - (width / 2);
				//local screenY = sq_GetScreenYPos(object) - height;
				//
				//local isUnion = sq_IsIntersectRect(screenX, screenY, width, height, x, y, w, h);
				local isUnion = object.isOverPos(x, y);
				
				if(isUnion)
				{
					group = sq_GetGroup(object);
					uniqueId = sq_GetUniqueId(object);
					//print(" group:" + group + " uniqueId:" + uniqueId);
					//object.setCustomOutline(true, sq_RGBA(255, 255, 0, 255), false, 2);
					//return group, uniqueId;
					return object;
				}
			}
		}
	}
	
	return null;
}


// ��������쿡�� �ڽ��� ��Ʈ�ѿ�����Ʈ�� �����ϴ� �κ��Դϴ�. ��
// #define getMyCharacter()		(getMyControlCharacter()) �� �ٲ��ִ� �κ��Դϴ�. 
function setConrolCharacter(obj, index)
{
	local controlSize = sq_GetMyControlObjectSize(obj);
	
	if(index < 0 || controlSize <= index)
		return;
	
	releaseOutLine(obj, "grabobj");
	releaseOutLine(obj, "hoverd");
	//
	local vObj = sq_GetMyControlObject(obj, index); // ���õ� ĳ���͸� ���´�..
	//
	local grabChr = sq_GetCNRDObjectToSQRCharacter(vObj); // chr�� ���̳���ĳ������ �մϴ�.
	//
	if(grabChr)
	{
		// ��Ʈ���ϴ� ��� ������Ʈ�� Ŀ�ǵ� üĿ�� ai���� ��ȯ�մϴ�.
		setAIControlObjCommandChecker(obj); // ���õ� ĳ������ Ŀ�ǵ�üĿ�� ���� ai�� �ٲ۴�.
		//// ĳ���� ����
		obj.getVar("grabobj").push_obj_vector(vObj); // grabobj 
		// ���õ� ĳ������ ��ų�Ŵ����� �����մϴ�. �̹� ������Ÿ�Կ����� ������ �ص� AI�� ���߸� �ȵǱ� ������ AI Ȱ��ȭ ���¿��� ��ų ���Ը� ���� �����ϴ� ������ ���ϴ�.
		// �׸��� ��ư�� ���������� ���� Ŀ�ǵ�üĿ�� �������ݴϴ�.
		setSkillManagerMyControlChracter(grabChr);
		// ���ε� �Լ� �Դϴ�. CNUser::setMyControlCharacter(character); grabChr�� ��Ʈ���ϴ� ĳ���Ͷ�� �˷��ݴϴ�.
		// CNUser::myControlCharacter_ = grabChr�� �˴ϴ�.
		sq_SetMyControlCharacter(grabChr);
	}
}
