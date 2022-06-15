/*
  Null safety翻译成中文的意思是空安全。

  null safety 可以帮助开发者避免一些日常开发中很难被发现的错误，并且额外的好处是可以改善性能。

  Flutter2.2.0（2021年5月19日发布） 之后的版本都要求使用null safety。

  ? 可空类型

  ! 类型断言

*/
//调用方法
String? getData(apiUrl) {
  if (apiUrl != null) {
    return "this is server data";
  }
  return null;
}

void printLength(String? str) {
  //和try...catch...配合
  try {
    print(str!.length);
  } catch (e) {
    print("str is null");
  }
}

void main(args) {
//1、 ? 可空类型

  // int a=123;  //非空的int类型
  // a=null;  //A value of type 'Null' can't be assigned to a variable of type 'int'

  int? a = 123; //  int? 表示a是一个可空类型
  a = null;
  print(a); //null

  // String username="张三";  //非空的String类型
  // username=null;   //A value of type 'Null' can't be assigned to a variable of type 'String'.

  String? username = "张三"; // String?  表示username是一个可空类型
  username = null;
  print(username); //null

  // List<String> l1=["张三","李四","王五"];
  // l1=null;  //A value of type 'Null' can't be assigned to a variable of type 'List<String>'.

  List<String>? l1 = ["张三", "李四", "王五"];
  l1 = null;
  print(l1); //null

  //调用方法
  print(
      getData("https://arreychan.gitee.io/errui_image/")); //this is server data

  print(getData(null)); //null

//2、 ! 类型断言

  String? str = "this is str";

  str = null;

  print(str!.length); //Null check operator used on a null value

  //类型断言: 如果str不等于null 会打印str的长度，如果等于null会抛出异常

  //调用方法
  printLength("str"); //3

  printLength(null); //str is null
}
