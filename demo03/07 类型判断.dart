/*
Dart判断数据类型    

is 关键词来判断从服务器或用户输入获取数据的类型
*/

void main() {
  var str1 = '1234';

  // ignore: unnecessary_type_check
  if (str1 is String) {
    print('是string类型'); //执行这个命令
  } else if (str1 is int) {
    print('int');
  } else {
    print('其他类型');
  }

  var str = 123;

  if (str is String) {
    print('是string类型');
    // ignore: unnecessary_type_check
  } else if (str is int) {
    print('int'); //执行这个命令
  } else {
    print('其他类型');
  }
}
