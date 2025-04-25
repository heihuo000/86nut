
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




 
function checkExecutableSkill_atgunner_g96thermobaricgranade(j77xMeLkG5wknOtcptYAEJU)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return false; 
 local zrsQHOqStvVjv8 = j77xMeLkG5wknOtcptYAEJU.sq_IsUseSkill(243); 
 if(zrsQHOqStvVjv8) 
 {
 local b8TRqIaG2En56ESpxkF7 = j77xMeLkG5wknOtcptYAEJU.getZPos(); 
 local ZiE5Vje2DH_qvrWMebT2h = j77xMeLkG5wknOtcptYAEJU.getState(); 
 if(b8TRqIaG2En56ESpxkF7 > 0 && (ZiE5Vje2DH_qvrWMebT2h == 6 || ZiE5Vje2DH_qvrWMebT2h == 7)) 
 {
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectClear();
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectPush(1); 
 j77xMeLkG5wknOtcptYAEJU.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 }
 else
 {
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectClear();
 j77xMeLkG5wknOtcptYAEJU.sq_IntVectPush(0); 
 j77xMeLkG5wknOtcptYAEJU.sq_AddSetStatePacket(243, STATE_PRIORITY_USER, true); 
 }
 return true; 
 }
 return false; 
} ;

 
function checkCommandEnable_atgunner_g96thermobaricgranade(j77xMeLkG5wknOtcptYAEJU)
{
 if(!j77xMeLkG5wknOtcptYAEJU) return false; 
 local zrsQHOqStvVjv8 = j77xMeLkG5wknOtcptYAEJU.sq_GetState(); 
 if(zrsQHOqStvVjv8 == STATE_STAND) 
 return true; 
 if(zrsQHOqStvVjv8 == STATE_ATTACK) 
 {
 return j77xMeLkG5wknOtcptYAEJU.sq_IsCommandEnable(243); 
 }
 return true; 
} ;

 
function onSetState_atgunner_g96thermobaricgranade(SEau5Cgoa9ZAdrEHERzPo, BG07RPXy7FESQKP, dNpra4Cj2cWoK0UDzdUv, MoYg5168WRS4Z)
{
 
 
 
 
 
 
 if(!SEau5Cgoa9ZAdrEHERzPo) return; 
 SEau5Cgoa9ZAdrEHERzPo.getVar().clear_vector(); 
 SEau5Cgoa9ZAdrEHERzPo.sq_StopMove(); 
 local Qj42LXW488Eh76J = SEau5Cgoa9ZAdrEHERzPo.sq_GetVectorData(dNpra4Cj2cWoK0UDzdUv, 0); 
 SEau5Cgoa9ZAdrEHERzPo.setSkillSubState(Qj42LXW488Eh76J); 
 switch(Qj42LXW488Eh76J)
 {
 case 0:
 SEau5Cgoa9ZAdrEHERzPo.sq_SetCurrentAnimation(125);
 break;
 case 1:
 SEau5Cgoa9ZAdrEHERzPo.sq_ZStop(); 
 SEau5Cgoa9ZAdrEHERzPo.sq_SetCurrentAnimation(61);
 break;
 }
 SEau5Cgoa9ZAdrEHERzPo.sq_PlaySound("FG_THERMOBARIC"); 
 SEau5Cgoa9ZAdrEHERzPo.sq_SetSuperArmor(POD_VAR_SUPERARMOR); 
 SEau5Cgoa9ZAdrEHERzPo.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);
} ;

function onKeyFrameFlag_atgunner_g96thermobaricgranade(cGAx45jutVf, AhWbb3YKt4vfpZn9F9ar0)
{
 if(!cGAx45jutVf) return false;
 if(!cGAx45jutVf.sq_IsMyControlObject())return true;
 local g6TkpySf8c_Lo3O = cGAx45jutVf.getSkillSubState(); 
 if(AhWbb3YKt4vfpZn9F9ar0 == 1)
 {
 
 
 
 
 local eRVNXsifwenu = 1; 
 switch(g6TkpySf8c_Lo3O)
 {
 case 0:
 if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) 
 eRVNXsifwenu = 3; 
 else if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) 
 eRVNXsifwenu = 4; 
 break;
 case 1:
 eRVNXsifwenu = 2; 
 break;
 }
 local tWqAs8cX5Aj6KV0fk = 100; 
 
 cGAx45jutVf.sq_StartWrite();
 cGAx45jutVf.sq_WriteDword(243); 
 cGAx45jutVf.sq_WriteDword(1); 
 cGAx45jutVf.sq_WriteDword(cGAx45jutVf.sq_GetBonusRateWithPassive(243, 243, 0, 1.0)); 
 cGAx45jutVf.sq_WriteDword(eRVNXsifwenu); 
 cGAx45jutVf.sq_WriteDword(tWqAs8cX5Aj6KV0fk); 
 if(g6TkpySf8c_Lo3O == 1)
 cGAx45jutVf.sq_SendCreatePassiveObjectPacket(24376, 0, 35, 0, 68);
 else
 cGAx45jutVf.sq_SendCreatePassiveObjectPacket(24376, 0, 48, 0, 76);
 }
 return true;
} ;

 
function onEndCurrentAni_atgunner_g96thermobaricgranade(KiBywGB7SM53xCNKHzzKXWSJ)
{
 if(!KiBywGB7SM53xCNKHzzKXWSJ) return;
 if(!KiBywGB7SM53xCNKHzzKXWSJ.sq_IsMyControlObject()) return;
 local GJoLIiygQVbL0JSVNJjeNbbI = KiBywGB7SM53xCNKHzzKXWSJ.getSkillSubState(); 
 switch(GJoLIiygQVbL0JSVNJjeNbbI)
 {
 case 0:
 KiBywGB7SM53xCNKHzzKXWSJ.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
 break;
 case 1:
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectClear();
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectPush(1);
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectPush(0);
 KiBywGB7SM53xCNKHzzKXWSJ.sq_IntVectPush(250);
 KiBywGB7SM53xCNKHzzKXWSJ.sq_AddSetStatePacket(STATE_JUMP, STATE_PRIORITY_USER, true);
 break;
 }
} ;

function onEndState_atgunner_g96thermobaricgranade(QzdzqMM6YDQ3H6, TAXYMJpdhybSOSWcUFqEFDSX)
{
 if(!QzdzqMM6YDQ3H6) return;
 QzdzqMM6YDQ3H6.sq_RemoveSuperArmor(POD_VAR_SUPERARMOR); 
} ;



