function onAttack_po_swordman_baynk(obj, damager, boundingBox, isStuck)
{
	if(!obj) return;

	local id = obj.getVar("id").get_vector(0);
	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

	switch(id)
	{
		case 1://ÚûÓïð¯ìéù»
			switch(parentChr.getWeaponSubType())
			{
				case 0://Ó­?
					obj.sq_PlaySound("R_MINERALSWDA_HIT");
				break;
				case 1://÷¼Óï
					obj.sq_PlaySound("R_KATANAC_HIT");
				break;
				case 2://ÍâÜê
					obj.sq_PlaySound("R_STICKA_HIT");
					if(!sq_IsFixture(damager))
					{
						local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 9, false, "character/swordman/momentaryslash/ap_momentaryslash.nut", true);
					}
				break;
				case 3://ËÝ?
					obj.sq_PlaySound("R_SQUARESWDA_HIT");
				break;
				case 5://ÎÃ?
					obj.sq_PlaySound("R_BEAMSWDA_HIT");
				break;
			}
		break;
	}
}