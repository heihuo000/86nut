
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
 
function procAppend_po_qq506807329new_fighter_24373(TZYfRbx6gK22X)
{
 if(!TZYfRbx6gK22X) return;
 local hobA0Y7B_YQGdPywctGmD5HN = TZYfRbx6gK22X.getVar("skill").get_vector(0);
 switch(hobA0Y7B_YQGdPywctGmD5HN)
 {
 case 237: 
 local nHnQ6dROIl = TZYfRbx6gK22X.getVar("state").get_vector(0); 
 if(nHnQ6dROIl != 10)
 {
 local KTDD7RZ_GHqSKrdGydwexnIb = sq_GetMoveParent(TZYfRbx6gK22X); 
 if(!KTDD7RZ_GHqSKrdGydwexnIb) 
 {
 if(TZYfRbx6gK22X.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(TZYfRbx6gK22X); 
 return;
 }
 if(KTDD7RZ_GHqSKrdGydwexnIb.getZPos() <= 0)
 {
 if(TZYfRbx6gK22X.isMyControlObject())
 {
 local TdXoN5YuifKz1k8eHwto3U = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(TdXoN5YuifKz1k8eHwto3U); 
 TZYfRbx6gK22X.addSetStatePacket(10, TdXoN5YuifKz1k8eHwto3U, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 }
 break;
 case 225: 
 local FmgdvuxuNrVbu_I = TZYfRbx6gK22X.getVar("subType").get_vector(0); 
 local nHnQ6dROIl = TZYfRbx6gK22X.getVar("state").get_vector(0); 
 if(FmgdvuxuNrVbu_I == 1 && nHnQ6dROIl == 10)
 {
 local _F6Xy6XZe7ax = TZYfRbx6gK22X.getCurrentAnimation(); 
 local R7burqkzyHXcN8TiLNi_d = sq_GetObjectTime(TZYfRbx6gK22X); 
 local HAW660qHm2NztFlZv = 150; 
 local hUSMrhiMuWs93cj = TZYfRbx6gK22X.getVar(); 
 
 local kFY64kpjuJ = sq_GetUniformVelocity(hUSMrhiMuWs93cj.get_vector(0), hUSMrhiMuWs93cj.get_vector(3), R7burqkzyHXcN8TiLNi_d, HAW660qHm2NztFlZv);
 local QCLJMjZOIAGbeJ8SQz = sq_GetUniformVelocity(hUSMrhiMuWs93cj.get_vector(1), hUSMrhiMuWs93cj.get_vector(4), R7burqkzyHXcN8TiLNi_d, HAW660qHm2NztFlZv);
 local _l2qlYtjaLdaPfLD = sq_GetUniformVelocity(hUSMrhiMuWs93cj.get_vector(2), 0, R7burqkzyHXcN8TiLNi_d, HAW660qHm2NztFlZv);
 sq_SetCurrentPos(TZYfRbx6gK22X, kFY64kpjuJ, QCLJMjZOIAGbeJ8SQz, _l2qlYtjaLdaPfLD);
 if(TZYfRbx6gK22X.isMyControlObject())
 if(R7burqkzyHXcN8TiLNi_d >= HAW660qHm2NztFlZv || _l2qlYtjaLdaPfLD <= hUSMrhiMuWs93cj.get_vector(5)) 
 {
 local TdXoN5YuifKz1k8eHwto3U = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(TdXoN5YuifKz1k8eHwto3U); 
 TZYfRbx6gK22X.addSetStatePacket(11, TdXoN5YuifKz1k8eHwto3U, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 226: 
 local FmgdvuxuNrVbu_I = TZYfRbx6gK22X.getVar("subType").get_vector(0); 
 local nHnQ6dROIl = TZYfRbx6gK22X.getVar("state").get_vector(0); 
 if(FmgdvuxuNrVbu_I == 1 && nHnQ6dROIl == 10)
 {
 local _F6Xy6XZe7ax = TZYfRbx6gK22X.getCurrentAnimation(); 
 local R7burqkzyHXcN8TiLNi_d = sq_GetCurrentTime(_F6Xy6XZe7ax); 
 local HAW660qHm2NztFlZv = _F6Xy6XZe7ax.getDelaySum(0, 1);; 
 local kFY64kpjuJ = sq_GetDistancePos(TZYfRbx6gK22X.getVar().get_vector(1),
 TZYfRbx6gK22X.getDirection(),
 sq_GetUniformVelocity(0, TZYfRbx6gK22X.getVar().get_vector(2), R7burqkzyHXcN8TiLNi_d, HAW660qHm2NztFlZv));
 sq_setCurrentAxisPos(TZYfRbx6gK22X, 0, kFY64kpjuJ); 
 if(TZYfRbx6gK22X.isMyControlObject())
 if(R7burqkzyHXcN8TiLNi_d >= HAW660qHm2NztFlZv) 
 {
 local TdXoN5YuifKz1k8eHwto3U = sq_GetGlobalIntVector(); 
 sq_IntVectorClear(TdXoN5YuifKz1k8eHwto3U); 
 TZYfRbx6gK22X.addSetStatePacket(11, TdXoN5YuifKz1k8eHwto3U, STATE_PRIORITY_AUTO, false, ""); 
 }
 }
 break;
 case 233: 
 if(TZYfRbx6gK22X.isMyControlObject())
 {
 local FmgdvuxuNrVbu_I = TZYfRbx6gK22X.getVar("subType").get_vector(0); 
 if(FmgdvuxuNrVbu_I == 1 
 && !TZYfRbx6gK22X.getCurrentAnimation() 
 && TZYfRbx6gK22X.getMyPassiveObjectCount(24373) <= 0) 
 if(sq_GetObjectTime(TZYfRbx6gK22X)>500) 
 sq_SendDestroyPacketPassiveObject(TZYfRbx6gK22X); 
 }
 break;
 }
} ;
 
