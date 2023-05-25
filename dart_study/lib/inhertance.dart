void main(){
  print('------------Idol-----------------');
Idol apink = Idol(name: '에이핑크', memberCount: 4);

apink.sayMemberCount();
apink.sayName();
  print('--------------boy-----------------');

BoyGroup bts = BoyGroup('bts', 10);
bts.sayMemberCount();
bts.sayName();

print('------------girl-----------------');
GirlGroup ive = GirlGroup('아이브', 6);
  ive.sayMemberCount();
  ive.sayName();
  ive.SayFemale();
print('------------comparison-----------------');
print( ive is Idol);
print(ive is BoyGroup);



}

//상속
class Idol{
  String name;
  int memberCount;
  Idol({
    required this.name,
    required this.memberCount,
});
  void sayName(){
    print('저는 ${this.name}입니다');
  }
  void sayMemberCount(){
    print('${this.name}의 멥버는 ${this.memberCount}명 입니다');
  }
}

class BoyGroup extends Idol {
  //상속시 생성자 맞춰줘야한다
  BoyGroup(String name,
      int memberCount,) : super(
    name: name,
    memberCount: memberCount,
  );
}
  class GirlGroup extends Idol{
  //상속시 생성자 맞춰줘야한다
    GirlGroup(
  String name,
  int memberCount,
  ): super(
  name: name,
  memberCount: memberCount,
  );

    void SayFemale(){
      print('저희는 걸그룹입니다');
    }
}