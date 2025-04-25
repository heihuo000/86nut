
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



 
PASSIVE_OBJECT_INDEX_APPENDAGE_ATMAGE_ELEMENTALFIELD <- 
[
 24221, 
 24218, 
 24212, 
 24244, 
 24241, 24242 
];

 
PASSIVE_OBJECT_INDEX_ARRAYS_APPENDAGE_ATMAGE_ELEMENTALFIELD <- 
[
 [24225, 24226], 
 [24241, 24242], 
 [24252, 24253] 
];

 
STATE_INDEX_TABLE_APPENDAGE_ATMAGE_ELEMENTALFIELD <-
{
 [STATE_DARK_CHANGE] = true 
};


function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_atmage_elementalfield")
 appendage.sq_AddFunctionName("proc", "proc_appendage_atmage_elementalfield")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_atmage_elementalfield")
 appendage.sq_AddFunctionName("onStartMap", "onStartMap_appendage_atmage_elementalfield")
}

function onStart_appendage_atmage_elementalfield(dVYcNc9a7RzvMZcLIwj)
{
 if(!dVYcNc9a7RzvMZcLIwj) return;
 local WNNmJKXZ8yU4RY8wDvMPK27 = dVYcNc9a7RzvMZcLIwj.getParent();
 if(!WNNmJKXZ8yU4RY8wDvMPK27)
 {
 dVYcNc9a7RzvMZcLIwj.setValid(false);
 return;
 }
 local dxP2lKSlfA8iM6Y6EieLNhXa = dVYcNc9a7RzvMZcLIwj.getVar().get_obj_vector(0); 
 if(dxP2lKSlfA8iM6Y6EieLNhXa) 
 dxP2lKSlfA8iM6Y6EieLNhXa.setValid(false); 
 dxP2lKSlfA8iM6Y6EieLNhXa = sq_CreateDrawOnlyObject(WNNmJKXZ8yU4RY8wDvMPK27, "character/mage/effect/animation/atelementalfield/buffbottom_00.ani", ENUM_DRAWLAYER_BOTTOM, true);
 if(dxP2lKSlfA8iM6Y6EieLNhXa)
 {
 dVYcNc9a7RzvMZcLIwj.getVar().clear_obj_vector(); 
 dVYcNc9a7RzvMZcLIwj.getVar().push_obj_vector(dxP2lKSlfA8iM6Y6EieLNhXa); 
 }
} ;

function onStartMap_appendage_atmage_elementalfield(B74PVUwp1h)
{
 onStart_appendage_atmage_elementalfield(B74PVUwp1h);
} ;

function proc_appendage_atmage_elementalfield(B74PVUwp1h)
{
 if(!B74PVUwp1h) return;
 local Wp5xWEER1lYn77EGo1qZc1yH = B74PVUwp1h.getParent();
 if(!Wp5xWEER1lYn77EGo1qZc1yH)
 {
 B74PVUwp1h.setValid(false);
 return;
 }
 local Pu4_oeBhaVMEmOM5 = B74PVUwp1h.getTimer().Get(); 
 local BmumNWaLZiLblx4u3Vd = B74PVUwp1h.getAppendageInfo().getValidTime(); 
 local UAuP9GeRePaeGL5UmK = B74PVUwp1h.getVar().get_obj_vector(0); 
 if(UAuP9GeRePaeGL5UmK)
 {
 UAuP9GeRePaeGL5UmK.setCurrentPos(Wp5xWEER1lYn77EGo1qZc1yH.getXPos(), Wp5xWEER1lYn77EGo1qZc1yH.getYPos(), 0); 
 local OA8hC4ZLkCdvFEb1epnj = BmumNWaLZiLblx4u3Vd - Pu4_oeBhaVMEmOM5; 
 if(OA8hC4ZLkCdvFEb1epnj <= 200) 
 {
 local cOU9NUPWhgIe = UAuP9GeRePaeGL5UmK.getCurrentAnimation(); 
 if(!cOU9NUPWhgIe)return;
 local AHcssTiVDPKrb = 200; 
 local fKXf1kmu1lyBh9i2vT = AHcssTiVDPKrb - OA8hC4ZLkCdvFEb1epnj; 
 local TCPvKNX9rTMJVj = sq_GetUniformVelocity(255, 0, fKXf1kmu1lyBh9i2vT, AHcssTiVDPKrb); 
 cOU9NUPWhgIe.setRGBA(255, 255, 255, TCPvKNX9rTMJVj); 
 local nAc1USTkF26 = sq_AniLayerListSize(cOU9NUPWhgIe); 
 for(local d7YPewCMYba2h7os = 0; d7YPewCMYba2h7os < nAc1USTkF26; d7YPewCMYba2h7os++)
 {
 local eRpbpInbcMnVxBxSmY1 = sq_getAniLayerListObject(cOU9NUPWhgIe, d7YPewCMYba2h7os); 
 if(eRpbpInbcMnVxBxSmY1) eRpbpInbcMnVxBxSmY1.setRGBA(255, 255, 255, TCPvKNX9rTMJVj); 
 }
 }
 }
 
 checkPassiveObjectAndChrState_appendage_atmage_elementalfield(Wp5xWEER1lYn77EGo1qZc1yH);
} ;


function onEnd_appendage_atmage_elementalfield(kWix2gOqnzUJ6QKXC0j18e)
{
 if(!kWix2gOqnzUJ6QKXC0j18e) return;
 local YDc6k6IJbhxxKXHQvlDTp = kWix2gOqnzUJ6QKXC0j18e.getVar().get_obj_vector(0); 
 if(YDc6k6IJbhxxKXHQvlDTp) 
 YDc6k6IJbhxxKXHQvlDTp.setValid(false); 
} ;


 
function checkPassiveObjectAndChrState_appendage_atmage_elementalfield(kWix2gOqnzUJ6QKXC0j18e)
{
 if(!kWix2gOqnzUJ6QKXC0j18e) return;
 
 
 foreach(value in PASSIVE_OBJECT_INDEX_APPENDAGE_ATMAGE_ELEMENTALFIELD)
 {
 local YDc6k6IJbhxxKXHQvlDTp = kWix2gOqnzUJ6QKXC0j18e.getMyPassiveObjectCount(value); 
 for(local wr4nkP_IBP8HIPnou3 = 0; wr4nkP_IBP8HIPnou3 < YDc6k6IJbhxxKXHQvlDTp; wr4nkP_IBP8HIPnou3++)
 {
 local I8jR6005kCmdmx3Ao1XYNJ = kWix2gOqnzUJ6QKXC0j18e.getMyPassiveObject(value, wr4nkP_IBP8HIPnou3); 
 setElement_appendage_atmage_elementalfield(I8jR6005kCmdmx3Ao1XYNJ); 
 }
 }
 
 foreach(value in PASSIVE_OBJECT_INDEX_ARRAYS_APPENDAGE_ATMAGE_ELEMENTALFIELD)
 {
 local nSs2e62rwPFUhEQNnkTnFf = value[0]; 
 local TsRMyifhZDoNZSB = value[1]; 
 local YDc6k6IJbhxxKXHQvlDTp = kWix2gOqnzUJ6QKXC0j18e.getMyPassiveObjectCount(nSs2e62rwPFUhEQNnkTnFf); 
 for(local wr4nkP_IBP8HIPnou3 = 0; wr4nkP_IBP8HIPnou3 < YDc6k6IJbhxxKXHQvlDTp; wr4nkP_IBP8HIPnou3++)
 {
 local I8jR6005kCmdmx3Ao1XYNJ = kWix2gOqnzUJ6QKXC0j18e.getMyPassiveObject(nSs2e62rwPFUhEQNnkTnFf, wr4nkP_IBP8HIPnou3); 
 if(I8jR6005kCmdmx3Ao1XYNJ)
 {
 setElement_appendage_atmage_elementalfield(I8jR6005kCmdmx3Ao1XYNJ); 
 local kZZnc0KSQY9M6YMqEi = I8jR6005kCmdmx3Ao1XYNJ.getMyPassiveObjectCount(TsRMyifhZDoNZSB); 
 for(local DD8akZDrtsjGb = 0; DD8akZDrtsjGb < kZZnc0KSQY9M6YMqEi; DD8akZDrtsjGb++)
 {
 local vhCYhsbfiWXayD = I8jR6005kCmdmx3Ao1XYNJ.getMyPassiveObject(TsRMyifhZDoNZSB, DD8akZDrtsjGb); 
 setElement_appendage_atmage_elementalfield(vhCYhsbfiWXayD); 
 }
 }
 }
 }
 
 if(STATE_INDEX_TABLE_APPENDAGE_ATMAGE_ELEMENTALFIELD.rawin(kWix2gOqnzUJ6QKXC0j18e.getState())) 
 {
 setElement_appendage_atmage_elementalfield(kWix2gOqnzUJ6QKXC0j18e); 
 }
} ;

 
function setElement_appendage_atmage_elementalfield(wFIP1mA9lyqJj)
{
 if(!wFIP1mA9lyqJj) return;
 
 local ZEJlR93Xfq3u0L_E3MG4q = sq_GetCurrentAttackInfo(wFIP1mA9lyqJj);
 if(ZEJlR93Xfq3u0L_E3MG4q) 
 {
 if(!ZEJlR93Xfq3u0L_E3MG4q.isValidElement(ENUM_ELEMENT_FIRE)) ZEJlR93Xfq3u0L_E3MG4q.setElement(ENUM_ELEMENT_FIRE); 
 if(!ZEJlR93Xfq3u0L_E3MG4q.isValidElement(ENUM_ELEMENT_WATER)) ZEJlR93Xfq3u0L_E3MG4q.setElement(ENUM_ELEMENT_WATER); 
 if(!ZEJlR93Xfq3u0L_E3MG4q.isValidElement(ENUM_ELEMENT_DARK)) ZEJlR93Xfq3u0L_E3MG4q.setElement(ENUM_ELEMENT_DARK); 
 if(!ZEJlR93Xfq3u0L_E3MG4q.isValidElement(ENUM_ELEMENT_LIGHT)) ZEJlR93Xfq3u0L_E3MG4q.setElement(ENUM_ELEMENT_LIGHT); 
 }
} ;


