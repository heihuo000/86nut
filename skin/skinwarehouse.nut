DAME_SHAKE_VAR <- 0; //--��Ϸ��Ч��E
//�˺���������
FONT_CURRENT_ID <- 0; //--��ǰ����ID
DAMAGE_FONT_ALPHA <- 255; //--͸����
DAMAGE_FONT_MAX <- 9999999; //--�����˺�ֵ
FONT_ADD_SKILL_INEDX <- 169; //--���������ݼ��ܱ��
FONT_ADD_STATIC_START <- 1; //--��̬��ʼλ��
FONT_ADD_STATIC_END <- 2; //--��̬����λ��
FONT_ADD_DATA_RATE <- 10; //--���ݱ��ʣ�1��10��
ACTIVE_ADD_CONTROL <- 1; //--ҁE��˺����ӿ��أ�1����0�أ�
DAMAGE_FONT_TEXT_RATE <- 100; //--�����С����
//�Ǽ��ܿ�E����ļ�����ȴͼ��ESKILL_COOLTIME_POS_X <- 537;//����X
SKILL_COOLTIME_POS_Y <- 483; //����Y
SKILL_COOLTIME_LINE <- 6; //һ���������������������ϼ�һ��
SKILL_COOLTIME_ALPHA <- 200; //͸����
SKILL_COOLTIME_INTERVAL <- 24; //ͼ��E��ü丁ESKILL_COOLTIME_WIDERATE <- 80;//ͼ��E���С����
SKILL_COOLTIME_HIGHRATE <- 80; //ͼ��Eߴ�С����
ANTON_RAID_ITEM <- 10308800; //��ͼ���ű���Ʊ
ANTON_RAID_TOWN <- 34; //��ͼ���ű�����ID
//����΁E�������ʾ
//һ��Ϊһ́E//index = ΁E���E//count = ����
//probability = ����(�ɴ�С����E
DANJINJAR_ITEM_INFO <- [{
	index = 3037,
	count = 10,
	probability = 3.52
},
{
	index = 3340,
	count = 10,
	probability = 2.22
},
{
	index = 3330,
	count = 10,
	probability = 1.25
},
{
	index = 3326,
	count = 10,
	probability = 1.10
},
{
	index = 26058,
	count = 1,
	probability = 0.01
},
{
	index = 3340,
	count = 10,
	probability = 1.0
},
{
	index = 3037,
	count = 10,
	probability = 2.0
},
{
	index = 3330,
	count = 10,
	probability = 3.0
},
{
	index = 3242,
	count = 10,
	probability = 4.0
},
{
	index = 1232,
	count = 10,
	probability = 5.0
},
{
	index = 3037,
	count = 10,
	probability = 6.0
},
{
	index = 3330,
	count = 10,
	probability = 7.0
},
{
	index = 1232,
	count = 10,
	probability = 8.0
},
{
	index = 26058,
	count = 1,
	probability = 1.50
},
{
	index = 3037,
	count = 10,
	probability = 3.52
},
{
	index = 3340,
	count = 10,
	probability = 2.22
},
{
	index = 3330,
	count = 10,
	probability = 1.25
},
{
	index = 3326,
	count = 10,
	probability = 1.10
},
{
	index = 26058,
	count = 1,
	probability = 0.01
},
{
	index = 3340,
	count = 10,
	probability = 1.0
},
{
	index = 3037,
	count = 10,
	probability = 2.0
},
{
	index = 3330,
	count = 10,
	probability = 3.0
},
{
	index = 3242,
	count = 10,
	probability = 4.0
},
{
	index = 1232,
	count = 10,
	probability = 5.0
},
{
	index = 3037,
	count = 10,
	probability = 6.0
},
{
	index = 3330,
	count = 10,
	probability = 7.0
},
{
	index = 1232,
	count = 10,
	probability = 8.0
},
{
	index = 26058,
	count = 1,
	probability = 1.50
},
{
	index = 3037,
	count = 10,
	probability = 3.52
},
{
	index = 3340,
	count = 10,
	probability = 2.22
},
{
	index = 3330,
	count = 10,
	probability = 1.25
},
{
	index = 3326,
	count = 10,
	probability = 1.10
},
{
	index = 26058,
	count = 1,
	probability = 0.01
},
{
	index = 3340,
	count = 10,
	probability = 1.0
},
{
	index = 3037,
	count = 10,
	probability = 2.0
},
{
	index = 3330,
	count = 10,
	probability = 3.0
},
{
	index = 3242,
	count = 10,
	probability = 4.0
},
{
	index = 1232,
	count = 10,
	probability = 5.0
},
{
	index = 3037,
	count = 10,
	probability = 6.0
},
{
	index = 3330,
	count = 10,
	probability = 7.0
},
{
	index = 1232,
	count = 10,
	probability = 8.0
},
{
	index = 26058,
	count = 1,
	probability = 1.50
},

//��β������E	{ index = 0, count = 0, probability = 0 }
];

//�˺�С������������
function getCommonDamageFontAddInfo(obj, number) {
	local AddArray = [];
	for (local i = FONT_ADD_STATIC_START; i <= FONT_ADD_STATIC_END; i++) {
		local IntVar = obj.sq_GetIntData(FONT_ADD_SKILL_INEDX, i) / FONT_ADD_DATA_RATE;
		if (IntVar > 0) {
			local addVar = (IntVar / 100.0 * number).tointeger();
			if (addVar == 0) addVar = 1;
			AddArray.append(addVar);
		}
	}
	return AddArray;
}