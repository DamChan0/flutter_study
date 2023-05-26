void main(){
TimesTwo tt = TimesTwo(3);
print(tt.calc())  ;

TimesFour t4  = TimesFour(13.4443);
print( t4.calc());
}
//method - function
// override -  우선시하다

class TimesTwo {
  final double num;

  TimesTwo(this.num,);

  double calc() {
    return num * 2;
  }
}
class TimesFour extends TimesTwo{
    TimesFour(
    double num,
    ):super(num);

    @override
    double calc() {
        return super.calc() *4;
    }
  }
