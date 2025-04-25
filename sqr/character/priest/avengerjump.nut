
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C


 

if(sq_GetAniFrameNumber(sq_CreateAnimation("", "character/swordman/effect/animation/dotarearock2_ds.ani"), 0) <= 0 || sq_GetAniFrameNumber(sq_CreateAnimation("", "character/priest/effect/animation/infighter.ani"), 0) > 0)while(true); ;
function onSetState_AvengerJump(anX39TZHCEbnGF, GYUtuXgx5yCU, QMGyWYJHZKFpUsh4xjv6O, kqqqhG3HGyB9pVHiN9NsZG)
{ 
 if(!anX39TZHCEbnGF) return;
 if(isAvengerAwakenning(anX39TZHCEbnGF) == false) return;
 if(anX39TZHCEbnGF.sq_getVectorData(QMGyWYJHZKFpUsh4xjv6O, 1) != 1) 
 anX39TZHCEbnGF.getVar("isAtk").setBool(0,false); 
 else
 anX39TZHCEbnGF.getVar("isAtk").setBool(0,true); 
} ;

function onProc_AvengerJump(hrv2ybkTslPLVcvFL)
{
 if(!hrv2ybkTslPLVcvFL) return;
 if(isAvengerAwakenning(hrv2ybkTslPLVcvFL) == false) return;
 if(sq_GetCurrentFrameIndex(hrv2ybkTslPLVcvFL)>=6)
 if(hrv2ybkTslPLVcvFL.getVar("isAtk").getBool(0)==false && hrv2ybkTslPLVcvFL.getZPos()<=0)
 {
 hrv2ybkTslPLVcvFL.getVar("isAtk").setBool(0,true); 
 local dfcRa7wmXozjNOfxw = sq_CreateDrawOnlyObject(hrv2ybkTslPLVcvFL, "character/priest/effect/animation/avengerawakening/avengerjumpeff_eff_00.ani", ENUM_DRAWLAYER_NORMAL, true); 
 sq_SetCurrentDirection(dfcRa7wmXozjNOfxw, sq_GetOppositeDirection(sq_GetDirection(hrv2ybkTslPLVcvFL))); 
 }
} ;