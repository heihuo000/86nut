

function checkExecutableSkill_TripleTap(obj)
{
	if(!obj) return false; 
	local isUse = obj.sq_IsUseSkill(SKILL_TRIPLETAB);
	if(isUse)
	{
		local pIntVec = sq_GetGlobalIntVector();
		sq_IntVectorClear(pIntVec);
		sq_IntVectorPush(pIntVec, 0);
		obj.addSetStatePacket(STATE_TRIPLETAB, pIntVec, STATE_PRIORITY_FORCE, false, "");
		return true;
	}
	return false;
}

function checkCommandEnable_TripleTap(obj)
{
	if(!obj) return false; 
	return true;
}

function onSetState_TripleTap(obj, state, datas, isResetTimer)
{
	if(!obj) return false;
	print("in");
	local subState = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(subState);
	obj.sq_StopMove();
	local isDown = 1;
	local upPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL);
	local downPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL);
	local targetObj = findAngleTarget(obj, 220, 90, 100);
	if (subState == 0)
	targetObj = 0;
	if (downPress || targetObj && !upPress)
	isDown = 0;

	obj.getVar("down").clear_vector();
	obj.getVar("down").push_vector(isDown);
	switch(subState)
	{
		case 0:
			obj.getVar().clear_vector();
			obj.getVar().push_vector(0);

			obj.sq_SetCurrentAnimation(CUSTOM_ANI_tripletaba_01_body + 4 * isDown);
			obj.sq_SetCurrentAttackInfo(ATTACKINFO_THREESHOOT_HIT_DOWN + isDown);
			local damage = obj.sq_GetBonusRateWithPassive(SKILL_TRIPLETAB , STATE_TRIPLETAB, 0, 1.0);
			obj.sq_SetCurrentAttackBonusRate(damage);
			break;
		case 1:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_tripletaba_02_body + 4* isDown);
			break;
		case 2:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_tripletaba_03_body + 4* isDown);
			break;
		case 3:
			obj.sq_SetCurrentAnimation(CUSTOM_ANI_tripletaba_04_body + 4 * isDown);
			break;
	}
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED,SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}

function onAttack_TripleTap(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	if(substate == 0)
	{
		obj.sq_SetShake(obj, 5, 100);
	}
	
}

function onCreateObject_TripleTap(obj, createObject)
{
	if(!obj) return;
	local state = obj.sq_GetState();
	if(state == STATE_TRIPLETAB)
	{
		local Object1 = sq_GetCNRDObjectToCollisionObject(createObject); 
		if(Object1)
		{
			local substate = obj.getSkillSubState();
			switch(Object1.getCollisionObjectIndex())
			{
				case 22001:
				case 22004:
				case 22007:
				case 22010:
				case 22013:
				case 22002:
				case 22005:
				case 22008:
				case 22011:
				case 22014:
					if (substate == 1||substate == 2)
					{
						obj.getVar("12s").push_obj_vector(Object1);					
					}
					if(substate == 3 && !obj.getVar("12s").is_obj_vector(Object1))
					{
						obj.getVar("3s").push_obj_vector(Object1);	
					}
				break;
			}
		}
	}
}

function onProc_TripleTap(obj)
{
	if(!obj) return;
	local substate = obj.getSkillSubState();
	switch (substate)
	{
		case 1:
		case 2:
				local array = [22001,22002,22004,22005,22007,22008,22010,22011,22013,22014];
				for(local z=0;z<array.len();++z)
				{
					local ObjectID = array[z];
					local Count = obj.getMyPassiveObjectCount(ObjectID);
					for(local i=0;i<Count;++i)
					{
						local object = obj.getMyPassiveObject(ObjectID, i);
						local objecttt = obj.getVar("12s").is_obj_vector(object);
						if(object && objecttt)
						{
							local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_TRIPLETAB, STATE_TRIPLETAB, 1, 1.0);
							local attackInfo = sq_GetCurrentAttackInfo(object);
							sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
						}
					}
				}
			break;
		case 3:
				local array = [22001,22002,22004,22005,22007,22008,22010,22011,22013,22014];
				for(local z=0;z<array.len();++z)
				{
					local ObjectID = array[z];
					local Count = obj.getMyPassiveObjectCount(ObjectID);
					for(local i=0;i<Count;++i)
					{
						local object = obj.getMyPassiveObject(ObjectID, i);
						local objecttt = obj.getVar("3s").is_obj_vector(object);
						if(object && objecttt)
						{
							local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_TRIPLETAB, STATE_TRIPLETAB, 2, 1.0);
							local attackInfo = sq_GetCurrentAttackInfo(object);
							sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
						}
					}
				}
			break;
	}
}

function onKeyFrameFlag_TripleTap(obj,flagIndex)
{
	if(!obj) return false;
	local isDown = obj.getVar("down").get_vector(0);
	local WeaponSubType = obj.getWeaponSubType();
	switch(flagIndex)
	{
		case 0:
			local subState = obj.getSkillSubState();
			switch(subState)
			{
				case 1:
				case 2:
					obj.sq_SetShake(obj, 1, 20);
					if (isDown == 0)
					{
						switch(WeaponSubType)
						{
							case 0:
								obj.sq_PlaySound("G_WREVOLVERB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapD0", "character/gunner/particle/tripletap_revolver.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),70),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);	
							break;					
							case 1:
								obj.sq_PlaySound("G_SMALLGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapD1", "character/gunner/particle/tripletap_automatic.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),70),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);							
							break;
							case 2:
								obj.sq_PlaySound("G_MUSKETB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapD2", "character/gunner/particle/tripletap_musket.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),70),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);	
								createHeadShotDown(obj, "character/gunner/effect/animation/musketdust/musketdustlarge.ani", 0, -1, 100,ENUM_DRAWLAYER_NORMAL,true,0,true,100,"")					
							break;
							case 3:
								obj.sq_PlaySound("G_HCANNONB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapD3", "character/gunner/particle/tripletap_cannon.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),90),obj.getYPos(), obj.getZPos()+70);
								sq_AddParticleObject(obj, particleCreater);
								createHeadShotDown(obj, "character/gunner/effect/animation/shooteffect/uphandcannon.ani",130, 0, 70,ENUM_DRAWLAYER_NORMAL,true,-40,true,100,"")
							break;
							case 4:
								obj.sq_PlaySound("G_BOWGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapD4", "character/gunner/particle/tripletap_bowgun.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),70),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);							
							break;
						}
					}else
					{
						switch(WeaponSubType)
						{
							case 0:
								obj.sq_PlaySound("G_WREVOLVERB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapU0", "character/gunner/particle/upattackrevolver.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
							break;
							case 1:
								obj.sq_PlaySound("G_SMALLGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapU1", "character/gunner/particle/upattackautomatic.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
							break;
							case 2:
								obj.sq_PlaySound("G_MUSKETB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapU2", "character/gunner/particle/upattackmusket.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
								createHeadShotDown(obj, "character/gunner/effect/animation/musketdust/musketdustlarge.ani",
									0, -1, 120,ENUM_DRAWLAYER_NORMAL,true,0,true,100,"")
							break;
							case 3:
								obj.sq_PlaySound("G_HCANNONB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapU3", "character/gunner/particle/upattackhandcannon.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),120),obj.getYPos(), obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
								als_ani(obj, "character/gunner/effect/animation/shooteffect/uphandcannon.ani", 130, 0, 110, 0, 100, 0, 1, 1.0);
							break;
							case 4:
								obj.sq_PlaySound("G_BOWGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTapU4", "character/gunner/particle/upattackbowgun.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
							break;
						}
					}
					break;
				case 3:
					obj.sq_SetShake(obj, 3, 80);
					if (isDown == 0)
					{
						switch(WeaponSubType)
						{
							case 0:
								obj.sq_PlaySound("G_WREVOLVERB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3D0", "character/gunner/particle/tripletap_revolver.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);
								obj.sq_PlaySound("R_PANING");
							break;					
							case 1:
								obj.sq_PlaySound("G_SMALLGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3D1", "character/gunner/particle/tripletap_automatic.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);							
							break;
							case 2:
								obj.sq_PlaySound("G_MUSKETB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3D2", "character/gunner/particle/tripletap_musket.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);	
								createHeadShotDown(obj, "character/gunner/effect/animation/musketdust/musketdustlarge.ani",
									0, -1, 100,ENUM_DRAWLAYER_NORMAL,true,0,true,100,"")					
							break;
							case 3:
								obj.sq_PlaySound("G_HCANNONB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3D3", "character/gunner/particle/tripletap_cannon.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),70),obj.getYPos(), obj.getZPos()+70);
								sq_AddParticleObject(obj, particleCreater);	
								createHeadShotDown(obj, "character/gunner/effect/animation/shooteffect/uphandcannon.ani",110, 0, 70,ENUM_DRAWLAYER_NORMAL,true,-40,true,100,"")
							break;
							case 4:
								obj.sq_PlaySound("G_BOWGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3D4", "character/gunner/particle/tripletap_bowgun.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);
							break;
						}
					}else
					{
						switch(WeaponSubType)
						{
							case 0:
								obj.sq_PlaySound("G_WREVOLVERB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3U0", "character/gunner/particle/upattackrevolver.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
								obj.sq_PlaySound("R_PANING");
							break;
							case 1:
								obj.sq_PlaySound("G_SMALLGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3U1", "character/gunner/particle/upattackautomatic.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
							break;
							case 2:
								obj.sq_PlaySound("G_MUSKETB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3U2", "character/gunner/particle/upattackmusket.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
								createHeadShotDown(obj, "character/gunner/effect/animation/musketdust/musketdustlarge.ani",
									-30, -1, 120,ENUM_DRAWLAYER_NORMAL,true,0,true,100,"")
							break;
							case 3:
								obj.sq_PlaySound("G_HCANNONB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3U3", "character/gunner/particle/upattackhandcannon.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),110),obj.getYPos(), obj.getZPos()+120);
								sq_AddParticleObject(obj, particleCreater);
								als_ani(obj, "character/gunner/effect/animation/shooteffect/uphandcannon.ani", 120, -1, 120, 0, 100, 0, 1, 1.0);
							break;
							case 4:
								obj.sq_PlaySound("G_BOWGUNB");
								local particleCreater = obj.getVar("TripleTap1").GetparticleCreaterMap("TripleTap3U4", "character/gunner/particle/upattackbowgun.ptl", obj);
								particleCreater.Restart(0);
								particleCreater.SetPos(sq_GetDistancePos(obj.getXPos(), obj.getDirection(),50),obj.getYPos()-1, obj.getZPos()+110);
								sq_AddParticleObject(obj, particleCreater);
							break;
						}
					}
					break;
			}
			break;
	}
	return true;
}

function onEndCurrentAni_TripleTap(obj)
{
	if(!obj) return false;
	local subState = obj.getSkillSubState();
	switch(subState)
	{
		case 0:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(1);
			obj.sq_AddSetStatePacket(STATE_TRIPLETAB, STATE_PRIORITY_USER, true);
			break;
		case 1:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(2);
			obj.sq_AddSetStatePacket(STATE_TRIPLETAB, STATE_PRIORITY_USER, true);
			break;
		case 2:
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(3);
			obj.sq_AddSetStatePacket(STATE_TRIPLETAB, STATE_PRIORITY_USER, true);
			break;
		case 3:
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			break;
	}
}