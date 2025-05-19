[ancient dungeon] 1			// 如果是古代地下城则为1，否则可以省略
[herosmode enable] 1			// 是否有英雄模式？有为1，无为0

[monsterapc diff table]	`Monster/MonsterApcTableForLorien.tbl`	// 自定义怪物-APC难度表（不写此标签则应用默认文件）

[entering title]  `Title.ani`		// 用作标题的动画。动画中心对准屏幕中央。
[revision table]  `Dungeon/Act1/table/Lorien.tbl` // 指定修正表路径。
[cutscene image]  `CutScene.img` 0	// 剧情动画图片文件名，帧索引
[minimap image]  `MiniMap.img`		// 小地图图片包文件名

// 注意 [worldmap info]：旧版本，[worldmap pattern info]：重制后版本，两者只能选其一。
[worldmap info] 			// 在世界地图上显示的信息
200 302				// 未激活地图的坐标
210 312				// 激活地图的坐标
`Godae.img`				// 用于世界地图的图片包

[worldmap pattern info] 1 5		// 改进后的世界地图顺序：模式类型 模式索引（从1开始）
`WorldMap/Act1/elvengard.img` 0		// 用于世界地图的图片包，包内索引

[boss room entrance condition]		// 进入Boss房间的条件
`[hunt monster]`			// 击杀怪物！！（目前仅此，后续可扩展）
2				// 怪物数量
31 1 1				// 怪物索引 出现数 需击杀数
22 1 1				// 怪物索引 出现数 需击杀数


[minimum required level]  11		// 进入地下城的最低要求等级
[required item] 10003 1 1		// 进入地下城所需物品。索引、数量、是否消耗。消耗为0则不消耗
					// 不指定时可去掉标签或物品索引设为65535
[coin limit] 3			// 地下城内金币使用限制（全队），去掉标签或设为-1则无限制
[character coin limit] 3		// 地下城内个人金币使用限制，去掉标签或设为-1则无限制
[basis level]  4			// 怪物的标准等级
[experience increasing point]  1.3	// 经验值加权
[champion]  10 15 20 30			// 各难度下地下城出现的冠军怪物数量
[item] 				// 地下城通关掉落物品列表
323 30				// 索引，概率
222 15
[/item]
[pathgate object] 			// 通道被动对象索引。无对象为-1
100 101 102				// 왼쪽 일반통로 / 보스통로 / 벽
200 201 202				// 오른쪽 일반통로 / 보스통로 / 벽
300 301					// 위쪽 일반통로 / 보스통로
400 401					// 아래쪽 일반통로 / 보스통로

[maze info] 				// 하나의 미로 정보가 시작된다는 표시.
[quest connection] 0 4003 -1		// 진행0 완료1, 퀘스트 번호, 난이도 ( -1 모든 난이도, 0 노멀, 1 익스, 2 마스터, 3 킹스로드 )
[size]  3 5				// 가로 맵 크기, 세로 맵 크기 (최대 50x50)
[greed] 				// 던전 그리드 모양 표시
`┼┾╅
 ┾╅╂
 ┼╊╉
 ┾╃╂
 ┾┿╃`

[map specification] 			// 특정 그리드에서 나올 맵 리스트의 지정. 지정하지 않은 그리드는 랜덤 선택
1 2					// 좌표 (x, y) 좌표는 좌측 최상단이 0, 0
10001					// 맵 인덱스 리스트들
10002					// 보스 맵으로 선택 가능한 곳이라면 보스 맵일 경우와 아닐 경우의
10003					// 맵 인덱스가 모두 들어있어야 한다.
[/map specification]
[map specification] 			// 필요한 만큼 반복한다.
2 2
10011
[/map specification]
[boss map specification] 			// 해당 맵이 보스맵으로 출현할 때 나올 맵 리스트 지정.
1 2				// 좌표
20011				// 맵 인덱스들
[/boss map specification]
[start map] 			// 시작 맵으로 설정 가능한 그리드의 목록 (x, y)
2 2
1 2
0 0
[/start map]
[boss map] 			// 보스 맵으로 설정 가능한 그리드의 목록 (x, y)
2 3
1 1
[/boss map]
[maze info] 			// 하나의 미로 정보가 시작된다는 표시.
[size]  5 3			// 가로 맵 크기, 세로 맵 크기
[greed] 			// 던전 그리드 모양 표시
`┼┾╅
 ┾╅╂
 ┼╊╉
 ┾╃╂
 ┾┿╃`

[map specification] 			// 특정 그리드에서 나올 맵 리스트의 지정. 지정하지 않은 그리드는 랜덤 선택
1 2				// 좌표 (x, y) 좌표는 좌측 최상단이 0, 0
10001				// 맵 인덱스 리스트들
10002				// 보스 맵으로 선택 가능한 곳이라면 보스 맵일 경우와 아닐 경우의
10003				// 맵 인덱스가 모두 들어있어야 한다.
[/map specification]
[map specification] 			// 필요한 만큼 반복한다.
2 2
10011
[/map specification]
[start map] 			// 시작 맵으로 설정 가능한 그리드의 목록 (x, y)
2 2
1 2
0 0
[/start map]
[boss map] 			// 보스 맵으로 설정 가능한 그리드의 목록 (x, y)
2 3
1 1
[/boss map]

 
[name]  `고대의 동굴`		// 던전의 이름
[explain] 				// 던전의 설명. 줄바꿈 가능.
`고대에 있던 동굴이라네
분위기는 음침 난이도는 B급
등등등...`
 

 





/////////////////////////////////////////////////////////////////////
// 경쟁던전용 데이터들

// 경쟁던전에서 사용할 맵 인덱스
[warroom map index] 1000

// 몬스터 타입 선택확율
[monster type spawn prob] 50 20 20 10	// 일반, 일반챔, 슈퍼챔, 보스

// 몬스터 타입별 소모 자원
[monster type spawn cost] 2 4 6 10		// 일반, 일반챔, 슈퍼챔, 보스


// 스폰되는 일반몬스터들의 인덱스
[spawn common monster index]
1
[/spawn common monster index]

// 스폰되는 일반 챔피언들의 인덱스
[spawn common champion index]
3000
[/spawn common champion index]



// 스폰되는 슈퍼챔피언들의 인덱스
[spawn super champion index]
3001
[/spawn super champion index]

// 스폰되는 보스들의 인덱스
[spawn boss index]
50000
[/spawn boss index]


// 최대스폰단계
[spawn step max] 5

// 스폰단계별 자원풀, [spawn step max]에 지정한 값만큼 지정
[spawn step resource pool]
30
40
50
60
70

// 각종계산에 이용되는 KC상수
[kill count const] 500

// 입장비
[join cost gold] 5000

// 골드 드랍율
[gold drop prob] 50

// 일반몬스터 아이템드롭율
[common monster item drop prob] 10

// 일반챔피언 아이템드롭율
[common champion item drop prob] 20

// 슈퍼챔피언 아이템드롭율
[super champion item drop prob] 40

// 보스 아이템드롭율
[boss item drop prob] 50

// 일반 몬스터 경험치 계산용 상수
[common monster exp const] 500

// 일반 챔피언 경험치 계산용 상수
[common champion exp const] 1000

// 슈퍼 챔피언 경험치 계산용 상수
[super champion exp const] 2000

// 보스 경험치 계산용 상수
[boss exp const] 3000

// 일반 몬스터 아이템 드롭 리스트
[common monster item drop list]
1015
3037
[/common monster item drop list]


// 일반 챔피언 아이템 드롭 리스트
[common champion item drop list]
1015
3038
[/common champion item drop list]

// 슈퍼 챔피언 아이템 드롭 리스트
[super champion item drop list]
1000
1001
[/super champion item drop list]

// 보스 아이템 드롭 리스트
[boss item drop list]
2000
3000
[/boss item drop list]

// 플레이어끼리 죽이고 죽였을때 finishPoint 계산상수
[player kc] 1000

// 전투 제한시간 60000 = 1분
[battle spawn time] 60000
/////////////////////////////////////////////////////////////////////


[evil high level] 100 150 200 250 270  // 고렙용 항마 (65렙이상)
[evil] 100 200 300 400  // 항마 수치 (난이도별)

[evil rate]	        // 항마 최대 최소 비율
0	10		// 0일때 10%의 하한선
200	150		// 200 일때 150%의 상한선


[gold card use] 0 // 해당 던전 클리어시 골드 카드 사용 유무. 0:사용안함 1:사용함