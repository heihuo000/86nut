function sq_AddFunctionName(CQNmasLscqDjzWUkP)
{
	CQNmasLscqDjzWUkP.sq_AddFunctionName("onStart", "onStart_appendage_ChangeswordLight")
	CQNmasLscqDjzWUkP.sq_AddFunctionName("onEnd", "onEnd_appendage_ChangeswordLight")
	CQNmasLscqDjzWUkP.sq_AddFunctionName("drawAppend", "drawAppend_appendage_ChangeswordLight")
	
}

function onStart_appendage_ChangeswordLight(CQbTkCpQsHc6h4UvF8P)
{
	if(!CQbTkCpQsHc6h4UvF8P) return
local CQF7Jdb5g2Z99Snz = CQbTkCpQsHc6h4UvF8P.getParent()
if(!CQF7Jdb5g2Z99Snz) 
	{
		CQbTkCpQsHc6h4UvF8P.setValid(false)
return
}
	
	local CQgVUn9JtUqMjlbU7C = CQbTkCpQsHc6h4UvF8P.sq_GetSourceChrTarget()
}

function onEnd_appendage_ChangeswordLight(CQoD1EZpZF2JdGbYRxCC)
{
	if(!CQoD1EZpZF2JdGbYRxCC) return
local CQ2oiLQjUfuO5cvQk = CQoD1EZpZF2JdGbYRxCC.getParent()
if(!CQ2oiLQjUfuO5cvQk) 
	{
		CQoD1EZpZF2JdGbYRxCC.setValid(false)
return
}
	local CQmq18j1Av9yf3vnx8b = sq_GetCNRDObjectToSQRCharacter(CQ2oiLQjUfuO5cvQk)
}


function drawAppend_appendage_ChangeswordLight(CQJlivMF6SIU7tYc, CQk9fiAno9kl25cqp7, CQaNSJefBrH9VDrbIryO, CQ5GY5kBzObM3zeeD, CQwEVxHyH7VJBHwm2x2)
{
	if(!CQJlivMF6SIU7tYc || !CQJlivMF6SIU7tYc.isValid()) return
local CQZaWyuYfweOLWwt = CQJlivMF6SIU7tYc.getParent()
drawChangeswordCommon(CQZaWyuYfweOLWwt)
	return
}
