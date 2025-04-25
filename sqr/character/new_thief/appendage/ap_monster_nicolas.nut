
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_monster_nicolas") 
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_thief_monster_nicolas") 
 appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_thief_monster_nicolas") 
 appendage.sq_AddFunctionName("onSourceKeyFrameFlag", "onSourceKeyFrameFlag_appendage_thief_monster_nicolas") 
}




function onSourceKeyFrameFlag_appendage_thief_monster_nicolas(P17_Ie67RvIkHnpfoMfPp0, XfsYmB3qtYof_mmblqAAafN)
{
 if(!P17_Ie67RvIkHnpfoMfPp0) return false;
 local PNzQS9_bU5yEsnnqmdlFbqaG = P17_Ie67RvIkHnpfoMfPp0.getParent();
 if(!PNzQS9_bU5yEsnnqmdlFbqaG)
 {
 P17_Ie67RvIkHnpfoMfPp0.setValid(false);
 return;
 }
 local bVmQuWvhf_Wxxh5USOXaV = sq_GetCNRDObjectToSQRCharacter(P17_Ie67RvIkHnpfoMfPp0.getVar("sqrChr").get_obj_vector(0)); 
 if(!bVmQuWvhf_Wxxh5USOXaV)return true;
 if(PNzQS9_bU5yEsnnqmdlFbqaG.getState() == 8)
 switch(PNzQS9_bU5yEsnnqmdlFbqaG.getAttackIndex())
 {
 case 8:
 switch(XfsYmB3qtYof_mmblqAAafN)
 {
 case 10000:
 sq_CreateDrawOnlyObject(PNzQS9_bU5yEsnnqmdlFbqaG, "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/attack_blackground.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(PNzQS9_bU5yEsnnqmdlFbqaG), bVmQuWvhf_Wxxh5USOXaV.sq_GetBonusRateWithPassive(224, 8, 0, 1.0)); 
 if(PNzQS9_bU5yEsnnqmdlFbqaG.isMyControlObject()) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteDword(224);
 sq_BinaryWriteDword(1);
 sq_BinaryWriteDword(bVmQuWvhf_Wxxh5USOXaV.sq_GetBonusRateWithPassive(224, 8, 2, 1.0)); 
 sq_BinaryWriteDword(bVmQuWvhf_Wxxh5USOXaV.sq_GetLevelData(224, 3, sq_GetSkillLevel(bVmQuWvhf_Wxxh5USOXaV, 224))); 
 sq_BinaryWriteDword(bVmQuWvhf_Wxxh5USOXaV.sq_GetLevelData(224, 4, sq_GetSkillLevel(bVmQuWvhf_Wxxh5USOXaV, 224))); 
 sq_SendCreatePassiveObjectPacket(PNzQS9_bU5yEsnnqmdlFbqaG, 24378, 0, 0, 0, 0, PNzQS9_bU5yEsnnqmdlFbqaG.getDirection());
 }
 break;
 case 4:
 sq_SetCurrentAttackBonusRate(sq_GetCurrentAttackInfo(PNzQS9_bU5yEsnnqmdlFbqaG), bVmQuWvhf_Wxxh5USOXaV.sq_GetBonusRateWithPassive(224, 8, 1, 1.0)); 
 break;
 }
 return true;
 case 7:
 switch(XfsYmB3qtYof_mmblqAAafN)
 {
 case 0:
 sq_AddDrawOnlyAniFromParent(PNzQS9_bU5yEsnnqmdlFbqaG, "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_smokenormal.ani", 0, 0, 0); 
 break;
 case 1:
 if(bVmQuWvhf_Wxxh5USOXaV.isMyControlObject() && bVmQuWvhf_Wxxh5USOXaV.isDownSkillLastKey()) 
 {
 sq_BinaryStartWrite();
 sq_BinaryWriteWord(3); 
 sq_BinaryWriteDword(sq_GetGroup(PNzQS9_bU5yEsnnqmdlFbqaG)); 
 sq_BinaryWriteDword(sq_GetUniqueId(PNzQS9_bU5yEsnnqmdlFbqaG)); 
 sq_SendChangeSkillEffectPacket(bVmQuWvhf_Wxxh5USOXaV, 224); 
 }
 else
 {
 sq_CreateDrawOnlyObject(PNzQS9_bU5yEsnnqmdlFbqaG, "monster/newmonsters/thief/nicolas/animation/effect/blackarachnia/start_blackground.ani", ENUM_DRAWLAYER_BOTTOM, true); 
 }
 break;
 }
 return true;
 }
 return false;
} 


function onAttackParent_appendage_thief_monster_nicolas(rgBkTbq4k6UkzBoJ8J, M9h61NKxgPZW6llDxf2O0, edenLzFww0, PggYiVzG3S, RcQM0wGz58SV73X)
{
 if(!rgBkTbq4k6UkzBoJ8J) return;
 local ygIrbZQk436rkmXB = rgBkTbq4k6UkzBoJ8J.getParent();
 if(!ygIrbZQk436rkmXB)
 {
 rgBkTbq4k6UkzBoJ8J.setValid(false);
 return;
 }
 
 if(ygIrbZQk436rkmXB.getState() == 8)
 switch(ygIrbZQk436rkmXB.getAttackIndex())
 {
 case 8:
 
 if(sq_GetAnimationFrameIndex(sq_GetCurrentAnimation(ygIrbZQk436rkmXB)) < 7)
 {
 if(!CNSquirrelAppendage.sq_IsAppendAppendage(edenLzFww0, "character/new_thief/nicolasblackarachnia/ap_nicolasblackarachnia.nut")) 
 {
 local AGIMZlEfPCLXzi = ygIrbZQk436rkmXB.getMyPassiveObjectCount(24378); 
 for(local zzfhdmHUV8CB4W1btGR = AGIMZlEfPCLXzi-1; zzfhdmHUV8CB4W1btGR >=0; zzfhdmHUV8CB4W1btGR-=1)
 {
 local frxrV5JHNObWFcKB = ygIrbZQk436rkmXB.getMyPassiveObject(24378, zzfhdmHUV8CB4W1btGR); 
 if(frxrV5JHNObWFcKB && frxrV5JHNObWFcKB.getVar("skill").get_vector(0) == 224) 
 {
 if(sq_IsHoldable(ygIrbZQk436rkmXB, edenLzFww0) && sq_IsGrabable(ygIrbZQk436rkmXB, edenLzFww0) && !sq_IsFixture(edenLzFww0))
 {
 local rgBkTbq4k6UkzBoJ8J = CNSquirrelAppendage.sq_AppendAppendage(edenLzFww0, ygIrbZQk436rkmXB, 224, true, "character/new_thief/nicolasblackarachnia/ap_nicolasblackarachnia.nut", true); 
 sq_HoldAndDelayDie(edenLzFww0, ygIrbZQk436rkmXB, true, true, false, 0, 0, ENUM_DIRECTION_NEUTRAL, rgBkTbq4k6UkzBoJ8J); 
 rgBkTbq4k6UkzBoJ8J.sq_SetValidTime(frxrV5JHNObWFcKB.getVar().getInt(0)); 
 frxrV5JHNObWFcKB.getVar("atkobj").push_obj_vector(edenLzFww0); 
 }
 break;
 }
 }
 }
 }
 break;
 }
} 


