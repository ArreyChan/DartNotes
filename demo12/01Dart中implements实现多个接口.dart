/*
Dart中一个类实现多个接口：
*/

abstract class A {
  late String name;
  printA();
}

abstract class B {
  printB();
}

class C implements A, B {
  //这个类需要实现所有接口中的方法
  @override
  late String name;
  @override
  printA() {
    print('printA');
  }

  @override
  printB() {
    // TODO: implement printB
    print('printB');
  }
}

void main() {
  C c = new C();
  c.printA();
  c.printB();
}
