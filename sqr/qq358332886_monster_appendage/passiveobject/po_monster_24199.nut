
function onKeyFrameFlag_po_24199_monster_qq358332886(obj, flagIndex)
{
	if (!obj || flagIndex != 1) return false;

	local parentObj = obj.getParent();
	local apPath = "qq358332886_monster_appendage/monster_appendage/";
	switch (obj.getZPos())
	{
	case 1: apPath += "ap_monster_358332886_1.nut"; break;//ØŞì³÷²
	case 2: apPath += "ap_monster_358332886_2.nut"; break;//?åëĞñì³ã¿
	case 3: apPath += "ap_monster_358332886_3.nut"; break;//çå××îÜ?ŞŞß±
	case 4: apPath += "ap_monster_358332886_4.nut"; break;//Òùì³÷éŞÙ¡¤Ì«ÕÃà¤ä¬
	case 5: apPath += "ap_monster_358332886_5.nut"; break;//øìÕèâ¤øÚÓ¥îúŞÍ
	case 6: apPath += "ap_monster_358332886_6.nut"; break;//øìÕèâ¤øÚÓ¥ØªÛöŞÔ
	case 7: apPath += "ap_monster_358332886_7.nut"; break;//øìÕèâ¤øÚÓ¥?âúŞÔ
	case 8: apPath += "ap_monster_358332886_8.nut"; break;//øìÕèâ¤øÚÓ¥ß¾ĞäãáÓù
	case 9: apPath += "ap_monster_358332886_9.nut"; break;//øìÕèâ¤øÚÓ¥Ì«ÔàÊ«
	case 10: apPath += "ap_monster_358332886_10.nut"; break;//ù¬á¯ü°îÜ?íûíº
	case 11: apPath += "ap_monster_358332886_11.nut"; break;//ØªÍ£ßæÚª
	case 12: apPath += "ap_monster_358332886_12.nut"; break;//ËüŞÍÕµ÷éÑç
	case 13: apPath += "ap_monster_358332886_13.nut"; break;//ğ®ŞÉíşä¹ÕÃĞº
	case 14: apPath += "ap_monster_358332886_14.nut"; break;//ÕÃğºä¬á»÷Ê(ó­êªâúŞÍÕÃğºä¬îÜá¯ü°Úª)
	case 15: apPath += "ap_monster_358332886_15.nut"; break;//ÕÃğºä¬á»÷Ê(ó­êªâúŞÍÕÃğºä¬îÜá¯ü°Úª)
	case 16: apPath += "ap_monster_358332886_16.nut"; break;//ÕÃğºä¬á»÷Ê(ó­êªâúŞÍÕÃğºä¬îÜá¯ü°Úª)
	case 17: apPath += "ap_monster_358332886_17.nut"; break;//ÕÃğºä¬á»÷Ê(ó­êªâúŞÍÕÃğºä¬îÜá¯ü°Úª)
	case 18: apPath += "ap_monster_358332886_18.nut"; break;//é×íºà¸Óìì³
	case 19: apPath += "ap_monster_358332886_19.nut"; break;//ÖÅçöíºè¡ñ¥
	case 20: apPath += "ap_monster_358332886_20.nut"; break;//àäñıü¤ØºÓ¹×ù
	case 21: apPath += "ap_monster_358332886_21.nut"; break;//àäñıü¤ØºÓ¹×ù£¨Ò·â®£©
	case 22: apPath += "ap_monster_358332886_22.nut"; break;//àäñıü¤ØºÓ¹×ù£¨Ò·â®£©
	case 23: apPath += "ap_monster_358332886_23.nut"; break;//àäñıü¤ØºÓ¹×ù£¨İÑŞ«?£©
	case 24: apPath += "ap_monster_358332886_24.nut"; break;//àäñıü¤ØºÓ¹×ù£¨ÜÁûŞÏê£©
	case 25: apPath += "ap_monster_358332886_25.nut"; break;//øìÕèâ¤øÚÓ¥ÏÌØªŞÔ
	case 26: apPath += "ap_monster_358332886_26.nut"; break;//ÖÄØÚäï×ìĞº
	case 27: apPath += "ap_monster_358332886_27.nut"; break;//üéúìñıâ¢ÔşßµÛ×Ì«
	case 28: apPath += "ap_monster_358332886_28.nut"; break;//ù¬?óÇİ¾ãóîÜÔşßµÛ×Ì«
	case 29: apPath += "ap_monster_358332886_29.nut"; break;//øìÕèâ¤øÚÓ¥ãáÓù
	case 30: apPath += "ap_monster_358332886_30.nut"; break;//øìÕèâ¤øÚÓ¥ÜÅ÷×ãáÓù
	case 31: apPath += "ap_monster_358332886_31.nut"; break;//ÕÃğºä¬á»÷Ê
	case 101: apPath += "ap_monster_358332886_101.nut"; break;//îïÑÑáÕÑ¦Ë£Ôàãê
	case 102: apPath += "ap_monster_358332886_102.nut"; break;//Õá?úşø¯Ğô
	case 103: apPath += "ap_monster_358332886_103.nut"; break;//ù¬?æøîÜ?ÕòÑÖ
	case 104: apPath += "ap_monster_358332886_104.nut"; break;//?çÛŞÈÕÑÙµ
	case 105: apPath += "ap_monster_358332886_105.nut"; break;//á³úş?çÛŞÈÕÑÙµ
	case 106: apPath += "ap_monster_358332886_106.nut"; break;//Ë¼ôÑËİâ®
	case 107: apPath += "ap_monster_358332886_107.nut"; break;//÷£ãÓñıÕµ?Óì
	case 108: apPath += "ap_monster_358332886_108.nut"; break;//õ±ÍÔáÜÊ¥?××ÑÖ
	case 109: apPath += "ap_monster_358332886_109.nut"; break;//İÚÏ÷îÜùëøÖ
	case 110: apPath += "ap_monster_358332886_110.nut"; break;//?ÙÓñıÒ®ì³ø¯
	case 111: apPath += "ap_monster_358332886_111.nut"; break;//Í·ì³ÓñÕ¦¡¤Ø¥Ò½ŞÙ Mark-II
	case 112: apPath += "ap_monster_358332886_112.nut"; break;//Í·ì³ÓñÕ¦¡¤Ø¥Ò½ŞÙ Mark-II BackArm L
	case 113: apPath += "ap_monster_358332886_113.nut"; break;//Í·ì³ÓñÕ¦¡¤Ø¥Ò½ŞÙ Mark-II BackArm R
	case 114: apPath += "ap_monster_358332886_114.nut"; break;//Í·ì³ÓñÕ¦¡¤Ø¥Ò½ŞÙ Mark-II Arm L/R
	case 115: apPath += "ap_monster_358332886_115.nut"; break;//İè÷ÔîÜøÖù§
	case 116: apPath += "ap_monster_358332886_116.nut"; break;//øÖù§ûŞâê
	case 117: apPath += "ap_monster_358332886_117.nut"; break;//ë¶ØÎíºä¹ŞÙÕµ
	case 118: apPath += "ap_monster_358332886_118.nut"; break;//ñóäÂñıø¯ì¥ì³İÂãó1
	case 119: apPath += "ap_monster_358332886_119.nut"; break;//ÎÃñıéÏßÀùÃÖÛŞÙ
	case 120: apPath += "ap_monster_358332886_120.nut"; break;//ôÑèÓÍëñ«?÷é×é
	case 121: apPath += "ap_monster_358332886_121.nut"; break;//ËİèÓèİí­Í¯ì³÷å
	case 122: apPath += "ap_monster_358332886_122.nut"; break;//?ûùñıã¿Ò®Óì
	case 123: apPath += "ap_monster_358332886_123.nut"; break;//êÅÎÃØ¼ÜÆíºä¬ãô
	case 124: apPath += "ap_monster_358332886_124.nut"; break;//äŞñıéÏßÀä¹Ò½İïŞÙ
	case 125: apPath += "ap_monster_358332886_125.nut"; break;//ğ¤ğãíºÖÔĞº
	case 126: apPath += "ap_monster_358332886_126.nut"; break;//ğ¤ğãíºÖÔĞº
	case 127: apPath += "ap_monster_358332886_127.nut"; break;//ØåèíÍëñ«
	case 128: apPath += "ap_monster_358332886_128.nut"; break;//ÎÊæğäÂØª : ÷òÎÕíº
	case 129: apPath += "ap_monster_358332886_129.nut"; break;//ë×ùêúşäÂØª
	case 130: apPath += "ap_monster_358332886_130.nut"; break;//ßÈõğØªÔö
	}

	if (apPath != "qq358332886_monster_appendage/monster_appendage/")
	{
		CNSquirrelAppendage.sq_AppendAppendage(parentObj, parentObj, -1, false, apPath, true);
	}

	return true;
}