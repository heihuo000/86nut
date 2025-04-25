
function onEndCurrentAni_po_gunner_assault(obj) {
	if (!obj) return;

	sq_IntVectorClear(sq_GetGlobalIntVector()); 

	local skilltype = obj.getVar("skill").get_vector(0);
	local subType = obj.getVar("subType").get_vector(0);
	local state = obj.getVar("state").get_vector(0);
	switch (skilltype) {
		case SKILL_AIMSHOOT:
		case SKILL_NEODYMIUMFUSEE:
		case SKILL_TRIPLEGUNSHOT:
		case SKILL_MCPICE:
		case SKILL_SCORCHTACTICS:
		case SKILL_RAYTHEONCIRT:
		case SKILL_DIRECTFEEDBACK:
		case SKILL_ALTERATION:
		case SKILL_ARCDISCHARGE:
			sq_SendDestroyPacketPassiveObject(obj); 
			break;
		case SKILL_BODYBUNKER:
			switch (state) {
				case 10:
					obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
				case 12:

					sq_SendDestroyPacketPassiveObject(obj); 
					break;
			}
			break;
		case SKILL_BURSTBOMB:
			switch (state) {
				case 11:
					local chr = obj.getTopCharacter(); 
					chr.getVar("BodyBunkerIsAttack").setBool(0, false);
					sq_SendDestroyPacketPassiveObject(obj); 
					break;
			}
			break;
		case SKILL_BREACHINGDOWN:
			local chr = obj.getTopCharacter(); 
			chr.getVar("BreachingDownIsAttack").setBool(0, false);
			sq_SendDestroyPacketPassiveObject(obj); 
			break;
		case SKILL_DEATHFIELD:
			local chr = obj.getTopCharacter(); 
			chr.getVar("DeathFieldIsAttack").setBool(0, false);
			sq_SendDestroyPacketPassiveObject(obj); 
			break;
		case SKILL_DYNAMITEKICK:
			local chr = obj.getTopCharacter(); 
			chr.getVar("DynamiteKickIsAttack").setBool(0, false);
			sq_SendDestroyPacketPassiveObject(obj); 
			break;
		case SKILL_EQUALISMR:
			local chr = obj.getTopCharacter(); 
			chr.getVar("EqualisMRIsAttack").setBool(0, false);
			sq_SendDestroyPacketPassiveObject(obj); 
			break;
		case SKILL_FORTRESSBLITZ:
			switch (state) {
				case 10:
					obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
				case 12:
					obj.addSetStatePacket(13, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
					break;
				case 13:
					RemoveAllAni(obj);

					sq_SendDestroyPacketPassiveObject(obj);
					break;
			}
			break;
		case SKILL_AT_SOWALKER:
			switch (subType) {
				case 0:
					switch (state) {
						case 10:
							local duration = obj.getVar("data").get_vector(0);
							obj.setTimeEvent(0, duration, 1, false);
							obj.addSetStatePacket(11, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, "");
							break;
						case 15:
							sq_SendDestroyPacketPassiveObject(obj); 
							break;
					}
					break;
				case 1:
					sq_SendDestroyPacketPassiveObject(obj); 
					break;
				case 2:
					switch (state) {
						case 11:
							sq_SendDestroyPacketPassiveObject(obj); 
							break;
					}
					break;
				case 3:
					sq_SendDestroyPacketPassiveObject(obj); 
					break;
			}
			break;
	}
}
