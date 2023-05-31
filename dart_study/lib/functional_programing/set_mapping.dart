void main(){
  Set black = {
    'A','B','C','D',
  };
  final newset = black.map((x)=> 'aaa $x' ).toSet();
  print(newset);
}