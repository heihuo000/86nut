
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function setCustomData_po_qq506807329new_atmage_24377(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv)
{
 if(!KTPV6RpNFZL8ZIefMPHgQ) return;
 local netZD7Dbmq = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("skill").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("skill").push_vector(netZD7Dbmq);
 switch(netZD7Dbmq)
 {
 case 243: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 sq_ChangeDrawLayer(KTPV6RpNFZL8ZIefMPHgQ, ENUM_DRAWLAYER_BOTTOM); 
 local CN4JYsjoyeLMCgxOV = sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword());
 sq_SetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, CN4JYsjoyeLMCgxOV);
 KTPV6RpNFZL8ZIefMPHgQ.getVar().setFloat(0,JDoY8JKNkL_zr2HEdZNHDv.readFloat()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 244: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 2), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword()/100.0; 
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/bigorb_orbd.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/projectile_dodge.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local Ca1tcSMgeXsB0 = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atconvergencecannon/explosion/explosion_dodge.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(Ca1tcSMgeXsB0); 
 local QsIpP8bWywLUfPc0Dc9 = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 local Ijc9lieNnx8diGDH = 150; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(KTPV6RpNFZL8ZIefMPHgQ.getXPos()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(QsIpP8bWywLUfPc0Dc9); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("move").push_vector(Ijc9lieNnx8diGDH); 
 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_timer_vector();
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_timer_vector();
 local s9iIo4JfJfuXw = KTPV6RpNFZL8ZIefMPHgQ.getVar().get_timer_vector(0);
 s9iIo4JfJfuXw.setParameter(Ijc9lieNnx8diGDH/(QsIpP8bWywLUfPc0Dc9/65), -1); 
 s9iIo4JfJfuXw.resetInstant(0); 
 KTPV6RpNFZL8ZIefMPHgQ.sq_PlaySound("R_DARKSHOT_HIT"); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 case 245: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 3), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 4), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword() / 100.0; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/ascolorball_00.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/asblackball_00.ani",TeHNQv2_FTP7tNIglnN38eP,false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.sq_PlaySound("R_DARKSHOT_HIT"); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 case 2:
 local CN4JYsjoyeLMCgxOV = sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 5); 
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword());
 sq_SetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, CN4JYsjoyeLMCgxOV);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atarmageddonstrike/explosion_01.ani"); 
 KTPV6RpNFZL8ZIefMPHgQ.setCurrentAnimation(A9yL4uSpZsRY9BGMY);
 break;
 }
 break;
 case 246: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local Xf9WUoK3kgOAY_oA = KTPV6RpNFZL8ZIefMPHgQ.getTopCharacter(); 
 if(Xf9WUoK3kgOAY_oA)
 {
 
 Xf9WUoK3kgOAY_oA.getVar().clear_obj_vector(); 
 Xf9WUoK3kgOAY_oA.getVar().push_obj_vector(KTPV6RpNFZL8ZIefMPHgQ); 
 }
 sq_SetCurrentAttackInfoFromCustomIndex(KTPV6RpNFZL8ZIefMPHgQ, 6); 
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readDword() / 100.0; 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atshardmagnum/shardmagnumstep1_01iceboom4.ani", TeHNQv2_FTP7tNIglnN38eP, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate( "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atshardmagnum/shardmagnumstep2_02handglow.ani",TeHNQv2_FTP7tNIglnN38eP,false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 setCurrentAnimationFromCutomIndex(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 break;
 }
 break; 
 case 247: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local TeHNQv2_FTP7tNIglnN38eP = JDoY8JKNkL_zr2HEdZNHDv.readFloat(); 
 local DXVjRWliS1ZHpECo = JDoY8JKNkL_zr2HEdZNHDv.readFloat(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("sizeRate").setFloat(0, TeHNQv2_FTP7tNIglnN38eP);
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_front.ani", TeHNQv2_FTP7tNIglnN38eP, DXVjRWliS1ZHpECo); 
 local w9xFqW7mKRsOSAE1gCfDe = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atoverfreezeextension/atoverfreezeextension_shock_circle_back.ani", TeHNQv2_FTP7tNIglnN38eP, DXVjRWliS1ZHpECo); 
 A9yL4uSpZsRY9BGMY.addLayerAnimation(-1, w9xFqW7mKRsOSAE1gCfDe, true); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 setCurrentAnimationFromCutomIndex(KTPV6RpNFZL8ZIefMPHgQ, 0); 
 sq_SetCurrentAttackInfoFromCustomIndex(KTPV6RpNFZL8ZIefMPHgQ, 8); 
 local CN4JYsjoyeLMCgxOV = sq_GetCurrentAttackInfo(KTPV6RpNFZL8ZIefMPHgQ);
 sq_SetCurrentAttackBonusRate(CN4JYsjoyeLMCgxOV, JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 break;
 }
 break;
 case 248: 
 local LNTkxz7Jl_9hzqndfBkD4iSH = JDoY8JKNkL_zr2HEdZNHDv.readDword(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").push_vector(LNTkxz7Jl_9hzqndfBkD4iSH);
 switch(LNTkxz7Jl_9hzqndfBkD4iSH)
 {
 case 1:
 local A9yL4uSpZsRY9BGMY = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/arrow_shoot.ani", false, false); 
 local hgQUvSbfN1qdSfzoikuqVbZj = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_first.ani", false, false); 
 local Ca1tcSMgeXsB0 = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_second.ani", false, false); 
 local FOvaeRcF9jb = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/ice/judekatheeternal_third.ani", false, false); 
 local HNS9e0qzjNGDo = sq_CreateAnimation_SizeRate_SpeedRate("passiveobject/script_sqr_nut_qq506807329/atmage/animation/atjudekatheeternal/explosion/judekatheeternal_explosion.ani", false, false); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(A9yL4uSpZsRY9BGMY); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(hgQUvSbfN1qdSfzoikuqVbZj); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(Ca1tcSMgeXsB0); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(FOvaeRcF9jb); 
 KTPV6RpNFZL8ZIefMPHgQ.addCustomAnimation(HNS9e0qzjNGDo); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 9), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ,10), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 
 sq_SetCurrentAttackBonusRate(sq_GetCustomAttackInfo(KTPV6RpNFZL8ZIefMPHgQ, 11), JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().setBool(0,false); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_obj_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().clear_vector(); 
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_vector(JDoY8JKNkL_zr2HEdZNHDv.readDword()); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 break;
 }
} ;
 
