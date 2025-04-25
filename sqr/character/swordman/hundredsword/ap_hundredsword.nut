

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_swordman_hundredsword") 
 appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_swordman_hundredsword") 
}




function onDamageParent_appendage_swordman_hundredsword(BDG7Zw9YR9pEdLh2Q7G, zg2mVaNKGPiNWW0s5DqnmL, Lg5L09fqGboonPtenroLCL, qDL4NHNuixmrwJl)
{
 if(!BDG7Zw9YR9pEdLh2Q7G)return;
 if(qDL4NHNuixmrwJl || !zg2mVaNKGPiNWW0s5DqnmL.isObjectType(OBJECTTYPE_PASSIVE)) return; 
 local AjnzkoolEKmEau0XB24695js = BDG7Zw9YR9pEdLh2Q7G.getParent(); 
 if(!AjnzkoolEKmEau0XB24695js)
 {
 BDG7Zw9YR9pEdLh2Q7G.setValid(false);
 return;
 }
 local g0GMv3d5iEkdhCOzhl7usV = BDG7Zw9YR9pEdLh2Q7G.getVar(); 
 local nUu9DdFE0r = g0GMv3d5iEkdhCOzhl7usV.get_vector(3); 
 local oocz6Geb3YQbb7dTSRo = g0GMv3d5iEkdhCOzhl7usV.get_vector(4); 
 
 if(zg2mVaNKGPiNWW0s5DqnmL.getXPos() != nUu9DdFE0r || zg2mVaNKGPiNWW0s5DqnmL.getYPos() != oocz6Geb3YQbb7dTSRo) return;
 local Qa_spuXWAxM = g0GMv3d5iEkdhCOzhl7usV.get_vector(5); 
 local oFAjNVdp3HXdX8P1 = g0GMv3d5iEkdhCOzhl7usV.get_vector(6); 
 if(Qa_spuXWAxM <= oFAjNVdp3HXdX8P1) 
 {
 g0GMv3d5iEkdhCOzhl7usV.set_vector(5, Qa_spuXWAxM + 1); 
 }
} ;

 
function proc_appendage_swordman_hundredsword(IBrsLswTbV)
{
 if(!IBrsLswTbV)return;
 local UU4hDcn0Ni5R8r5LiIRxhM = IBrsLswTbV.getParent(); 
 local SW_cyH02Ruzv = IBrsLswTbV.getSource(); 
 if(!SW_cyH02Ruzv || !UU4hDcn0Ni5R8r5LiIRxhM)
 {
 IBrsLswTbV.setValid(false);
 return;
 }
 switch(SW_cyH02Ruzv.getState()) 
 {
 case 47: 
 case 48: 
 break;
 case 49: 
 if(sq_GetCurrentFrameIndex(SW_cyH02Ruzv) > 1) 
 {
 IBrsLswTbV.setValid(false);
 return;
 }
 break;
 default:
 IBrsLswTbV.setValid(false);
 return;
 }
 local TutfjFcPna4 = IBrsLswTbV.getTimer().Get(); 
 local HzCNClhEcdGD = 700; 
 local hwNyzdYINo0ly3EclqiCfzd6 = IBrsLswTbV.getVar(); 
 local SG4CErzlf7E = sq_GetUniformVelocity(hwNyzdYINo0ly3EclqiCfzd6.get_vector(2), 70, TutfjFcPna4, HzCNClhEcdGD);
 sq_setCurrentAxisPos(UU4hDcn0Ni5R8r5LiIRxhM, 2, SG4CErzlf7E); 
 local n5NjlGwCcYhG72ebL = sq_GetUniformVelocity(hwNyzdYINo0ly3EclqiCfzd6.get_vector(0), hwNyzdYINo0ly3EclqiCfzd6.get_vector(3), hwNyzdYINo0ly3EclqiCfzd6.get_vector(5), hwNyzdYINo0ly3EclqiCfzd6.get_vector(6)); 
 local KJLwSnWDd5b_ZV_N_5p = sq_GetUniformVelocity(hwNyzdYINo0ly3EclqiCfzd6.get_vector(1), hwNyzdYINo0ly3EclqiCfzd6.get_vector(4), hwNyzdYINo0ly3EclqiCfzd6.get_vector(5), hwNyzdYINo0ly3EclqiCfzd6.get_vector(6)); 
 if(UU4hDcn0Ni5R8r5LiIRxhM.isMovablePos(n5NjlGwCcYhG72ebL, KJLwSnWDd5b_ZV_N_5p)) 
 {
 sq_setCurrentAxisPos(UU4hDcn0Ni5R8r5LiIRxhM, 0, n5NjlGwCcYhG72ebL); 
 sq_setCurrentAxisPos(UU4hDcn0Ni5R8r5LiIRxhM, 1, KJLwSnWDd5b_ZV_N_5p); 
 }
} ;

