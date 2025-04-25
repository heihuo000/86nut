
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 
function getRangeObject(E4bfx7uQzohHz9o2AtmldE,BdUS7iApQxJ,T88mtZZDWBF11K,QOvjxC_E1Gd8o,MHsELPXEUamxKcMQYPu0t,r3ffQb7DLAQ1E7kj98d,weK03cRk9RLovfSiyc8fxCl,CHZK8ym7YamLrda4CURtZo)
{
 if (!E4bfx7uQzohHz9o2AtmldE) return;
 local dfqqY0_j8A16tEDoX = BdUS7iApQxJ;
 if(BdUS7iApQxJ ==-1) 
 dfqqY0_j8A16tEDoX=9999;
 
 E4bfx7uQzohHz9o2AtmldE.getVar("AllRangeEnemy").clear_obj_vector();
 local FRwGX4Zw3l = E4bfx7uQzohHz9o2AtmldE.getVar("AllRangeEnemy"); 
 
 local hrBWpTxM4C7YCk8wu5z8gO = E4bfx7uQzohHz9o2AtmldE.getObjectManager();
 
 local uYsjx5ixBbEJ = hrBWpTxM4C7YCk8wu5z8gO.getCollisionObjectNumber();
 
 local tvVNipJ9RMifSZR5W = 0;
 local vQ3HVNr0XFjw7o = sq_GetXPos(E4bfx7uQzohHz9o2AtmldE)+T88mtZZDWBF11K; 
 local I6A9cL4Z1cI33PrTgs = sq_GetYPos(E4bfx7uQzohHz9o2AtmldE)+QOvjxC_E1Gd8o; 
 
 for(local pizuQNAuj2PkJ=0;pizuQNAuj2PkJ<uYsjx5ixBbEJ;pizuQNAuj2PkJ++)
 {
 
 local H8FXV6ldI1ptCqoU91KC7aqH = hrBWpTxM4C7YCk8wu5z8gO.getCollisionObject(pizuQNAuj2PkJ);
 
 if(!H8FXV6ldI1ptCqoU91KC7aqH || !E4bfx7uQzohHz9o2AtmldE.isEnemy(H8FXV6ldI1ptCqoU91KC7aqH) || !H8FXV6ldI1ptCqoU91KC7aqH.isObjectType(OBJECTTYPE_ACTIVE)) continue;
 local aSWTJo4J5iWj = sq_GetXPos(H8FXV6ldI1ptCqoU91KC7aqH); 
 local ntSHQkNs3QMAXOWBKlNBP = sq_GetYPos(H8FXV6ldI1ptCqoU91KC7aqH); 
 local lLPLAyhHZIugmE9oSPZG8 = sq_GetZPos(H8FXV6ldI1ptCqoU91KC7aqH); 
 if(lLPLAyhHZIugmE9oSPZG8>r3ffQb7DLAQ1E7kj98d) continue; 
 if(weK03cRk9RLovfSiyc8fxCl!=0)
 if(sq_Abs(I6A9cL4Z1cI33PrTgs-ntSHQkNs3QMAXOWBKlNBP)>weK03cRk9RLovfSiyc8fxCl) continue; 
 
 switch (CHZK8ym7YamLrda4CURtZo)
 {
 case 0: 
 if(vQ3HVNr0XFjw7o<aSWTJo4J5iWj) continue; 
 break;
 case 1: 
 if(vQ3HVNr0XFjw7o>aSWTJo4J5iWj) continue; 
 break;
 case 2: 
 if(I6A9cL4Z1cI33PrTgs<ntSHQkNs3QMAXOWBKlNBP) continue; 
 break;
 case 3: 
 if(I6A9cL4Z1cI33PrTgs>ntSHQkNs3QMAXOWBKlNBP) continue; 
 break;
 }
 
 local UXBWzXtJRz1O = sq_GetDistance(vQ3HVNr0XFjw7o,I6A9cL4Z1cI33PrTgs, aSWTJo4J5iWj, ntSHQkNs3QMAXOWBKlNBP, true);
 
 if(UXBWzXtJRz1O<=dfqqY0_j8A16tEDoX&&UXBWzXtJRz1O>MHsELPXEUamxKcMQYPu0t)
 {
 FRwGX4Zw3l.push_obj_vector(H8FXV6ldI1ptCqoU91KC7aqH);
 tvVNipJ9RMifSZR5W++;
 }
 }
 return tvVNipJ9RMifSZR5W;
} 


 
 
 
 
 
 
 
function setRangeObjectXPos(BmA9WJFk0s68uTYd2Tfk,oag0Q3udiu,Z5V_fO5A2zzc9ZuxK0u,TjTDts90Fv4A4ciwPYM,RRgQIJy7pmjd0Y2,b9S1m4NbgAjYE5Dw,B2N135h61I)
{
 if(!BmA9WJFk0s68uTYd2Tfk) return;
 if(getRangeObject(BmA9WJFk0s68uTYd2Tfk,oag0Q3udiu,0,0,TjTDts90Fv4A4ciwPYM,RRgQIJy7pmjd0Y2,b9S1m4NbgAjYE5Dw,Z5V_fO5A2zzc9ZuxK0u)<=0) return; 
 local tPPjzJAmXNDxY = BmA9WJFk0s68uTYd2Tfk.getVar("AllRangeEnemy"); 
 local pNhQvtFya4E5hg4sVnfPkY = tPPjzJAmXNDxY.get_obj_vector_size(); 
 for(local _eDsri39mo=0;_eDsri39mo<pNhQvtFya4E5hg4sVnfPkY;_eDsri39mo++)
 {
 local X70vczlKgYHf = tPPjzJAmXNDxY.get_obj_vector(_eDsri39mo); 
 if(X70vczlKgYHf==null) continue; 
 X70vczlKgYHf = sq_GetCNRDObjectToActiveObject(X70vczlKgYHf); 
 local lxm1t7VjvBjgSZmB = BmA9WJFk0s68uTYd2Tfk.getXPos(); 
 local V2FyvBsj2CiWis = BmA9WJFk0s68uTYd2Tfk.getYPos(); 
 local Ka0PP1VkdAdw = X70vczlKgYHf.getXPos(); 
 local uSQZZ7ADWeJnrEwrYH = X70vczlKgYHf.getYPos(); 
 local YyQjZKyt_Ekc9 = sq_Abs(lxm1t7VjvBjgSZmB - Ka0PP1VkdAdw); 
 local FooahO9Eht8qwcjAtOC7Q = sq_Abs(V2FyvBsj2CiWis - uSQZZ7ADWeJnrEwrYH); 
 if(YyQjZKyt_Ekc9>0)
 {
 local oag0Q3udiu = B2N135h61I;
 while (YyQjZKyt_Ekc9<=oag0Q3udiu)
 oag0Q3udiu -= 1;
 
 if(lxm1t7VjvBjgSZmB<Ka0PP1VkdAdw) oag0Q3udiu = oag0Q3udiu/-1;
 if(X70vczlKgYHf.isMovablePos(Ka0PP1VkdAdw+oag0Q3udiu, uSQZZ7ADWeJnrEwrYH)) 
 sq_setCurrentAxisPos(X70vczlKgYHf, 0, Ka0PP1VkdAdw+oag0Q3udiu); 
 }
 if(FooahO9Eht8qwcjAtOC7Q>0)
 {
 local oag0Q3udiu = B2N135h61I;
 while (FooahO9Eht8qwcjAtOC7Q<=oag0Q3udiu)
 oag0Q3udiu -= 1;
 
 if(V2FyvBsj2CiWis<uSQZZ7ADWeJnrEwrYH) oag0Q3udiu = oag0Q3udiu/-1;
 if(X70vczlKgYHf.isMovablePos(Ka0PP1VkdAdw, uSQZZ7ADWeJnrEwrYH+oag0Q3udiu)) 
 sq_setCurrentAxisPos(X70vczlKgYHf, 1, uSQZZ7ADWeJnrEwrYH+oag0Q3udiu); 
 }
 }
} 


 
 
 
 
 
 
 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function setRangeObjectPosEx(IA9fm0HhC7,iWKT4N4mmMLCNosNIyw,euURyulq1cRiVyav3,ZxtJR4DJw4t27qPYmZCthGvX,rsQMPMHCAfOyrRWLh,zV_flniIlWH,rNapnPwKz6j8gF1hst,zMP9MnOX2I1vt4,jACC5ZUmEuvJ)
{
 if(!IA9fm0HhC7) return;
 if(getRangeObject(IA9fm0HhC7,iWKT4N4mmMLCNosNIyw,euURyulq1cRiVyav3,ZxtJR4DJw4t27qPYmZCthGvX,zV_flniIlWH,rNapnPwKz6j8gF1hst,zMP9MnOX2I1vt4,rsQMPMHCAfOyrRWLh)<=0) return; 
 local PbLsrizQaHsSKJ99kQe3rzoc = IA9fm0HhC7.getVar("AllRangeEnemy"); 
 local okIj6ZzIAtcJIpBW = PbLsrizQaHsSKJ99kQe3rzoc.get_obj_vector_size(); 
 for(local _Cm9t3bhwUaFSeyfC2=0;_Cm9t3bhwUaFSeyfC2<okIj6ZzIAtcJIpBW;_Cm9t3bhwUaFSeyfC2++)
 {
 local H9tVZ37WTaSiylRxfBiVg9 = PbLsrizQaHsSKJ99kQe3rzoc.get_obj_vector(_Cm9t3bhwUaFSeyfC2); 
 if(H9tVZ37WTaSiylRxfBiVg9==null) continue; 
 H9tVZ37WTaSiylRxfBiVg9 = sq_GetCNRDObjectToActiveObject(H9tVZ37WTaSiylRxfBiVg9); 
 local Be9XM2ulFu = IA9fm0HhC7.getXPos()+euURyulq1cRiVyav3; 
 local LkS_U57lZ5j = IA9fm0HhC7.getYPos()+ZxtJR4DJw4t27qPYmZCthGvX; 
 local rs8OZkR7lR9pAA98 = H9tVZ37WTaSiylRxfBiVg9.getXPos(); 
 local xLM09EwPguwGBuVcG4 = H9tVZ37WTaSiylRxfBiVg9.getYPos(); 
 local Lag199YeolyBVMXvrl = sq_Abs(Be9XM2ulFu - rs8OZkR7lR9pAA98); 
 local BPB_cqkpvdtGBYQ = sq_Abs(LkS_U57lZ5j - xLM09EwPguwGBuVcG4); 
 if(Lag199YeolyBVMXvrl>0)
 {
 local iWKT4N4mmMLCNosNIyw = jACC5ZUmEuvJ;
 while (Lag199YeolyBVMXvrl<=iWKT4N4mmMLCNosNIyw)
 iWKT4N4mmMLCNosNIyw -= 1;
 
 if(Be9XM2ulFu<rs8OZkR7lR9pAA98) iWKT4N4mmMLCNosNIyw = iWKT4N4mmMLCNosNIyw/-1;
 if(H9tVZ37WTaSiylRxfBiVg9.isMovablePos(rs8OZkR7lR9pAA98+iWKT4N4mmMLCNosNIyw, xLM09EwPguwGBuVcG4)) 
 sq_setCurrentAxisPos(H9tVZ37WTaSiylRxfBiVg9, 0, rs8OZkR7lR9pAA98+iWKT4N4mmMLCNosNIyw); 
 }
 if(BPB_cqkpvdtGBYQ>0)
 {
 local iWKT4N4mmMLCNosNIyw = jACC5ZUmEuvJ;
 while (BPB_cqkpvdtGBYQ<=iWKT4N4mmMLCNosNIyw)
 iWKT4N4mmMLCNosNIyw -= 1;
 
 if(LkS_U57lZ5j<xLM09EwPguwGBuVcG4) iWKT4N4mmMLCNosNIyw = iWKT4N4mmMLCNosNIyw/-1;
 if(H9tVZ37WTaSiylRxfBiVg9.isMovablePos(rs8OZkR7lR9pAA98, xLM09EwPguwGBuVcG4+iWKT4N4mmMLCNosNIyw)) 
 sq_setCurrentAxisPos(H9tVZ37WTaSiylRxfBiVg9, 1, xLM09EwPguwGBuVcG4+iWKT4N4mmMLCNosNIyw); 
 }
 }
} 