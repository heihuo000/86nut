﻿[MOTION]
[BASE ANI] `../Animation_Kinol/throw.ani`
[/MOTION]
[TRIGGER]
[FRAME] 2 2 // 帧编号从2到2
[DO BEHAVIOR] [ME] 0
[/TRIGGER]
[BEHAVIOR]
	[MASTER APPENDAGE] 5000 300 [ENEMY TEAM]
		[physical attack] [%] 100.0
		[attack speed] [%] 100.0 
		[move speed] [%] 100.0
	[/MASTER APPENDAGE]
[/BEHAVIOR]