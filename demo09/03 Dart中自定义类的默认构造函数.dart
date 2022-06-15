class Year {
  //默认构造函数，方法名与类名相同
  Year() {
    print('这是构造函数里面的内容  这个方法在实例化的时候触发');
  }
}

//简单应用
class Person {
  //Dart中需要初始化不可为null的实例字段，如果不初始化的话需要在属性前面加上late
  late String name;
  late int age;
  //默认构造函数常规写法
  //   Person(String name,int age){
//       this.name=name;
//       this.age=age;
//   }
  //默认构造函数的简写
  Person(this.name, this.age);
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  Year y = new Year(); //这是构造函数里面的内容  这个方法在实例化的时候触发
  //类可以实例化多次，如下p1,p2
  Person p1 = new Person('张三', 20);
  p1.printInfo();

  Person p2 = new Person('李四', 25);
  p2.printInfo();
}
