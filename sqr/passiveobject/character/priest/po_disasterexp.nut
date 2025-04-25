
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

 
function setCustomData_po_DisasterExp(IHmLz9SPDinn82Cb,AxOWmigouEwh)
{
 local xRdCovnbMnHw26aBznSB = AxOWmigouEwh.readDword(); 
 local LquJ4nwmrnQp2XCwrShMROBZ = sq_GetCurrentAttackInfo(IHmLz9SPDinn82Cb);
 sq_SetCurrentAttackBonusRate(LquJ4nwmrnQp2XCwrShMROBZ, xRdCovnbMnHw26aBznSB);
 
 local Eq3dG3jlSnz64rNd = IHmLz9SPDinn82Cb.getCurrentAnimation();
 
 local G_tL_rhSyGdMs7tdknf8rjx9 = 600.0/400.0; 
 Eq3dG3jlSnz64rNd.setImageRateFromOriginal(G_tL_rhSyGdMs7tdknf8rjx9, G_tL_rhSyGdMs7tdknf8rjx9); 
 Eq3dG3jlSnz64rNd.setAutoLayerWorkAnimationAddSizeRate(G_tL_rhSyGdMs7tdknf8rjx9); 
 sq_SetAttackBoundingBoxSizeRate(Eq3dG3jlSnz64rNd, G_tL_rhSyGdMs7tdknf8rjx9, G_tL_rhSyGdMs7tdknf8rjx9, G_tL_rhSyGdMs7tdknf8rjx9); 
} ;

function setState_po_DisasterExp(vUW4nrsn6XyKQBuooNUB7cIM, PAqu4DbbaakQQURL4, XPVr9Nj9_AULVMW)
{
} ;

function procAppend_po_DisasterExp(vUW4nrsn6XyKQBuooNUB7cIM)
{
 local PAqu4DbbaakQQURL4 = vUW4nrsn6XyKQBuooNUB7cIM.getTopCharacter();
 
 if(!PAqu4DbbaakQQURL4)
 {
 sq_SendDestroyPacketPassiveObject(vUW4nrsn6XyKQBuooNUB7cIM);
 return;
 }
 
 local XPVr9Nj9_AULVMW = PAqu4DbbaakQQURL4.getState(); 
 local Xxwi18OauEHOPo3529 = PAqu4DbbaakQQURL4.getSkillSubState();
 
 local gWzQeJVDFLzhzM0G8IGaS0 = sq_GetCurrentAnimation(vUW4nrsn6XyKQBuooNUB7cIM);
 local Nb9PkOIQHDqsMhXMk6d = gWzQeJVDFLzhzM0G8IGaS0.GetCurrentFrameIndex();
 local bGedAOcCgyJ3uMv337c46iR = sq_IsEnd(gWzQeJVDFLzhzM0G8IGaS0);
 
 
 if(bGedAOcCgyJ3uMv337c46iR)
 {
 sq_SendDestroyPacketPassiveObject(vUW4nrsn6XyKQBuooNUB7cIM);
 return;
 }
} ;


function onDestroyObject_po_DisasterExp(svRoRiCdkbVq2JR3k, XeTl6WS5K97k8)
{
} ;

