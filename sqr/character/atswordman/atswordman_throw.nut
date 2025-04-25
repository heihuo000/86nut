
function onSetState_ATSwordmanThrow(CQGufOJOMWS9rEShPc, CQhUSViecCxMmfAcFAzQ, CQpkYRfTK8L2WLXT3, CQ36VmCLgemZqnXb8tS)
{
	if(!CQGufOJOMWS9rEShPc) return
		    local CQqCrasaPZ1AbXZx = CQGufOJOMWS9rEShPc.getThrowIndex()
		                             local CQKSCXqm5TyiwoLmkY = CQGufOJOMWS9rEShPc.sq_GetVectorData(CQpkYRfTK8L2WLXT3, 0)
		                                     CQGufOJOMWS9rEShPc.setSkillSubState(CQKSCXqm5TyiwoLmkY)
		                                     switch(CQKSCXqm5TyiwoLmkY)
		{
		case 0:

			break
		case 1:

			break
		}
}

function onProcCon_ATSwordmanThrow(CQTir9g3UQ8qn9LveAVk)
{
	if(!CQTir9g3UQ8qn9LveAVk) return
		    local CQsm7bBHCJsxxaKQy = CQTir9g3UQ8qn9LveAVk.getThrowIndex()
		                              if(CQsm7bBHCJsxxaKQy == 96)
		{
			if (CQTir9g3UQ8qn9LveAVk.getThrowState() == 3)
			{
				if(sq_IsKeyDown(OPTION_HOTKEY_SKILL2, ENUM_SUBKEY_TYPE_ALL))
				{
					sq_BinaryStartWrite()
					sq_SendChangeSkillEffectPacket(CQTir9g3UQ8qn9LveAVk, 96)
				}
			}
		}
}

function onProc_AtSwordman_Basic(CQXTIpWiTjkfUvJnpPn)
{
	if(!CQXTIpWiTjkfUvJnpPn) return

		    if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
		{
			local CQx7TKlgooG2cZJrO9 = null
			                           local CQPVK73M9GvZkUHqBWKS = CQXTIpWiTjkfUvJnpPn.getObjectManager()
			                                   if (CQPVK73M9GvZkUHqBWKS)
			{
				for(local CQ9DqYFuwRCAY8Gb2 = 0; CQ9DqYFuwRCAY8Gb2 < 80 ; ++CQ9DqYFuwRCAY8Gb2)
				{
					for(local CQto3utvHuwiTpGe6cx = 0; CQto3utvHuwiTpGe6cx<92; ++CQto3utvHuwiTpGe6cx)
					{
						CQx7TKlgooG2cZJrO9 = CQPVK73M9GvZkUHqBWKS.getMeetItemObject(sq_GetScreenXPos(CQXTIpWiTjkfUvJnpPn)-40+CQ9DqYFuwRCAY8Gb2, sq_GetScreenYPos(CQXTIpWiTjkfUvJnpPn)-46+CQto3utvHuwiTpGe6cx)
						                     if (CQx7TKlgooG2cZJrO9)
						{
							CQXTIpWiTjkfUvJnpPn.procGetItem()
							return
						}
					}
				}
			}
		}

}

function onAfterSetState_ATSwordmanThrow(CQBpmHzdYB4QRdFm, CQvw25LSIdox7sBtn9, CQDxozEWhWffgbBwwtet, CQRdgtnxyCP38XVit)
{
	local CQiMFDdCX8zZ3mVWoYB = CQBpmHzdYB4QRdFm.getThrowIndex()

	                            if(CQiMFDdCX8zZ3mVWoYB == 96)
	{
		if (CQBpmHzdYB4QRdFm.getThrowState() == 0)
			CQBpmHzdYB4QRdFm.setIsCustomSelectSkill(true)
			else if (CQBpmHzdYB4QRdFm.getThrowState() == 1)
			{
				CQBpmHzdYB4QRdFm.sq_PlaySound("PCHANGE_SELECT")
				local CQ1Hv2XImeKC99CE = CQBpmHzdYB4QRdFm.getThrowElement()
				                         if (CQBpmHzdYB4QRdFm.isMyControlObject())
				{
					CQBpmHzdYB4QRdFm.sq_IntVectClear()
					CQBpmHzdYB4QRdFm.sq_IntVectPush(CQ1Hv2XImeKC99CE + 1)
					CQBpmHzdYB4QRdFm.sq_AddSetStatePacket(96, STATE_PRIORITY_IGNORE_FORCE, true)
				}
			}
	}
}
