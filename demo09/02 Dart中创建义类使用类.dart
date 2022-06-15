/*

Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类
方法名用驼峰，类名首字母大写
*/
//自定义类
class Person {
  //属性
  String name = "张三";
  int age = 23;
  //方法
  void getInfo() {
    //访问Person类里面的属性两种方法
    // print("$name----$age");
    print("${this.name}----${this.age}");
  }

  void setInfo(int age) {
    this.age = age;
  }
}

void main() {
  //写法一：实例化

  var p1 = new Person();
  print(p1.name); //张三
  p1.getInfo(); //张三----23
  p1.setInfo(18);
  p1.getInfo(); //张三----18
//写法二：实例化可以指定类型的写法
  Person p2 = new Person();
  print(p2.name);

  p2.setInfo(28);
  p2.getInfo();
}
