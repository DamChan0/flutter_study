// ignore_for_file: avoid_print

void main(){
BoyGroup bts = BoyGroup('bts ');
GirlGroup apink = GirlGroup('apink');

print(bts is IodInterface);
}

abstract class IodInterface {
  String name;
  IodInterface(this.name);

  void sayName();
}

class BoyGroup implements IodInterface{
  String name;
  BoyGroup(this.name);

  void sayName(){
    print('제이름은 $name 입니다.');
  }
}

class GirlGroup implements IodInterface{
  String name;
  GirlGroup(this.name);

  void sayName(){
    print('제이름은 $name 입니다.');
  }
}