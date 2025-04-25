
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function setCustomData_po_DevilStrike1(oOlwK0RqN98OKz,CB23UNGga1UqT)
{
 local _ZEDFVuUQu6_Fi = CB23UNGga1UqT.readDword(); 
 oOlwK0RqN98OKz.getVar("SubType").clear_vector(); 
 oOlwK0RqN98OKz.getVar("SubType").push_vector(_ZEDFVuUQu6_Fi);
 if(_ZEDFVuUQu6_Fi == 1)
 setCurrentAnimationFromCutomIndex(oOlwK0RqN98OKz, 0); 
 else if(_ZEDFVuUQu6_Fi == 2)
 setCurrentAnimationFromCutomIndex(oOlwK0RqN98OKz, 1); 
 local igxCXmKX50sd = CB23UNGga1UqT.readDword(); 
 
 local i9wKNJMubB4nBe = sq_GetCurrentAttackInfo(oOlwK0RqN98OKz);
 sq_SetCurrentAttackBonusRate(i9wKNJMubB4nBe, igxCXmKX50sd);
} ;

function setState_po_DevilStrike1(NmxgC4e_oDH0pfmT5pyCcSF, f4oTwaucBeNeORNe3UEMbgr, y113YjfeSm8JFmGNc)
{
} ;

function procAppend_po_DevilStrike1(NmxgC4e_oDH0pfmT5pyCcSF)
{
 local f4oTwaucBeNeORNe3UEMbgr = NmxgC4e_oDH0pfmT5pyCcSF.getTopCharacter();
 
 if(!f4oTwaucBeNeORNe3UEMbgr)
 {
 sq_SendDestroyPacketPassiveObject(NmxgC4e_oDH0pfmT5pyCcSF);
 return;
 }
 
 local y113YjfeSm8JFmGNc = f4oTwaucBeNeORNe3UEMbgr.getState(); 
 local r7hfVld3LH8JgL = f4oTwaucBeNeORNe3UEMbgr.getSkillSubState();
 local HbqprKvHDk9c7hxZTzrp75 = NmxgC4e_oDH0pfmT5pyCcSF.getCurrentAnimation();
 local tQOWmn3Vwu__2TYozmoTC = HbqprKvHDk9c7hxZTzrp75.GetCurrentFrameIndex();
 local NtTgBxdqmAIF4PvyNuOvB = sq_IsEnd(HbqprKvHDk9c7hxZTzrp75);
 if(NtTgBxdqmAIF4PvyNuOvB) {
 sq_SendDestroyPacketPassiveObject(NmxgC4e_oDH0pfmT5pyCcSF);
 return;
 }
} ;

function onKeyFrameFlag_po_DevilStrike1(FhvE_8FGEhvaSuCg, Tl91ItbxxhR2U)
{
 if(!FhvE_8FGEhvaSuCg) return false;
 local c7E07AUTi6QVSVfN5az = FhvE_8FGEhvaSuCg.getVar("SubType").get_vector(0);
 if(c7E07AUTi6QVSVfN5az == 2)
 switch (Tl91ItbxxhR2U)
 {
 case 0:
 case 1:
 case 2:
 FhvE_8FGEhvaSuCg.resetHitObjectList(); 
 break;
 }
 return true;
} ;


function onDestroyObject_po_DevilStrike1(L48E51sR3yPTZNikkjl, IV3mj8Ew_8HLXj)
{
} ;

