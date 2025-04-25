


function onAfterSetState_swordman_hundredswordhit(u6173NuscH, dEu861GH5mLITGRfMAEW, itOIsgf8FdJv_wJ4dQ6KqOl, cgpjQiWXtH5fmj)
{
 if(!u6173NuscH) return;
 u6173NuscH.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * sq_GetUniformVelocity(u6173NuscH.getVar("speedRate").get_vector(2), u6173NuscH.getVar("speedRate").get_vector(3), u6173NuscH.getVar("speedRate").get_vector(0), u6173NuscH.getVar("speedRate").get_vector(1)) / 100.0).tointeger(), 1.0, 1.0); 
} ;

function onProcCon_swordman_hundredswordhit(u6173NuscH)
{
 if(!u6173NuscH) return;
 sq_SetKeyxEnable(u6173NuscH, E_ATTACK_COMMAND, true); 
 u6173NuscH.setSkillCommandEnable(86, true); 
 if(u6173NuscH.sq_IsEnterSkill(86) != -1 
 || sq_IsEnterCommand(u6173NuscH, E_ATTACK_COMMAND)) 
 {
 local dEu861GH5mLITGRfMAEW = u6173NuscH.getVar("speedRate").get_vector(0);
 local itOIsgf8FdJv_wJ4dQ6KqOl = u6173NuscH.getVar("speedRate").get_vector(1);
 if(dEu861GH5mLITGRfMAEW < itOIsgf8FdJv_wJ4dQ6KqOl)
 {
 dEu861GH5mLITGRfMAEW += 1;
 u6173NuscH.getVar("speedRate").set_vector(0, dEu861GH5mLITGRfMAEW); 
 u6173NuscH.sq_SetStaticSpeedInfo(0, 0, SPEED_VALUE_DEFAULT, (SPEED_VALUE_DEFAULT * sq_GetUniformVelocity(u6173NuscH.getVar("speedRate").get_vector(2), u6173NuscH.getVar("speedRate").get_vector(3), dEu861GH5mLITGRfMAEW, itOIsgf8FdJv_wJ4dQ6KqOl) / 100.0).tointeger(), 1.0, 1.0); 
 }
 }
} ;


