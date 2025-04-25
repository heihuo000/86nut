
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_DevilStrike3(HBzjsVZF_K0yLf59tJt7dqvc,jFZimPMfxaXcoaa)
{
 local rKkIW8qPKSmw2QEkN429 = jFZimPMfxaXcoaa.readDword(); 
 HBzjsVZF_K0yLf59tJt7dqvc.getVar("SubType").clear_vector(); 
 HBzjsVZF_K0yLf59tJt7dqvc.getVar("SubType").push_vector(rKkIW8qPKSmw2QEkN429);
 if(rKkIW8qPKSmw2QEkN429 == 1)
 setCurrentAnimationFromCutomIndex(HBzjsVZF_K0yLf59tJt7dqvc, 0); 
 else if(rKkIW8qPKSmw2QEkN429 == 2)
 setCurrentAnimationFromCutomIndex(HBzjsVZF_K0yLf59tJt7dqvc, 1); 
 local Wj72Zg2wTC = jFZimPMfxaXcoaa.readDword(); 
 
 local Cgoa5HAwR9jGqFsXO = sq_GetCurrentAttackInfo(HBzjsVZF_K0yLf59tJt7dqvc);
 sq_SetCurrentAttackBonusRate(Cgoa5HAwR9jGqFsXO, Wj72Zg2wTC);
} ;

function setState_po_DevilStrike3(g6ownnNxNAVLGmHxA42tTBQ1, ZiQanJzbnp0KwlYcf3IeyKT, ac_myaaviyIugqhXlsuyHR)
{
} ;

function procAppend_po_DevilStrike3(MoOhbO_zKvjL7S)
{
 local aYvysmTqWtEe0rl3XV80uA = MoOhbO_zKvjL7S.getTopCharacter();
 
 if(!aYvysmTqWtEe0rl3XV80uA)
 {
 sq_SendDestroyPacketPassiveObject(MoOhbO_zKvjL7S);
 return;
 }
 
 local EVBbL7oI6rV3OEHlDa77wCc = aYvysmTqWtEe0rl3XV80uA.getState(); 
 local fhzvB_SnlSMph1F3obvM49Sk = aYvysmTqWtEe0rl3XV80uA.getSkillSubState();
 local mfI9RAEjNil = MoOhbO_zKvjL7S.getCurrentAnimation();
 local GS6lfWNTv2Ab3HYhbC6 = mfI9RAEjNil.GetCurrentFrameIndex();
 local wkzR4hJ0dZlSagbDhvI = sq_IsEnd(mfI9RAEjNil);
 
 
 if(wkzR4hJ0dZlSagbDhvI) {
 sq_SendDestroyPacketPassiveObject(MoOhbO_zKvjL7S);
 return;
 }
} ;

function onDestroyObject_po_DevilStrike3(G8AREDQiw97wQYqNGFkW5WQ, b1aM3GkG6n2w)
{
} ;

