void main() {
  //Numbers
  var a = 0xDEADBEEF;
  var b = 1.42e5;
  double b1 = 1;
  var b2 = a + b1;
  print(a.runtimeType); //int
  print(b.runtimeType); //double
  print(b1); //1.0
  print(b2.runtimeType); //double

  //Strings
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  String s3 = 'It\'s easy to escape the string delimiter.';
  String s4 = "It's even easier to use the other delimiter.";
  print(s1 + s2 + s3 + s4);
  var s5 = '''
  this is s5
  this is s5
  this is s5
  ''';
  print(s5);
  var s6 = 'arrey';
  String s7 = "chan";
  print("$s6 $s7");
  print(s6 + ' ' + s7);
}
