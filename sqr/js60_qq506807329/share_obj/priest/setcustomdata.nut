
//ï¿½Yï¿½Tï¿½Ë½æª¯ï¿½Aï¿½ï¿½nutï¿½Þ?¬°ï¿½ï¿½ï¿½wï¿½ï¿½ï¿½Ý¡Cï¿½uï¿½Rï¿½ï¿½ï¿½wï¿½Aï¿½tï¿?ï¿½Ý­nï¿½Ñ?ï¿½Ì¥iï¿½Hï¿½pÃ´ï¿½ï¿½
//ï¿?ï¿½Ì¡Gï¿½Cï¿½t60 QQ506807329   ï¿½ï¿½ï¿?NUTï¿½sï¿?ï¿½gï¿½Þ?¿½ ï¿½ï¿½ï¿½ï¿½Ð¾ï¿?500ï¿?ï¿½ï¿½Cï¿½tï¿?1000ï¿½Ç¶Oï¿½ï¿½Â¦ï¿½ï¿½jï¿½ï¿½ï¿½Aï¿?ï¿½Î?§ï¿½ ï¿½Ò¦pï¿½Gï¿½ï¿½ï¿½ï¿½ï¿?ï¿?ï¿½ï¿½ ï¿½ï¿½ï¿½Ó? ï¿½Ë³ï¿½ ï¿½Æ¥ï¿½ ï¿½ï¿½ï¿½ï¿½ NPC NPK ï¿½Çªï¿½ ï¿½dï¿½ï¿½ act obj  UIï¿½Ð?ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Aï¿½ï¿½ï¿?ï¿½iï¿½Hï¿½ï¿½ï¿?ï¿½C




 
 
function setCustomData_po_qq506807329new_priest_24374(RQUG25JPpq2qN, wBGU4gk7_tNAq9biq)
{
 if(!RQUG25JPpq2qN) return;
 local _1h71K8s2tQOeX074 = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("skill").clear_vector(); 
 RQUG25JPpq2qN.getVar("skill").push_vector(_1h71K8s2tQOeX074);
 switch(_1h71K8s2tQOeX074) 
 {
 case 237: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local Kjd3nOTA21 = RQUG25JPpq2qN.getXPos(); 
 local YFhqDmCijFQL = RQUG25JPpq2qN.getYPos(); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(Kjd3nOTA21);
 yCCBbPsrbo13A252ntWLyNbm.push_vector(YFhqDmCijFQL);
 yCCBbPsrbo13A252ntWLyNbm.push_vector(sq_GetDistancePos(Kjd3nOTA21, RQUG25JPpq2qN.getDirection(), wBGU4gk7_tNAq9biq.readDword())); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(YFhqDmCijFQL + wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3:
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 1); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/destroyspirittalisman/explosion_explosion_circle_normal.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 break;
 }
 break;
 case 238: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 if(FBX7DkQlJpCUw2_mq == 1)
 {
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_BOTTOM); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 RQUG25JPpq2qN.getVar().setBool(0, false); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 240: 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/dangerousscale/dangerousscaleattackexplosion_00.ani");
 local YnPxxKH_ZPBQ4V = (wBGU4gk7_tNAq9biq.readDword()).tofloat() / 100.0; 
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 4); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local Kjd3nOTA21 = RQUG25JPpq2qN.getXPos();
 local YFhqDmCijFQL = RQUG25JPpq2qN.getYPos();
 local T8mH4uDo5ca9klihczqmOsa4 = RQUG25JPpq2qN.getZPos();
 CreateAniRate(RQUG25JPpq2qN, "character/priest/effect/animation/dangerousscale/dangerousscaleattackstoneback_00.ani", ENUM_DRAWLAYER_NORMAL, Kjd3nOTA21, YFhqDmCijFQL - 1, T8mH4uDo5ca9klihczqmOsa4, YnPxxKH_ZPBQ4V, false); 
 CreateAniRate(RQUG25JPpq2qN, "character/priest/effect/animation/dangerousscale/dangerousscaleattackstonefront_00.ani", ENUM_DRAWLAYER_NORMAL, Kjd3nOTA21, YFhqDmCijFQL, T8mH4uDo5ca9klihczqmOsa4, YnPxxKH_ZPBQ4V, false); 
 CreateAniRate(RQUG25JPpq2qN, "character/priest/effect/animation/dangerousscale/dangerousscaleattackdust_00.ani", ENUM_DRAWLAYER_NORMAL, Kjd3nOTA21, YFhqDmCijFQL + 1, T8mH4uDo5ca9klihczqmOsa4, YnPxxKH_ZPBQ4V, false); 
 CreateAniRate(RQUG25JPpq2qN, "character/priest/effect/animation/dangerousscale/dangerousscaleattackbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, Kjd3nOTA21, YFhqDmCijFQL, T8mH4uDo5ca9klihczqmOsa4, YnPxxKH_ZPBQ4V, false); 
 break;
 case 241: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local gU7LxqbytHx30wn0zHBDrX3d = (wBGU4gk7_tNAq9biq.readDword()).tofloat(); 
 RQUG25JPpq2qN.getVar().setFloat(0, gU7LxqbytHx30wn0zHBDrX3d / 300.0); 
 RQUG25JPpq2qN.getVar().setFloat(1, gU7LxqbytHx30wn0zHBDrX3d / 250.0); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 2:
 local cmMMnZKv7HzDgE = wBGU4gk7_tNAq9biq.readFloat(); 
 RQUG25JPpq2qN.getVar().setFloat(0, cmMMnZKv7HzDgE); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/advanceddragon/advanceddragon_passion/attack_smallfrag.ani");
 XDyKOZFgVI1zXLT.setSpeedRate(cmMMnZKv7HzDgE); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 7); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 }
 break;
 case 242: 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/nuclearpunch/nuclearpunch_attack_shockbackglow.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 8); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 243: 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/demolitionpunch/demolitionpunch_c_shockb.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 9); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 245: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local Kb6lUKE40cnlRDxhKLRJWmn = sq_GetCNRDObjectToSQRCharacter(RQUG25JPpq2qN.getParent()); 
 if(Kb6lUKE40cnlRDxhKLRJWmn)
 {
 local XDyKOZFgVI1zXLT = sq_GetCustomAni(Kb6lUKE40cnlRDxhKLRJWmn, wBGU4gk7_tNAq9biq.readDword()); 
 sq_Rewind(XDyKOZFgVI1zXLT); 
 XDyKOZFgVI1zXLT.setSpeedRate(150.0); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(Kb6lUKE40cnlRDxhKLRJWmn, 109); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.setDirection(wBGU4gk7_tNAq9biq.readDword()); 
 RQUG25JPpq2qN.sq_PlaySound("R_WRATH_GOD_HIT"); 
 }
 break;
 case 2:
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 RQUG25JPpq2qN.setDirection(sq_GetOppositeDirection(RQUG25JPpq2qN.getDirection())); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3:
 local YnPxxKH_ZPBQ4V = 2.0; 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/wrathofgod/finishatkeff_smoke.ani");
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 10); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.sq_PlaySound("WRATH_GOD_EXP"); 
 break;
 case 4:
 local Kb6lUKE40cnlRDxhKLRJWmn = sq_GetCNRDObjectToSQRCharacter(RQUG25JPpq2qN.getParent()); 
 if(Kb6lUKE40cnlRDxhKLRJWmn)
 {
 local XDyKOZFgVI1zXLT = sq_GetCustomAni(Kb6lUKE40cnlRDxhKLRJWmn, 158); 
 sq_Rewind(XDyKOZFgVI1zXLT); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 }
 break;
 }
 break;
 case 248: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local Kb6lUKE40cnlRDxhKLRJWmn = sq_GetCNRDObjectToSQRCharacter(RQUG25JPpq2qN.getParent()); 
 if(Kb6lUKE40cnlRDxhKLRJWmn)
 Kb6lUKE40cnlRDxhKLRJWmn.getVar().push_obj_vector(RQUG25JPpq2qN); 
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_BOTTOM); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 }
 break;
 case 249: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 0:
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_COVER); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(RQUG25JPpq2qN.getYPos()); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "character/priest/effect/animation/spearofdestiny/spearofdestiny_bgeff_cloud01.ani"); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local w0t2fbe9au3 = sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "character/priest/effect/animation/spearofdestiny/spearofdestiny_usereff_glow04.ani", ENUM_DRAWLAYER_COVER, true); 
 RQUG25JPpq2qN.getVar("aniobj").clear_obj_vector(); 
 RQUG25JPpq2qN.getVar("aniobj").push_obj_vector(w0t2fbe9au3); 
 local kJznxpzJ8H = RQUG25JPpq2qN.getParent(); 
 if(kJznxpzJ8H && !kJznxpzJ8H.isMyControlObject()) 
 {
 sq_setCurrentAxisPos(RQUG25JPpq2qN, 2, 99999); 
 sq_setCurrentAxisPos(w0t2fbe9au3, 2, 99999); 
 }
 break;
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/spearofdestiny/spearofdestiny_dropspear_thunder.ani"); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 13); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 local yCCBbPsrbo13A252ntWLyNbm = RQUG25JPpq2qN.getVar(); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 yCCBbPsrbo13A252ntWLyNbm.push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 break;
 case 2:
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_BOTTOM); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/spearofdestiny/spearofdestiny_explosion_floor_eff06.ani"); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 14); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 3:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/spearofdestiny/spearofdestiny_explosion_back_eff01.ani"); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 15); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 sq_SetMyShake(RQUG25JPpq2qN, 4, 180); 
 break;
 }
 break;
 case 250: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/jupiter/jupiterhammerlightningtower.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 16); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 2:
 local YnPxxKH_ZPBQ4V = 0.5; 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/jupiter/jupiterhammerupperadd_addeff_a.ani");
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 3:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/jupiter/jupiterhammerdashatk_floor_dodge.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local p4wp4yPlGRyJFlLEwQ = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(p4wp4yPlGRyJFlLEwQ); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 18); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, p4wp4yPlGRyJFlLEwQ); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.sq_PlaySound("R_THUNDERHAMMER_ATK_ELEC");
 break;
 case 4:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/jupiter/jupiterhammerupperadd_addeff_a.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 5:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/chang_qing_skill/priest/animation/holymace/holymaceshockwave_top_dodge.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 6:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/chang_qing_skill/priest/animation/holymace/holymaceshockwave_bot_normal.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 7:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/chang_qing_skill/priest/animation/holymace/holymaceshockwavequakearea_bot_normal.ani");
 local dgsydsaudadddds = wBGU4gk7_tNAq9biq.readDword()/100.0;
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(dgsydsaudadddds, dgsydsaudadddds);
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, 1.0, 1.0, 1.0);
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 8:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/chang_qing_skill/priest/animation/divineflash/DivineFlash_Multi_Explosion.ani");
 local dgsydsaudadddds = wBGU4gk7_tNAq9biq.readDword()/100.0;
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(dgsydsaudadddds, dgsydsaudadddds);
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, 1.0, 1.0, 1.0);
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 17); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 }
 RQUG25JPpq2qN.sq_PlaySound("R_THUNDERHAMMER_ATK_ELEC"); 
 break;
 case 251: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/divinepunishment/boom_04.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 20); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "passiveobject/script_sqr_nut_qq506807329/priest/animation/divinepunishment/boom_floor_01.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetMyShake(RQUG25JPpq2qN, 3, 100); 
 break;
 case 2:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/divinepunishment/finish01_09.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 21); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 sq_SetMyShake(RQUG25JPpq2qN, 6, 400); 
 break;
 }
 break;
 case 246: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/haptism/haptism1front_1.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 22); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 2:
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_BOTTOM); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/haptism/haptism1floor_1.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 23); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 case 3:
 sq_ChangeDrawLayer(RQUG25JPpq2qN, ENUM_DRAWLAYER_BOTTOM); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/haptism/haptism2floor_1.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 24); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 sq_SetMyShake(RQUG25JPpq2qN, 3, 160); 
 sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "passiveobject/script_sqr_nut_qq506807329/priest/animation/haptism/haptism2front_1.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 break;
 case 135: 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/devilfist/explosion_08.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 25); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local YnPxxKH_ZPBQ4V = wBGU4gk7_tNAq9biq.readFloat(); 
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 break;
 case 136: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/dh1_shockwave_normal.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 local GqW9dldQ22 = wBGU4gk7_tNAq9biq.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(wBlSHj6I3y9tynDX3BUk, 0, ACTIVESTATUS_CURSE, wBGU4gk7_tNAq9biq.readDword(), wBGU4gk7_tNAq9biq.readDword(), wBGU4gk7_tNAq9biq.readDword(), GqW9dldQ22, GqW9dldQ22, GqW9dldQ22, GqW9dldQ22); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local PUQJpw1BLjMiz0 = wBGU4gk7_tNAq9biq.readDword(); 
 if(PUQJpw1BLjMiz0 != 0)
 RQUG25JPpq2qN.setTimeEvent(0, XDyKOZFgVI1zXLT.getDelaySum(0, 4) / PUQJpw1BLjMiz0, PUQJpw1BLjMiz0 - 1, false); 
 RQUG25JPpq2qN.getVar().clear_obj_vector(); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetMyShake(RQUG25JPpq2qN, 4, 200); 
 break;
 case 2:
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 if(RQUG25JPpq2qN.isMyControlObject())
 RQUG25JPpq2qN.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, ""); 
 break;
 case 3:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/shock_dodge.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 28); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 local GqW9dldQ22 = wBGU4gk7_tNAq9biq.readDword(); 
 sq_SetChangeStatusIntoAttackInfo(wBlSHj6I3y9tynDX3BUk, 0, ACTIVESTATUS_CURSE, wBGU4gk7_tNAq9biq.readDword(), wBGU4gk7_tNAq9biq.readDword(), wBGU4gk7_tNAq9biq.readDword(), GqW9dldQ22, GqW9dldQ22, GqW9dldQ22, GqW9dldQ22); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.getVar().clear_obj_vector(); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetMyShake(RQUG25JPpq2qN, 4, 200); 
 sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "passiveobject/script_sqr_nut_qq506807329/priest/animation/darkhowling/circle_normal.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 break;
 }
 break;
 case 137: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local esPvN8WgPY = "passiveobject/script_sqr_nut_qq506807329/priest/animation/doomcrush/doomcrush_boom_finish_20.ani"; 
 if(wBGU4gk7_tNAq9biq.readDword() == 2) 
 esPvN8WgPY = "passiveobject/script_sqr_nut_qq506807329/priest/animation/doomcrush/doomcrush_boom_finish_charge_24.ani"; 
 RQUG25JPpq2qN.setCurrentAnimation(sq_CreateAnimation("", esPvN8WgPY)); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 29); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local p4wp4yPlGRyJFlLEwQ = wBGU4gk7_tNAq9biq.readDword(); 
 if(RQUG25JPpq2qN.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(137); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteDword(p4wp4yPlGRyJFlLEwQ); 
 sq_SendCreatePassiveObjectPacket(RQUG25JPpq2qN, 24374, 0, 0, 0, 0, RQUG25JPpq2qN.getDirection());
 }
 RQUG25JPpq2qN.getVar().clear_obj_vector(); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 RQUG25JPpq2qN.getVar().setBool(0, false); 
 break;
 case 2:
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 30); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 }
 break;
 case 139: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/metamorphosis/change/change_dodge.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 31); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local YnPxxKH_ZPBQ4V = (wBGU4gk7_tNAq9biq.readDword()).tofloat() / 100.0; 
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 break;
 case 2:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/metamorphosis/quakearea/quakearea_shock.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 36); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local YnPxxKH_ZPBQ4V = (wBGU4gk7_tNAq9biq.readDword()).tofloat() / 100.0; 
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "passiveobject/script_sqr_nut_qq506807329/priest/animation/metamorphosis/quakearea/quakeareaearth.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_CreateDrawOnlyObject(RQUG25JPpq2qN, "passiveobject/script_sqr_nut_qq506807329/priest/animation/metamorphosis/quakearea/quakeareastone.ani", ENUM_DRAWLAYER_BOTTOM, true) 
 break;
 case 3:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/metamorphosis/awakening/awakeningend_dodge.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 37); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 local YnPxxKH_ZPBQ4V = (wBGU4gk7_tNAq9biq.readDword()).tofloat() / 100.0; 
 XDyKOZFgVI1zXLT.setImageRateFromOriginal(YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 XDyKOZFgVI1zXLT.setAutoLayerWorkAnimationAddSizeRate(YnPxxKH_ZPBQ4V); 
 sq_SetAttackBoundingBoxSizeRate(XDyKOZFgVI1zXLT, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V, YnPxxKH_ZPBQ4V); 
 break;
 }
 break;
 case 132: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 switch(FBX7DkQlJpCUw2_mq)
 {
 case 1:
 local Zekm4TMtYJZfOxVrbN = wBGU4gk7_tNAq9biq.readDword(); 
 local XDyKOZFgVI1zXLT = null; 
 switch(Zekm4TMtYJZfOxVrbN)
 {
 case 1:XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_right_04.ani"); break;
 case 2:XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_right_03.ani"); break;
 }
 XDyKOZFgVI1zXLT.setSpeedRate(wBGU4gk7_tNAq9biq.readFloat()); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 32); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(Zekm4TMtYJZfOxVrbN); 
 break;
 case 2:
 local Zekm4TMtYJZfOxVrbN = wBGU4gk7_tNAq9biq.readDword(); 
 local XDyKOZFgVI1zXLT = null; 
 switch(Zekm4TMtYJZfOxVrbN)
 {
 case 1:XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_left_03.ani"); break;
 case 2:XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_w_left_04.ani"); break;
 }
 XDyKOZFgVI1zXLT.setSpeedRate(wBGU4gk7_tNAq9biq.readFloat()); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 32); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 RQUG25JPpq2qN.getVar().clear_vector(); 
 RQUG25JPpq2qN.getVar().push_vector(Zekm4TMtYJZfOxVrbN); 
 RQUG25JPpq2qN.getVar().push_vector(wBGU4gk7_tNAq9biq.readDword()); 
 break;
 case 3:
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/inviteofdevil/devilinvitation_boom_04.ani");
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 33); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 break;
 }
 break;
 case 116: 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("subType").clear_vector(); 
 RQUG25JPpq2qN.getVar("subType").push_vector(FBX7DkQlJpCUw2_mq);
 if(FBX7DkQlJpCUw2_mq == 1)
 {
 local kJznxpzJ8H = RQUG25JPpq2qN.getParent(); 
 if(kJznxpzJ8H) sq_moveWithParent(kJznxpzJ8H, RQUG25JPpq2qN); 
 local XDyKOZFgVI1zXLT = sq_CreateAnimation("", "passiveobject/script_sqr_nut_qq506807329/priest/animation/hedgehog/thorn_normal.ani");
 XDyKOZFgVI1zXLT.setSpeedRate(wBGU4gk7_tNAq9biq.readFloat()); 
 RQUG25JPpq2qN.setCurrentAnimation(XDyKOZFgVI1zXLT); 
 local wBlSHj6I3y9tynDX3BUk = sq_GetCustomAttackInfo(RQUG25JPpq2qN, 34); 
 sq_SetCurrentAttackBonusRate(wBlSHj6I3y9tynDX3BUk, wBGU4gk7_tNAq9biq.readDword()); 
 sq_SetCurrentAttackInfo(RQUG25JPpq2qN, wBlSHj6I3y9tynDX3BUk); 
 }
 break;
 default: 
 break;
 }
} ;
 
