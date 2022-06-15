/*
Datr中的多态：
    允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。

    子类的实例赋值给父类的引用。
    简单点说，
    多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

*/

abstract class Animal {
  eat(); //抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print('小狗在吃骨头');
  }

  run() {
    print('run');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('小猫在吃老鼠');
  }

  run() {
    print('run');
  }
}

main() {
  Animal d = new Dog(); //将子类的实例赋值给父类的引用，此时无法调用子类自定义方法，这里是run()

  d.eat(); //此时d里没有run()方法

  Animal c = new Cat();

  c.eat();
}
