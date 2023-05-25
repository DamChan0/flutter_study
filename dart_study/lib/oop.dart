void main(){
_Idol pro =  _Idol(
  '블랙핑크',
  ['안녕','나는','동민','이야']
);
_Idol pro3 = _Idol.fromList(
[
  ['python','c','cpp','dart'],
  '프로그래밍언어'
]
);

print(pro.fristMambers);
print(pro3.fristMambers);
pro3.firstMambers = '김동민';
pro.firstMambers = '안녕';
print(pro.fristMambers);
print(pro3.fristMambers);



}
//name(변수)
//members(변수)
//hello(함수)
//introduce(함수)

//immutable
class _Idol{
  final String name ;
  final List<String> members ;

  _Idol(this.name, this.members );
  _Idol.fromList(List values):
      this.members = values[0],
      this.name = values[1];

  void sayHello(){
    print('안녕하세요 ${this.name}');

  }
  void introduce(){
    print('안녕하세요 저희 멤버는 ${this.members} 입니다');
  }
  //getter
  String get fristMambers{
    return this.members[0];
  }
  set firstMambers(String name){
    this.members[0] = name;
  }
}