# 컴퓨터 공학 기초 실험 2 보고서

## 실험제목: Traffic Light Controller with/without

## Left Turn Signals

## 실험일자: 20 21 년 10 월 18 일 (월)

## 제출일자: 20 21 년 10 월 23 일 (토)

## 학 과: 컴퓨터정보공학부

## 담당교수: 공진흥 교수님

## 실습분반: 월요일 0, 1, 2

## 학 번: 2018202046

## 성 명: 이준휘


1. 제목 및 목적

```
A. 제목
Traffic Light Controller with/without Left Turn Signals
B. 목적
해당 수업을 통해 신호등을 제어하는 logic을 구현한다. 이를 통해 Final state machine에
따라 설계할 수 있다. 논리회로를 짜면서 카르노맵이나 퀸-매클러스키 알고리즘을 이용하
여 논리식을 정리할 수 있다.
```
2. 원리(배경지식)
    i. Traffic Light Controller 작동방식
       - 신호등을 제어하는 Logic
       - La(2bits)와 Lb(2bits)는 각각의 길의 신호등을 의미한다.
       - Ta(1bits)와 Tb(1bits)는 각각의 길의 차량이 있는지 감지하는 센서다.
       - 신호는 교통이 없을 때 초록에서 노랑을 거쳐 빨간색으로 변한다.

```
ii. Traffic Light Controller FSM State Transition Diagram
```

iii. Traffic Light Controller FSM Encoded State Transition Table
**Current state Input Next state**
Q 1 Q 0 Ta Tb D 1 D 0
0 0 0 X 0 1
0 0 1 X 0 0
0 1 X X 1 0
1 0 X 0 1 1
1 0 X 1 1 0
1 1 X X 0 0

- D1 = Q1 & ~Q0 | ~Q1 & Q0 = Q 1 ^ Q
- D0 = ~Q1 & ~Q 0 & ~Ta | Q1 & ~Q0 & ~Tb

iv. Traffic Light Controller FSM output table
**Current state Outputs**
Q 1 Q 0 La 1 La0 Lb1 Lb
0 0 0 0 1 0
0 1 0 1 1 0
1 0 1 0 0 0
1 1 1 0 0 1

- La1 = Q
- La0 = ~Q1 & Q
- Lb1 = ~Q
- Lb0 = Q1 & Q

```
v. Traffic Light Controller FSM schematic
```
```
vi. Traffic Light Controller with Left Turn Signals 작동 방식
```
- 신호등을 제어하는 Logic
- 신호등 La(2bits)와 Lb(2bits)는 차량 통행을 제어하는 신호등
- 차량이 없을 경우 초록불에서 노란불로 바뀐 후 우회전 초록불로 바뀐
    다. 우회전 차량도 없을 경우 노란불로 바뀐 후 빨간불로 바뀐다


- Ta(1bit), Tal(1bit), Tb, Tbl는 각각의 길의 직진 또는 좌회전 신호를 기다
    리는 차량을 감지하는 센서다.

```
vii. Traffic Light Controller with Left Turn Signals FSM State Transition Diagram
```
viii. Traffic Light Controller with Left Turn Signals FSM State Transition Table
**Current state Input Next state**
Ta Tal Tb Tbl
S 0 0 X X X S
S 0 1 X X X S
S1 X X X X S
S2 X 1 X X S
S2 X 0 X X S
S3 X X X X S
S4 X X 1 X S
S4 X X 0 X S
S5 X X X X S
S6 X X X 1 S
S6 X X X 0 S
S7 X X X X S





(^0 1 2 3 4 5 6 7 32 33 34 35 40 41 42 43 64 65 68 69 72 73 76 77 96 98 )
0
(^10)
2
(^10)
4
(^10)
6
(^10)
8
(^11)
000 0
00 —- 0 O^ O^ O^ O^ O^ O^ O^ O^
(^00) - 00 – O^ O^ O^ O^ O^ O^ O^ O^
00 - - O^ O^ O^ O^ O^ O^ O^ O^
(^0) - 010 – O O O O O O O O

- 10 -
0 - 0

```
O O O O O O O O
```
(^1) - 000 -
0
O O O O O O O O
(^1) —- 0
00
O O O O O O O O
(^1010) —
0
O O O O O O O O
— 0000
0
O O O O

### D0 = ~Q2 & ~Q1 & Q0’ & TA’ | ~Q2 & Q1 & ~Q0 & ~TAL | Q2 & ~Q1 & ~Q0’

### & ~TB | Q2 & Q1 & ~Q0 & ~TBL

```
x. Quine Mcclusky Algorithm of D
```









## xii. Traffic Light Controller with Left Turn Signals FSM Output Encoded Table

- Q 2 Q 1 Q 0 TA TAL TB TBL D 2 D 1 D
   - 0 0 0 0 X X X
   - 0 0 0 1 X X X
   - 0 0 1 X X X X
   - 0 1 0 X 0 X X
   - 0 1 0 X 1 X X
   - 0 1 1 X X X X
   - 1 0 0 X X 0 X
   - 1 0 0 X X 1 X
   - 1 0 1 X X X X
   - 1 1 0 X X X
   - 1 1 0 X X X
   - 1 1 1 X X X X
      - ix. Quine-Mcclusky Algorithm of D
   - D1 = ~Q1 & Q0 | Q1 & ~Q0 = Q1 ^ Q
- xi. Quine-Mcclusky Algorithm of D
         - D2 = ~Q2 & Q1 & Q0 | Q2 & ~Q1 | Q2 Q1 ~Q
   - Q 2 Q 1 Q 0 La 1 La0 Lb1 Lb Current state Outputs
      -
      -
      -
      -
      -
      -
      -
      -
            - La
- q0 q2 q1
-
-
         - La0 = Q 0 | Q
            - La
- q0 q2 q1
-
-
         - La1 = Q2 | ~Q0 & Q
            - Lb
- q0 q2 q1
-
-
         - Lb0 = ~Q 2 | Q
            - Lb


q0 q2 q1 00 01 11 10
0 1 1 1 0
1 1 1 0 0
Lb1 = ~Q 2 | ~Q0 & Q 1

3. 설계 세부사항
    i. _dff_r
       해당 모듈은 r(reset_n)의 값에 의해 신호를 초기화 할 수 있는 Resettable D
       Flip-Flop이다. 해당 모듈은 저번시간에 만든 Async로 동작해야 하기 때문에 저
       번 시간에 만든 _dff_r_async를 수정하여 만들었다. clk의 posedge나 set_n 또는
       reset_n이 negedge일 때 동작할 수 있도록 always 문을 걸어준다. 그 후 reset_n
       이 0 일 경우 0 을, set_n이 0 일 경우 1 을, 이외의 경우에는 d를 출력하도록 한다.

```
ii. _register2_async
해당 모듈은 2 개의 Register가 Async 방식으로 동작하는 모듈이다. 해당 모듈은
_dff_r을 2 개를 사용하여 각각의 입력과 출력에 연결함으로써 구성하였다.
```
```
iii. _register3_async
해당 모듈은 3 개의 Register가 Async 방식으로 동작하는 모듈이다. 해당 모듈은
_dff_r을 3 개를 사용하여 각각의 입력과 출력에 연결함으로써 구성하였다.
```
```
iv. ns_logic
해당 모듈은 2 개가 제작되었다. 하나는 직진 신호만 존재하는 FSM, 다른 하나는
좌회전 신호가 존재하는 FSM을 위해 제작되었다. 각각의 모듈은 위에서 계산한
식을 바탕으로 gates.v 파일에 있는 모듈을 통해 다음 신호를 계산하는 모듈이
다. 단 Not gate의 경우 너무 많은 양으로 인해 ~기호로 대체하여 사용하였다.
```
```
v. o_logic
해당 모듈은 2 개가 제작되었다. 하나는 직진 신호만 존재하는 FSM, 다른 하나는
좌회전 신호가 존재하는 FSM을 위해 제작되었다. 각각의 모듈은 위에서 계산한
식을 gates.v 파일에 있는 모듈을 통해 output 신호를 계산하는 모듈이다. 단
Not gate의 경우 너무 많은 양으로 인해 ~기호로 대체하여 사용하였다.
```
```
vi. tl_cntr / tl_cntr_w_left
```

```
해당 모듈은 각각의 FSM을 최종적으로 완성하는 모듈이다. register의 입력은
wire q_n로, 출력은 q으로 한다. 그리고 ns_logic은 q, Ta, Tb를 입력으로 받아
Q_n으로 바꾼다. o_logic은 현재 상태인 q를 입력으로 받아 La, Lb를 바꾼다.
```
4. 설계 검증 및 실험 결과

A. 시뮬레이션 결과

```
해당 testbench는 tl_cntr를 검증한다. 차량이 없을 경우 신호는 계속 순환한다. 그리고 차
량이 있을 경우 차량이 없을 때까지 신호를 유지하다 바꾸는 모습을 볼 수 있다.
```
```
해당 testbench는 tl_cntr를 검증한다. 차량이 없을 경우 신호는 계속 순환한다. 그리고 차
량이 있을 경우 차량이 없을 때까지 신호를 유지하다 바꾸는 모습을 볼 수 있다.
```

B. 합성(synthesis) 결과
tl_cntr

```
tl_cntr
```

### 해당 모듈의 설계를 확인하면 각각의 모듈이 정상적으로 설계되어 연결되었음을 알 수

### 있다.

C. FPGA board targeting 결과

5. 고찰 및 결론

```
A. 고찰
이번 주차의 과제는 제작 과정에서는 특별한 어려움은 없었다. 다만 보고서를 쓰는 과정
에서 Quine_Mcclusky 알고리즘을 이용해서 결과를 도출하는 과정이 오래 걸렸다. 또한
과제가 여러 개 겹친 상황에 시험 기간이여서 시간 내에 진행하는 데에 어려움을 느꼈다.
```
```
B. 결론
해당 실험을 통해 FSM을 통해 직접 회로를 설계할 수 있다. 또한 Quine-Mcclusky 알고
리즘을 활용하여 Boolen 식을 간소화할 수 있다. 그리고 register를 회로에 직접 사용할
수 있다.
```
6. 참고문헌

```
이준환 교수님/디지털논리회로 1 /광운대학교(컴퓨터정보공학부)/2021
이준환 교수님/디지털논리회로2/광운대학교(컴퓨터정보공학부)/2021
```

