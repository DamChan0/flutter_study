void main(){
Employee dongmin = Employee('동민');
Employee jihee = Employee('지희');
Employee.building = '에이비씨빌딩';
Employee.building = null;
dongmin.printNameandBuilding();
jihee.printNameandBuilding();

}

class Employee{
  // static 은 instance에 귀속 되자않는다 class 에 귀속됨
  static String? building;
  final String name;

  Employee(
      this.name,
      );
  void printNameandBuilding(){
    print('my name is $name. I work in $building');
  }
  static void printbuilding(){
    print('I am working in $building');
  }
}