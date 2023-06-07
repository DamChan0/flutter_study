// ignore_for_file: avoid_print

void main(){
  List<String> list = ['a','b','c','d'];

  final newList = list.map((x){
    return 'dongmin $x';
  });
  print(newList);
  print(list);
//map 함수를 쓰면 아에다른 리스트가 나온다
  final newList2 = list.map((x) => 'dongmin $x');
  print(newList2);
  print(newList2.toList());
  print(newList2 == newList);
  
  String num= '12345';

  final parsed = num.split('').map((x)=> '$x.jpg').toList();

  print(parsed);

}