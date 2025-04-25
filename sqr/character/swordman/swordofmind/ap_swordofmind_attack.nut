
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
    appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_swordman_swordofmind_attack")
    appendage.sq_AddFunctionName("onStart", "onStart_appendage_swordman_swordofmind_attack")
}


function drawAppend_appendage_swordman_swordofmind_attack(b6n5XuQss9fTVS1N, BEvmJ8wARZBaYdVpWPlK, FzbKPt5wkllVIsMG, UMfsifR0IFkss2Q7iq8_P7, tmwkxhN1NxA6zx6z5XJ1kYJ)
{
 if(!BEvmJ8wARZBaYdVpWPlK)return; 
 if(!b6n5XuQss9fTVS1N)return;
 local vZGhqJH8c4o = b6n5XuQss9fTVS1N.getParent(); 
 local yB9WPDxKEV6RwO25Z5zjO = b6n5XuQss9fTVS1N.getSource(); 
 if(!vZGhqJH8c4o || vZGhqJH8c4o.isDead() ||!yB9WPDxKEV6RwO25Z5zjO)
 {
 b6n5XuQss9fTVS1N.setValid(false);
 return;
 }
 local qEWnL7YWEgw = b6n5XuQss9fTVS1N.getVar().get_ani_vector(0); 
 
 if(qEWnL7YWEgw)
 {
 sq_AnimationProc(qEWnL7YWEgw);
 sq_drawCurrentFrame(qEWnL7YWEgw, FzbKPt5wkllVIsMG, UMfsifR0IFkss2Q7iq8_P7- sq_GetObjectHeight(vZGhqJH8c4o)/2, false);
 }
} ;

function onStart_appendage_swordman_swordofmind_attack(LWSL0M6eLe4NP)
{
 if(!LWSL0M6eLe4NP)return;
 local xo1ajvydfTgvq = LWSL0M6eLe4NP.getSource(); 
 if(!xo1ajvydfTgvq)
 {
 LWSL0M6eLe4NP.setValid(false);
 return;
 }
 local cepNUJfL50u = [
 "normalhit/hit1_smoke.ani",
 "normalhit/hit2_smoke.ani",
 "normalhit/hit3_smoke.ani",
 "dunhit/dunhit1_hit_smoke.ani",
 "dunhit/dunhit2_hit_smoke.ani",
 "dunhit/dunhit3_hit_smoke.ani"
 ]; 
 local Ajh8poUCkUlt1H0zt6zcG0FU = xo1ajvydfTgvq.getVar().get_vector(0); 
 local uiCZve03kHHBts6KuTAA4VK = sq_CreateAnimation("Character/Swordman/Effect/Animation/SwordOfMind/", 
 (Ajh8poUCkUlt1H0zt6zcG0FU == 2) 
 ? cepNUJfL50u[sq_getRandom(3, 5)]
 : cepNUJfL50u[sq_getRandom(0, 2)]
 ); 
 LWSL0M6eLe4NP.getVar().clear_ani_vector(); 
 LWSL0M6eLe4NP.getVar().push_ani_vector(uiCZve03kHHBts6KuTAA4VK); 
} ;

