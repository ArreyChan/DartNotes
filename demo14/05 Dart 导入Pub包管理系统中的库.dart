/*第三方模块引入
pub包管理系统:


1、从下面网址找到要用的库
        https://pub.dev/packages
        https://pub.flutter-io.cn/packages
        https://pub.dartlang.org/flutter/

2、创建一个pubspec.yaml文件，内容如下

    name: xxx  //注意这里的name名字不能与依赖dependencies中的包名一致
    description: A new flutter module project.
    //sdk版本这里需要指定，不然可能会报错
    environment:
        sdk: '>=2.10.0 < 3.0.0'
    dependencies:  
        http: ^0.12.0+2


3、配置dependencies

4、运行dart pub add 依赖包名（dart pub add date_format） 获取远程库

5、看文档引入库使用
*/
import 'package:date_format/date_format.dart';

main() {
  print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
}
