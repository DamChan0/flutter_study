// ignore_for_file: avoid_print

void main() {
  int result = addnum(x:20 , z:24);
  print('result = $result');
}

//optional parameter -  없어도 실행가능한 파라매터
//named parameter - 순서상관없이 이름으로 인자를 전달해주는 방식 , required 가 없으면 기본으로 optional 이 된다
int addnum({
  required int x,
   int y= 0,
   int z = 0,
}) => x+y+z;
//arrow 함수 -  => 다음에 오는 것이 반환되는 값이다


