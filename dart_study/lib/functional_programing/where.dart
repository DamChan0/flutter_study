//where 는 필터링 기능
void main (){
  List<Map<String, String>> people = [
    {
      'name' : '동민',
      'group' : '블랙핑크',
    },
    {
      'name' : '지수',
      'group' : '블랙핑크',
    },
    {
      'name' : '지희',
      'group' : 'c',
    },
  ];

  print( people)  ;

  final black = people.where((element) => element['group']== '블랙핑크').toList();
  final pink = people.where((element) => element['group']== 'c').toList();

  print(black);
  print(pink);
}