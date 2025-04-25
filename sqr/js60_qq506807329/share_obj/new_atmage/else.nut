
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function onAttack_po_qq506807329new_atmage_24377(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv, netZD7Dbmq, LNTkxz7Jl_9hzqndfBkD4iSH)
{
 if(!KTPV6RpNFZL8ZIefMPHgQ) return 0;
 local CN4JYsjoyeLMCgxOV = KTPV6RpNFZL8ZIefMPHgQ.getVar("skill").get_vector(0);
 local wpFSPrDhQ7h = KTPV6RpNFZL8ZIefMPHgQ.getVar("subType").get_vector(0); 
 local TeHNQv2_FTP7tNIglnN38eP = KTPV6RpNFZL8ZIefMPHgQ.getVar("state").get_vector(0); 
 switch(CN4JYsjoyeLMCgxOV)
 {
 case 243: 
 if(LNTkxz7Jl_9hzqndfBkD4iSH || !JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return; 
 
 if(wpFSPrDhQ7h == 1 && TeHNQv2_FTP7tNIglnN38eP == 10)
 {
 createPooledObjEff_qq506807329(KTPV6RpNFZL8ZIefMPHgQ, "passiveobject/script_sqr_nut_qq506807329/atmage/animation/atelementalfield/atelementalfield_hit001.ani", JDoY8JKNkL_zr2HEdZNHDv.getXPos(), JDoY8JKNkL_zr2HEdZNHDv.getYPos(), JDoY8JKNkL_zr2HEdZNHDv.getZPos() + sq_GetCenterZPos(netZD7Dbmq), ENUM_DRAWLAYER_NORMAL, KTPV6RpNFZL8ZIefMPHgQ.getDirection()); 
 }
 break;
 case 244: 
 if(!JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return; 
 if(wpFSPrDhQ7h == 1 && TeHNQv2_FTP7tNIglnN38eP == 11)
 {
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv))
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/convergencecannon/ap_convergencecannon.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/convergencecannon/ap_convergencecannon.nut");
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, 244, false, "character/new_atmage/convergencecannon/ap_convergencecannon.nut", true); 
 sq_HoldAndDelayDie(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, A9yL4uSpZsRY9BGMY); 
 }
 }
 break;
 case 245: 
 if(LNTkxz7Jl_9hzqndfBkD4iSH || !JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return; 
 if(wpFSPrDhQ7h == 1 && TeHNQv2_FTP7tNIglnN38eP == 11)
 {
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv))
 {
 local hgQUvSbfN1qdSfzoikuqVbZj = KTPV6RpNFZL8ZIefMPHgQ.getParent(); 
 if(hgQUvSbfN1qdSfzoikuqVbZj)
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/armageddonstrike/ap_armageddonstrike.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/armageddonstrike/ap_armageddonstrike.nut");
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, hgQUvSbfN1qdSfzoikuqVbZj, 245, false, "character/new_atmage/armageddonstrike/ap_armageddonstrike.nut", true); 
 sq_HoldAndDelayDie(JDoY8JKNkL_zr2HEdZNHDv, hgQUvSbfN1qdSfzoikuqVbZj, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, A9yL4uSpZsRY9BGMY); 
 }
 }
 }
 break;
 case 246: 
 if(!JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return; 
 switch(wpFSPrDhQ7h)
 {
 case 1:
 switch(TeHNQv2_FTP7tNIglnN38eP)
 {
 case 10:
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv) || sq_IsGrabable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv) || !sq_IsFixture(JDoY8JKNkL_zr2HEdZNHDv)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/shardmagnum/ap_shardmagnum_damage.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/shardmagnum/ap_shardmagnum_damage.nut");
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, 246, true, "character/new_atmage/shardmagnum/ap_shardmagnum_damage.nut", true); 
 }
 break;
 default:
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv)) 
 {
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/shardmagnum/ap_shardmagnum.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/shardmagnum/ap_shardmagnum.nut");
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, 246, false, "character/new_atmage/shardmagnum/ap_shardmagnum.nut", true); 
 sq_HoldAndDelayDie(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, A9yL4uSpZsRY9BGMY); 
 }
 break;
 }
 break;
 }
 break;
 case 247: 
 if(LNTkxz7Jl_9hzqndfBkD4iSH || !JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return; 
 if(wpFSPrDhQ7h == 1)
 {
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv))
 {
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/overfreezeextension/ap_overfreezeextension.nut"))
 {
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, 247, true, "character/new_atmage/overfreezeextension/ap_overfreezeextension.nut", true); 
 A9yL4uSpZsRY9BGMY.sq_SetValidTime(KTPV6RpNFZL8ZIefMPHgQ.getVar().get_vector(0)); 
 sq_HoldAndDelayDie(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, true, false, false, 0, 0, ENUM_DIRECTION_NEUTRAL, A9yL4uSpZsRY9BGMY); 
 }
 }
 }
 break;
 case 248: 
 if(LNTkxz7Jl_9hzqndfBkD4iSH)return; 
 if(wpFSPrDhQ7h == 1)
 {
 switch(TeHNQv2_FTP7tNIglnN38eP)
 {
 case 10:
 if(KTPV6RpNFZL8ZIefMPHgQ.getVar().getBool(0) != false)return;
 KTPV6RpNFZL8ZIefMPHgQ.getVar().setBool(0, true); 
 if(KTPV6RpNFZL8ZIefMPHgQ.isMyControlObject())
 {
 local LFm_4KnKkBm = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(LFm_4KnKkBm); 
 sq_IntVectorPush(LFm_4KnKkBm, JDoY8JKNkL_zr2HEdZNHDv.getXPos()); 
 sq_IntVectorPush(LFm_4KnKkBm, JDoY8JKNkL_zr2HEdZNHDv.getYPos()); 
 sq_IntVectorPush(LFm_4KnKkBm, JDoY8JKNkL_zr2HEdZNHDv.getZPos()); 
 KTPV6RpNFZL8ZIefMPHgQ.addSetStatePacket(11, LFm_4KnKkBm, STATE_PRIORITY_AUTO, false, ""); 
 }
 break;
 case 14: 
 break;
 default:
 if(!JDoY8JKNkL_zr2HEdZNHDv.isObjectType(OBJECTTYPE_ACTIVE))return;
 if(sq_IsHoldable(KTPV6RpNFZL8ZIefMPHgQ, JDoY8JKNkL_zr2HEdZNHDv) 
 && !KTPV6RpNFZL8ZIefMPHgQ.getVar().is_obj_vector(JDoY8JKNkL_zr2HEdZNHDv)) 
 {
 KTPV6RpNFZL8ZIefMPHgQ.getVar().push_obj_vector(JDoY8JKNkL_zr2HEdZNHDv); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/judekatheeternal/ap_judekatheeternal.nut"))
 CNSquirrelAppendage.sq_RemoveAppendage(JDoY8JKNkL_zr2HEdZNHDv, "character/new_atmage/judekatheeternal/ap_judekatheeternal.nut");
 local A9yL4uSpZsRY9BGMY = CNSquirrelAppendage.sq_AppendAppendage(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, 248, true, "character/new_atmage/judekatheeternal/ap_judekatheeternal.nut", true); 
 sq_HoldAndDelayDie(JDoY8JKNkL_zr2HEdZNHDv, KTPV6RpNFZL8ZIefMPHgQ, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, A9yL4uSpZsRY9BGMY); 
 }
 break;
 }
 }
 break;
 }
} ;
 

 
 
function onKeyFrameFlag_po_qq506807329new_atmage_24377(qMNVihjRTmuS, tVkhhJRGalKq)
{
 if(!qMNVihjRTmuS) return false;
 local RNDKDGb7Xh4tmzwoFrEmqi4B = qMNVihjRTmuS.getVar("skill").get_vector(0);
 local LqMdIv7SpKl = qMNVihjRTmuS.getVar("subType").get_vector(0); 
 local JFlt1wvdwKdlcbytEGuXGD = qMNVihjRTmuS.getVar("state").get_vector(0); 
 switch(RNDKDGb7Xh4tmzwoFrEmqi4B)
 {
 case 248: 
 switch(LqMdIv7SpKl)
 {
 case 1:
 switch(JFlt1wvdwKdlcbytEGuXGD)
 {
 case 11:
 if(tVkhhJRGalKq == 1 && qMNVihjRTmuS.isMyControlObject())
 sq_flashScreen(qMNVihjRTmuS, 0, 80, 300, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 12:
 if(tVkhhJRGalKq == 1 && qMNVihjRTmuS.isMyControlObject())
 sq_flashScreen(qMNVihjRTmuS, 0, 80, 300, 102, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 case 13:
 if(tVkhhJRGalKq == 1 && qMNVihjRTmuS.isMyControlObject())
 sq_flashScreen(qMNVihjRTmuS, 0, 80, 300, 127, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_CLOSEBACK); 
 break;
 }
 break;
 }
 break;
 }
 return true;
} ;
 

 
 
function onTimeEvent_po_qq506807329new_atmage_24377(qMNVihjRTmuS, tVkhhJRGalKq, RNDKDGb7Xh4tmzwoFrEmqi4B)
{
 if(!qMNVihjRTmuS) return false;
 local LqMdIv7SpKl = qMNVihjRTmuS.getVar("skill").get_vector(0);
 switch(LqMdIv7SpKl)
 {
 case 243: 
 if(tVkhhJRGalKq == 0)
 if(qMNVihjRTmuS.isMyControlObject())
 qMNVihjRTmuS.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "");
 break;
 }
 return false;
} ;

 
 
function onDestroyObject_po_qq506807329new_atmage_24377(S9f9umlEnsSSziCqa, wSP12jlPzgYSMyBOWYMMTS)
{
 if(!S9f9umlEnsSSziCqa) return;
 local bWTO_jKwHiljwFU7NIb = S9f9umlEnsSSziCqa.getVar("skill").get_vector(0);
 switch(bWTO_jKwHiljwFU7NIb)
 {
 case -1:
 break;
 }
} ;


 
 
function destroy_po_qq506807329new_atmage_24377(S9f9umlEnsSSziCqa)
{
 if(!S9f9umlEnsSSziCqa) return;
 local wSP12jlPzgYSMyBOWYMMTS = S9f9umlEnsSSziCqa.getVar("skill").get_vector(0);
 switch(wSP12jlPzgYSMyBOWYMMTS)
 {
 case 243: 
 RemoveAllAni(S9f9umlEnsSSziCqa); 
 break;
 }
} ;


 

function onChangeSkillEffect_po_qq506807329new_atmage_24377(S9f9umlEnsSSziCqa, wSP12jlPzgYSMyBOWYMMTS, bWTO_jKwHiljwFU7NIb)
{
 if(!S9f9umlEnsSSziCqa) return;
 switch(skillType)
 {
 case -1:
 break;
 }
} ;

 






