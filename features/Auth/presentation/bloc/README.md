# BLoC

foobar_event => 유저의 행동

foobar_state => 행동의 결과

foobar_BloC => 행동을 입력 받아 mutate통해 결과를 State로 변경하여 전달해줌

1.  foobar_event 발생
2.  mutate (서버 요청, 데이터의 변경 등의 행동)
3.  mutate결과를 State로 변경
4.  BlocBuilder로 State를 받아서 widget 변경
