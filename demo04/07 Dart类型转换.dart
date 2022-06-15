// ignore_for_file: unnecessary_type_check

void main() {
  // 2、类型转换

  //   1、Number与String类型之间的转换

  //   2、其他类型转换成Booleans类型

  //1、Number与String类型之间的转换

  // String类型转成Number类型  int.parse()

  String str = '123';

  var myNum = int.parse(str);

  print(myNum is int); //true

  String str1 = '123.1';

  var myNum1 = double.parse(str1);

  print(myNum1 is double); //true

  String price = '12';

  var myNum3 = double.parse(price);

  print(myNum3); //12.0

  print(myNum3 is double); //true

  //特殊情况，如果服务器传给数据是空，以下写法会报错
  // String price='';

  // var myNum=double.parse(price);

  // print(myNum);

  // print(myNum is double);

  //解决办法是可以在最外层增加 try  ... catch ...
  String price1 = '';
  try {
    var myNum = double.parse(price1);

    print(myNum);
  } catch (err) {
    print(0);
  }
//传入空值，结果为0

// Number类型转换成String类型 toString()
  var myNum4 = 12;

  var str4 = myNum4.toString();

  print(str4 is String); //true

  // 2、其他类型转换成Booleans类型

  // isEmpty:判断字符串是否为空

  var str2 = '';
  if (str2.isEmpty) {
    print('str2空');
  } else {
    print('str2不为空');
  }

//判断数字结果是否相等的三种情况
  // var myNum=123;

  // if(myNum==0){
  //    print('0');
  // }else{
  //   print('非0');
  // }

  // var myNum;

  // if(myNum==0){
  //    print('0');
  // }else{
  //   print('非0');
  // }

  // var myNum;
  // if(myNum==null){
  //    print('空');
  // }else{
  //   print('非空');
  // }

//特殊情况
  var myNum2 = 0 / 0;

  print(myNum2); //返回结果是NaN

  if (myNum2.isNaN) {
    print('NaN');
  }
}
