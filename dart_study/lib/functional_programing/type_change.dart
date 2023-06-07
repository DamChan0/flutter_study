// ignore_for_file: avoid_print

void main(){
  List<String> black = ['a','b','c', 'd', 'd'];

  print(black);
  print(black.asMap())  ;
  print(black.toSet())  ;

  Map blackMap = black.asMap() ;

  print(blackMap.keys.toList());
  print(blackMap.values.toList());

  Set blackSet = Set.from(black);
  print(blackSet);
}