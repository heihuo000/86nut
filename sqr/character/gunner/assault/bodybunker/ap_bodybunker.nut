function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_bodybunker")
}

function getImmuneTypeDamageRate_appendage_bodybunker(appendage, damageRate, attacker) {
	if (!appendage) return damageRate;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local damageReduction = appendage.getVar().getInt(0);
	if (damageReduction != 0) {
		damageReduction = damageReduction.tofloat() * 0.1;
		damageRate = damageRate.tofloat() / damageReduction.tofloat();
	}
	return damageRate;
}