﻿[blood monster] //몬스터인덱스,소환전(5초전)에 나타날 연출 오브젝트의 인덱스,x,y,z좌표,얼마동안 리스폰 될것인가, 
리스폰 숫자가 증가하는 타이밍(1000이 1초),블러드 시작시 소환되는 몬스터 숫자, 
몬스터 리스폰 숫자가 늘어나는 정도, 몬스터가 증가할 총 횟수
60000 3535 100 100 0 20000 1000 5 1 10 //0
60001 3535 200 200 0 20000 2000 10 3 5 //1
60002 3535 300 300 0 20000 1000 10 2 6 //2
56003 3535 400 400 0 5000 -1 -1 1 1 //3
[/blood monster]





[blood phase time] //몇번째 라운드 인지, 블러드 몬스터의 리스트 인덱스(-1은 리스트안에서 랜덤으로..),
//다음 라운드로 이동할 시간 (-1이면 마지막 블러드 지정, 클리어 되게…,몇배 강해질 것인가?(2면 2배,최대 4배)
0 0 10000 1
1 1 10000 1
2 1 50000 1
3 2 2000 1
4 -1 2000 1
5 3 -1 1
[/blood phase time]




아직까지는
소환 5초전에 나타날 연출 오브젝트의 인덱스
몇배 강해질 것인가
크레이지 몬스터 시스템

이렇게 구현이 힘듭니다.   참고해 주세요.
