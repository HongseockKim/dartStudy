
void asyncFuc(){
  print('dkdkdkdkkdkdk');
  Future<String> name = Future.value('하늘하늘');
  Future<int> number = Future.value(1);
  
  // 지연 2개의 파라미터 값을 받을수 있음
  // 1번 파라미터 얼마나 지연할껀지
  // 2번 파라미터 지연시간이 지나면 실행할 함수
  Future.delayed(Duration(seconds: 2),(){
    print('끝');
  });
  addNumbers(10,20);
}

void addNumbers(int number1, int number2){
  print('계산시작 : $number1 + $number2');

  Future.delayed(Duration(seconds: 2),(){
    print('계산 완료 : $number1 + $number2');
  });
  print('함수 완료');
}