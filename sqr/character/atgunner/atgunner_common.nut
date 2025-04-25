


 
function setEnableCancelSkill_ATGunner(NfDEvwlcEC_mxO, vplKviQdJmi)
{
 if(!NfDEvwlcEC_mxO)
 return false;
 
 if(!NfDEvwlcEC_mxO.isMyControlObject())
 return false;
 if(!vplKviQdJmi)
 return true;
 NfDEvwlcEC_mxO.setSkillCommandEnable(232, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(233, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(234, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(235, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(236, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(237, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(238, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(239, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(240, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(241, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(242, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(243, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(244, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(245, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(246, vplKviQdJmi); 
 local ExhprNt6s8aDvIWa = onGetMyPassiveObject_My(NfDEvwlcEC_mxO, 24376, 247, 1); 
 if(!ExhprNt6s8aDvIWa)
 NfDEvwlcEC_mxO.setSkillCommandEnable(247, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(248, vplKviQdJmi); 
 NfDEvwlcEC_mxO.setSkillCommandEnable(249, vplKviQdJmi); 
 return true;
} ;




function onChangeSkillEffect_ATGunner(obj, skillIndex, reciveData)
{
	if(!obj) return;
	switch(skillIndex)
	{
		case 250:
			local appendage = CNSquirrelAppendage.sq_GetAppendage(obj, "character/atgunner/appendage/ap_stylish_buff.nut");
			if(appendage)
			{
				local isSetState = reciveData.readWord(); 
				if(isSetState == 1)
					appendage.getVar().set_vector(0, appendage.getVar().get_vector(0) - 1); 
				onStartGhost_My_atgunner_stylish(obj); 
			}
			break;
	}
}

function als_ani_ATG(obj, aniFilename, disX, disY, disZ, imgangle, imgRate, Parent, SpeedRate)
{
	local angle = imgangle;	
	local ani = sq_CreateAnimation("", aniFilename);
	sq_SetfRotateAngle(ani, sq_ToRadian(-angle.tofloat()));
	local sizeRate = imgRate;
	local size = sizeRate.tofloat() / 100.0;
	ani.setImageRateFromOriginal(size, size);
	ani.setAutoLayerWorkAnimationAddSizeRate(size);
	local setSpeedRateF = 100 * SpeedRate;
	ani.setSpeedRate(setSpeedRateF.tofloat()); 
	local pooledObj = sq_CreatePooledObject(ani,true);
	sq_ChangeDrawLayer(pooledObj, ENUM_DRAWLAYER_BOTTOM);
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	pooledObj.setCurrentPos(posX, obj.getYPos() + disY,obj.getZPos() + disZ);
	pooledObj.setCurrentDirection(obj.getDirection());
	if(Parent == 0) 
	{
		sq_moveWithParent(obj, pooledObj);
	}
	sq_AddObject(obj, pooledObj, 2, false);
}


function procAppend_NitroMotor(obj)
{
	if(!obj) return;

	local appendage = obj.GetSquirrelAppendage("character/atgunner/nitromotor/ap_nitromotor.nut");

	if(appendage)
	{
		if(appendage.isValid())
		{
			local loadSlot = obj.sq_GetSkillLoad(17);
			if(loadSlot)
			{
				local remain_number = loadSlot.getRemainLoadNumber();
				if(remain_number > 0)
				{
					NitroMotor(obj);
				}
			}
		}
	}
}


 