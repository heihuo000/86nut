
function onProcCon_StandAloneWave(u6173NuscH)
{
 if(!u6173NuscH) return;
 
 if(!sq_GetSkill(u6173NuscH, 74).isInCoolTime())
 { 
 u6173NuscH.setSkillCommandEnable(74, true); 
 if(u6173NuscH.sq_IsEnterSkill(74) != -1) 
 {
 local dEu861GH5mLITGRfMAEW = u6173NuscH.sq_IsUseSkill(74); 
 if(dEu861GH5mLITGRfMAEW)
 {
 u6173NuscH.sq_IntVectClear();
 u6173NuscH.sq_IntVectPush(0);
 u6173NuscH.sq_IntVectPush(0);
 u6173NuscH.sq_IntVectPush(74);
 u6173NuscH.sq_IntVectPush(0);
 u6173NuscH.sq_IntVectPush(3400);
 u6173NuscH.sq_IntVectPush(1);
 u6173NuscH.sq_IntVectPush(4);
 u6173NuscH.sq_IntVectPush(0);
 u6173NuscH.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(u6173NuscH, 57).isInCoolTime())
 { 
 u6173NuscH.setSkillCommandEnable(57, true); 
 if(u6173NuscH.sq_IsEnterSkill(57) != -1) 
 {
 local dEu861GH5mLITGRfMAEW = u6173NuscH.sq_IsUseSkill(57); 
 if(dEu861GH5mLITGRfMAEW)
 {
 u6173NuscH.sq_IntVectClear();
 u6173NuscH.sq_IntVectPush(0);
 u6173NuscH.sq_AddSetStatePacket(31, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} ;


