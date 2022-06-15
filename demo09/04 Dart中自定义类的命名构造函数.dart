class Person {
  late String name;
  late int age;
  //默认构造函数
  Person(this.name, this.age);
  //默认构造函数只能写一个，命名构造函数可以写多个，now()和setInfo()都是命名构造函数
  Person.now() {
    print('我是命名构造函数');
  }

  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  var d = new DateTime.now(); //实例化DateTime调用它的命名构造函数
  print(d); //2022-04-06 11:40:29.977323

  Person p0 = new Person.now(); //我是命名构造函数
  Person p1 = new Person('张三', 20); //默认实例化类的时候调用的是 默认构造函数
  p1.printInfo(); //张三----20
  Person p2 = new Person.setInfo('李四', 30);
  p2.printInfo(); //李四----30
}
