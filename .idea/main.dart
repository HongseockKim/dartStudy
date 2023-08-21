enum Status{
  go,
  stope,
  wait
}


void main(){
  List<String> array1 = ['레드베벨','블랙핑크','에이블'];
  List<int> array2 = [1,2,3,4,5,6,7,8];
  print(array1);
  print(array2);
  // map
  Map<String,String> array3 = {
    '해리포터': '해리',
    '해리포터2': '론',
    '해리포터3': '헤르미온느',
  };
  print(array3);
  // Set 은 중복값을 처리해줌
  final Set<String> array4 = {
    'code',
    'code2','code'
  };
  print(array4);
  print(array4.contains('code'));
  // if
  int number = 2;
  if(number % 2 == 0){
    print('겂아 쩍수입니다');
  } else {
    print('겂아 홀수 입니다');
  }

  number % 2 == 0 ? print('삼항 연산자') : print('삼항 연산자2');
  for(int i = 0; i < array1.length; i++){
    print(array1[i]);
  };
  Status status = Status.go;
  print('@@@@@@@@@@@@@@@@');
  print(status);
  print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
  //함수
  addNumbers(5,2,3);

  addNumbers(524,2,3);

  addNumbers(23);

  nameParamFuc(x:20,z:20,y:10);


  int sumValue = nameParamFuc(x:20,y:10);
  print('@@@@@@@@@@@@@@@@@@@');
  print(sumValue);
  print('@@@@@@@@@@@@@@@@@@@');
  int arrowValue = arrowFuc(10);
  print('@@@@@@@@@@@@@@@############');
  print( arrowValue);
  print('@@@@@@@@@@@@@@@############');
  Optionl optionl = add;
  int result = optionl(10,20,30);
  print('오퍼레이션');
  print(result);
  Optionl optionl2 = substarct;
  int result2 = optionl2(10,20,30);
  print(result2);

  int result3 = caculate(100,2,50,add);
  int result4 = caculate(100,2,50,substarct);
  print(result3);
  print(result4);
}

// 세개의 숫자 (x,y,z) 를 더하고 짝수 홀수 구분
// 옵셔널 파라미터
addNumbers(int x, [int y = 0, int z = 0]){
  int sum = x + y + z;
  print('sum : $sum');
  print('x : $x');
  print('y : $y');
  print('z : $z');

  if(sum % 2 == 0){
    print('짝수 입니다');
  } else {
    print('홀수 입니다');
  }
}
// 이름이 있는 파라미터
nameParamFuc({
  required int x,
  required int y,
  int z = 0,
}){
  print('x ; $x');
  print('y ; $y');
  print('z ; $z');
  return x + y + z;
}

// 화살표 함수
int arrowFuc(int x ,[int y = 0, int z = 0]) => x + y + z;


typedef Optionl = int Function(int x, int y, int z);

// 더하기
int add(int x ,int y, int z) => x + y + z;

// 빼기
int substarct(int x ,int y,int z) => x - y + z;

// 계산

int caculate(int x, int y, int z, Optionl optionl){
  return optionl(x, y, z);
}





























