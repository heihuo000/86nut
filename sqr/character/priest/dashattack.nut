
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function onSetState_DashAttack(t4nuaQ1zU4, pghZn1FkR1QAPhM1, kDsEnXrk1r4esN, awNAP1XxL3F1c)
{ 
 if(!t4nuaQ1zU4) return;
 if(isAvengerAwakenning(t4nuaQ1zU4) == false) {
 return;
 }
 
 t4nuaQ1zU4.sq_stopMove();
 
 local KKdmA8XPGRxwkvG = t4nuaQ1zU4.getXPos();
 local do3sbnltoukoxmDZO6ed = t4nuaQ1zU4.getYPos();
 local IWJszfaybQfU8GxNqGig = t4nuaQ1zU4.getZPos(); 
 
 local gxOEyyLEzsp = 450;
 local _EIr04w8MSU3RsSu = sq_GetDistancePos(KKdmA8XPGRxwkvG, t4nuaQ1zU4.getDirection(), gxOEyyLEzsp);
 
 t4nuaQ1zU4.getVar().clear_vector();
 t4nuaQ1zU4.getVar().push_vector(KKdmA8XPGRxwkvG); 
 t4nuaQ1zU4.getVar().push_vector(_EIr04w8MSU3RsSu); 
 t4nuaQ1zU4.getVar().push_vector(KKdmA8XPGRxwkvG); 
 t4nuaQ1zU4.getVar().push_vector(0); 
 t4nuaQ1zU4.sq_setShake(t4nuaQ1zU4, 1, 1600);
 
 local EpVNWd78Pt7lT4y4r9eGSqP = t4nuaQ1zU4.getVar();
 local f8vGT_XcWOC = EpVNWd78Pt7lT4y4r9eGSqP.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", t4nuaQ1zU4);
 
 EpVNWd78Pt7lT4y4r9eGSqP.clear_timer_vector();
 EpVNWd78Pt7lT4y4r9eGSqP.push_timer_vector(); 
 EpVNWd78Pt7lT4y4r9eGSqP.push_timer_vector(); 
 
 local xchum5iJ3Y = EpVNWd78Pt7lT4y4r9eGSqP.get_timer_vector(0);
 xchum5iJ3Y.setParameter(60, -1);
 xchum5iJ3Y.resetInstant(0);
 
 
 
 
 local Ak_jemzqfQJIlJp = 13;
 
 local FaRLV8rIOAVtUZZ2Q = t4nuaQ1zU4.sq_getCurrentAni();
 local KdYmOV7nnlnGBjyWbvjHhn = FaRLV8rIOAVtUZZ2Q.getDelaySum(0, Ak_jemzqfQJIlJp); 
 
 local hOlRtxcIF6Y1B = t4nuaQ1zU4.sq_getIntData(119, 2); 
 
 local oEIAgWS8XGc_4sfEDgu8fK = 1;
 if(hOlRtxcIF6Y1B > 0) {
 oEIAgWS8XGc_4sfEDgu8fK = KdYmOV7nnlnGBjyWbvjHhn / hOlRtxcIF6Y1B;
 }
 
 local hZ33SDOohoFfZ = EpVNWd78Pt7lT4y4r9eGSqP.get_timer_vector(1);
 hZ33SDOohoFfZ.setParameter(oEIAgWS8XGc_4sfEDgu8fK, hOlRtxcIF6Y1B);
 hZ33SDOohoFfZ.resetInstant(0); 
 
 
 
} ;


 
function prepareDraw_DashAttack(GltOmWPVDq06jXV)
{
 if(!GltOmWPVDq06jXV) return;
} ;


 
function onProc_DashAttack(GltOmWPVDq06jXV)
{
 if(!GltOmWPVDq06jXV) return;
 if(isAvengerAwakenning(GltOmWPVDq06jXV) == false) {
 return;
 }
 
 local WqJtIOhMHkz = GltOmWPVDq06jXV.getSkillSubState();
 
 local _VuZUnRMrE294cg6uxOVnh = GltOmWPVDq06jXV.getXPos();
 local SvGY32uX77VVKX8kZuNLC7 = GltOmWPVDq06jXV.getYPos();
 local oeapPaAbuQ6mdLZQBNPC = GltOmWPVDq06jXV.getZPos();
 
 local imbr73HUQb = GltOmWPVDq06jXV.sq_getCurrentAni();
 local TJTlAAbmfWYdSaDm_I1CweT = GltOmWPVDq06jXV.sq_ani_GetCurrentFrameIndex(imbr73HUQb);
 local IF5WiCLI2w = sq_GetCurrentTime(imbr73HUQb);
 
 local WtkJejqnkxrFZdcJ_mRPgwEG = 13;
 
 local OBolPMpmsyanKHx1Trnk_ryD = imbr73HUQb.getDelaySum(0, WtkJejqnkxrFZdcJ_mRPgwEG); 
 
 if(TJTlAAbmfWYdSaDm_I1CweT <= WtkJejqnkxrFZdcJ_mRPgwEG) {
 local X7hzEsERZmz = GltOmWPVDq06jXV.getVar().get_vector(0); 
 local tPvXtb6qo8A9OAM4gNkOvfJ = GltOmWPVDq06jXV.getVar().get_vector(1); 
 
 
 
 local V6ACOVNu_9nx1bDU8EFAgy = sq_GetAccel(X7hzEsERZmz, tPvXtb6qo8A9OAM4gNkOvfJ, IF5WiCLI2w, OBolPMpmsyanKHx1Trnk_ryD, true);
 
 if(GltOmWPVDq06jXV.isMovablePos(V6ACOVNu_9nx1bDU8EFAgy, SvGY32uX77VVKX8kZuNLC7) && !GltOmWPVDq06jXV.getVar().get_vector(3)) {
 GltOmWPVDq06jXV.setCurrentPos(V6ACOVNu_9nx1bDU8EFAgy, SvGY32uX77VVKX8kZuNLC7, oeapPaAbuQ6mdLZQBNPC);
 }
 else {
 GltOmWPVDq06jXV.getVar().set_vector(3, 1); 
 } 
 
 GltOmWPVDq06jXV.getVar().set_vector(2, _VuZUnRMrE294cg6uxOVnh); 
 }
 else { 
 
 
 
 
 
 
 
 
 
 
 
 
 
 }
 
 
 local XdnyV7FdPZYM8Geldqx9b = GltOmWPVDq06jXV.getVar();
 local m2KwDQXQ6zYa = XdnyV7FdPZYM8Geldqx9b.get_timer_vector(0);
 
 
 if(m2KwDQXQ6zYa)
 {
 if(m2KwDQXQ6zYa.isOnEvent(IF5WiCLI2w) == true) {
 local EqI28rGJEdnRLV9kQX6rILx = XdnyV7FdPZYM8Geldqx9b.GetparticleCreaterMap("FastMove", "Character/Priest/Effect/Particle/Fastmove.ptl", GltOmWPVDq06jXV); 
 
 EqI28rGJEdnRLV9kQX6rILx.Restart(0);
 
 local tPvXtb6qo8A9OAM4gNkOvfJ = sq_GetDistancePos(_VuZUnRMrE294cg6uxOVnh, GltOmWPVDq06jXV.getDirection(), -20); 
 EqI28rGJEdnRLV9kQX6rILx.SetPos(tPvXtb6qo8A9OAM4gNkOvfJ, SvGY32uX77VVKX8kZuNLC7, oeapPaAbuQ6mdLZQBNPC+28); 
 
 sq_AddParticleObject(GltOmWPVDq06jXV, EqI28rGJEdnRLV9kQX6rILx);
 }
 }
 else
 {
 XdnyV7FdPZYM8Geldqx9b.push_timer_vector();
 XdnyV7FdPZYM8Geldqx9b.push_timer_vector();
 local FsZIomXTA9bmm7wUUooD1sI = XdnyV7FdPZYM8Geldqx9b.get_timer_vector(0)
 FsZIomXTA9bmm7wUUooD1sI.setParameter(60, -1);
 FsZIomXTA9bmm7wUUooD1sI.resetInstant(0);
 }
 
 
 local otJBuLDknqzs_H6wznOMyE = XdnyV7FdPZYM8Geldqx9b.get_timer_vector(1);
 
 if (otJBuLDknqzs_H6wznOMyE.isOnEvent(IF5WiCLI2w) == true)
 GltOmWPVDq06jXV.resetHitObjectList();
 
 
} ;

 
function onProcCon_DashAttack(VKdQKJ2w6UFstxd75y)
{
 if(!VKdQKJ2w6UFstxd75y) return;
 if(isAvengerAwakenning(VKdQKJ2w6UFstxd75y) == false) {
 return;
 }
 
 local sHz5hP4NAhaFxgwFOsG = VKdQKJ2w6UFstxd75y.sq_getCurrentAni();
 local mo3YtHlTogunaHlAlDNKD = VKdQKJ2w6UFstxd75y.sq_ani_IsEnd(sHz5hP4NAhaFxgwFOsG);
 local jFDZpN2OTFiz9CSHLQikYs9 = VKdQKJ2w6UFstxd75y.sq_ani_GetCurrentFrameIndex(sHz5hP4NAhaFxgwFOsG);
 
 
 
 local nYBksBgN1E_iXsvxEWSxi = VKdQKJ2w6UFstxd75y.getSkillSubState();
 
 if(mo3YtHlTogunaHlAlDNKD) {
 }
} ;

function onAfterSetState_DashAttack(SOgGVZR0joz, PgOZtbJlsjc0Nx4PuUq, TWHTfLxmdBM0rkf, YPAxgLDoegKkHCSS7654m3c)
{
 if(!SOgGVZR0joz) return;
 
 if(isAvengerAwakenning(SOgGVZR0joz) == false) {
 return;
 }
 
 SOgGVZR0joz.sq_setCurrentAttackInfo(84);
 
 local eu6hkcGv6w7bBUM = SOgGVZR0joz.sq_getBonusRateWithPassive(119, PgOZtbJlsjc0Nx4PuUq, 8,1.0);
 SOgGVZR0joz.sq_setCurrentAttackBonusRate(eu6hkcGv6w7bBUM);
} ;


function onKeyFrameFlag_DashAttack(Jf0G1DwJL8UMG5, VlfJQNYs2Z)
{
 if(!Jf0G1DwJL8UMG5) return false;
 if(Jf0G1DwJL8UMG5.isCurrentCutomAniIndex(239)) 
 {
 if(VlfJQNYs2Z==0)
 {
 sq_CreateDrawOnlyObject(Jf0G1DwJL8UMG5, "character/priest/effect/animation/metamorphosis/attack/dash01/dash01_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_CreateDrawOnlyObject(Jf0G1DwJL8UMG5, "character/priest/effect/animation/metamorphosis/effect/lower.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 }
 return true;
} ;