class Animal {
  late String _name; //私有属性只有在独立的类文件中才能生效
  late int age;
  //默认构造函数的简写
  Animal(this._name, this.age);

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  //调用私有方法
  execRun() {
    this._run(); //类里面方法的相互调用
  }
}
