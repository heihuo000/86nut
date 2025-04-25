function sq_AddFunctionName(CQ7jMh38ueT78Kg53Wfi)
{
	CQ7jMh38ueT78Kg53Wfi.sq_AddFunctionName("getImmuneTypeDamageRate", "getImmuneTypeDamageRate_appendage_BlackMirror")
	CQ7jMh38ueT78Kg53Wfi.sq_AddFunctionName("onStart", "onStart_appendage_BlackMirror")
	CQ7jMh38ueT78Kg53Wfi.sq_AddFunctionName("onEnd", "onEnd_appendage_BlackMirror")
	CQ7jMh38ueT78Kg53Wfi.sq_AddFunctionName("onVaildTimeEnd", "onVaildTimeEnd_appendage_BlackMirror")
	CQ7jMh38ueT78Kg53Wfi.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_BlackMirror")
}

function getImmuneTypeDamageRate_appendage_BlackMirror(CQa1zFdsSEpyqONQVXg, CQhbKwUwjYEBPM9BW, CQphqOR5uPgGEez5oUi)
{
	if (!CQa1zFdsSEpyqONQVXg)
		return CQhbKwUwjYEBPM9BW
local CQ343BVK6CSaAgl1 = CQa1zFdsSEpyqONQVXg.getParent()
local CQqZoRIQmxcWaPl8Ah = sq_GetCNRDObjectToSQRCharacter(CQ343BVK6CSaAgl1)
local CQKPgmTjBIZbukT4MoD5 = CQqZoRIQmxcWaPl8Ah.sq_GetSkillLevel(69)
local CQTyFs22z5qjeDkf4 = sq_GetIntData(CQqZoRIQmxcWaPl8Ah, 69, 0)
return CQhbKwUwjYEBPM9BW-CQTyFs22z5qjeDkf4
}

function onStart_appendage_BlackMirror(CQsngXDpET17iwk78Uj)
{
	if(!CQsngXDpET17iwk78Uj) return
local CQ6jDdWnfauBr1jh = CQsngXDpET17iwk78Uj.sq_GetSourceChrTarget()
CQsngXDpET17iwk78Uj.sq_AddEffectFront("character/swordman/effect/animation/atblackmirror/shelter.ani")
CQsngXDpET17iwk78Uj.getVar("temp").clear_vector()
CQsngXDpET17iwk78Uj.getVar("temp").push_vector(0)
}

function onEnd_appendage_BlackMirror(CQeTvnlRr39GmWjdqn)
{
	if(!CQeTvnlRr39GmWjdqn) return
local CQZ7Bp3FKjIsWhhTrGU = CQeTvnlRr39GmWjdqn.sq_GetSourceChrTarget()
CQeTvnlRr39GmWjdqn.sq_DeleteEffectFront()
}

function onVaildTimeEnd_appendage_BlackMirror(CQzVtLoubokWqAgg)
{
	if(!CQzVtLoubokWqAgg) return
local CQWD98bYP1GbvTgxEo = CQzVtLoubokWqAgg.sq_GetSourceChrTarget()
CQzVtLoubokWqAgg.sq_DeleteEffectFront()
}

function onDamageParent_appendage_BlackMirror(CQVoOY9BkbbmQNRkZ,CQYq8iZAiuVlbeYRNUc, CQSlOHErCBe9z2Yz, CQf8z5n8qY41nPcj7h)
{
	if(!CQVoOY9BkbbmQNRkZ) return
local CQuBZxNXFPpKxkxYYoWA = CQVoOY9BkbbmQNRkZ.getParent()
local CQMFQtPs9CROjDxTU = CQVoOY9BkbbmQNRkZ.getVar("temp").get_vector(0)
CQMFQtPs9CROjDxTU=CQMFQtPs9CROjDxTU+1
if(CQMFQtPs9CROjDxTU>=CQuBZxNXFPpKxkxYYoWA.getVar("count69").get_vector(0))
	{
		CQVoOY9BkbbmQNRkZ.sq_DeleteEffectFront()
CQVoOY9BkbbmQNRkZ.setValid(false); 
	}
	
	CQVoOY9BkbbmQNRkZ.getVar("temp").set_vector(0,CQMFQtPs9CROjDxTU)
}