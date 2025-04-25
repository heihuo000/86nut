
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); 
function onGetMyPassiveObject_My(E4bfx7uQzohHz9o2AtmldE,BdUS7iApQxJ,T88mtZZDWBF11K, QOvjxC_E1Gd8o)
{
 local MHsELPXEUamxKcMQYPu0t = E4bfx7uQzohHz9o2AtmldE.getMyPassiveObjectCount(BdUS7iApQxJ); 
 for (local r3ffQb7DLAQ1E7kj98d = 0; r3ffQb7DLAQ1E7kj98d < MHsELPXEUamxKcMQYPu0t; r3ffQb7DLAQ1E7kj98d++)
 {
 local weK03cRk9RLovfSiyc8fxCl = E4bfx7uQzohHz9o2AtmldE.getMyPassiveObject(BdUS7iApQxJ, r3ffQb7DLAQ1E7kj98d); 
 if(!weK03cRk9RLovfSiyc8fxCl) continue; 
 if (weK03cRk9RLovfSiyc8fxCl.getVar("skill").get_vector(0) == T88mtZZDWBF11K)
 {
 if (QOvjxC_E1Gd8o)
 {
 if(QOvjxC_E1Gd8o == weK03cRk9RLovfSiyc8fxCl.getVar("subType").get_vector(0))
 return weK03cRk9RLovfSiyc8fxCl;
 }
 else
 return weK03cRk9RLovfSiyc8fxCl;
 }
 }
 return null;
} 
