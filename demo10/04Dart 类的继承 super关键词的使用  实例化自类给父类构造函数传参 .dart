class Person {
  late String name;
  late num age;
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

class Web extends Person {
  //父类的构造函数无法继承，需要在子类中创建一个构造函数，使用super将子类实例化传入的参数赋值给父类的构造函数
  Web(String name, num age) : super(name, age) {}
}

main() {
  //父类属性动态转入
  Person p = new Person('李四', 20);
  p.printInfo(); //李四---20

  //子类属性动态传入参数
  Web w = new Web('张三', 12);
  w.printInfo(); //张三---12
}
