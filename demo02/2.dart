/*main() {
  print('有返回值');
}
*/

//void类型的函数没有返回值
// void main() {
//   print('表示main方法没有返回值');
// }

//当此函数最后会得到一个确定的函数值结果时，我们就单使用main，反之使用void main。
//如果仅使用main，而输出没有产生一个函数值，比如上面那个函数，那么编译器会自动加一个return 0，所以在不需要产生函数值的函数中，使用void空类型更加规范

//定义变量，dart存在类型校验
void main() {
  //定义变量可以通过var关键字可以通过类型来申明变量，此时会自动进行类型推断
  var str = 'nihao'; //自动判断str是String类型
  print(str);

  //也可以直接通过指定数据类型来申明变量
  //字符串类型
  String str1 = 'this'; //规定str1变量是String类型
  print(str1);

  //数字类型
  int num = 123;
  print(num);
}

/*

Dart的命名规则：

          1、变量名称必须由数字、字母、下划线和美元符($)组成。

          2.注意：标识符开头不能是数字  var 2rer='ssss' //error

          3.标识符不能是保留字和关键字。   var if='1234' //error

          4.变量的名字是区分大小写的如: age和Age是不同的变量。在实际的运用中,也建议,不要用一个单词大小写区分两个变量。
        var age=20;

    var Age=30;

    print(age);
    print(Age);

          5、标识符(变量名称)一定要见名思意 ：变量名称建议用名词，方法名称建议用动词 

           
    var price=12;

    var name=124;

*/