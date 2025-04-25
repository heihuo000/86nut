
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C




function onAfterSetState_swordman_bloodyrave(PI3yc3imZHs3h, I_Gw0ARfb642udjLQZ, uvVJuHjPQ1d, TkRrVlTCkEp9BwlFC)
{
 if(!PI3yc3imZHs3h) return;
 local qtkNo3O9nfW1 = PI3yc3imZHs3h.sq_GetVectorData(uvVJuHjPQ1d, 0); 
 if(qtkNo3O9nfW1==1)
 PI3yc3imZHs3h.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT,1.5, 1.5);
} ;

function onEndState_swordman_bloodyrave(zLzzxrpnDWJ3ADROPE, Xm47UdGwFpDGa)
{
 if(!zLzzxrpnDWJ3ADROPE) return;
 if(Xm47UdGwFpDGa != 43) 
 {
 local SrwA0XOqAKGE1IwaF = zLzzxrpnDWJ3ADROPE.getMyPassiveObjectCount(20041); 
 for(local gwT2oSG7U2bt0Gcn2mlN = 0; gwT2oSG7U2bt0Gcn2mlN < SrwA0XOqAKGE1IwaF; gwT2oSG7U2bt0Gcn2mlN++)
 {
 local DcOHta3s6_lv6bqLYCkV = zLzzxrpnDWJ3ADROPE.getMyPassiveObject(20041, gwT2oSG7U2bt0Gcn2mlN); 
 if(!DcOHta3s6_lv6bqLYCkV)return;
 local sYRcJ07zYRZHBnUBr4jADQ3 = DcOHta3s6_lv6bqLYCkV.getCurrentAnimation(); 
 if(sq_GetAnimationFrameIndex(sYRcJ07zYRZHBnUBr4jADQ3) == 0 && DcOHta3s6_lv6bqLYCkV.isMyControlObject())
 sq_SendDestroyPacketPassiveObject(DcOHta3s6_lv6bqLYCkV); 
 }
 }
} ;

function onKeyFrameFlag_swordman_bloodyrave(HdUyQBJhpTnfni_1, w0LtEd80Iz)
{
 if(!HdUyQBJhpTnfni_1) return false;
 if(w0LtEd80Iz == 65534 && HdUyQBJhpTnfni_1.sq_IsMyControlObject()) 
 {
 
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(1);
 sq_SendChangeSkillEffectPacket(HdUyQBJhpTnfni_1, -1); 
 }
 return true;
} ;

function onChangeSkillEffect_swordman_bloodyrave(HdUyQBJhpTnfni_1, w0LtEd80Iz, xpSfZBLENmjrapbOH7VTpbj)
{
 if(!HdUyQBJhpTnfni_1) return;
 local dTeq_byXzC0M = xpSfZBLENmjrapbOH7VTpbj.readWord(); 
 switch(dTeq_byXzC0M)
 {
 case 1:
 local pxWhg3lEGbV4YpZDHELZQ8t = HdUyQBJhpTnfni_1.getMyPassiveObjectCount(20041); 
 for(local SEkabAjonHYRatCxMmk7u = 0; SEkabAjonHYRatCxMmk7u < pxWhg3lEGbV4YpZDHELZQ8t; SEkabAjonHYRatCxMmk7u++)
 {
 local lrd7To97p2y = HdUyQBJhpTnfni_1.getMyPassiveObject(20041, SEkabAjonHYRatCxMmk7u); 
 if(!lrd7To97p2y)return;
 local SDR7537RbJYylQIfC1O7zW = lrd7To97p2y.getCurrentAnimation(); 
 if(sq_GetAnimationFrameIndex(SDR7537RbJYylQIfC1O7zW) == 0)
 {
 lrd7To97p2y.setCurrentPos(HdUyQBJhpTnfni_1.getXPos(), HdUyQBJhpTnfni_1.getYPos(), HdUyQBJhpTnfni_1.getZPos()); 
 sq_SetCurrentDirection(lrd7To97p2y, HdUyQBJhpTnfni_1.getDirection()); 
 SDR7537RbJYylQIfC1O7zW.setFrameDelay(0, 0, true); 
 sq_Rewind(SDR7537RbJYylQIfC1O7zW); 
 }
 }
 break;
 }
} ;



