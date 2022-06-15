class Person {
  String name;
  num age;
  Person(this.name, this.age);
  printInfo() {
    print("${this.name}---${this.age}");
  }

  work() {
    print("${this.name}在工作...");
  }
}

class Web extends Person {
  Web(String name, num age) : super(name, age);

  //覆写父类的方法
  @override //可以写也可以不写  建议在覆写父类方法的时候加上 @override
  void printInfo() {
    print("姓名：${this.name}---年龄：${this.age}");
  }

  @override
  work() {
    print("${this.name}的工作是写代码");
  }
}

main() {
  Person p = new Person('张三', 30);
  p.printInfo(); //张三---30

  Web w = new Web('李四', 20);

  w.printInfo(); //姓名：李四---年龄：20

  w.work(); //李四的工作是写代码
}
