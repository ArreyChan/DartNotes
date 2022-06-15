/*
Dart中抽象类: Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口。


  1、抽象类通过abstract 关键字来定义

  2、Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法。

  3、如果子类继承抽象类必须得实现里面的抽象方法

  4、如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法。

  5、抽象类不能被实例化，只有继承它的子类可以





案例：定义一个Animal 类要求它的子类必须包含eat方法

*/

abstract class Animal {
  eat(); //抽象方法，必须在子类中重载
  run(); //抽象方法
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }

  @override
  run() {
    print('小狗在跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }

  @override
  run() {
    print('小猫在跑');
  }
}

main() {
  Dog d = new Dog();
  d.eat();
  d.printInfo(); //调用抽象类中的公共方法

  Cat c = new Cat();
  c.eat();

  c.printInfo(); //调用抽象类中的公共方法

  // Animal a=new Animal();   //抽象类没法直接被实例化
}
