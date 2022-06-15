/*
给父类命名构造函数传参的方法
*/

class Person {
  String name;
  num age;
  Person(this.name, this.age);
  Person.xxx(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {
  late String sex;
  Web(String name, num age, String sex) : super.xxx(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name}---${this.age}--${this.sex}");
  }
}

main() {
  Web w = new Web('张三', 12, "男");

  w.printInfo();

  w.run();
}
