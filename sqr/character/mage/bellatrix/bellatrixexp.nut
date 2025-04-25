
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
function onAfterSetState_mage_MageBellatrixExp(PNKQACiDYJS, RheieBFLXWmhOrml, sWF2VRQ2PyI7gNVJO, CSLMDEut4hk)
{
 if(!PNKQACiDYJS) return;
 
 local WsHoktMfRFEtzI5AvTRQ_6Y = PNKQACiDYJS.sq_GetVectorData(sWF2VRQ2PyI7gNVJO, 0); 
 PNKQACiDYJS.setSkillSubState(WsHoktMfRFEtzI5AvTRQ_6Y); 
 if(WsHoktMfRFEtzI5AvTRQ_6Y == 0)
 {
 sq_setCurrentAxisPos(PNKQACiDYJS, 2, 0); 
 PNKQACiDYJS.sq_SetCurrentAnimation(96); 
 local UyJwDImwWKPsp5bOKax7 = PNKQACiDYJS.getCurrentAnimation(); 
 sq_Rewind(UyJwDImwWKPsp5bOKax7); 
 UyJwDImwWKPsp5bOKax7.setCurrentFrameWithChildLayer(15); 
 if(PNKQACiDYJS.sq_IsMyControlObject())
 {
 
 sq_SetMyShake(PNKQACiDYJS, 5, 120);
 sq_flashScreen(PNKQACiDYJS, 0, 160, 400, 204, sq_RGB(255, 255, 255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
 
 for(local Ic4vvPjDLZkU = 23002; Ic4vvPjDLZkU < 23007; Ic4vvPjDLZkU++)
 {
 local AwhGEVtkRRB = PNKQACiDYJS.getMyPassiveObjectCount(Ic4vvPjDLZkU); 
 for(local bj7VPYEnQMSSYuN8hANoY = 0; bj7VPYEnQMSSYuN8hANoY < AwhGEVtkRRB; bj7VPYEnQMSSYuN8hANoY++)
 {
 local cso3PnXO0Z7F5 = PNKQACiDYJS.getMyPassiveObject(Ic4vvPjDLZkU, bj7VPYEnQMSSYuN8hANoY); 
 if(cso3PnXO0Z7F5)
 sq_SendDestroyPacketPassiveObject(cso3PnXO0Z7F5); 
 }
 }
 }
 }
} ;

function onEndState_mage_MageBellatrixExp(GRzQJGJW5YNPU6, jjDF_cJgkTLD1kUSyG)
{
 if(!GRzQJGJW5YNPU6) return;
 if(jjDF_cJgkTLD1kUSyG != 34)
 {
 local Muq2KcA7zi8uWVKzBoVzH = GRzQJGJW5YNPU6.getSkillSubState(); 
 if(Muq2KcA7zi8uWVKzBoVzH == 0)
 GRzQJGJW5YNPU6.sq_PlaySound("WZ_TEANA_FIN"); 
 }
} ;

