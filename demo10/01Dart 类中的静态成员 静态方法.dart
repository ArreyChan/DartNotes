/*
Dart中的静态成员:

  1、使用static 关键字来实现类级别的变量和函数

  2、静态方法不能访问非静态成员，非静态方法可以访问静态成员

*/

class Person {
  static String name = '张三';
  //非静态属性
  int age = 20;
  static void show() {
    print(name);
  }

//非静态方法
  void printInfo() {
    /*非静态方法可以访问静态成员以及非静态成员*/
    print(name); //访问静态属性
    print(this.age); //访问非静态属性，this相当于当前new Person这个实例
    show(); //调用静态方法
  }

  //静态方法
  static void printUserInfo() {
    print(name); //静态属性
    show(); //静态方法

    //静态方法没法访问非静态的属性
    //print(this.age);

    //静态方法没法访问非静态的方法
    // this.printInfo();
    // printInfo();
  }
}

main() {
  //静态属性和静态方法的调用，可以不用实例化，直接调用
  print(Person.name);
  Person.show();
  Person.printUserInfo();
  //非静态方法和属性的调用需要进行实例化操作
  Person p = new Person();
  p.printInfo();
}
