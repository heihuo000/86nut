


function onAfterSetState_gunner_aerialknee(obj, state, datas, isResetTimer)
{
	if (!obj) return;

    local subSkiilId = obj.sq_GetVectorData(datas, 0);//得到傳過來的第0??
    obj.getVar().clear_vector();//清除
    obj.getVar().push_vector(subSkiilId);//?入
}



function onProcCon_gunner_aerialknee(obj)
{
	if (!obj) return;

	local subSkiilId = obj.getVar().get_vector(0);
	if (subSkiilId == 4)//膝撞
		onProcIsSub_My_gunner_stylish(obj)
}