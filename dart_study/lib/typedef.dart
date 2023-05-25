void main() {
  Operater operater = add;
  int result1 = operater(10, 20, 30);
  print(result1);
   operater = subtract;
  int result2 = calculate(10, 500, 30, add);
  print(result2);

}

typedef Operater = int Function(int x, int y, int z);

// +
int add(int x, int y, int z) => x + y + z;
//뺴기
int subtract(int x, int y, int z) => x - y - z;

//함수의 리턴 값을 파라미터로 넣는다
int calculate(int x, int y,int z, Operater operater) {
  return operater(x,y,z);
}
