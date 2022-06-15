/*
Dart中的对象操作符:

    ?     条件运算符 （了解）   https://dart.dev/tools/diagnostic-messages#invalid_null_aware_operator        
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

main() {
  // Person p;
  // p?.printInfo();   //已被最新的dart废弃 了解

  //  Person p=new Person('张三', 20);
  //  p?.printInfo();   //已被最新的dart废弃 了解

  //is 类型判断
  Person p = new Person('张三', 20);
  // ignore: unnecessary_type_check
  if (p is Person) {
    p.name = "李四";
  }
  p.printInfo();
  // ignore: unnecessary_type_check
  print(p is Object);

  //as 类型转换
  var p2;

  p2 = '';

  p2 = new Person('张三1', 20);

  // p2.printInfo();老版本会报错，新版本不会
  //使用as强制类型转换
  (p2 as Person).printInfo();

  // ..    级联操作 （连缀）（重点）

  //常规写法
  //  Person p1=new Person('张三1', 20);
  //  p1.name='张三222';
  //  p1.age=40;
  //  p1.printInfo();

  //连缀写法
  Person p1 = new Person('张三1', 20);
  p1.printInfo(); //张三1---20
  p1
    ..name = "李四"
    ..age = 30
    ..printInfo(); //李四---30
}
