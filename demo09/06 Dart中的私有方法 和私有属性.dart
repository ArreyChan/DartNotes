/*
Dart和其他面向对象语言不一样，Data中没有 public  private protected这些访问修饰符合

但是我们可以使用下划线_把一个属性或者方法定义成私有。

*/

import './lib/Animal.dart';

class Private {
  String _msg = '同文件中的类无法使用私有属性，仍然可以被调用';
}

void main() {
  Private m = new Private();
  print(m._msg); //同文件中的类无法使用私有属性，仍然可以被调用
  Animal a = new Animal('小狗', 3);

  // print(a._name);无法调用私有属性
  //通过公有方法间接调用私有属性
  print(a.getName()); //小狗

  //print(a._run());无法调用私有方法
  //间接的调用私有方法
  a.execRun(); //这是一个私有方法
}
