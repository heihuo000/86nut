
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_bloodmarble") 
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_bloodmarble")
}




 
function drawAppend_appendage_swordman_bloodmarble(slsWw__ol53HVwr, obhXkplykqIKXfiAF34l, J9fVqmU33AHxBBTZ0BX, y91o8g5Ha1, uD4df2NuADegjZfNkTLF7qk)
{
 if(!slsWw__ol53HVwr) return;
 local O84FFxLA2LOOZQuJ2 = slsWw__ol53HVwr.getParent();
 if(!O84FFxLA2LOOZQuJ2)
 {
 slsWw__ol53HVwr.setValid(false);
 return;
 }
 local pyXDEjDkYqltSNanOyNq = slsWw__ol53HVwr.getVar(); 
 local fXldnqY4Kg1Ak_wEL = pyXDEjDkYqltSNanOyNq.size_vector(); 
 if(fXldnqY4Kg1Ak_wEL <= 0)return;
 local O1dJIiG6SgsL0ZZeX = slsWw__ol53HVwr.getTimer().Get(); 
 local bj3y6dGFkxaN8VH = O84FFxLA2LOOZQuJ2.getObjectManager(); 
 local j88jewnkjiAMf9Lt4Jql = 0; 
 local cV_1CKpFFyh2iQA4x = true; 
 for(local gLEHHRHhiR5Z = 0; gLEHHRHhiR5Z < fXldnqY4Kg1Ak_wEL; gLEHHRHhiR5Z += 11)
 {
 j88jewnkjiAMf9Lt4Jql++; 
 local GfuXr8hosyYT2a = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z); 
 if(GfuXr8hosyYT2a == -1) continue; 
 
 else if(cV_1CKpFFyh2iQA4x == true) cV_1CKpFFyh2iQA4x = false;
 local yQ8qQUCQKW6fecmIIZBTY1Uv = O1dJIiG6SgsL0ZZeX - pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 1); 
 local tLVRNqFoZpOxVaRKGho7DeD = (GfuXr8hosyYT2a == 1) ? 0 : 3; 
 local RND5Io4XEyxHMNXjp4aeJ = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 2 + tLVRNqFoZpOxVaRKGho7DeD); 
 local GmaGLRfh9Z594 = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 3 + tLVRNqFoZpOxVaRKGho7DeD); 
 local cIEQtGLIJGZJvZGIZQVderDZ = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 4 + tLVRNqFoZpOxVaRKGho7DeD); 
 local nvr5EAHXX1RzAM2a = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 5 + tLVRNqFoZpOxVaRKGho7DeD); 
 local DvC16cEl_ct = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 6 + tLVRNqFoZpOxVaRKGho7DeD); 
 local JwVP9DoYWr43BELwt8EL = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 7 + tLVRNqFoZpOxVaRKGho7DeD); 
 local uxuMhs1WTW = sq_Abs(cIEQtGLIJGZJvZGIZQVderDZ - JwVP9DoYWr43BELwt8EL); 
 local Yw6JISWeSUxcj = slsWw__ol53HVwr.getVar("draw" + j88jewnkjiAMf9Lt4Jql.tostring()); 
 
 if(!Yw6JISWeSUxcj.get_ani_vector(0))
 {
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("ballhead", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/ballhead.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail1", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail1.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail2.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail2.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail2.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail2", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail2.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail3.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail3.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail3.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail3", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail3.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail4", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail4.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail4", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail4.ani")); 
 Yw6JISWeSUxcj.push_ani_vector(Yw6JISWeSUxcj.GetAnimationMap("balltail4", "passiveobject/script_sqr_nut_qq506807329/swordman/animation/bloodmarble/beed/balltail4.ani")); 
 }
 local tcRktLZdUUOYAAji4NEJlA = 12; 
 
 local wxznj7dTMJ6aKgqhA = 0;
 local dck720KDxEbXWhp = 0;
 switch(GfuXr8hosyYT2a)
 {
 case 1:
 if(obhXkplykqIKXfiAF34l) continue; 
 local YNSpzta2PJTjQZXnLxry5Ckl = 250; 
 local OTS65tI0LFrYkX0wghrf = 15; 
 for(local aWO_27e4XUvpEHWn = tcRktLZdUUOYAAji4NEJlA; aWO_27e4XUvpEHWn >= 0; aWO_27e4XUvpEHWn--)
 {
 local IWBhO5IXjQe3Ivt5ik23726 = yQ8qQUCQKW6fecmIIZBTY1Uv - aWO_27e4XUvpEHWn * OTS65tI0LFrYkX0wghrf; 
 if(IWBhO5IXjQe3Ivt5ik23726 < 0)continue; 
 
 local BM6IsJ4jRzSEk1cv0 = (uxuMhs1WTW - uxuMhs1WTW * sq_SinTable(sq_GetUniformVelocity(90, 0, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl))).tointeger();
 local Ub_0rqotafn = sq_GetUniformVelocity(RND5Io4XEyxHMNXjp4aeJ, nvr5EAHXX1RzAM2a, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl); 
 local JWckzPM0nWvFkrSET = sq_GetUniformVelocity(GmaGLRfh9Z594, DvC16cEl_ct, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl); 
 local Bb21jmvVSBh7x = cIEQtGLIJGZJvZGIZQVderDZ + BM6IsJ4jRzSEk1cv0; 
 
 local X7Uq7_nDb0n11rQ_jUQ4 = Ub_0rqotafn - (bj3y6dGFkxaN8VH.getFieldXPos(Ub_0rqotafn, ENUM_DRAWLAYER_NORMAL) - Ub_0rqotafn);
 local wzDwVCbN2Ek5HCpb = JWckzPM0nWvFkrSET - (bj3y6dGFkxaN8VH.getFieldYPos(JWckzPM0nWvFkrSET, Bb21jmvVSBh7x, ENUM_DRAWLAYER_NORMAL) - JWckzPM0nWvFkrSET);
 sq_DrawSpecificFrame(Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn), X7Uq7_nDb0n11rQ_jUQ4, wzDwVCbN2Ek5HCpb, false, 0, false, 1.0); 
 
 if(wxznj7dTMJ6aKgqhA != 0)
 {
 local QYOq_2xgnpdDbPbjuJ = sq_Atan2(sq_Abs(wzDwVCbN2Ek5HCpb - dck720KDxEbXWhp).tofloat(), sq_Abs(X7Uq7_nDb0n11rQ_jUQ4 - wxznj7dTMJ6aKgqhA).tofloat()); 
 
 if(RND5Io4XEyxHMNXjp4aeJ > nvr5EAHXX1RzAM2a)
 QYOq_2xgnpdDbPbjuJ = sq_ToRadian(180.0) - QYOq_2xgnpdDbPbjuJ;
 
 if(wzDwVCbN2Ek5HCpb > dck720KDxEbXWhp)
 (Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1)).setImageRateFromOriginal(1.0, -1.0); 
 else
 (Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1)).setImageRateFromOriginal(1.0, 1.0); 
 sq_SetfRotateAngle(Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1), QYOq_2xgnpdDbPbjuJ); 
 }
 
 wxznj7dTMJ6aKgqhA = X7Uq7_nDb0n11rQ_jUQ4;
 dck720KDxEbXWhp = wzDwVCbN2Ek5HCpb;
 
 
 if(aWO_27e4XUvpEHWn == 0 && yQ8qQUCQKW6fecmIIZBTY1Uv >= YNSpzta2PJTjQZXnLxry5Ckl)
 {
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z + 1, O1dJIiG6SgsL0ZZeX); 
 YNSpzta2PJTjQZXnLxry5Ckl = sq_getRandom(300, 1000); 
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z + 2, YNSpzta2PJTjQZXnLxry5Ckl); 
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z + 3, sq_GetUniformVelocity(4, 13, YNSpzta2PJTjQZXnLxry5Ckl - 300, 1000 - 300)); 
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z + 4, sq_GetUniformVelocity(8, 17, YNSpzta2PJTjQZXnLxry5Ckl - 300, 1000 - 300)); 
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z, GfuXr8hosyYT2a + 1); 
 }
 }
 break;
 case 2:
 if(!obhXkplykqIKXfiAF34l) continue; 
 local YNSpzta2PJTjQZXnLxry5Ckl = pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 2); 
 local OTS65tI0LFrYkX0wghrf = sq_GetAccel(pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 3), pyXDEjDkYqltSNanOyNq.get_vector(gLEHHRHhiR5Z + 4), yQ8qQUCQKW6fecmIIZBTY1Uv, YNSpzta2PJTjQZXnLxry5Ckl, true); 
 for(local aWO_27e4XUvpEHWn = tcRktLZdUUOYAAji4NEJlA; aWO_27e4XUvpEHWn >= 0; aWO_27e4XUvpEHWn--)
 {
 local IWBhO5IXjQe3Ivt5ik23726 = yQ8qQUCQKW6fecmIIZBTY1Uv - aWO_27e4XUvpEHWn * OTS65tI0LFrYkX0wghrf; 
 if(IWBhO5IXjQe3Ivt5ik23726 < 0)continue; 
 
 local BM6IsJ4jRzSEk1cv0 = (uxuMhs1WTW - uxuMhs1WTW * sq_SinTable(sq_GetAccel(90, 180, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl, false))).tointeger();
 local Ub_0rqotafn = sq_GetAccel(RND5Io4XEyxHMNXjp4aeJ, nvr5EAHXX1RzAM2a, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl, true); 
 local JWckzPM0nWvFkrSET = sq_GetAccel(GmaGLRfh9Z594, DvC16cEl_ct, IWBhO5IXjQe3Ivt5ik23726, YNSpzta2PJTjQZXnLxry5Ckl, true); 
 local Bb21jmvVSBh7x = cIEQtGLIJGZJvZGIZQVderDZ + BM6IsJ4jRzSEk1cv0; 
 
 local X7Uq7_nDb0n11rQ_jUQ4 = Ub_0rqotafn - (bj3y6dGFkxaN8VH.getFieldXPos(Ub_0rqotafn, ENUM_DRAWLAYER_NORMAL) - Ub_0rqotafn);
 local wzDwVCbN2Ek5HCpb = JWckzPM0nWvFkrSET - (bj3y6dGFkxaN8VH.getFieldYPos(JWckzPM0nWvFkrSET, Bb21jmvVSBh7x, ENUM_DRAWLAYER_NORMAL) - JWckzPM0nWvFkrSET);
 sq_DrawSpecificFrame(Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn), X7Uq7_nDb0n11rQ_jUQ4, wzDwVCbN2Ek5HCpb, false, 0, false, 1.0); 
 
 if(wxznj7dTMJ6aKgqhA != 0)
 {
 local QYOq_2xgnpdDbPbjuJ = sq_Atan2(sq_Abs(wzDwVCbN2Ek5HCpb - dck720KDxEbXWhp).tofloat(), sq_Abs(X7Uq7_nDb0n11rQ_jUQ4 - wxznj7dTMJ6aKgqhA).tofloat()); 
 
 if(RND5Io4XEyxHMNXjp4aeJ > nvr5EAHXX1RzAM2a)
 QYOq_2xgnpdDbPbjuJ = sq_ToRadian(180.0) - QYOq_2xgnpdDbPbjuJ;
 
 if(wzDwVCbN2Ek5HCpb > dck720KDxEbXWhp)
 (Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1)).setImageRateFromOriginal(1.0, -1.0); 
 else
 (Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1)).setImageRateFromOriginal(1.0, 1.0); 
 sq_SetfRotateAngle(Yw6JISWeSUxcj.get_ani_vector(aWO_27e4XUvpEHWn + 1), QYOq_2xgnpdDbPbjuJ); 
 }
 
 wxznj7dTMJ6aKgqhA = X7Uq7_nDb0n11rQ_jUQ4;
 dck720KDxEbXWhp = wzDwVCbN2Ek5HCpb;
 
 if(aWO_27e4XUvpEHWn == 0 && yQ8qQUCQKW6fecmIIZBTY1Uv >= YNSpzta2PJTjQZXnLxry5Ckl)
 {
 pyXDEjDkYqltSNanOyNq.set_vector(gLEHHRHhiR5Z, -1); 
 continue;
 }
 }
 break;
 }
 }
 
 if(cV_1CKpFFyh2iQA4x == true)
 slsWw__ol53HVwr.setValid(false);
} ;


 
function proc_appendage_swordman_bloodmarble(nb5zm6Lgrk2dLz_ABzr_9)
{
 if(!nb5zm6Lgrk2dLz_ABzr_9) return;
 local NOolgsirNGibmK = nb5zm6Lgrk2dLz_ABzr_9.getParent(); 
 if(!NOolgsirNGibmK)
 {
 nb5zm6Lgrk2dLz_ABzr_9.setValid(false);
 return;
 }
 local jccDzd9CmqrjgTGxKR9Qfq = NOolgsirNGibmK.getCurrentAnimation(); 
 if(jccDzd9CmqrjgTGxKR9Qfq)
 {
 local Dv6_zt5sC8L = nb5zm6Lgrk2dLz_ABzr_9.getTimer().Get(); 
 local NOrINGGAiqCZQqpkXhi = 350; 
 if(Dv6_zt5sC8L / NOrINGGAiqCZQqpkXhi % 2 == 1)
 {
 Dv6_zt5sC8L = NOrINGGAiqCZQqpkXhi - Dv6_zt5sC8L % NOrINGGAiqCZQqpkXhi; 
 }
 else
 Dv6_zt5sC8L = Dv6_zt5sC8L % NOrINGGAiqCZQqpkXhi; 
 local igDuddUIxJoov0JFR = sq_GetUniformVelocity(10, 100, Dv6_zt5sC8L, NOrINGGAiqCZQqpkXhi); 
 local aFQkKnWrjpCYkvKgcQBNaE86 = sq_ALPHA(igDuddUIxJoov0JFR); 
 local bZRfmabFNrcCU = sq_RGB(255, 0, 0); 
 jccDzd9CmqrjgTGxKR9Qfq.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, bZRfmabFNrcCU, aFQkKnWrjpCYkvKgcQBNaE86, true, false); 
 
 local sY8BfDHhFk7cuKUEQT = sq_AniLayerListSize(jccDzd9CmqrjgTGxKR9Qfq);
 for(local ahUMKKMgLzodxG2Po = 0; ahUMKKMgLzodxG2Po < sY8BfDHhFk7cuKUEQT; ahUMKKMgLzodxG2Po++)
 {
 local PSsk26wy44I6 = sq_getAniLayerListObject(jccDzd9CmqrjgTGxKR9Qfq, ahUMKKMgLzodxG2Po); 
 if(PSsk26wy44I6)
 {
 local IKkc8nIo6hfNVx5 = PSsk26wy44I6.GetCurrentFrame().GetGraphicEffect(); 
 if(IKkc8nIo6hfNVx5 != GRAPHICEFFECT_LINEARDODGE) 
 PSsk26wy44I6.setEffectLayer(true, GRAPHICEFFECT_LINEARDODGE, true, bZRfmabFNrcCU, aFQkKnWrjpCYkvKgcQBNaE86, true, false);
 }
 }
 }
} ;


