function sq_AddFunctionName(CQno6RGp21BfnbSALXFK)
{
	CQno6RGp21BfnbSALXFK.sq_AddFunctionName("proc", "proc_appendage_Promiseofantiquity")
}

function proc_appendage_Promiseofantiquity(CQGqsUyjtbWhxXAs8)
{
	if(!CQGqsUyjtbWhxXAs8) return
if(!CQGqsUyjtbWhxXAs8.getParent())
	{
		CQGqsUyjtbWhxXAs8.setValid(false)
return
}
	
	local CQhzkax1Zu65UoPFRZk = CQGqsUyjtbWhxXAs8.getSource()
local CQpxJXZFUBECc9PP = sq_GetCNRDObjectToSQRCharacter(CQhzkax1Zu65UoPFRZk)
local CQ2dm9EnSYgFTEOJx = sq_GetSkillLevel(CQpxJXZFUBECc9PP, 16)
local CQmM2bnR7PDERYIDu7q = CQpxJXZFUBECc9PP.getWeaponSubType()
local CQJHmpdBpCcelLIO = CQpxJXZFUBECc9PP.getVar("Promiseofantiquity").getInt(0)
local CQka1KXyNzZYgnKHOX = [0,2,4,6,0]
local CQaei7aYxIqh8CJSDzq3 = sq_GetLevelData(CQpxJXZFUBECc9PP,16, CQka1KXyNzZYgnKHOX[CQmM2bnR7PDERYIDu7q], CQ2dm9EnSYgFTEOJx)/10
local CQ5cRYk8J525hpJK2 = CQGqsUyjtbWhxXAs8.sq_getChangeStatus("Promiseofantiquity")
if(!CQ5cRYk8J525hpJK2)
	{
		CQ5cRYk8J525hpJK2 = CQGqsUyjtbWhxXAs8.sq_AddChangeStatus("Promiseofantiquity",CQpxJXZFUBECc9PP, CQpxJXZFUBECc9PP, 0, 4, true, CQaei7aYxIqh8CJSDzq3)
CQpxJXZFUBECc9PP.getVar("Promiseofantiquity").setInt(0, CQmM2bnR7PDERYIDu7q)
}
	else
	{
		if(CQJHmpdBpCcelLIO != CQmM2bnR7PDERYIDu7q)
		{
			CQ5cRYk8J525hpJK2.clearParameter()
CQ5cRYk8J525hpJK2.addParameter(4, true, CQaei7aYxIqh8CJSDzq3.tofloat())
}
	}
}
