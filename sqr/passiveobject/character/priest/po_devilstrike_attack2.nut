
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_DevilStrike2(RQUG25JPpq2qN,wBGU4gk7_tNAq9biq)
{
 local _1h71K8s2tQOeX074 = wBGU4gk7_tNAq9biq.readDword(); 
 RQUG25JPpq2qN.getVar("SubType").clear_vector(); 
 RQUG25JPpq2qN.getVar("SubType").push_vector(_1h71K8s2tQOeX074);
 if(_1h71K8s2tQOeX074 == 1)
 setCurrentAnimationFromCutomIndex(RQUG25JPpq2qN, 0); 
 else if(_1h71K8s2tQOeX074 == 2)
 setCurrentAnimationFromCutomIndex(RQUG25JPpq2qN, 1); 
 local FBX7DkQlJpCUw2_mq = wBGU4gk7_tNAq9biq.readDword(); 
 
 local yCCBbPsrbo13A252ntWLyNbm = sq_GetCurrentAttackInfo(RQUG25JPpq2qN);
 sq_SetCurrentAttackBonusRate(yCCBbPsrbo13A252ntWLyNbm, FBX7DkQlJpCUw2_mq);
} ;

function setState_po_DevilStrike2(ljO178jbTFAzkhgIBBuRN, cJw8i8gRnf, bk23XHj57CxQ)
{
} ;

function procAppend_po_DevilStrike2(ljO178jbTFAzkhgIBBuRN)
{
 local cJw8i8gRnf = ljO178jbTFAzkhgIBBuRN.getTopCharacter();
 
 if(!cJw8i8gRnf)
 {
 sq_SendDestroyPacketPassiveObject(ljO178jbTFAzkhgIBBuRN);
 return;
 }
 
 local bk23XHj57CxQ = cJw8i8gRnf.getState(); 
 local FPiNV6zbGo0ZJMKi90tdo_B = cJw8i8gRnf.getSkillSubState();
 local O27JbKqVyohmLjI = ljO178jbTFAzkhgIBBuRN.getCurrentAnimation();
 local VTT92w4KQHMXytWP = O27JbKqVyohmLjI.GetCurrentFrameIndex();
 local BaZMR_B84RbmijPpFkYdG = sq_IsEnd(O27JbKqVyohmLjI);
 
 
 if(BaZMR_B84RbmijPpFkYdG) {
 sq_SendDestroyPacketPassiveObject(ljO178jbTFAzkhgIBBuRN);
 return;
 }
} ;


if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onKeyFrameFlag_po_DevilStrike2(iiAywe_sMjkFZo, b5rzLc0Jkjnh7yMVidKxN)
{
 if(!iiAywe_sMjkFZo) return false;
 local Nvc90tuMZzp = iiAywe_sMjkFZo.getVar("SubType").get_vector(0);
 if(Nvc90tuMZzp == 2)
 switch (b5rzLc0Jkjnh7yMVidKxN)
 {
 case 0:
 iiAywe_sMjkFZo.resetHitObjectList(); 
 break;
 }
 return true;
} ;

function onDestroyObject_po_DevilStrike2(dBdti5nwhuR5006xo, n_7yYxdeEU)
{
} ;

