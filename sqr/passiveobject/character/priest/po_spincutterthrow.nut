
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_SpincutterThrow(aHcxm2SmtjXcB, cvkwucMwg4r5vtsjYhqPwXyF)
{
 local _qsPCgMdnz7K = cvkwucMwg4r5vtsjYhqPwXyF.readDword(); 
 aHcxm2SmtjXcB.getVar("subType").clear_vector();
 aHcxm2SmtjXcB.getVar("subType").push_vector(_qsPCgMdnz7K);
 if(_qsPCgMdnz7K == 1)
 {
 local m6u0kkuzvvtHScst = cvkwucMwg4r5vtsjYhqPwXyF.readDword();
 local WiT_uaRlxIyPMDrmtV3zq = sq_GetCurrentAttackInfo(aHcxm2SmtjXcB);
 sq_SetCurrentAttackBonusRate(WiT_uaRlxIyPMDrmtV3zq, m6u0kkuzvvtHScst);
 }
 else if(_qsPCgMdnz7K == 2)
 {
 setCurrentAnimationFromCutomIndex(aHcxm2SmtjXcB, 0); 
 local m6u0kkuzvvtHScst = cvkwucMwg4r5vtsjYhqPwXyF.readDword(); 
 local HRnNA1SbA0yvm = sq_GetCustomAttackInfo(aHcxm2SmtjXcB, 0); 
 sq_SetCurrentAttackBonusRate(HRnNA1SbA0yvm, m6u0kkuzvvtHScst);
 sq_SetCurrentAttackInfo(aHcxm2SmtjXcB, HRnNA1SbA0yvm); 
 }
} ;


function setState_po_SpincutterThrow(xqAzAHLt66o7rd7QZLu, pY396gVdip_aPfLycjhQ, KAW_4sWYaGx6vkP)
{
} ;

function procAppend_po_SpincutterThrow(ts9OPMZr0ZF7bm7pGolL6dTO)
{
 local iKF9rrD7NmchqxL = ts9OPMZr0ZF7bm7pGolL6dTO.getTopCharacter();
 if(!iKF9rrD7NmchqxL)
 {
 if(ts9OPMZr0ZF7bm7pGolL6dTO.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(ts9OPMZr0ZF7bm7pGolL6dTO);
 return;
 }
 local Mn24vQqDw07fPLPOkpQ863 = ts9OPMZr0ZF7bm7pGolL6dTO.getVar("subType").get_vector(0); 
 if(Mn24vQqDw07fPLPOkpQ863 == 1 || Mn24vQqDw07fPLPOkpQ863 == 2)
 {
 local P10m_ECTHQ08HWTZmI0Me = iKF9rrD7NmchqxL.getState();
 local ch5KGNKXAAX = iKF9rrD7NmchqxL.getSkillSubState();
 if(P10m_ECTHQ08HWTZmI0Me != 61)
 {
 if(ts9OPMZr0ZF7bm7pGolL6dTO.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(ts9OPMZr0ZF7bm7pGolL6dTO);
 return;
 }
 if(ch5KGNKXAAX != 0)
 {
 if(ts9OPMZr0ZF7bm7pGolL6dTO.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(ts9OPMZr0ZF7bm7pGolL6dTO);
 return;
 }
 }
} ;


function onDestroyObject_po_SpincutterThrow(gUgIXS_ZLmeAFNJ, dMz6pJoFuluC56b)
{
} ;

