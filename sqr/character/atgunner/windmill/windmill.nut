
//�Y�T�˽檯�A��nut�ޯର���w���ݡC�u�R���w�A�t�~�ݭn�ѥ[�̥i�H�pô��
//�@�̡G�C�t60 QQ506807329   ���{NUT�s�{�g�ޯ� ����о�1500�@��C�t�~1000�ǶO��¦��j���A�`�έק� �Ҧp�G����� �]�� ���ӫ~ �˳� �ƥ� ���� NPC NPK �Ǫ� �d�� act obj  UI�е{�������A���|�i�H���{�C



function onAfterSetState_atgunner_windmill(aTDO99_5mm438pBoYsK6, qBMbiY8TcO7eSp2Uc0aHu, hgK1YVEtFcfVeOGq, mLk3KNLf_CRqaboxmYWUu0)
{
 if (!aTDO99_5mm438pBoYsK6) return;
 local wuCEHJ7aLa8KV = aTDO99_5mm438pBoYsK6.sq_GetVectorData(hgK1YVEtFcfVeOGq, 0); 
 aTDO99_5mm438pBoYsK6.getVar().clear_vector(); 
 aTDO99_5mm438pBoYsK6.getVar().push_vector(wuCEHJ7aLa8KV); 
 local xkk_TY0_4lM5kR3exEzYhF = sq_GetSkillLevel(aTDO99_5mm438pBoYsK6, 250); 
 if(xkk_TY0_4lM5kR3exEzYhF > 0)
 {
 local l3nZWSKeIsYqrqIEde2ezRO = aTDO99_5mm438pBoYsK6.sq_GetLevelData(250, 0, xkk_TY0_4lM5kR3exEzYhF);
 local miUJbfijWv5B6Fj = aTDO99_5mm438pBoYsK6.sq_GetLevelData(250, 1, xkk_TY0_4lM5kR3exEzYhF);
 aTDO99_5mm438pBoYsK6.sq_SetStaticMoveInfo(0, l3nZWSKeIsYqrqIEde2ezRO, l3nZWSKeIsYqrqIEde2ezRO, true);
 aTDO99_5mm438pBoYsK6.sq_SetStaticMoveInfo(1, miUJbfijWv5B6Fj, miUJbfijWv5B6Fj, true);
 aTDO99_5mm438pBoYsK6.sq_SetMoveDirection(aTDO99_5mm438pBoYsK6.getDirection(), ENUM_DIRECTION_NEUTRAL); 
 }
} ;



function onProcCon_atgunner_windmill(Y8MzuLvB5EFfBGpWB)
{
 if (!Y8MzuLvB5EFfBGpWB) return;
 local P5knwlwwNiP2Y9m_NlX3v = Y8MzuLvB5EFfBGpWB.getVar().get_vector(0);
 if (P5knwlwwNiP2Y9m_NlX3v == 3) 
 onProcIsSub_My_atgunner_stylish(Y8MzuLvB5EFfBGpWB);
} ;