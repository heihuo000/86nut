
function onSetState_AtSwordman_Basic5(CQRU8V5p9liijmINInc, CQyLMNcNzss9lrVB, CQHGvRKvPPwOSQDidWz, CQCOn7kYUckNqsMjy)
{
if(!CQRU8V5p9liijmINInc) return;
local CQw6BDr943kvtV9Af = CQRU8V5p9liijmINInc.sq_GetVectorData(CQHGvRKvPPwOSQDidWz, 0);
CQRU8V5p9liijmINInc.setSkillSubState(CQw6BDr943kvtV9Af);
CQRU8V5p9liijmINInc.sq_StopMove();

local CQZCt2TCnUHjEQ8Kjqz = CQRU8V5p9liijmINInc.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQRU8V5p9liijmINInc,1.0,-1))/10+100;
switch(CQw6BDr943kvtV9Af)
{
case 0:
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(0);
local CQzS8k2WCFb6yM8F = 100;
if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 3) > 0)
{
BodyMagicSword(CQRU8V5p9liijmINInc, "InnerBladeAttack1")
if(MagicSword_IsAppebd(CQRU8V5p9liijmINInc))
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(287);
else
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(47);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 148) > 0)
{
BodyCalldaimus(CQRU8V5p9liijmINInc, "CallDaimusAttack1");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(367);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62) > 0)
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(508);
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(128);
local CQOiOeDxTRVVwr7Xtk = sq_GetLevelData(CQRU8V5p9liijmINInc,62, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62));
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQOiOeDxTRVVwr7Xtk;
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("R_SW_1ATK");
local CQ8mzAt6obeGuh6Hoawn = checkAppend_Dualweapon(CQRU8V5p9liijmINInc);
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(SetChrAniIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn));
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(SetChrAtkIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn));
local CQWTZN8I9S5aeATSs = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));
local CQVlzhLww9prUTkLSQV = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 8, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));
if(CQ8mzAt6obeGuh6Hoawn == 3)
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQVlzhLww9prUTkLSQV + CQWTZN8I9S5aeATSs;
else
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQWTZN8I9S5aeATSs;

}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 127) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("R_PROFESSIONAL_START");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][0]);
}
else
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(0);
}
CQRU8V5p9liijmINInc.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc),8);
sq_SetCurrentAttackInfo(CQRU8V5p9liijmINInc, sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc));
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
break;
case 1:
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(1);
local CQzS8k2WCFb6yM8F = 120;
if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 3) > 0)
{
BodyMagicSword(CQRU8V5p9liijmINInc, "InnerBladeAttack2")
if(MagicSword_IsAppebd(CQRU8V5p9liijmINInc))
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(288);
else
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(48);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 148) > 0)
{
BodyCalldaimus(CQRU8V5p9liijmINInc, "CallDaimusAttack2");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(368);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62) > 0)
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(509);
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(129);
local CQOiOeDxTRVVwr7Xtk = sq_GetLevelData(CQRU8V5p9liijmINInc,62, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62));
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQOiOeDxTRVVwr7Xtk;
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("R_SW_2ATK");
local CQ8mzAt6obeGuh6Hoawn = checkAppend_Dualweapon(CQRU8V5p9liijmINInc);
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(SetChrAniIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn) + 1);
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(SetChrAtkIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn) + 1);
local CQWTZN8I9S5aeATSs = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));
local CQVlzhLww9prUTkLSQV = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 8, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));
if(CQ8mzAt6obeGuh6Hoawn == 3)
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQVlzhLww9prUTkLSQV + CQWTZN8I9S5aeATSs;
else
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQWTZN8I9S5aeATSs;
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 127) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("R_PROFESSIONAL_SWORD");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][1]);
}
else
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(1);
}
CQRU8V5p9liijmINInc.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc),8);
sq_SetCurrentAttackInfo(CQRU8V5p9liijmINInc, sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc));
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
break;
case 2:
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(2);
local CQzS8k2WCFb6yM8F = 150;
if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 3) > 0)
{
BodyMagicSword(CQRU8V5p9liijmINInc, "InnerBladeAttack3")
if(MagicSword_IsAppebd(CQRU8V5p9liijmINInc))
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(289);
else
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(49);
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 148) > 0)
{
BodyCalldaimus(CQRU8V5p9liijmINInc, "CallDaimusAttack3");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(369);
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62) > 0)
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(510);
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(130);
local CQOiOeDxTRVVwr7Xtk = sq_GetLevelData(CQRU8V5p9liijmINInc,62, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62));
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQOiOeDxTRVVwr7Xtk;
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("R_SW_3ATK");
local CQ8mzAt6obeGuh6Hoawn = checkAppend_Dualweapon(CQRU8V5p9liijmINInc);
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(SetChrAniIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn) + 2);
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(SetChrAtkIndex_Dualweapon(CQRU8V5p9liijmINInc,CQ8mzAt6obeGuh6Hoawn) + 2);
local CQWTZN8I9S5aeATSs = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));
local CQVlzhLww9prUTkLSQV = sq_GetLevelData(CQRU8V5p9liijmINInc,202, 8, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 202));

if(CQ8mzAt6obeGuh6Hoawn == 3)
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQVlzhLww9prUTkLSQV + CQWTZN8I9S5aeATSs;
else
CQZCt2TCnUHjEQ8Kjqz = CQZCt2TCnUHjEQ8Kjqz + CQWTZN8I9S5aeATSs;
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 127) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("PROFESSIONAL_KICK");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][2]);
}
else
{
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(2);
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
}
CQRU8V5p9liijmINInc.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc),8);
sq_SetCurrentAttackInfo(CQRU8V5p9liijmINInc, sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc));
break;
case 3:
if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 148) > 0)
{
BodyCalldaimus(CQRU8V5p9liijmINInc, "CallDaimusAttack4");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(370);
}
else if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 127) > 0)
{
CQRU8V5p9liijmINInc.sq_PlaySound("PROFESSIONAL_END_SLASH");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][3]);
}
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(82);
local CQzS8k2WCFb6yM8F = 150;
CQRU8V5p9liijmINInc.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc),8);
sq_SetCurrentAttackInfo(CQRU8V5p9liijmINInc, sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc));
CQRU8V5p9liijmINInc.sq_SetStaticSpeedInfo(2, 2, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
break;
case 4:
if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 148) > 0)
{
BodyCalldaimus(CQRU8V5p9liijmINInc, "CallDaimusAttack5");
CQRU8V5p9liijmINInc.sq_SetCurrentAnimation(371);
}
CQRU8V5p9liijmINInc.sq_SetCurrentAttackInfo(83);
local CQzS8k2WCFb6yM8F = 150;
CQRU8V5p9liijmINInc.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc),8);
sq_SetCurrentAttackInfo(CQRU8V5p9liijmINInc, sq_GetCurrentAttackInfo(CQRU8V5p9liijmINInc));

break;
}

if(sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62) > 0)
{
local CQ5fAccAJbCJ6Dz7 = sq_GetCurrentAttackBonusRate(CQRU8V5p9liijmINInc);
local CQw1cu6rRSwORwl3mT = CQRU8V5p9liijmINInc.sq_GetLevelData(62, 0, sq_GetSkillLevel(CQRU8V5p9liijmINInc, 62));
CQRU8V5p9liijmINInc.sq_SetCurrentAttackBonusRate(CQ5fAccAJbCJ6Dz7 + CQw1cu6rRSwORwl3mT);
}

}

function onProcCon_AtSwordman_Basic5(CQZKXGJzI93y71TdeaLL)
{
if(!CQZKXGJzI93y71TdeaLL) return;

local CQzIx4iX3WiU2WT6y = CQZKXGJzI93y71TdeaLL.getSkillSubState();

local CQOOXzRsbPfl8jkRGEc = CQZKXGJzI93y71TdeaLL.getCurrentAnimation();
local CQ8teWVQX7Px3Sj8 = CQOOXzRsbPfl8jkRGEc.GetCurrentFrameIndex();

procSetIsMove(CQZKXGJzI93y71TdeaLL);

if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
{
switch(CQzIx4iX3WiU2WT6y)
{
case 0:
if(CQZKXGJzI93y71TdeaLL.isCurrentCutomAniIndex(0) && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 3) > 0 && CQ8teWVQX7Px3Sj8>5)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 148) > 0 && CQ8teWVQX7Px3Sj8>2)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 62) > 0 && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 202) > 0 && CQ8teWVQX7Px3Sj8>2)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 127) > 0 && CQ8teWVQX7Px3Sj8>5)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(1);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
break;
case 1:
if(CQZKXGJzI93y71TdeaLL.isCurrentCutomAniIndex(1) && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 3) > 0 && CQ8teWVQX7Px3Sj8>5)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 148) > 0 && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 62) > 0 && CQ8teWVQX7Px3Sj8>2)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 202) > 0 && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 127) > 0 && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(2);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
break;
case 2:
if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 148) > 0 && CQ8teWVQX7Px3Sj8>3)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(3);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
else if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 127) > 0 && CQ8teWVQX7Px3Sj8>6)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(3);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
break;
case 3:
if(sq_GetSkillLevel(CQZKXGJzI93y71TdeaLL, 148) > 0 && CQ8teWVQX7Px3Sj8>2)
{
CQZKXGJzI93y71TdeaLL.sq_IntVectClear();
CQZKXGJzI93y71TdeaLL.sq_IntVectPush(4);
CQZKXGJzI93y71TdeaLL.sq_AddSetStatePacket(108, STATE_PRIORITY_IGNORE_FORCE, true);
}
break;
}
}

ForcePush_ATSwordman(CQZKXGJzI93y71TdeaLL,169,[1,1,200],6);
}


function onAttack_AtSwordman_Basic5(CQQ4IWpXdjobhTncBy, CQL5lSbseofj9Fnq2, CQlXL19lJMP74ebb6vT, CQIAQkZ5vRlBd2vx)
{
if(!CQQ4IWpXdjobhTncBy) return false
local CQ7u3wEJOuJG5tvmUY = CQQ4IWpXdjobhTncBy.getSkillSubState()
MagicSword_BasiconAttack(CQQ4IWpXdjobhTncBy, CQL5lSbseofj9Fnq2, CQlXL19lJMP74ebb6vT, CQIAQkZ5vRlBd2vx)
Calldaimus_onAttack(CQQ4IWpXdjobhTncBy,CQL5lSbseofj9Fnq2, CQlXL19lJMP74ebb6vT, CQIAQkZ5vRlBd2vx)
}

function onEndCurrentAni_AtSwordman_Basic5(CQrUpPUqjBUKMjYvwSqG)
{
if(!CQrUpPUqjBUKMjYvwSqG) return
CQrUpPUqjBUKMjYvwSqG.sq_IntVectClear()
CQrUpPUqjBUKMjYvwSqG.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}

function onProcCon_AtSwordman_Basic3(CQblyucyMTcKBTqoxyt)
{
if(!CQblyucyMTcKBTqoxyt) return
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
{
CQblyucyMTcKBTqoxyt.sq_IntVectClear()
CQblyucyMTcKBTqoxyt.sq_IntVectPush(0)
CQblyucyMTcKBTqoxyt.sq_AddSetStatePacket(115, STATE_PRIORITY_IGNORE_FORCE, true)
}
}

function onSetState_AtSwordman_Basic4(CQWb6DI5kwlfBljjBq, CQVha1qJiLJ3LNhf2KWe, CQY4kkgp85UZNeglT, CQSZJeBjQqNAZ2ghcaN)
{
if(!CQWb6DI5kwlfBljjBq) return;

local CQfPmPW2MHWoGPRc = CQWb6DI5kwlfBljjBq.sq_GetVectorData(CQY4kkgp85UZNeglT, 0);
CQWb6DI5kwlfBljjBq.setSkillSubState(CQfPmPW2MHWoGPRc);

local CQuyHNloch6QXkYTQQ = sq_getGrowType(CQWb6DI5kwlfBljjBq);

local CQMnUh3nsUaxHDYbPKMz = CQWb6DI5kwlfBljjBq.sq_GetBonusRateWithPassive(174, -1, 0, getATSwordmanBonus(CQWb6DI5kwlfBljjBq,1.0,-1))/10+100;

switch(CQfPmPW2MHWoGPRc)
{
case 0:
CQWb6DI5kwlfBljjBq.sq_StopMove();
CQWb6DI5kwlfBljjBq.sq_PlaySound("SW_DASHATK");

CQWb6DI5kwlfBljjBq.sq_SetCurrentAttackInfo(0);
local CQnj1qFRgFhRAwcxF = CQMnUh3nsUaxHDYbPKMz;
if(CQuyHNloch6QXkYTQQ ==1)
{
local CQG5iIyDWfD3J1ckKJq = GetMagicSwordAppIndex(CQWb6DI5kwlfBljjBq);
switch(CQG5iIyDWfD3J1ckKJq)
{
case 0:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(4);
break;
case 1:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(158);
break;
case 2:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(157);
break;
case 3:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(160);
break;
case 4:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(159);
break;
}
}
else if(CQuyHNloch6QXkYTQQ ==3)
{
if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 148) > 0)
{
BodyCalldaimus(CQWb6DI5kwlfBljjBq, "CallDaimusDashAttack1");
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(372);
}
}
else if(CQuyHNloch6QXkYTQQ == 4)
{
if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62) > 0)
{
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(511);
CQWb6DI5kwlfBljjBq.sq_SetCurrentAttackInfo(131);
local CQhXRVxyLycZDrxv = sq_GetLevelData(CQWb6DI5kwlfBljjBq,62, 0, sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62));
CQMnUh3nsUaxHDYbPKMz = CQMnUh3nsUaxHDYbPKMz + CQhXRVxyLycZDrxv;
}
}
else
{
if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 127) > 0)
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][4]);
else
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(4);
}
CQWb6DI5kwlfBljjBq.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQWb6DI5kwlfBljjBq),15);
sq_SetCurrentAttackInfo(CQWb6DI5kwlfBljjBq, sq_GetCurrentAttackInfo(CQWb6DI5kwlfBljjBq));

break;
case 1:
CQWb6DI5kwlfBljjBq.sq_SetCurrentAttackInfo(85);
local CQnj1qFRgFhRAwcxF = 120;
if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 148) > 0)
{
BodyCalldaimus(CQWb6DI5kwlfBljjBq, "CallDaimusDashAttack2");
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(373);
}
else if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62) > 0)
{
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(512);
CQWb6DI5kwlfBljjBq.sq_SetCurrentAttackInfo(132);
local CQhXRVxyLycZDrxv = sq_GetLevelData(CQWb6DI5kwlfBljjBq,62, 0, sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62));
CQMnUh3nsUaxHDYbPKMz = CQMnUh3nsUaxHDYbPKMz + CQhXRVxyLycZDrxv;
}
else if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 127) > 0)
{
CQWb6DI5kwlfBljjBq.sq_SetCurrentAnimation(CAHNGQING_ATSWORDMAN_INFOS["A"][-1][5]);
}
CQWb6DI5kwlfBljjBq.applyBasicAttackUp(sq_GetCurrentAttackInfo(CQWb6DI5kwlfBljjBq),15);
sq_SetCurrentAttackInfo(CQWb6DI5kwlfBljjBq, sq_GetCurrentAttackInfo(CQWb6DI5kwlfBljjBq));

break;
}
if(sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62) > 0)
{
local CQqmVEnP6r2QOTlYx = sq_GetCurrentAttackBonusRate(CQWb6DI5kwlfBljjBq);
local CQsTYZdroPuxpFTQbK6 = CQWb6DI5kwlfBljjBq.sq_GetLevelData(62, 1, sq_GetSkillLevel(CQWb6DI5kwlfBljjBq, 62));
CQWb6DI5kwlfBljjBq.sq_SetCurrentAttackBonusRate(CQqmVEnP6r2QOTlYx + CQsTYZdroPuxpFTQbK6);
}
}

function onProcCon_AtSwordman_Basic4(CQ3v21Hv7A4FUEqc8)
{
if(!CQ3v21Hv7A4FUEqc8) return;
local CQXOdIgmyHIfuBvJnh = CQ3v21Hv7A4FUEqc8.getCurrentAnimation().GetCurrentFrameIndex();
local CQRVz9Qgs1ileiVc6f1 = CQ3v21Hv7A4FUEqc8.getSkillSubState();

if(sq_getGrowType(CQ3v21Hv7A4FUEqc8) == 3 && CQRVz9Qgs1ileiVc6f1 == 0)
{
if(CQXOdIgmyHIfuBvJnh < 4)
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0, 200, 106, false, -500, true);
else
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0,0,0,false);
CQ3v21Hv7A4FUEqc8.sq_SetMoveDirection(CQ3v21Hv7A4FUEqc8.getDirection(), ENUM_DIRECTION_NEUTRAL);
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
{
if(sq_GetSkillLevel(CQ3v21Hv7A4FUEqc8, 148) > 0 && CQXOdIgmyHIfuBvJnh>3)
{
CQ3v21Hv7A4FUEqc8.sq_IntVectClear();
CQ3v21Hv7A4FUEqc8.sq_IntVectPush(1);
CQ3v21Hv7A4FUEqc8.sq_AddSetStatePacket(115, STATE_PRIORITY_IGNORE_FORCE, true);
}
}
}
else if(sq_getGrowType(CQ3v21Hv7A4FUEqc8) == 4 && CQRVz9Qgs1ileiVc6f1 == 0)
{
if(CQXOdIgmyHIfuBvJnh < 5)
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0, 200, 106, false, -500, true);
else
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0,0,0,false);
CQ3v21Hv7A4FUEqc8.sq_SetMoveDirection(CQ3v21Hv7A4FUEqc8.getDirection(), ENUM_DIRECTION_NEUTRAL);
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
{
if(sq_GetSkillLevel(CQ3v21Hv7A4FUEqc8, 62) > 0 && CQXOdIgmyHIfuBvJnh>6)
{
CQ3v21Hv7A4FUEqc8.sq_IntVectClear();
CQ3v21Hv7A4FUEqc8.sq_IntVectPush(1);
CQ3v21Hv7A4FUEqc8.sq_AddSetStatePacket(115, STATE_PRIORITY_IGNORE_FORCE, true);
}
}
}
else if(sq_getGrowType(CQ3v21Hv7A4FUEqc8) == 0 && CQRVz9Qgs1ileiVc6f1 == 0)
{
if(CQXOdIgmyHIfuBvJnh < 7)
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0, 200, 106, false, -500, true);
else
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0,0,0,false);
CQ3v21Hv7A4FUEqc8.sq_SetMoveDirection(CQ3v21Hv7A4FUEqc8.getDirection(), ENUM_DIRECTION_NEUTRAL);
if(sq_IsKeyDown(OPTION_HOTKEY_ATTACK, ENUM_SUBKEY_TYPE_ALL))
{
if(sq_GetSkillLevel(CQ3v21Hv7A4FUEqc8, 127) > 0 && CQXOdIgmyHIfuBvJnh>7)
{
CQ3v21Hv7A4FUEqc8.sq_IntVectClear();
CQ3v21Hv7A4FUEqc8.sq_IntVectPush(1);
CQ3v21Hv7A4FUEqc8.sq_AddSetStatePacket(115, STATE_PRIORITY_IGNORE_FORCE, true);
}
}
}
else
{
if(CQXOdIgmyHIfuBvJnh < 4)
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0, 200, 106, false, -500, true);
else
CQ3v21Hv7A4FUEqc8.sq_SetStaticMoveInfo(0, 10, 106, false, -500, true);
CQ3v21Hv7A4FUEqc8.sq_SetMoveDirection(CQ3v21Hv7A4FUEqc8.getDirection(), ENUM_DIRECTION_NEUTRAL);
}

}

function onAttack_AtSwordman_Basic4(CQuWuXnbmhmwnyqKT, CQMvf9ddDo1ceTmFcyh, CQngAbXV8MyRUFUX, CQG3cpatEv84cxUJEv)
{
if(!CQuWuXnbmhmwnyqKT) return false
MagicSword_BasiconAttack(CQuWuXnbmhmwnyqKT, CQMvf9ddDo1ceTmFcyh, CQngAbXV8MyRUFUX, CQG3cpatEv84cxUJEv)
Calldaimus_onAttack(CQuWuXnbmhmwnyqKT,CQMvf9ddDo1ceTmFcyh, CQngAbXV8MyRUFUX, CQG3cpatEv84cxUJEv)
}

function onEndCurrentAni_AtSwordman_Basic4(CQhLCKmxNysXk2nBPSU9)
{
if(!CQhLCKmxNysXk2nBPSU9) return
CQhLCKmxNysXk2nBPSU9.sq_IntVectClear()
CQhLCKmxNysXk2nBPSU9.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
}


function onEnterFrame_AtSwordman_Basic2(CQpOr7R7eBjSYtnZF, CQ3P7cSOJcGGT5y13SL)
{
if(!CQpOr7R7eBjSYtnZF) return
switch(CQ3P7cSOJcGGT5y13SL)
{
case 5:
CQpOr7R7eBjSYtnZF.resetHitObjectList()
break
}
}

function onSetState_AtSwordman_Basic2(CQqueurwROvaRDtV, CQKU6HTTOXCrlzt4fy, CQkks42L4zwbhGWMjB4, CQw6TzDans4j9rr7ev)
{
if(!CQqueurwROvaRDtV) return
if(sq_GetSkillLevel(CQqueurwROvaRDtV, 62) > 0)
{
local CQZCKtWmCLo6j3r3ySr1 = sq_GetCurrentAttackBonusRate(CQqueurwROvaRDtV)
local CQzSmD73TkfVdyedp = CQqueurwROvaRDtV.sq_GetLevelData(62, 1, sq_GetSkillLevel(CQqueurwROvaRDtV, 62))
CQqueurwROvaRDtV.sq_SetCurrentAttackBonusRate(CQZCKtWmCLo6j3r3ySr1 + CQzSmD73TkfVdyedp)
}
}

function onAttack_AtSwordman_Basic2(CQOi22KHFEPG56w6IyN, CQ8moTpU92zafFw1, CQWT2ebgwhKr6xQ81v, CQV7oA9MMiUb1Jq46BfG)
{
if(!CQOi22KHFEPG56w6IyN) return false
Calldaimus_onAttack(CQOi22KHFEPG56w6IyN,CQ8moTpU92zafFw1, CQWT2ebgwhKr6xQ81v, CQV7oA9MMiUb1Jq46BfG)
}
