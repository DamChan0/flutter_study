void main(){
  List<int> number = [
    1,
    2,
    3,
    4,
    5,
    6,
    8,
    9,
  ];
final result = number.reduce((value, element) {
  print('-------------------------');
  print('prev: $value');
  print('next : $element');
  print('total : ${value+element}');

  return value + element;
});
print(result);
}