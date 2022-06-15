void main() {
  //1.箭头函数
/*需求：使用forEach打印下面List里面的数据*/

  List list = ['苹果', '香蕉', '西瓜'];
  // list.forEach((value){
  //   print(value);
  // });
//箭头函数的写法
  list.forEach((value) => print(value));

  //箭头函数的第二种写法
  // list.forEach((value)=>{
  //   print(value)//注意和方法的区别: 箭头函数内只能写一条语句，并且语句后面没有分号(;)
  // });

/*需求：修改下面List里面的数据，让数组中大于2的值乘以2*/

  List list2 = [4, 1, 2, 3, 4];
  /*
  var newList = list2.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());//[8, 1, 2, 6, 8]
*/
//箭头函数的写法
  var newList2 = list2.map((value) => value > 2 ? value * 2 : value);
  print(newList2.toList()); //[8, 1, 2, 6, 8]

//2.函数的相互调用
/*
需求：    1、定义一个方法isEvenNumber来判断一个数是否是偶数  
         2、定义一个方法打印1-n以内的所有偶数
*/

// 1、定义一个方法isEvenNumber来判断一个数是否是偶数
//要求以下函数的传入值是int类型，返回值是bool类型
  bool isEvenNumber(int n) {
    if (n % 2 == 0) {
      return true;
    }
    return false;
  }

//  2、定义一个方法打印1-n以内的所有偶数
  printNum(int n) {
    for (var i = 1; i <= n; i++) {
      if (isEvenNumber(i)) {
        print(i);
      }
    }
  }

  printNum(10); //2 4 6 8 10
}
