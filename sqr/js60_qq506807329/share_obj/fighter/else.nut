
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onAttack_po_qq506807329new_fighter_24373(iijoGFHKQvmV0NPdP, _Jk2SkAcO_qe, c1fL11wE3lhlxCBWWCY2e, P36bMmp4HIfS9X)
{
 if(!iijoGFHKQvmV0NPdP) return 0;
 local yOanmBf2QubGX75cqm5 = iijoGFHKQvmV0NPdP.getVar("skill").get_vector(0);
 switch(yOanmBf2QubGX75cqm5)
 {
 case 226: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 if(kDc3Ro_TO4PS1Nc == 1 && iijoGFHKQvmV0NPdP.getVar("state").get_vector(0) == 10)
 {
 local kcRfp1bulDjNP = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(kcRfp1bulDjNP); 
 iijoGFHKQvmV0NPdP.addSetStatePacket(11, kcRfp1bulDjNP, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 232: 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 if(kDc3Ro_TO4PS1Nc == 1) 
 {
 if(_Jk2SkAcO_qe.isObjectType(OBJECTTYPE_ACTIVE)
 && sq_IsGrabable(iijoGFHKQvmV0NPdP, _Jk2SkAcO_qe) 
 && sq_IsHoldable(iijoGFHKQvmV0NPdP, _Jk2SkAcO_qe) 
 && !sq_IsFixture(_Jk2SkAcO_qe)) 
 {
 local QnDDVELqYVO2pt = iijoGFHKQvmV0NPdP.getParent(); 
 if(QnDDVELqYVO2pt)
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(_Jk2SkAcO_qe, "character/fighter/finalheaven/ap_finalheaven.nut")) 
 CNSquirrelAppendage.sq_RemoveAppendage(_Jk2SkAcO_qe, "character/fighter/finalheaven/ap_finalheaven.nut");
 local YLZ1XvLbIlYq1 = CNSquirrelAppendage.sq_AppendAppendage(_Jk2SkAcO_qe, QnDDVELqYVO2pt, 232, true, "character/fighter/finalheaven/ap_finalheaven.nut", true); 
 sq_HoldAndDelayDie(_Jk2SkAcO_qe, QnDDVELqYVO2pt, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, YLZ1XvLbIlYq1); 
 sq_MoveToAppendage(_Jk2SkAcO_qe, QnDDVELqYVO2pt, QnDDVELqYVO2pt, 60, 0, 0, 200, true, YLZ1XvLbIlYq1); 
 }
 }
 }
 break;
 case 233: 
 if(P36bMmp4HIfS9X && !_Jk2SkAcO_qe.isObjectType(OBJECTTYPE_ACTIVE)) return; 
 local kDc3Ro_TO4PS1Nc = iijoGFHKQvmV0NPdP.getVar("subType").get_vector(0); 
 if(kDc3Ro_TO4PS1Nc != 1) 
 {
 local X2mudb_5NI3gVJG = iijoGFHKQvmV0NPdP.getVar("state").get_vector(0); 
 if(X2mudb_5NI3gVJG != 11)return; 
 local QnDDVELqYVO2pt = sq_GetCNRDObjectToCollisionObject(iijoGFHKQvmV0NPdP.getParent()); 
 if(kDc3Ro_TO4PS1Nc != 4) 
 if(kDc3Ro_TO4PS1Nc == 2 
 && QnDDVELqYVO2pt.getVar().get_vector(1) > 0 
 && !QnDDVELqYVO2pt.getVar().is_obj_vector(_Jk2SkAcO_qe) 
 ||
 kDc3Ro_TO4PS1Nc == 3 
 && QnDDVELqYVO2pt.getVar().get_vector(2) > 0 
 && !QnDDVELqYVO2pt.getVar().is_obj_vector(_Jk2SkAcO_qe)) 
 {
 if(iijoGFHKQvmV0NPdP.isMyControlObject())
 {
 local juaVY43fbMcPZfOWY = _Jk2SkAcO_qe.getXPos(); 
 local C2CxI43gZlDw0 = _Jk2SkAcO_qe.getYPos(); 
 local KasASgEfGSbWD = _Jk2SkAcO_qe.getZPos() + sq_GetObjectHeight(_Jk2SkAcO_qe) / 2; 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(233); 
 sq_BinaryWriteDword(kDc3Ro_TO4PS1Nc + 1); 
 sq_BinaryWriteDword(sq_GetGroup(_Jk2SkAcO_qe));
 sq_BinaryWriteDword(sq_GetUniqueId(_Jk2SkAcO_qe));
 sq_BinaryWriteDword(juaVY43fbMcPZfOWY);
 sq_BinaryWriteDword(C2CxI43gZlDw0);
 sq_BinaryWriteDword(KasASgEfGSbWD);
 sq_SendCreatePassiveObjectPacketPos(QnDDVELqYVO2pt, 24373, 0, juaVY43fbMcPZfOWY, C2CxI43gZlDw0, KasASgEfGSbWD); 
 }
 QnDDVELqYVO2pt.getVar().push_obj_vector(_Jk2SkAcO_qe); 
 if(kDc3Ro_TO4PS1Nc == 2)
 QnDDVELqYVO2pt.getVar().set_vector(1, QnDDVELqYVO2pt.getVar().get_vector(1) - 1); 
 else if(kDc3Ro_TO4PS1Nc == 3)
 QnDDVELqYVO2pt.getVar().set_vector(2, QnDDVELqYVO2pt.getVar().get_vector(2) - 1); 
 }
 }
 break;
 }
} ;
 

 
 
function onKeyFrameFlag_po_qq506807329new_fighter_24373(wG4vMANcs_lnQ, b95oeeQr05Cn2nM0pS)
{
 if(!wG4vMANcs_lnQ) return false;
 local UyTwnXB81iEWxHrtPeXeoYHF = wG4vMANcs_lnQ.getVar("skill").get_vector(0);
 switch(UyTwnXB81iEWxHrtPeXeoYHF)
 {
 case 0: 
 break;
 }
 return true;
} ;
 


 
 
function onTimeEvent_po_qq506807329new_fighter_24373(voui4lxdZ2q, x3GlgO0wySynnlsI3buGsJ, rh7jloEMvHQ3UrzNFuoHU2O)
{
 if(!voui4lxdZ2q) return false;
 sq_IntVectorClear(sq_GetGlobalIntVector()); 
 local I7FosDdvnqA2iinXTDPP = voui4lxdZ2q.getVar("skill").get_vector(0);
 switch(I7FosDdvnqA2iinXTDPP)
 {
 case 227: 
 if(x3GlgO0wySynnlsI3buGsJ == 0)
 voui4lxdZ2q.resetHitObjectList(); 
 break;
 case 234: 
 if(x3GlgO0wySynnlsI3buGsJ == 0)
 voui4lxdZ2q.resetHitObjectList(); 
 else if(x3GlgO0wySynnlsI3buGsJ == 1)
 {
 if(voui4lxdZ2q.isMyControlObject())
 voui4lxdZ2q.addSetStatePacket(10, sq_GetGlobalIntVector(), STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 238: 
 if(x3GlgO0wySynnlsI3buGsJ == 0)
 {
 local xYxWQzb31r1IfFscpTAl4vvl = voui4lxdZ2q.getVar().get_vector(2); 
 local AvOhwXaMStzpOSpH = (xYxWQzb31r1IfFscpTAl4vvl - 2 > 5) ? sq_getRandom(0, 5) : xYxWQzb31r1IfFscpTAl4vvl - 2; 
 local WBPdXxrga8MoCZ80 = [45, 225, 315, 135, 45, 225];
 local CNJTKaIPRmLw = [-30, 40, 30, -40, -30, 40];
 local XkRE_QA4F1x1KDsUKda = [40, 0, 40, 0, 40, 0];
 if(xYxWQzb31r1IfFscpTAl4vvl > 2)
 {
 if(voui4lxdZ2q.isMyControlObject())
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(238); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteFloat((WBPdXxrga8MoCZ80[AvOhwXaMStzpOSpH]).tofloat()); 
 sq_BinaryWriteDword(voui4lxdZ2q.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(voui4lxdZ2q, 24373, 0, CNJTKaIPRmLw[AvOhwXaMStzpOSpH], 0, XkRE_QA4F1x1KDsUKda[AvOhwXaMStzpOSpH], voui4lxdZ2q.getDirection());
 }
 voui4lxdZ2q.getVar().set_vector(2, xYxWQzb31r1IfFscpTAl4vvl - 1); 
 }
 else
 {
 if(voui4lxdZ2q.isMyControlObject())
 {
 sq_flashScreen(voui4lxdZ2q, 30, 100, 200, 200, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM); 
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(238); 
 sq_BinaryWriteDword(2); 
 sq_BinaryWriteFloat((WBPdXxrga8MoCZ80[AvOhwXaMStzpOSpH]).tofloat()); 
 sq_BinaryWriteDword(voui4lxdZ2q.getVar().get_vector(0)); 
 sq_SendCreatePassiveObjectPacket(voui4lxdZ2q, 24373, 0, CNJTKaIPRmLw[AvOhwXaMStzpOSpH], 0, XkRE_QA4F1x1KDsUKda[AvOhwXaMStzpOSpH], voui4lxdZ2q.getDirection());
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(238); 
 sq_BinaryWriteDword(3); 
 sq_BinaryWriteDword(voui4lxdZ2q.getVar().get_vector(1)); 
 sq_SendCreatePassiveObjectPacket(voui4lxdZ2q, 24373, 0, 0, 0, 0, voui4lxdZ2q.getDirection());
 sq_SendDestroyPacketPassiveObject(voui4lxdZ2q); 
 }
 return true;
 }
 }
 break;
 }
 return false;
} ;
 

function destroy_po_qq506807329new_fighter_24373(s8oc9v3qeYKqKN9rbMe)
{
 if(!s8oc9v3qeYKqKN9rbMe) return;
 local HIY9FLlUCXTIbuVM = s8oc9v3qeYKqKN9rbMe.getVar("skill").get_vector(0);
 switch(HIY9FLlUCXTIbuVM)
 {
 case 238: 
 RemoveAllFlash(s8oc9v3qeYKqKN9rbMe); 
 break;
 }
} ;

