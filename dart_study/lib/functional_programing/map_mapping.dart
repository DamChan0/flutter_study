void main(){
  Map<String, String> harryPoter = {
    '해리' :'harry',
    '론' : 'ron',
    '헤르미온느' : 'hermione'
  };
  final result = harryPoter.map(
      (key, value)=>MapEntry(
        '해리포터 캐릭터 : $key',
        'harryPoter character : $value',

      ),
  );
  print(result);
  final keys = harryPoter.keys.map((x) => 'hp $x').toList();
  print (keys);
  final values = harryPoter.values.map((x)=> 'hp $x').toList();
  print(values);
}