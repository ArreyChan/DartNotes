/*
  内置方法/函数：

      print();

  自定义方法：
      自定义方法的基本格式：

      返回类型  方法名称（参数1，参数2,...）{
        方法体
        return 返回值;
      }
*/

void printInfo() {
  print('我是一个自定义方法');
}

String printUserInfo() {
  return 'this is str';
}

List getList() {
  return ['111', '2222', '333'];
}

void main() {
  print('调用系统内置的方法');

  printInfo(); //我是一个自定义方法
  int getNum() {
    var myNum = 123;
    return myNum;
  }

  var n = getNum();
  print(n); //123

  print(printUserInfo()); //this is str
//演示方法的作用域
  void xxx() {
    aaa() {
      print(getList());
      print('aaa');
    }

    aaa();
  }

  // aaa();  错误写法,出了xxx()的作用域就没有办法生效了

  xxx(); //调用方法
  /**
   [111, 2222, 333]  
    aaa
   */
}
