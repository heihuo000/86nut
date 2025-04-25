
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_thief_novaremnant_hitend")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_thief_novaremnant_hitend")
}




function onEnd_appendage_thief_novaremnant_hitend(RbDrK9ySg_Q3h81qY5)
{
 if(!RbDrK9ySg_Q3h81qY5) return;
 local tkwqbnh_6DKOWEvSWO = RbDrK9ySg_Q3h81qY5.getParent();
 if(!tkwqbnh_6DKOWEvSWO )
 {
 RbDrK9ySg_Q3h81qY5.setValid(false);
 return;
 }
 sq_SimpleMoveToNearMovablePos(tkwqbnh_6DKOWEvSWO, 200); 
} 

function proc_appendage_thief_novaremnant_hitend(RbDrK9ySg_Q3h81qY5)
{
 if(!RbDrK9ySg_Q3h81qY5) return;
 local tkwqbnh_6DKOWEvSWO = RbDrK9ySg_Q3h81qY5.getParent();
 local KaJdml3vwiuvAl2E8fdyYl9 = RbDrK9ySg_Q3h81qY5.getSource(); 
 if(!tkwqbnh_6DKOWEvSWO || !KaJdml3vwiuvAl2E8fdyYl9 || KaJdml3vwiuvAl2E8fdyYl9.getState() != 222)
 {
 RbDrK9ySg_Q3h81qY5.setValid(false);
 return;
 }
 local _bi_lZgklAuy = RbDrK9ySg_Q3h81qY5.getVar();
 if(_bi_lZgklAuy.size_vector() <= 0)
 {
 local tRPz2rOJy7um0 = sq_GetAnimationFrameIndex(KaJdml3vwiuvAl2E8fdyYl9.getCurrentAnimation());
 if(tRPz2rOJy7um0 >= 5)
 {
 RbDrK9ySg_Q3h81qY5.getVar().clear_vector(); 
 RbDrK9ySg_Q3h81qY5.getVar().push_vector(tkwqbnh_6DKOWEvSWO.getXPos()); 
 RbDrK9ySg_Q3h81qY5.getVar().push_vector(tkwqbnh_6DKOWEvSWO.getYPos()); 
 RbDrK9ySg_Q3h81qY5.getVar().push_vector(tkwqbnh_6DKOWEvSWO.getZPos()); 
 }
 return;
 }
 local ztzufqId1q44pXH = KaJdml3vwiuvAl2E8fdyYl9.getCurrentAnimation(); 
 local _wFs3STFRtl = sq_GetCurrentTime(ztzufqId1q44pXH) - ztzufqId1q44pXH.getDelaySum(0, 4); 
 local Gh0jlc0eMxX5mO = ztzufqId1q44pXH.getDelaySum(5, 7); 
 
 local RgNXG0q85FYaEWIR8I = sq_GetUniformVelocity(_bi_lZgklAuy.get_vector(0), sq_GetDistancePos(KaJdml3vwiuvAl2E8fdyYl9.getXPos(), KaJdml3vwiuvAl2E8fdyYl9.getDirection(), 120), _wFs3STFRtl, Gh0jlc0eMxX5mO);
 local YE9TRHZT5viIFsq = sq_GetUniformVelocity(_bi_lZgklAuy.get_vector(1), KaJdml3vwiuvAl2E8fdyYl9.getYPos(), _wFs3STFRtl, Gh0jlc0eMxX5mO); 
 sq_setCurrentAxisPos(tkwqbnh_6DKOWEvSWO, 0, RgNXG0q85FYaEWIR8I); 
 sq_setCurrentAxisPos(tkwqbnh_6DKOWEvSWO, 1, YE9TRHZT5viIFsq); 
 local xYaTpWiVTFw = _bi_lZgklAuy.get_vector(2) * sq_SinTable(sq_GetUniformVelocity(90, 180, _wFs3STFRtl, Gh0jlc0eMxX5mO));
 if(xYaTpWiVTFw>=10)
 sq_setCurrentAxisPos(tkwqbnh_6DKOWEvSWO, 2, xYaTpWiVTFw.tointeger()); 
 if(_wFs3STFRtl >= Gh0jlc0eMxX5mO)
 RbDrK9ySg_Q3h81qY5.setValid(false);
} 

