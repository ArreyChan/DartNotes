/*
给父类默认构造函数传参的方法
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {
  //拓展子类自己的方法和属性
  //子类自己的属性
  late String sex;
  Web(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }
  //子类自己的方法
  run() {
    print("${this.name}---${this.age}--${this.sex}");
  }
}

main() {
  Web w = new Web('张三', 12, "男");

  w.printInfo();

  w.run();
}
