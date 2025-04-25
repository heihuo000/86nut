
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_FighterAttack(I7Vn2b5Y4JWJ8fwyqag, M0Av1Ca1jcgi2kZrbwX, GGZmeVAG1DTZ5MIEgjv7r4, RkaFOxMO_hWLq)
{
 if(!I7Vn2b5Y4JWJ8fwyqag) return;
 local pa6wv_TLvw3 = I7Vn2b5Y4JWJ8fwyqag.sq_GetVectorData(GGZmeVAG1DTZ5MIEgjv7r4, 0); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().clear_vector(); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(pa6wv_TLvw3); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().setBool(0,false); 
 if(CNSquirrelAppendage.sq_IsAppendAppendage(I7Vn2b5Y4JWJ8fwyqag, "character/fighter/poisonsnake/ap_poisonsnake.nut") == true)
 {
 I7Vn2b5Y4JWJ8fwyqag.getVar().setBool(0, true); 
 switch(pa6wv_TLvw3)
 {
 case 4: 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(0); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(0); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(I7Vn2b5Y4JWJ8fwyqag.getZPos()); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(35); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(-1); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(-1); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(0); 
 I7Vn2b5Y4JWJ8fwyqag.getVar().push_vector(4); 
 if(I7Vn2b5Y4JWJ8fwyqag.sq_IsMyControlObject())
 {
 local gH7YFWOna7L82a34Tzx7c = 150; 
 
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && I7Vn2b5Y4JWJ8fwyqag.getDirection() == ENUM_DIRECTION_LEFT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && I7Vn2b5Y4JWJ8fwyqag.getDirection() == ENUM_DIRECTION_RIGHT)
 gH7YFWOna7L82a34Tzx7c = 230;
 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL) && I7Vn2b5Y4JWJ8fwyqag.getDirection() == ENUM_DIRECTION_RIGHT
 || sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL) && I7Vn2b5Y4JWJ8fwyqag.getDirection() == ENUM_DIRECTION_LEFT)
 gH7YFWOna7L82a34Tzx7c = 0;
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1); 
 sq_BinaryWriteDword(gH7YFWOna7L82a34Tzx7c); 
 sq_SendChangeSkillEffectPacket(I7Vn2b5Y4JWJ8fwyqag, -1); 
 }
 sq_CreateDrawOnlyObject(I7Vn2b5Y4JWJ8fwyqag, "character/fighter/effect/animation/poisonsnake/attack05_dust.ani", ENUM_DRAWLAYER_NORMAL, true); 
 break;
 }
 }
} ;

function onProc_FighterAttack(vMND7WYxhzo8Q)
{
 if(!vMND7WYxhzo8Q) return;
 local E0pWWZvNq7yal0 = vMND7WYxhzo8Q.getVar().get_vector(0);
 if(E0pWWZvNq7yal0 == 4)
 {
 local ZDqrKV8mtWZJI = vMND7WYxhzo8Q.getCurrentAnimation(); 
 local kQCzhytH2YgOl = sq_GetCurrentTime(ZDqrKV8mtWZJI); 
 local LvF9YrnI7VAdgk5_O3HSHb = ZDqrKV8mtWZJI.getDelaySum(0, 7); 
 local Z3S12AvJ8zaPOHP = vMND7WYxhzo8Q.getVar(); 
 local mYTl_A2KGA2V = Z3S12AvJ8zaPOHP.get_vector(1); 
 if(mYTl_A2KGA2V!=0)
 {
 local CO_pqV6XwcNE5EZ = sq_GetDistancePos(mYTl_A2KGA2V,
 vMND7WYxhzo8Q.getDirection(),
 sq_GetUniformVelocity(0, Z3S12AvJ8zaPOHP.get_vector(2), kQCzhytH2YgOl, LvF9YrnI7VAdgk5_O3HSHb)); 
 if(vMND7WYxhzo8Q.isMovablePos(CO_pqV6XwcNE5EZ, vMND7WYxhzo8Q.getYPos())) 
 sq_setCurrentAxisPos(vMND7WYxhzo8Q, 0, CO_pqV6XwcNE5EZ); 
 else 
 Z3S12AvJ8zaPOHP.set_vector(1, 0);
 }
 kQCzhytH2YgOl = sq_GetCurrentTime(ZDqrKV8mtWZJI)- ZDqrKV8mtWZJI.getDelaySum(Z3S12AvJ8zaPOHP.get_vector(5), Z3S12AvJ8zaPOHP.get_vector(6)); 
 LvF9YrnI7VAdgk5_O3HSHb = ZDqrKV8mtWZJI.getDelaySum(Z3S12AvJ8zaPOHP.get_vector(7), Z3S12AvJ8zaPOHP.get_vector(8)); 
 local SfwMZs5w5s7 = Z3S12AvJ8zaPOHP.get_vector(3) + sq_GetUniformVelocity(0, Z3S12AvJ8zaPOHP.get_vector(4), kQCzhytH2YgOl, LvF9YrnI7VAdgk5_O3HSHb); 
 sq_setCurrentAxisPos(vMND7WYxhzo8Q, 2, SfwMZs5w5s7); 
 }
} ;

function onKeyFrameFlag_FighterAttack(WTQDexrpJoclPMX1, bW_7e_9eMYmtoBT_Y)
{
 if(!WTQDexrpJoclPMX1) return false;
 local KIbeIkkOUZlNja = WTQDexrpJoclPMX1.getVar().get_vector(0); 
 switch(KIbeIkkOUZlNja)
 {
 case 0:
 if(bW_7e_9eMYmtoBT_Y == 1)
 {
 sq_SetMyShake(WTQDexrpJoclPMX1, 1, 100);
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/poisonsnake/attack01_b_boom02_normal_02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 case 1:
 if(bW_7e_9eMYmtoBT_Y == 1)
 {
 sq_SetMyShake(WTQDexrpJoclPMX1, 1, 100);
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/poisonsnake/attack02_b_boom02_normal_02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 case 2:
 if(bW_7e_9eMYmtoBT_Y == 1)
 {
 sq_SetMyShake(WTQDexrpJoclPMX1, 1, 100);
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/poisonsnake/attack03_b_boom02_normal_02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 case 3:
 if(bW_7e_9eMYmtoBT_Y == 1)
 {
 sq_SetMyShake(WTQDexrpJoclPMX1, 1, 100);
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/poisonsnake/attack04_b_boom02_normal_02.ani", ENUM_DRAWLAYER_NORMAL, true); 
 }
 break;
 case 4:
 if(bW_7e_9eMYmtoBT_Y == 1)
 {
 WTQDexrpJoclPMX1.getVar().set_vector(3, WTQDexrpJoclPMX1.getZPos()); 
 WTQDexrpJoclPMX1.getVar().set_vector(4, WTQDexrpJoclPMX1.getZPos()/-1); 
 WTQDexrpJoclPMX1.getVar().set_vector(5, 0); 
 WTQDexrpJoclPMX1.getVar().set_vector(6, 4); 
 WTQDexrpJoclPMX1.getVar().set_vector(7, 5); 
 WTQDexrpJoclPMX1.getVar().set_vector(8, 7); 
 sq_CreateDrawOnlyObject(WTQDexrpJoclPMX1, "character/fighter/effect/animation/poisonsnake/attack05_b_boom03_normal_01.ani", ENUM_DRAWLAYER_NORMAL, true); 
 if(WTQDexrpJoclPMX1.sq_IsMyControlObject())
 {
 sq_SetMyShake(WTQDexrpJoclPMX1, 2, 200);
 sq_flashScreen(WTQDexrpJoclPMX1, 0, 0, 200, 70, sq_RGB(0, 0, 0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 }
 }
 break;
 }
 return true;
} ;

function onChangeSkillEffect_FighterAttack(C0hrqHuiRZz, zfZxfp_yNWqoDxxg, ufcGKYac1f)
{
 if(!C0hrqHuiRZz) return;
 local kAsn3sznmmrJx = C0hrqHuiRZz.getVar().get_vector(0);
 if(C0hrqHuiRZz.getVar().getBool(0) == true) 
 {
 local ooK7kUsLiv = ufcGKYac1f.readWord(); 
 switch(ooK7kUsLiv)
 {
 case 1: 
 C0hrqHuiRZz.getVar().set_vector(1, C0hrqHuiRZz.getXPos()); 
 C0hrqHuiRZz.getVar().set_vector(2, ufcGKYac1f.readDword()); 
 break;
 }
 }
} ;

