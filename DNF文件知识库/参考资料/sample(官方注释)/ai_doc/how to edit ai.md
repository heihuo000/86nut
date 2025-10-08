# how to edit ai.rtf

**原文件路径**: `C:\Users\sen\Desktop\nut脚本\86nut\DNF文件知识库\参考资料\sample(官方注释)\ai_doc\how to edit ai.rtf`  
**文件类型**: .RTF  
**提取时间**: 2025-10-08 19:59:18,777

---

## 文档内容

==============================================================================
==============================================================================

1. * .ai 이것은 무엇인가?

ai캐릭터가 어떤 행동을 할지 결정하도록 프로그래밍하는 스크립트이다.

마치 c언어로 프로그래밍 하는 것과 비슷하게 프로그래밍이 가능하다. (물론 훨씬 많이 불편하지만 -_-)


==============================================================================
==============================================================================


2. * .ai 의 종류

.ai 파일은 용도별로 나누어져있습니다. 간단히 소개하겠습니다.

  2.1. Action.ai
	이것은 공격, 버프 등의 행위를 시키기 위해서 사용됩니다.
	이것의 리턴값은 .aic (AI C haracter) 파일의
	[key stream] 에 지정된 키입력파일들과 1:1 로 매칭되어 그것을 실행하는데 사용됩니다.

  2.2. DestinationSelect.ai
	이것은 이동할 목적지를 고르는 패턴을 결정하기 위해서 사용됩니다.
	이것의 리턴값은 미리코딩되어있는 [목적지결정패턴] 을 나타내는 숫자입니다.
	(하단 목적지결정방법 별 숫자표 참조)
		- 상세한 내용은 `destination select.rtf`를 참조하세요

  2.3. Event.ai
	이것은 어떤 이벤트가 일어났을때 어떤 행동을 할지 결정하기 위해서 사용됩니다.
	이것의 리턴값은 .aic (AI C haracter) 파일의
	[key stream] 에 지정된 키입력파일들과 1:1 로 매칭되어 그것을 실행하는데 사용됩니다.

  2.4. MoveMethod.ai
	이것은 목적지로 이동할때 어떻게 이동할지 고르기 위해 사용됩니다.
	리턴값은 점프하면서 갈지, 대쉬로 갈지, 걸어갈지 등을 결정합니다.
	(하단 이동방법 별 숫자표 참조)

==============================================================================
==============================================================================


3. 조건변수들의 소개
조건 변수를 입력할 때 `는 생략 가능합니다

3.1. `[void]`	    = 입력이 없음
3.2. `[mind]`	    = 미구현
3.3. `[hp]`		    = 현재의 체력
3.4. `[mp]`		    = 현재의 마력
3.5. `[warlike]`	    = 호전성
3.6. `[target distance]` = 현재 타겟과의 픽셀거리
3.7. `[random]`	    = 0 ~ 99 까지의 랜덤값 (계속 바뀜!!)
3.8. `[last result]`	    = 마지막 연산결과 (몇몇 특정한 함수들이 여기로 값을 넣어준다.)
3.9. `[weapon type]`	    = 무기의 종류 를 나타낸다.
		      melee = 귀검, 격가, 프리스트, 배틀메이지 = 0
		      range = 거너, 마법사류 = 1

3.10. `[target state]` = 현재 타겟의 상태 (stand, sit, down, damage, jump 등등)
		   상태마다 정해진 번호가 있음 (하단의 상태별 숫자표 참조)

3.11. `[state]`	 = 현재의 상태 (stand, sit, down, damage, jump 등등)
		   상태마다 정해진 번호가 있음 (하단의 상태별 숫자표 참조)

3.12. `[event]`	 = 이벤트의 종류 (damage, attack 등)
		   상태마다 정해진 번호가 있음 (하단의 이벤트별 숫자표 참조)

3.13. `[attack success]` = 공격 성공 여부(공격 시 - Event.ai)
사용방법) [think] [attack success] 1

3.14. `[hit]` = 피격 당했는지의 여부(데미지 입을 때 - Event.ai)
사용방법) [think] [hit] 1

3.15. `[element]` = 맞거나 때린 데이지의 속성(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [element] `속성`

3.16. `[casting]` = 캐스트 스킬 사용 여부(스킬 사용시 - Event.ai)
사용방법) [think] [casting] 1

3.17. `[distance]` = 상대방과의 거리 체크(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [distance] `거리`

3.18. `[my active status]` = 내 상태 변화를 체크(지속적으로 - Action.ai)
사용방법) [think] [my active status] `상태변화`

3.19. `[my state]` = 내 상태를 체크(지속적으로 - Action.ai)
사용방법) [think] [my state] `상태`

3.20. `[target state]` = 상대방의 상태을 체크(공격이나 데미지 입을 때 - Event.ai, 지속적으로 - Action.ai)
사용방법) [think] [target state] `상태`

3.21. `[my active status on]` = 내 상태 변화를 체크(상태 변화 시에만 - Event.ai)
사용방법) [think] [my active status on] `상태변화`

3.22. `[target active status]` = 상대방의 상태변화를 체크(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [target active status] `상태변화`

3.23. `[attack type]` = 내 공격 형태를 체크(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [attack type] `타입`

3.24. `[target type]` = 상대방의 공격 형태를 체크(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [target type] `타입`

3.25. `[attack condition]` = 내 타격 조건을 체크(공격이나 데미지 입을 때 - Event.ai)
사용방법) [think] [attack condition] `타격조건`

3.26. `[use skill]` = 특정 스킬을 사용하는 지 체크(스킬 사용시 - Event.ai)
사용방법) [think] [use skill] 스킬인덱스

3.27. `[stat change]` = hp나 mp를 비교(지속적으로 - Action.ai)
사용방법) [think] [stat change] [hp/mp] `비교방법` 수치

3.28. `[cooltime]` = 쿨 타임을 지정(지정되면 적용됨 - Action.ai, Event.ai)
사용방법) [think] [cooltime] 수치
		[true] [return] 1
	- [true]에서 [return]이 적용될 때 [cooltime]이 적용됨
	- [cooltime]은 [return]바로 앞에 나오는 [think]에서 정의되어야 적용됨

3.29. `[my death]` = 내가 죽었을 때을 체크(내가 죽을때 - Event.ai)
사용방법) [think] [my death] 1

3.30. `[target death]` = 상대방의 죽었는가를 체크(상대방이 죽을때 - Event.ai)
사용방법) [think] [target death] 1

3.31. `[revive]` = 내가 부활했는가를 체크(내가 부활할 때 - Event.ai)
사용방법) [think] [revive] 1

3.32. `[combo]` = 콤보 수치를 비교(공격 시 - Event.ai)
사용방법) [think] [combo] `비교방법` 수치

3.33. `[aerial]` = 에어리얼 콤보 수치를 비교(공격 시 - Event.ai)
사용방법) [think] [aerial] `비교방법` 수치

3.34. `[overkill]` = 상대방이 오버킬로 죽었는지를 체크(상대방이 죽을때 - Event.ai)
사용방법) [think] [overkill] 1

3.35. [set friend character] = 아군 캐릭터를 설정(DestinationSelect.ai)
사용방법) [set friend character] {AI캐릭터번호}

3.36. [set target monster] = 타겟 몬스터를 설정(DestinationSelect.ai)
사용방법) [set target monster] {몬스터번호} {팀(`enemy` or `neutral` or `friend`)}

3.37. [set friend object] = 아군 오브젝트를 설정(DestinationSelect.ai)
사용방법) [set friend object] {오브젝트번호}

3.38. [set bound] = APC의 이동 범위를 지정(DestinationSelect.ai)
사용방법) [set bound] {앞방향시야거리} {뒤방향시야거리} {위방향시야거리} {아래방향시야거리}

3.39. [auto attack direction] = 키 입력시 APC의 방향의 자동으로 적을 향할 것인지의 여부를 설정함
	기본값은 1이며, 작동을 막아놓음
사용방법) [auto attack direction] {1 or 0}

3.40. [my attack] = 공격시 APC의 스킬을 체크함
사용방법) [my attack] {스킬번호}

3.41 [my hp down] = hp가 감소하는 순간을 체크함
사용방법) [my hp down] {`+` or `%`} {수치값}
사용예) [my hp down] `%` 90

3.41 [my mp down] = mp가 감소하는 순간을 체크함
사용방법) [my mp down] {`+` or `%`} {수치값}

3.42 [check use skill] = 특정 스킬을 사용 가능한지 체크함
사용방법) [check use skill] {스킬번호}

3.43 [check skill on] = 특정 스킬의 온/오프 상태를 확인할 수 있다
- [check skill on]을 이용하여 체크 가능한 스킬 리스트는 "on off skill list.rtf" 파일을 참조한다

사용방법) [check skill on] {스킬번호}
사용예)		[think] [check skill on] 52	// 살의의 파동의 온/오프 여부를 체크한다
			[true]	// 살의의 파동이 켜져 있으면
				[return] `a`
			[false]	// 살의의 파동이 꺼져 있으면
				[return] `s`
		[/think]


==============================================================================
==============================================================================


4. 연산 함수들의 소개


`>=`
예) `[hp]` `>=` 1000.0
    현재 체력이 1000 보다 크거나 같으면 true

`%>=`
설명) 현재치와 최대치로 입력되는 조건값의 경우 %로 큰지 알아내는데 사용한다.
  예) `[hp]` `%>=` 20.0
      현재체력이 최대체력의 20% 보다 크거나 같으면 true

`==`
예) `[hp]` `==` 99.0
    현재 체력이 99 와 같으면 true

`%==`

`>`

`%>`

`<=`

`%<=`

`<`

`%<`

`check random()`
설명) 랜덤한 확율체크를 한다.
  예) `[void]` `check random()` 30.0 100.0
      30% 확율로 true

`check bonus random()`
설명) 성공확율에 지정한 보너스를 더하여 랜덤한 확율체크를 한다.
  예) `[warlike]` `check bonus random()` 30.0 100.0
      30 + 호전성의 확율로 true

`is in range()`
예) `[hp]` `is in range()` 100.0 500.0
    현재 체력이 100 보다 같거나 크고 500.0 보다 작거나 같으면 true

`get random()`
예) `[void]` `get random()` 0.0 100.0
    [last result] 에 0 ~ 99 까지의 랜덤값을 집어넣는다.

`is target in attack area()`
예) `[void]` `is target in attack area()` 100.0(앞) 15.0(뒤) 50.0(위) 50.0(아래)
    현재 타겟이 앞, 뒤, 위, 아래 로 지정한 영역에 있으면 true

`enemy number of in attack area()`
예) `[void]` `enemy number of in attack area()` 100.0(앞) 15.0(뒤) 50.0(위) 50.0(아래)
    앞, 뒤, 위, 아래 로 지정한 영역에 있는 적들의 숫자가 [last result] 에 들어감.

`is the skill in cooltime()`
예) `[void]` `is the skill in cooltime()` 46.0
    46번 스킬이 현재 쿨타임중이라면 true

`number of in attack area()`
사용방법) [void] `number of in attack area()`  {앞} {뒤} {위} {아래} {`enemy`/`neutral`/`friend`/`all`} {`monster`/`character`/`apc`/`passive object`/`summon`/`all`} {인덱스(-1이면 체크안함) or 이름}
인덱스나 이름은 `character`일 경우에는 직업을 쓰면 됩니다(직업명은 OperatingValue.lst 참고)

 'is target object in area()'
 *지정된 범위 혹은 맵 전체에 있는 타겟을 지정한다
사용방법)
[void] `is target object in area()` {범위체크 사용 유무} {앞} {뒤} {위} {아래} {인덱스} {선택방법}
 *범위체크 사용 유무는 1과 0중 하나를 입력 받습니다. 1일 경우 뒤의 앞,뒤,위,아래의 값을 참고하여 범위안의 인덱스 오브젝트를 찾습니다. 0일경우 맵 전체에서 찾습니다.
 *선택방법은 0:디폴트 1:가까운거 2:랜덤 입니다. 0은 거리와 상관없이 먼저 찾아진거,1은 가까운것,2는 랜덤입니다.


==============================================================================
==============================================================================


* 예제로 배우는 .ai = 난이도 : 프로그래머 레벨 5 수준 (만렙은 99)

/Script/AICharacter/cuwaki/ai/action.ai 를 예로 들겠습니다.

[ai pattern]
	`공격/버프 등 여러가지 액션패턴`	// 이 ai 의 목적

	`[think]` `[void]` `enemy number of in attack area()` 160.0 30.0 20.0 20.0	// 이 범위 안에 있는 적들의 숫자를 센다.

		`[think]` `[last result]` `==` 0.0	// 적이 없다
		`[true]` `[return]` -1			// 아무것도 안함

		`[false]`
			`[think]` `[last result]` `==` 1.0	// 적이 1마리
			`[true]` 
				`[think]` `[void]` `get random()` 0.0 100.0
					`[think]` `[last result]` `>=` 50.0	// 50% 확율로
					`[true]` `[return]` 4			// 어퍼
					`[false]` `[return]` 3			// 피폭
			`[false]`
				`[think]` `[last result]` `>=` 3.0	// 적이 3마리 이상
				`[true]` `[return]` 3			// 3 번 키입력 실행 - 피폭발

				`[false]` // 2마리라면
					`[think]` `[void]` `get random()` 0.0 100.0
						`[think]` `[last result]` `>=` 50.0	// 50% 확율로
						`[true]` `[return]` 1			// 0 번 키입력 실행 - 어퍼슬래쉬
						`[false]` `[return]` 2			// 1 번 키입력 실행 - 귀참

[/ai pattern]


==============================================================================
==============================================================================


* 상태별 숫자표 (모두 실수로 해야함)

0.0	// stand
1.0	// sit
2.0	// sit forever
3.0	// damage
4.0	// down
5.0	// die
6.0	// jump
7.0	// jump attack
8.0	// attack
9.0	// hold
10.0	// throw
11.0	// dash
12.0	// dash attack
13.0	// get item
14.0	// buff


==============================================================================
==============================================================================


* 이벤트별 숫자표 (모두 실수로 해야함)

0.0 = 내가 적을 공격 성공시
1.0 = 내가 적에게 맞았을 시
2.0 = 

==============================================================================
==============================================================================


* 목적지 결정 방식
 - DestinationSelect.ai에서 return 값에 대응되는 목적지 결정방식은 아래와 같습니다

0	타겟추적하기
1	타겟과 일정 거리 유지하기
2	타겟으로부터 도망가기
3	타겟 주변을 맴돌기
4	그냥 떠돌기
5	특정 아군 캐릭터로 이동하기
6	특정 몬스터로 이동하기
7	특정 아군 캐릭터 주변에서 움직이기
8	특정 아군 오브젝트 주변에서 움직이기
9	특정 몬스터 주변에서 움직이기
10	우회 추척
11	타겟과 일정 거리 유지하기(랜덤 값 적용) 
12	특정 타겟 추적하기(is target object in area() 에서 찾은 오브젝트를 추적)
13	가장 가까운 아군 몬스터 추적하기
14.	타겟과 거리 유지하기 확장버전( [keep range distance with target] 과 함께 쓰임)
15.	타겟과 거리 유지하기 확장버전( [keep range distance with target 1] 과 함께 쓰임)
16.	타겟과 거리 유지하기 확장버전
17.	타겟과 거리 유지하기 확장버전
18.	타겟과 거리 유지하기 확장버전
19 	적의 후방을 보도록 추적한다(정면에 있다면 굳이 뒤로 돌아가 등을 보려고 한다.)
20 	적과 일직선 상에 있으면 위나 아래로 회피
21	도망칠 때 우선적으로 y축 상단이나 하단으로 도망친다
22	위 아래로 지그재그로 움직인다
23	적 주변으로 일정 거리를 유지하며 뭉친다. (한 곳에 뭉치지 않고 서로 간격을 유지하며, 적과도 일정거리를 유지한다)
24 	근처 타겟 패시브 오브젝트 뒤로 숨는다.
25	적이 안보이는 곳으로 도망친 후, y축 위/아래로 피한다
26	양쪽 벽에서 벗어나기

==============================================================================
==============================================================================


* 이동방법 별 숫자표 (모두 실수)

0.0 	걸어가기
1.0	대쉬로 가기


==============================================================================
==============================================================================

`slow`		0
`freeze`	1
`poison`	2
`stun`		3
`curse`		4
`blind`		5
`lightning`	6
`stone`		7
`sleep`		8
`burn`		9
`weapon break`	10
`bleeding`	11
`haste`		12
`bless`		13
`element`	14
`confuse`	15
`hold`		16
`armor break`	17
`any`		18
`all`		100
 

---

*此文档由文档提取工具自动生成，用于AI学习和分析*
