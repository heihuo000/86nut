
function addSetStatePacket_ATSwordman(obj, CQwYiVONEtclhP8jVvOx, CQ3KpB3vtMzYOTpSGf4J)
{
	if(!obj) return -1
switch(CQwYiVONEtclhP8jVvOx)
	{
	case 8:
		obj.sq_IntVectClear()
obj.sq_IntVectPush(0)
obj.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true)
break
}
	return
}

function onChangeSkillEffect_ATSwordman(obj, skillIndex, reciveData)
{
	if(!obj) return
switch(skillIndex)
	{
	case 96:
		Changesword_RemoveAppebd(obj)
obj.sq_IntVectClear()
obj.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
break
case 133:

		break
case 202:	
		local CQ74HzT8fP4pcR5TFd = checkAppend_Dualweapon(obj)
local CQr5Ut3Zr7pemO4RKt3U = CQ74HzT8fP4pcR5TFd + 1
if(CQr5Ut3Zr7pemO4RKt3U > 4)
			CQr5Ut3Zr7pemO4RKt3U = 0
Dualweapon_RemoveAppebd(obj)
AddAppend_Dualweapon(obj,CQr5Ut3Zr7pemO4RKt3U)
break

}
}

function procAppend_ATSwordman(obj)
{
	if (!obj) return
	procAppend_AllGrowJob(obj);
procAppend_ATSwordman_SWordMaster(obj)
procAppend_ATSwordman_Usir(obj)
procAppend_ATSwordman_Dualweapon(obj)
	ATSwordmanSpinslash(obj)
procAppend_ATSwordman_Ecstasy(obj)


return
}



function onStartDungeon_ATSwordman(obj)
{
	if(!obj) return
DungeonStart_ATSwordman_Drawsword(obj)
DungeonStart_ATSwordman_Magicswordshoot(obj)
StartDungeon_AtSwordmanAddEvolve(obj)
StartDungeon_AtSwordmanDualweapon(obj)
DungeonStart_ATSwordman_Ecstasy(obj)


return
}

function resetDungeonStart_ATSwordman(obj, CQF6SNb4VgME8gMcpBU, CQgCch9HlUtehPdq, CQoSCQZoGF8Y9mdbDS, CQ2irIEhdfsh4B9e2YiO)
{
	if(!obj) return
	
return
}

function onStartMap_ATSwordman(obj)
{
	if(!obj) return
	
return
}

function procSkill_ATSwordman(obj)
{
	if(!obj) return
proSkill_ATSwordman_Autoguard(obj)

return
}


function getStayAni_ATSwordman(CQ67V9X8B79RteTnpT)
{
if(!CQ67V9X8B79RteTnpT) return null
local CQeVrvaZwwOhE2krIati = CQ67V9X8B79RteTnpT.getVar()
local CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetStayAni()

local CQxFIKMlf5HVwkjtHQ1 = sq_getGrowType(CQ67V9X8B79RteTnpT)
if(CQxFIKMlf5HVwkjtHQ1 ==1)
{
local CQPpl6S4IqbFuSnw = GetMagicSwordAppIndex(CQ67V9X8B79RteTnpT)
switch(CQPpl6S4IqbFuSnw)
{
case 0:
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetStayAni()
break
case 1:
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetCustomAni(194)
break
case 2:
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetCustomAni(193)
break
case 3:
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetCustomAni(196)
break
case 4:
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetCustomAni(195)
break
}
}else if(CQxFIKMlf5HVwkjtHQ1 == 3)
{
if(sq_GetSkillLevel(CQ67V9X8B79RteTnpT, 148) > 0)
CQXB7ojsHKT5ytjmS = CQ67V9X8B79RteTnpT.sq_GetCustomAni(361)
}

return CQXB7ojsHKT5ytjmS
}

function getRestAni_ATSwordman(CQ9QLcrJ2HVEelbidq)
{
if(!CQ9QLcrJ2HVEelbidq) return null
local CQtzqyTqvhrrUMbWhKgh = CQ9QLcrJ2HVEelbidq.getVar()
local CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetRestAni()
local CQvNq4iHjFphm3YuWaa = sq_getGrowType(CQ9QLcrJ2HVEelbidq)

if(CQvNq4iHjFphm3YuWaa ==1)
{
local CQDG3lYoSfR6YAYr = GetMagicSwordAppIndex(CQ9QLcrJ2HVEelbidq)
switch(CQDG3lYoSfR6YAYr)
{
case 0:
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetRestAni()
break
case 1:
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(186)
break
case 2:
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(185)
break
case 3:
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(188)
break
case 4:
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(187)
break
}
}
else if(CQvNq4iHjFphm3YuWaa == 3)
{
if(sq_GetSkillLevel(CQ9QLcrJ2HVEelbidq, 148) > 0)
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(359)
}
else if(CQvNq4iHjFphm3YuWaa == 0)
{
if(sq_GetSkillLevel(CQ9QLcrJ2HVEelbidq, 127) > 0)
CQB9KG2hZU5vrrvQl = CQ9QLcrJ2HVEelbidq.sq_GetCustomAni(708)
}
return CQB9KG2hZU5vrrvQl
}

function getMoveAni_ATSwordman(CQREoW7b7ySVqTcpsQ)
{
if(!CQREoW7b7ySVqTcpsQ) return null
local CQiegDKMqSxFvFcyAKJ1 = CQREoW7b7ySVqTcpsQ.getVar()
local CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetMoveAni()

local CQnfbkvyxrmrb1zo4a = sq_getGrowType(CQREoW7b7ySVqTcpsQ)

if(CQnfbkvyxrmrb1zo4a ==1)
{
local CQG1FeBdaXMvzWzP852b = GetMagicSwordAppIndex(CQREoW7b7ySVqTcpsQ)
switch(CQG1FeBdaXMvzWzP852b)
{
case 0:
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetMoveAni()
break
case 1:
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetCustomAni(178)
break
case 2:
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetCustomAni(177)
break
case 3:
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetCustomAni(180)
break
case 4:
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetCustomAni(179)
break
}
}else if(CQnfbkvyxrmrb1zo4a == 3)
{
if(sq_GetSkillLevel(CQREoW7b7ySVqTcpsQ, 148) > 0)
CQMcF1oDN9Lalzxs = CQREoW7b7ySVqTcpsQ.sq_GetCustomAni(357)
}

return CQMcF1oDN9Lalzxs
}

function getSitAni_ATSwordman(CQhJvPOVR7yjh4laR)
{
if(!CQhJvPOVR7yjh4laR) return null
local CQpsBNQPWw8T9SqDT4w = CQhJvPOVR7yjh4laR.getVar()
local CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetSitAni()

local CQqY9qN7bkjMdGmHuK = sq_getGrowType(CQhJvPOVR7yjh4laR)

if(CQqY9qN7bkjMdGmHuK ==1)
{
local CQsRPIPZPqGJ5rUSEks1 = GetMagicSwordAppIndex(CQhJvPOVR7yjh4laR)

switch(CQsRPIPZPqGJ5rUSEks1)
{
case 0:
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetSitAni()
break
case 1:
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetCustomAni(190)
break
case 2:
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetCustomAni(189)
break
case 3:
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetCustomAni(192)
break
case 4:
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetCustomAni(191)
break
}
}else if(CQqY9qN7bkjMdGmHuK == 3)
{
if(sq_GetSkillLevel(CQhJvPOVR7yjh4laR, 148) > 0)
CQ3rtghxKKs8jlqO = CQhJvPOVR7yjh4laR.sq_GetCustomAni(360)
}


return CQ3rtghxKKs8jlqO
}

function getJumpAttackAni_ATSwordman(CQGPmdmIwAzyu9lJO)
{
if(!CQGPmdmIwAzyu9lJO) return null
local CQYeAPt6wOa2CN4jmv2h = CQGPmdmIwAzyu9lJO.getVar()
local CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetJumpAttackAni()
local CQxOZEyaQF4T8DbJ7Kis = sq_getGrowType(CQGPmdmIwAzyu9lJO)

if(CQxOZEyaQF4T8DbJ7Kis ==1)
{
local CQPtwZcmGfo83zvDf = GetMagicSwordAppIndex(CQGPmdmIwAzyu9lJO)

switch(CQPtwZcmGfo83zvDf)
{
case 0:
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetJumpAttackAni()
break
case 1:
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(174)
break
case 2:
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(173)
break
case 3:
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(176)
break
case 4:
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(175)
break
}
}else if(CQxOZEyaQF4T8DbJ7Kis == 3)
{
if(sq_GetSkillLevel(CQGPmdmIwAzyu9lJO, 148) > 0)
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(356)
}else if(CQxOZEyaQF4T8DbJ7Kis == 4)
{
if(sq_GetSkillLevel(CQGPmdmIwAzyu9lJO, 62) > 0)
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(513)
}else
{
if(sq_GetSkillLevel(CQGPmdmIwAzyu9lJO, 127) > 0)
CQXLzUGLVUwU2kbP3Q = CQGPmdmIwAzyu9lJO.sq_GetCustomAni(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][6])
}

return CQXLzUGLVUwU2kbP3Q
}

function getDamageAni_ATSwordman(CQ9n4863dtfMBHYZUaL, CQtjEvJHsSPJ4WYH)
{
if(!CQ9n4863dtfMBHYZUaL) return null
local CQB5joUi29lIN4cVtE = CQ9n4863dtfMBHYZUaL.getVar()
local CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetDamageAni(CQtjEvJHsSPJ4WYH)

local CQDAnTCMLZUUMTeML = sq_getGrowType(CQ9n4863dtfMBHYZUaL)

if(CQDAnTCMLZUUMTeML ==1)
{
local CQRuGrsSh7NTXFwCVKr = GetMagicSwordAppIndex(CQ9n4863dtfMBHYZUaL)

switch(CQRuGrsSh7NTXFwCVKr)
{
case 0:
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetDamageAni(CQtjEvJHsSPJ4WYH)
break
case 1:
if(CQtjEvJHsSPJ4WYH==0)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(145)
else if(CQtjEvJHsSPJ4WYH==1)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(149)
break
case 2:
if(CQtjEvJHsSPJ4WYH==0)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(146)
else if(CQtjEvJHsSPJ4WYH==1)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(150)
break
case 3:
if(CQtjEvJHsSPJ4WYH==0)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(148);
else if(CQtjEvJHsSPJ4WYH==1)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(152);
break;
case 4:
if(CQtjEvJHsSPJ4WYH==0)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(147);
else if(CQtjEvJHsSPJ4WYH==1)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(151);
break;
}
}else if(CQDAnTCMLZUUMTeML == 3)
{
if(sq_GetSkillLevel(CQ9n4863dtfMBHYZUaL, 148) > 0)
{
if(CQtjEvJHsSPJ4WYH==0)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(350);
else if(CQtjEvJHsSPJ4WYH==1)
CQvXH2fgtrKyZucLp44z = CQ9n4863dtfMBHYZUaL.sq_GetCustomAni(351);
}
}

return CQvXH2fgtrKyZucLp44z;
}

function getDownAni_ATSwordman(CQiUnAmvAwW9Hxw3)
{
if(!CQiUnAmvAwW9Hxw3) return null;
local CQ1kMMRd6K7fA2QN5a = CQiUnAmvAwW9Hxw3.getVar();
local CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetDownAni();

local CQHCdQWWBqhZS5q2n = sq_getGrowType(CQiUnAmvAwW9Hxw3);

if(CQHCdQWWBqhZS5q2n ==1)
{
local CQjSAOlxzHDAsDmBQKd = GetMagicSwordAppIndex(CQiUnAmvAwW9Hxw3);

switch(CQjSAOlxzHDAsDmBQKd)
{
case 0:
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetDownAni();
break;
case 1:
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetCustomAni(162);
break;
case 2:
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetCustomAni(161);
break;
case 3:
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetCustomAni(164);
break;
case 4:
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetCustomAni(163);
break;
}
}else if(CQHCdQWWBqhZS5q2n == 3)
{
if(sq_GetSkillLevel(CQiUnAmvAwW9Hxw3, 148) > 0)
CQU6ujSCmja2Jtq6x4I7 = CQiUnAmvAwW9Hxw3.sq_GetCustomAni(353);
}

return CQU6ujSCmja2Jtq6x4I7;
}

function getOverturnAni_ATSwordman(CQEicV37EgciDzU5)
{
if(!CQEicV37EgciDzU5) return null;
local CQ4mCRFIfuXQIHU1Da = CQEicV37EgciDzU5.getVar();
local CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetOverturnAni();

local CQIzXa863f2fO3b3XE5 = sq_getGrowType(CQEicV37EgciDzU5);

if(CQIzXa863f2fO3b3XE5 ==1)
{
local CQ79eXLKvtu3pybd = GetMagicSwordAppIndex(CQEicV37EgciDzU5);

switch(CQ79eXLKvtu3pybd)
{
case 0:
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetOverturnAni();
break;
case 1:
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetCustomAni(182);
break;
case 2:
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetCustomAni(181);
break;
case 3:
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetCustomAni(184);
break;
case 4:
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetCustomAni(183);
break;
}
}else if(CQIzXa863f2fO3b3XE5 == 3)
{
if(sq_GetSkillLevel(CQEicV37EgciDzU5, 148) > 0)
CQQqcmtwrFQxorn7JkYP = CQEicV37EgciDzU5.sq_GetCustomAni(358);
}

return CQQqcmtwrFQxorn7JkYP;
}

function getJumpAni_ATSwordman(CQrN6dpEOVdZt6t6jq)
{
if(!CQrN6dpEOVdZt6t6jq) return null;
local CQCGsbbkj9OAEFWgzKTn = CQrN6dpEOVdZt6t6jq.getVar();
local CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetJumpAni();
local CQAwJLXGCZHQwJrkmaP = sq_getGrowType(CQrN6dpEOVdZt6t6jq);

if(CQAwJLXGCZHQwJrkmaP ==1)
{
local CQdxm7wUq7nxnteR = GetMagicSwordAppIndex(CQrN6dpEOVdZt6t6jq);

switch(CQdxm7wUq7nxnteR)
{
case 0:
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetJumpAni();
break;
case 1:
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetCustomAni(170);
break;
case 2:
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetCustomAni(169);
break;
case 3:
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetCustomAni(172);
break;
case 4:
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetCustomAni(171);
break;
}
}else if(CQAwJLXGCZHQwJrkmaP == 3)
{
if(sq_GetSkillLevel(CQrN6dpEOVdZt6t6jq, 148) > 0)
CQcETp92urToyxW9v = CQrN6dpEOVdZt6t6jq.sq_GetCustomAni(355);
}

return CQcETp92urToyxW9v;
}

function getDashAni_ATSwordman(CQydJYjgFwBRr4ezAQ)
{
if(!CQydJYjgFwBRr4ezAQ) return null;
local CQNMmuMN9Kr3muwjHKX2 = CQydJYjgFwBRr4ezAQ.getVar();
local CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetDashAni();
local CQFai5ev1qpCqGQl9Jv = sq_getGrowType(CQydJYjgFwBRr4ezAQ);

if(CQFai5ev1qpCqGQl9Jv ==1)
{
local CQgeRzk9WHgFvcqh = GetMagicSwordAppIndex(CQydJYjgFwBRr4ezAQ);

switch(CQgeRzk9WHgFvcqh)
{
case 0:
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetDashAni();
break;
case 1:
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetCustomAni(154);
break;
case 2:
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetCustomAni(153);
break;
case 3:
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetCustomAni(156);
break;
case 4:
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetCustomAni(155);
break;
}
}else if(CQFai5ev1qpCqGQl9Jv == 3)
{
if(sq_GetSkillLevel(CQydJYjgFwBRr4ezAQ, 148) > 0)
CQbH1HAuaj55YlwfZ = CQydJYjgFwBRr4ezAQ.sq_GetCustomAni(352);
}

return CQbH1HAuaj55YlwfZ;
}

function getGetItemAni_ATSwordman(CQocDtHALgSEl3qcTE)
{
if(!CQocDtHALgSEl3qcTE) return null;
local CQ2fvFuWguxebymTc4yH = CQocDtHALgSEl3qcTE.getVar();
local CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetGetItemAni();

local CQJKYT7X5fqhhFixaK1 = sq_getGrowType(CQocDtHALgSEl3qcTE);

if(CQJKYT7X5fqhhFixaK1 ==1)
{
local CQjIVeKIUt15xzumPkAg = GetMagicSwordAppIndex(CQocDtHALgSEl3qcTE);

switch(CQjIVeKIUt15xzumPkAg)
{
case 0:
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetGetItemAni();
break;
case 1:
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetCustomAni(166);
break;
case 2:
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetCustomAni(165);
break;
case 3:
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetCustomAni(168);
break;
case 4:
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetCustomAni(167);
break;
}
}else if(CQJKYT7X5fqhhFixaK1 == 3)
{
if(sq_GetSkillLevel(CQocDtHALgSEl3qcTE, 148) > 0)
CQm2V2Y8PFLvz6Ubi = CQocDtHALgSEl3qcTE.sq_GetCustomAni(354);
}

return CQm2V2Y8PFLvz6Ubi;
}

function DarktemplerCreateAniPooledObj(CQJk2XyqZXGyPaB5LBX, CQk6md9jUlvmHRV1VY , CQaC2nZHSaClAZC8RSvj , CQDQXKDHxNU15rFh5wL, CQc53mZgrVDQnYyoF3, CQZqD8d1NpoKspZ7, CQzlvYCDx1fOidZhEt,CQO8BieyJnPursLdOV23)
{
	local CQ8BtHkfRizmobLTD = sq_CreateAnimation("",CQk6md9jUlvmHRV1VY)
CQ8BtHkfRizmobLTD.setImageRateFromOriginal(CQO8BieyJnPursLdOV23, CQO8BieyJnPursLdOV23)
local CQWFV51VONKlWXKgJAw = sq_CreatePooledObject(CQ8BtHkfRizmobLTD,CQDQXKDHxNU15rFh5wL)
CQWFV51VONKlWXKgJAw.setCurrentPos(CQc53mZgrVDQnYyoF3,CQZqD8d1NpoKspZ7,CQzlvYCDx1fOidZhEt)
if(CQaC2nZHSaClAZC8RSvj)
		sq_moveWithParent(CQJk2XyqZXGyPaB5LBX, CQWFV51VONKlWXKgJAw)
sq_SetCurrentDirection(CQWFV51VONKlWXKgJAw, CQJk2XyqZXGyPaB5LBX.getDirection())
sq_AddObject(CQJk2XyqZXGyPaB5LBX, CQWFV51VONKlWXKgJAw, OBJECTTYPE_DRAWONLY, false)
}

function ATswordmanCreateAniPooledObj(CQVpWxSP3YUdqmJ9, CQYE8trcbAN1t92kdt , CQSwOFT7XVWKQE1RjBaa , CQfxzhJZkx7XbfMzz, CQudLqieiIaSwIMjtS8, CQMMQIYl86honnNY, CQnH4V8LQlDwxCBTsA,CQGaQfLaGaWcUqBbA9xQ)
{
	local CQhe4Upqc36RcdVx1 = sq_CreateAnimation("",CQYE8trcbAN1t92kdt)
CQhe4Upqc36RcdVx1.setImageRateFromOriginal(CQGaQfLaGaWcUqBbA9xQ, CQGaQfLaGaWcUqBbA9xQ)
CQhe4Upqc36RcdVx1.setAutoLayerWorkAnimationAddSizeRate(CQGaQfLaGaWcUqBbA9xQ)
local CQpYpEg3skE4ksCm5Vu = sq_CreatePooledObject(CQhe4Upqc36RcdVx1,CQfxzhJZkx7XbfMzz)
CQpYpEg3skE4ksCm5Vu.setCurrentPos(CQudLqieiIaSwIMjtS8,CQMMQIYl86honnNY,CQnH4V8LQlDwxCBTsA)
if(CQSwOFT7XVWKQE1RjBaa)
		sq_moveWithParent(CQVpWxSP3YUdqmJ9, CQpYpEg3skE4ksCm5Vu)
sq_SetCurrentDirection(CQpYpEg3skE4ksCm5Vu, CQVpWxSP3YUdqmJ9.getDirection())
sq_AddObject(CQVpWxSP3YUdqmJ9, CQpYpEg3skE4ksCm5Vu, OBJECTTYPE_DRAWONLY, false)
}


function IsFrontOf(CQJRhZBHgpgXRRCv9Y,CQk2G9OoW1DSlZXwgA3)
{
	local CQaKnvQgLbcpgUZU = CQJRhZBHgpgXRRCv9Y.getDirection()
local CQ5INohMniZw8VZWrt = 0
if(CQaKnvQgLbcpgUZU == 0)
		CQ5INohMniZw8VZWrt = CQJRhZBHgpgXRRCv9Y.getXPos() - CQk2G9OoW1DSlZXwgA3.getXPos()
else
		CQ5INohMniZw8VZWrt = CQk2G9OoW1DSlZXwgA3.getXPos() - CQJRhZBHgpgXRRCv9Y.getXPos()
if(CQ5INohMniZw8VZWrt<0)
		return false
return true
}

function ObjFindTarget(CQwWyKNDANqchE4QiBjr,CQZvN6tv6Y1R9f4na)
{
	CQwWyKNDANqchE4QiBjr.getVar("MonTargets").clear_obj_vector()
local CQzgycxdoAu44I3rPSI = CQwWyKNDANqchE4QiBjr.getObjectManager()
for(local CQO3dy5VBV9Xdn2q=0; CQO3dy5VBV9Xdn2q<CQzgycxdoAu44I3rPSI.getCollisionObjectNumber(); ++CQO3dy5VBV9Xdn2q)
	{
		local CQ8LPGHtwxIS5C2y3A = CQzgycxdoAu44I3rPSI.getCollisionObject(CQO3dy5VBV9Xdn2q)
local CQWZx4uxHIkGMm1e79L9 = sq_GetDistanceObject(CQ8LPGHtwxIS5C2y3A, CQwWyKNDANqchE4QiBjr, false)
if(CQ8LPGHtwxIS5C2y3A && CQwWyKNDANqchE4QiBjr.isEnemy(CQ8LPGHtwxIS5C2y3A) && CQWZx4uxHIkGMm1e79L9<=CQZvN6tv6Y1R9f4na && CQ8LPGHtwxIS5C2y3A.isObjectType(OBJECTTYPE_ACTIVE))
		{
			CQwWyKNDANqchE4QiBjr.getVar("MonTargets").push_obj_vector(CQ8LPGHtwxIS5C2y3A)
}
	}
	return 
}

function GetObjFindTargets(CQVPXlcCf6Ha6BMof,CQYyeWXOIlbr1aMtmVc)
{
	local CQSn6Daw3aVbCRNa = null
local CQfkw1U6v3ej2OBiyA = CQVPXlcCf6Ha6BMof.getVar("MonTargets").get_obj_vector_size()
if(CQfkw1U6v3ej2OBiyA<1)
		return CQSn6Daw3aVbCRNa
local CQu65kfLZm46VUBOpdWC = CQYyeWXOIlbr1aMtmVc
if(CQu65kfLZm46VUBOpdWC>CQfkw1U6v3ej2OBiyA)
		CQu65kfLZm46VUBOpdWC = CQu65kfLZm46VUBOpdWC - CQfkw1U6v3ej2OBiyA
CQSn6Daw3aVbCRNa = CQVPXlcCf6Ha6BMof.getVar("MonTargets").get_obj_vector(CQu65kfLZm46VUBOpdWC)
return CQSn6Daw3aVbCRNa
}

function CreatePooledObjectAni(CQvbsQYcWzX8cdH6gt,CQDjkIC8LewNkKG2l,CQR5JVsPnL3HfbG9YWX,CQiXmRmePkiITXF5,CQ1A2UR75EdtRoDRac,CQUuUaVZiJPn88D8PA73,CQHU1XIaVhlqhEVjF,CQjki9lTQiJz9fCfKty,CQE6Rb34GMnd4LCl,CQ4CDoFJdRB1dnXhRY,CQQSYKtmsyWL5CXdkAAa)
{
	local CQLiV7zh2V6PMpZTx = sq_CreateAnimation("",CQDjkIC8LewNkKG2l)
if(CQ4CDoFJdRB1dnXhRY != false)
	{
		CQLiV7zh2V6PMpZTx.setImageRateFromOriginal(CQ4CDoFJdRB1dnXhRY, CQ4CDoFJdRB1dnXhRY)
CQLiV7zh2V6PMpZTx.setAutoLayerWorkAnimationAddSizeRate(CQ4CDoFJdRB1dnXhRY)
}
	if(CQQSYKtmsyWL5CXdkAAa != false)
		CQLiV7zh2V6PMpZTx.setSpeedRate(CQQSYKtmsyWL5CXdkAAa)
local CQlmWc41vcEu6dLgyPg = sq_CreatePooledObject(CQLiV7zh2V6PMpZTx,CQE6Rb34GMnd4LCl)
if(CQjki9lTQiJz9fCfKty)
		sq_moveWithParent(CQvbsQYcWzX8cdH6gt, CQlmWc41vcEu6dLgyPg)
CQlmWc41vcEu6dLgyPg = sq_SetEnumDrawLayer(CQlmWc41vcEu6dLgyPg, CQR5JVsPnL3HfbG9YWX)
sq_SetCurrentDirection(CQlmWc41vcEu6dLgyPg, CQHU1XIaVhlqhEVjF)
CQlmWc41vcEu6dLgyPg.setCurrentPos(CQiXmRmePkiITXF5,CQ1A2UR75EdtRoDRac,CQUuUaVZiJPn88D8PA73)
sq_AddObject(CQvbsQYcWzX8cdH6gt, CQlmWc41vcEu6dLgyPg, OBJECTTYPE_DRAWONLY, false)
return CQlmWc41vcEu6dLgyPg
}

function sq_GetDistenceFrom3D(CQAy5uGW5NjkURBpm,CQdnEGyzUvF7cIBAeVO)
{
	if (!CQAy5uGW5NjkURBpm || !CQdnEGyzUvF7cIBAeVO) return -1
local CQbjj4x6VyYBknVsAY = CQAy5uGW5NjkURBpm.getXPos()
local CQF5Hz5IlVCHYCCFGAfh = CQAy5uGW5NjkURBpm.getYPos()
local CQgXUWHQpxwsTqCPL = CQAy5uGW5NjkURBpm.getZPos()
local CQoAMDukdO3WRdXJVtp = CQdnEGyzUvF7cIBAeVO.getXPos()
local CQ2iu2dKeXin7s6D = CQdnEGyzUvF7cIBAeVO.getYPos()
local CQmmMkXEJlfkgg5ZTW = CQdnEGyzUvF7cIBAeVO.getZPos()
local CQJTuesUvaP78X4HcVpJ = sqrt((CQbjj4x6VyYBknVsAY - CQoAMDukdO3WRdXJVtp)*(CQbjj4x6VyYBknVsAY - CQoAMDukdO3WRdXJVtp) + (CQF5Hz5IlVCHYCCFGAfh - CQ2iu2dKeXin7s6D)*(CQF5Hz5IlVCHYCCFGAfh - CQ2iu2dKeXin7s6D) + (CQgXUWHQpxwsTqCPL - CQmmMkXEJlfkgg5ZTW)*(CQgXUWHQpxwsTqCPL - CQmmMkXEJlfkgg5ZTW))
return CQJTuesUvaP78X4HcVpJ
}

function sq_GetDistenceFrom3D_Pos(CQk7fPm2OLlN3m4Vn,CQaVANRGjkJH9V3LEA6,CQ5DchVnypns4E2M,CQwoCqrRX1NtNf2CFt,CQZqrITNmhWn5I1KKVlE,CQzlCV2yDi6kMhMNC)
{
	local CQO8efDY8NEzXCMXfAA = sqrt((CQk7fPm2OLlN3m4Vn - CQwoCqrRX1NtNf2CFt)*(CQk7fPm2OLlN3m4Vn - CQwoCqrRX1NtNf2CFt) + (CQaVANRGjkJH9V3LEA6 - CQZqrITNmhWn5I1KKVlE)*(CQaVANRGjkJH9V3LEA6 - CQZqrITNmhWn5I1KKVlE)/4 + (CQ5DchVnypns4E2M - CQzlCV2yDi6kMhMNC)*(CQ5DchVnypns4E2M - CQzlCV2yDi6kMhMNC))
return CQO8efDY8NEzXCMXfAA
}

function sq_GetDistenceFrom2D_Pos(CQHanEacK7d2Ut2f4a,CQbmWhiPLkewynFyB,CQVGTZLrrVrLKs94b9CT,CQYEK9pzKx5PBR8Mp)
{
	local CQSemvbXgOEuLO77IVb = sqrt((CQHanEacK7d2Ut2f4a - CQVGTZLrrVrLKs94b9CT)*(CQHanEacK7d2Ut2f4a - CQVGTZLrrVrLKs94b9CT)+(CQbmWhiPLkewynFyB - CQYEK9pzKx5PBR8Mp)*(CQbmWhiPLkewynFyB - CQYEK9pzKx5PBR8Mp)/4)
return CQSemvbXgOEuLO77IVb
}

function getFormaidableTarget(CQMc2o9sPXgmFU73, CQnfmKZQ5lSzOV6dHAJV)
{
	if(!CQMc2o9sPXgmFU73) return null
local CQG126E5naxdGQ565 = CQMc2o9sPXgmFU73.getObjectManager()
if (CQG126E5naxdGQ565 == null)
		return null
local CQhJichJC4L1Pf5gdtz = null
for(local CQpsRuNpTkqLEI49 = 0; CQpsRuNpTkqLEI49 < CQG126E5naxdGQ565.getCollisionObjectNumber(); CQpsRuNpTkqLEI49+=1)
	{
		local CQ3rDGPjop1PAh45lY = CQG126E5naxdGQ565.getCollisionObject(CQpsRuNpTkqLEI49)
if(CQ3rDGPjop1PAh45lY && CQMc2o9sPXgmFU73.isEnemy(CQ3rDGPjop1PAh45lY) && CQ3rDGPjop1PAh45lY.isInDamagableState(CQMc2o9sPXgmFU73) && CQ3rDGPjop1PAh45lY.isObjectType(OBJECTTYPE_ACTIVE))
		{
			local CQqYv4w191yuaX3RWAwy = sq_GetCNRDObjectToActiveObject(CQ3rDGPjop1PAh45lY)
if(!CQqYv4w191yuaX3RWAwy.isDead() && sq_GetDistanceObject(CQMc2o9sPXgmFU73, CQqYv4w191yuaX3RWAwy, true) <= CQnfmKZQ5lSzOV6dHAJV)
			{
				if(CQqYv4w191yuaX3RWAwy.isBoss())
					return CQqYv4w191yuaX3RWAwy
else
				{
					if(sq_IsHellMonster(CQqYv4w191yuaX3RWAwy))
						return CQqYv4w191yuaX3RWAwy
else
					{
						if(sq_IsNamed(CQqYv4w191yuaX3RWAwy))
							return CQqYv4w191yuaX3RWAwy
else
							CQhJichJC4L1Pf5gdtz = CQqYv4w191yuaX3RWAwy
}
				}
			}
		}
	}
	return CQhJichJC4L1Pf5gdtz
}

function createPooledObjEff(obj, AniPath,XPos,YPos,ZPos,LayerType,Direction)
{
	if(!obj) return null
local AniObj = sq_CreateAnimation("", AniPath)
local AniPooledObj = sq_CreatePooledObject(AniObj, true)
sq_SetCurrentDirection(AniPooledObj, Direction)
AniPooledObj.setCurrentPos(XPos, YPos, ZPos)
AniPooledObj = sq_SetEnumDrawLayer(AniPooledObj, LayerType)
sq_AddObject(obj, AniPooledObj, OBJECTTYPE_DRAWONLY, false)
return AniPooledObj
}
