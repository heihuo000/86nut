
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_mage_dragondance") 
 appendage.sq_AddFunctionName("proc", "proc_appendage_mage_dragondance") 
}



function onStart_appendage_mage_dragondance(GRzQJGJW5YNPU6)
{
 if(!GRzQJGJW5YNPU6)return;
 local jjDF_cJgkTLD1kUSyG = GRzQJGJW5YNPU6.getParent(); 
 if(!jjDF_cJgkTLD1kUSyG)
 {
 GRzQJGJW5YNPU6.setValid(false);
 return;
 }
 GRzQJGJW5YNPU6.getVar("kong").setBool(0, false); 
 GRzQJGJW5YNPU6.getVar("fang").setInt(0, sq_GetDirection(jjDF_cJgkTLD1kUSyG)); 
} ;

 
function proc_appendage_mage_dragondance(nHZGGNKQ_llP0pn2srM7)
{
 if(!nHZGGNKQ_llP0pn2srM7) return;
 local EM0VEIkaQMIrsYv4 = nHZGGNKQ_llP0pn2srM7.getParent(); 
 if(!EM0VEIkaQMIrsYv4)
 {
 nHZGGNKQ_llP0pn2srM7.setValid(false);
 return;
 }
 local BDwiiOrOKxNa9VwUuCJLK = nHZGGNKQ_llP0pn2srM7.getVar().get_ani_vector(0); 
 if(!BDwiiOrOKxNa9VwUuCJLK) 
 {
 if(EM0VEIkaQMIrsYv4.getState() == STATE_DOWN) 
 nHZGGNKQ_llP0pn2srM7.getVar().push_ani_vector(EM0VEIkaQMIrsYv4.getCurrentAnimation()); 
 else
 {
 if(nHZGGNKQ_llP0pn2srM7.getTimer().Get() > 150)
 {
 nHZGGNKQ_llP0pn2srM7.setValid(false); 
 return;
 }
 }
 return; 
 }
 else 
 {
 if(nHZGGNKQ_llP0pn2srM7.getVar("kong").getBool(0) == false) 
 {
 if(EM0VEIkaQMIrsYv4.getZPos() > 0) 
 {
 nHZGGNKQ_llP0pn2srM7.getVar("kong").setBool(0, true); 
 }
 else if(nHZGGNKQ_llP0pn2srM7.getTimer().Get() > 150)
 {
 nHZGGNKQ_llP0pn2srM7.setValid(false); 
 return;
 }
 }
 else if(nHZGGNKQ_llP0pn2srM7.getVar("kong").getBool(0) == true) 
 {
 local ghyhxDvYT2Nm = sq_GetDirection(EM0VEIkaQMIrsYv4); 
 local aV9uuFtDex_j3c = 0.0; 
 if(nHZGGNKQ_llP0pn2srM7.getVar("fang").getInt(0) == ENUM_DIRECTION_RIGHT) 
 {
 if(ghyhxDvYT2Nm == ENUM_DIRECTION_LEFT) 
 aV9uuFtDex_j3c = 40.0; 
 else
 aV9uuFtDex_j3c = 140.0; 
 }
 else
 {
 if(ghyhxDvYT2Nm == ENUM_DIRECTION_LEFT) 
 aV9uuFtDex_j3c = 140.0; 
 else
 aV9uuFtDex_j3c = 40.0; 
 }
 local tSUrCScD1LtlwwKVfQ = -0.0174532 * aV9uuFtDex_j3c; 
 sq_SetCurrentDirection(EM0VEIkaQMIrsYv4, sq_GetOppositeDirection(ghyhxDvYT2Nm)); 
 sq_SetfRotateAngle(BDwiiOrOKxNa9VwUuCJLK, tSUrCScD1LtlwwKVfQ); 
 if(EM0VEIkaQMIrsYv4.getZPos() <= 0) 
 {
 sq_SetfRotateAngle(BDwiiOrOKxNa9VwUuCJLK, 0.0); 
 sq_SetCurrentDirection(EM0VEIkaQMIrsYv4, nHZGGNKQ_llP0pn2srM7.getVar("fang").getInt(0)); 
 nHZGGNKQ_llP0pn2srM7.setValid(false); 
 return;
 }
 }
 }
} ;

