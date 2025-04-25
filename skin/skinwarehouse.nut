DAME_SHAKE_VAR <- 0; //--游戏特效值
//伤害字体设置
FONT_CURRENT_ID <- 0; //--当前字体ID
DAMAGE_FONT_ALPHA <- 255; //--透明度
DAMAGE_FONT_MAX <- 9999999; //--最大伤害值
FONT_ADD_SKILL_INEDX <- 169; //--附加数据技能标识
FONT_ADD_STATIC_START <- 1; //--静态起始位置
FONT_ADD_STATIC_END <- 2; //--静态结束位置
FONT_ADD_DATA_RATE <- 10; //--数据比率（1到10）
ACTIVE_ADD_CONTROL <- 1; //--伤害附加控制（1开，0关）
DAMAGE_FONT_TEXT_RATE <- 100; //--字体大小比率
//非技能快捷栏的技能冷却图标
SKILL_COOLTIME_POS_X <- 537; //坐标X
SKILL_COOLTIME_POS_Y <- 483; //坐标Y
SKILL_COOLTIME_LINE <- 6; //一行显示数量（超过数量向上加一行）
SKILL_COOLTIME_ALPHA <- 200; //透明度
SKILL_COOLTIME_INTERVAL <- 24; //图标间隔距离
SKILL_COOLTIME_WIDERATE <- 80; //图标宽度大小比率
SKILL_COOLTIME_HIGHRATE <- 80; //图标高度大小比率
ANTON_RAID_ITEM <- 10308800; //安图恩副本门票
ANTON_RAID_TOWN <- 34; //安图恩副本城镇ID
//丹青罐物品显示
//一行为一条记录
//index = 物品编号
//count = 数量
//probability = 概率（从大到小排序）
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

//数组尾部标记 { index = 0, count = 0, probability = 0 }
];

//伤害小数点数据处理
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