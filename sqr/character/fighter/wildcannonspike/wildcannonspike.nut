
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_FighterWildCannonSpike(TZYfRbx6gK22X, hobA0Y7B_YQGdPywctGmD5HN, nHnQ6dROIl, KTDD7RZ_GHqSKrdGydwexnIb)
{
 if (!TZYfRbx6gK22X) return;
 local TdXoN5YuifKz1k8eHwto3U = TZYfRbx6gK22X.sq_GetVectorData(nHnQ6dROIl, 0); 
 TZYfRbx6gK22X.setSkillSubState(TdXoN5YuifKz1k8eHwto3U); 
} ;

function onProc_FighterWildCannonSpike(TZYfRbx6gK22X)
{
 if(!TZYfRbx6gK22X) return;
 if(!TZYfRbx6gK22X.isMyControlObject()) return;
 local hobA0Y7B_YQGdPywctGmD5HN = TZYfRbx6gK22X.getSkillSubState(); 
 if(hobA0Y7B_YQGdPywctGmD5HN==3)
 {
 
 if(!sq_GetSkill(TZYfRbx6gK22X, 62).isInCoolTime()){ 
 TZYfRbx6gK22X.setSkillCommandEnable(62,true); 
 if(TZYfRbx6gK22X.sq_IsEnterSkill(62) != -1) 
 {
 TZYfRbx6gK22X.startSkillCoolTime(62, sq_GetSkillLevel(TZYfRbx6gK22X, 62), -1); 
 sq_setCurrentAxisPos(TZYfRbx6gK22X, 2, 30); 
 TZYfRbx6gK22X.sq_AddSetStatePacket(36, STATE_PRIORITY_USER, false); 
 }
 }
 }
} ;