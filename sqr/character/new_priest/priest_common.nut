


 


 
function setEnableCancelSkill_Priest(ijtKjnkMKrHqFeMzl50, UTB1q4KjFhI)
{
 if(!ijtKjnkMKrHqFeMzl50)
 return false;
 if(!ijtKjnkMKrHqFeMzl50.isMyControlObject())
 return false;
 if(!UTB1q4KjFhI)
 return true;
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(237, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(238, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(239, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(240, UTB1q4KjFhI); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut") 
 || CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(241, UTB1q4KjFhI); 
 if(!ijtKjnkMKrHqFeMzl50.isCarryWeapon()) 
 {
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(242, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(243, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(244, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(245, UTB1q4KjFhI); 
 }
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(246, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(247, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(248, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(249, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(250, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(251, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(132, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(135, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(136, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(137, UTB1q4KjFhI); 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(138, UTB1q4KjFhI); 
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(ijtKjnkMKrHqFeMzl50, "character/new_priest/metamorphosis/ap_metamorphosis.nut")) 
 ijtKjnkMKrHqFeMzl50.setSkillCommandEnable(139, UTB1q4KjFhI); 
 return true;
} ;



function onChangeSkillEffect_Priest(JGCoYm9kBpj6HI20BzjOiDE, RnpNlmREedtzIm, EhEMp1Rqdn7yJuwT3wTP7y)
{
 if(!JGCoYm9kBpj6HI20BzjOiDE) return;
 switch(RnpNlmREedtzIm)
 {
 case 250: 
 local _gUGXlzQafRL = EhEMp1Rqdn7yJuwT3wTP7y.readWord(); 
 switch(_gUGXlzQafRL)
 {
 case 1:
 onAppendAppendage_priest_jupiter(JGCoYm9kBpj6HI20BzjOiDE); 
 break;
 }
 break;
 case 47: 
 local _gUGXlzQafRL = EhEMp1Rqdn7yJuwT3wTP7y.readWord(); 
 switch(_gUGXlzQafRL)
 {
 case 1: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut"); 
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofpassion.nut"); 
 local h2JPoeRQTtPI = JGCoYm9kBpj6HI20BzjOiDE.sq_GetLevelData(RnpNlmREedtzIm, 0, sq_GetSkillLevel(JGCoYm9kBpj6HI20BzjOiDE, RnpNlmREedtzIm)); 
 local MGLrgZMuLhFPpFY4LlZAooi = CNSquirrelAppendage.sq_AppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, JGCoYm9kBpj6HI20BzjOiDE, RnpNlmREedtzIm, true, "character/new_priest/appendage/ap_buff_chakraofpassion.nut", false); 
 MGLrgZMuLhFPpFY4LlZAooi.sq_SetValidTime(h2JPoeRQTtPI); 
 CNSquirrelAppendage.sq_Append(MGLrgZMuLhFPpFY4LlZAooi, JGCoYm9kBpj6HI20BzjOiDE, JGCoYm9kBpj6HI20BzjOiDE, false);
 break;
 }
 break;
 case 48: 
 local _gUGXlzQafRL = EhEMp1Rqdn7yJuwT3wTP7y.readWord(); 
 switch(_gUGXlzQafRL)
 {
 case 1: 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofpassion.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofpassion.nut"); 
 else if(CNSquirrelAppendage.sq_IsAppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut"); 
 local h2JPoeRQTtPI = JGCoYm9kBpj6HI20BzjOiDE.sq_GetLevelData(RnpNlmREedtzIm, 0, sq_GetSkillLevel(JGCoYm9kBpj6HI20BzjOiDE, RnpNlmREedtzIm)); 
 local MGLrgZMuLhFPpFY4LlZAooi = CNSquirrelAppendage.sq_AppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, JGCoYm9kBpj6HI20BzjOiDE, RnpNlmREedtzIm, true, "character/new_priest/appendage/ap_buff_chakraofcalmness.nut", false); 
 MGLrgZMuLhFPpFY4LlZAooi.sq_SetValidTime(h2JPoeRQTtPI); 
 CNSquirrelAppendage.sq_Append(MGLrgZMuLhFPpFY4LlZAooi, JGCoYm9kBpj6HI20BzjOiDE, JGCoYm9kBpj6HI20BzjOiDE, false);
 break;
 }
 break;
 case 139: 
 local _gUGXlzQafRL = EhEMp1Rqdn7yJuwT3wTP7y.readWord(); 
 switch(_gUGXlzQafRL)
 {
 case 1: 
 addAppendAppendage_priest_metamorphosis(JGCoYm9kBpj6HI20BzjOiDE); 
 break;
 case 2: 
 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/metamorphosis/ap_metamorphosis.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JGCoYm9kBpj6HI20BzjOiDE, "character/new_priest/metamorphosis/ap_metamorphosis.nut");
 break;
 }
 break;
 }
} ;



function getAttackCancelStartFrameSize_Priest(obj)
{
	local FrameSize = obj.sq_GetAttackCancelStartFrameSize();
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
		FrameSize = 2;
	else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		FrameSize = 2;
	return FrameSize;
} 

function getAttackCancelStartFrame_Priest(obj, Index)
{
	if(!obj) return null;
	local CancelFrame = 0;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut")
		|| CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
	{
		switch(Index)
		{
		case 0:
			CancelFrame = 7;
			break;
		case 1:
			CancelFrame = 5;
			break;
		}
	}
	else
		CancelFrame = obj.sq_GetAttackCancelStartFrame(Index);
	return CancelFrame;
} ;

function getAttackAni_Priest(obj, index)
{
	if(!obj) return null;
	local AttackAni = obj.sq_GetAttackAni(index);
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
		AttackAni = obj.sq_GetCustomAni(189 + index);
	else if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		AttackAni = obj.sq_GetCustomAni(256 + index);

	return AttackAni;
}

function getDefaultAttackInfo_Priest(obj, Index)
{
	if(!obj) return null;
	local AttackInfo = obj.sq_GetDefaultAttackInfo(Index);
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut")
		|| CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		AttackInfo = sq_GetCustomAttackInfo(obj, 115 + Index);
	return AttackInfo;
} ;

function getJumpAttackAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 192);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 255);
		else
			Ani = obj.sq_GetJumpAttackAni();
	}
	return Ani;
} ;

function getJumpAttackInfo_Priest(obj)
{
	if(!obj) return null;
	local AttackInfo = obj.sq_GetJumpAttackInfo();
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut")
		|| CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		AttackInfo = sq_GetCustomAttackInfo(obj, 118);
	return AttackInfo;
} ;

function getDashAttackInfo_Priest(obj)
{
	if(!obj) return null;
	local AttackInfo = obj.sq_GetDashAttackInfo();
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut")
		|| CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		AttackInfo = sq_GetCustomAttackInfo(obj, 119);
	return AttackInfo;
} ;

function getDashAttackAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 193);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 286);
		else
			Ani = obj.sq_GetDashAttackAni();
	}
	return Ani;
} ;

function getStayAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 169);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 262);
		else
			Ani = obj.sq_GetStayAni();
	}
	return Ani;
} ;

function getMoveAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 170);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 263);
		else
			Ani = obj.sq_GetMoveAni();
	}
	return Ani;
} ;

function getSitAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 171);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 264);
		else
			Ani = obj.sq_GetSitAni();
	}
	return Ani;
} ;

function getDamageAni_Priest(obj, Index)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		switch(Index)
		{
		case 0:
			Ani = sq_GetCustomAni(obj, 172);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 173);
			break;
		}
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 265 + Index);
		else
			Ani = obj.sq_GetDamageAni(Index);
	}
	return Ani;
} ;

function getDownAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 174);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 267);
		else
			Ani = obj.sq_GetDownAni();
	}
	return Ani;
} ;

function getOverturnAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 175);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 268);
		else
			Ani = obj.sq_GetOverturnAni();
	}
	return Ani;
} ;

function getJumpAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 176);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 269);
		else
			Ani = obj.sq_GetJumpAni();
	}
	return Ani;
} ;

function getRestAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 177);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 270);
		else
			Ani = obj.sq_GetRestAni();
	}
	return Ani;
} ;

function getThrowChargeAni_Priest(obj, Index)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		switch(Index)
		{
		case 0:
			Ani = sq_GetCustomAni(obj, 178);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 179);
			break;
		case 2:
			Ani = sq_GetCustomAni(obj, 180);
			break;
		case 3:
			Ani = sq_GetCustomAni(obj, 181);
			break;
		}
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		{
			switch(Index)
			{
			case 0:
				Ani = sq_GetCustomAni(obj, 271);
				break;
			case 1:
				Ani = sq_GetCustomAni(obj, 272);
				break;
			case 2:
				Ani = sq_GetCustomAni(obj, 273);
				break;
			case 3:
				Ani = sq_GetCustomAni(obj, 274);
				break;
			}
		}
		else
			Ani = obj.sq_GetThrowChargeAni(Index);
	}
	return Ani;
} ;

function getThrowShootAni_Priest(obj, Index)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		switch(Index)
		{
		case 0:
			Ani = sq_GetCustomAni(obj, 182);
			break;
		case 1:
			Ani = sq_GetCustomAni(obj, 183);
			break;
		case 2:
			Ani = sq_GetCustomAni(obj, 184);
			break;
		case 3:
			Ani = sq_GetCustomAni(obj, 185);
			break;
		}
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
		{
			switch(Index)
			{
			case 0:
				Ani = sq_GetCustomAni(obj, 275);
				break;
			case 1:
				Ani = sq_GetCustomAni(obj, 276);
				break;
			case 2:
				Ani = sq_GetCustomAni(obj, 277);
				break;
			case 3:
				Ani = sq_GetCustomAni(obj, 278);
				break;
			}
		}
		else
			Ani = obj.sq_GetThrowShootAni(Index);
	}
	return Ani;
} ;

function getDashAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 186);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 279);
		else
			Ani = obj.sq_GetDashAni();
	}
	return Ani;
} ;

function getGetItemAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 187);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 280);
		else
			Ani = obj.sq_GetGetItemAni();
	}
	return Ani;
} ;

function getBuffAni_Priest(obj)
{
	if(!obj) return null;
	local Ani = null;
	if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/new_priest/jupiter/ap_jupiter.nut") == true)
	{
		Ani = sq_GetCustomAni(obj, 188);
	}
	else
	{
		if(CNSquirrelAppendage.sq_IsAppendAppendage(obj, "appendage/character/ap_holymace.nut"))
			Ani = sq_GetCustomAni(obj, 281);
		else
			Ani = obj.sq_GetBuffAni();
	}
	return Ani;
} ;

