

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_monsterdraw")
}


function proc_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );//����ݫ����	--	APݾ������
	local sourceObj = appendage.getSource ( );//���������	--	�ʥAP����
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );//������׾�������? ��������

	local target = appendage.getVar ( "damagerHPHP" ).get_vector ( 1 );//��ݻܨ�� target ?�����1�������
	local object = sq_GetObjectByObjectId ( parentObj, target );//��������  
	object = sq_GetCNRDObjectToActiveObject ( object );//������׾�������? ����׾����
	local currhp = object.getHp ( );//��ݻܨ�� currhp ?����������٤?
	if ( currhp <= 0 )//������٤?�������0��
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 1 );//���� �����Sta 0����?1
	}
	else//����
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 0 );//���� �����Sta 0����?0
	}

}



function onAttackParent_appendage_monsterdraw(appendage, realAttacker, damagerHP, boundingBox, isStuck)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();//����ݫ����	--	APݾ������
	local sourceObj = appendage.getSource();//���������	--	�ʥAP����
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);//������׾�������? ��������
	

	local object = sq_GetCNRDObjectToActiveObject(damagerHP);
	local id = sq_GetObjectId(object);//����߿��������������Ѧ����
	appendage.getVar("damagerSta").set_vector(1, id);//���� �����Sta �� 1����? �����

}


function onStart_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );
	local sourceObj = appendage.getSource ( );
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );

	appendage.getVar ( "damagerSta" ).clear_vector ( );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );



}
