

function onCreateObject_swordman_shockwavearea(SG5mr4jN956J, rJRpsrmRSbKulEBkp)
{
 if(!SG5mr4jN956J) return;
 if(rJRpsrmRSbKulEBkp.isObjectType(OBJECTTYPE_PASSIVE))
 {
 local Sc3DmgxApX8z5D9 = sq_GetCNRDObjectToCollisionObject(rJRpsrmRSbKulEBkp); 
 if(Sc3DmgxApX8z5D9 && Sc3DmgxApX8z5D9.getCollisionObjectIndex() == 20021)
 if(SG5mr4jN956J.sq_IsMyControlObject())
 SG5mr4jN956J.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
} ;


function onProcCon_swordman_shockwavearea(c_vFwykB3ZWKJuHsr)
{
 if(!c_vFwykB3ZWKJuHsr) return;
 
 if(!sq_GetSkill(c_vFwykB3ZWKJuHsr, 74).isInCoolTime())
 { 
 c_vFwykB3ZWKJuHsr.setSkillCommandEnable(74, true); 
 if(c_vFwykB3ZWKJuHsr.sq_IsEnterSkill(74) != -1) 
 {
 local cIml7jnrbdarQ8XTzHorH = c_vFwykB3ZWKJuHsr.sq_IsUseSkill(74); 
 if(cIml7jnrbdarQ8XTzHorH)
 {
 c_vFwykB3ZWKJuHsr.sq_IntVectClear();
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(0);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(0);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(74);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(0);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(3400);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(1);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(4);
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(0);
 c_vFwykB3ZWKJuHsr.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(c_vFwykB3ZWKJuHsr, 62).isInCoolTime())
 { 
 c_vFwykB3ZWKJuHsr.setSkillCommandEnable(62, true); 
 if(c_vFwykB3ZWKJuHsr.sq_IsEnterSkill(62) != -1) 
 {
 local cIml7jnrbdarQ8XTzHorH = c_vFwykB3ZWKJuHsr.sq_IsUseSkill(62); 
 if(cIml7jnrbdarQ8XTzHorH)
 {
 c_vFwykB3ZWKJuHsr.sq_IntVectClear();
 c_vFwykB3ZWKJuHsr.sq_IntVectPush(0);
 c_vFwykB3ZWKJuHsr.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} ;

