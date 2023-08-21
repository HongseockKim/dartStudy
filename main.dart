import 'asyncFuc.dart';

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
  print('2222222222222222');
  Idol myClass = new Idol('아이돌',['ㅈㅂㄷㅈㅂ','ㄷㅂㅈㄷㅂㅈㄷ']);
  myClass.sayHellow();
  myClass.introducer();
  Idol btsClass = new Idol('나의 두번쨰 클래스', ['이건 두번쨰 클래스','홀리쉣']);
  btsClass.sayHellow();
  btsClass.introducer();


  Idol btsClass2 = Idol.MyNames([['222','333'],'eqweqwe']);

  print(btsClass2.name);
  print(btsClass2.members);
  print('@@@@@@@@@@@@@@@@@@@@@@@@');
  print(btsClass2.firstMember);
  btsClass2.firstMember = '새로운 멤버';
  print(btsClass2.firstMember);
  asyncFuc();
}

// getter / setter

// class
class Idol{
  final String name;
  final List<String> members;
  Idol(String name, List<String> members): this.name = name,this.members = members;
  // 이름을 가진 콘스트럭트
  Idol.MyNames(List values)
      : this.members = values[0],
        this.name = values[1];

  void sayHellow(){
    print(this.name);
  }

  void introducer(){
    print(this.members);
  }

  // getter
  String get firstMember{
    return this.members[0];
  }
  // setter

  set firstMember(String newMember){
   this.members[0] = newMember;
  }
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





























