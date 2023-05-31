void main(){
  Lecture<String, String> lecture1 = Lecture('112', "lecture1");
  lecture1.printType()  ;
  Lecture<int, String> lecture2 = Lecture(123, 'aaa');
  lecture2.printType();

}
//generic = 타입을 외부에서 받을 때 사용

class Lecture<T ,X> {
  final T id;
  final X name;
  Lecture(this.id, this.name);

  void printType(){
    print(id.runtimeType);
    //runtimeType => id 가 실행될떄 어떤 타입인지 알려줌
  }
}