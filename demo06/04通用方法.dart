/*
  forEach   
  map
  where
  any
  every
*/
void main() {
  List erList = ['A', 'B', 'C', 'D'];
  //遍历数组的三种方式
  //1
  for (var i = 0; i < erList.length; i++) {
    print(erList[i]);
  }
  //2
  for (var i2 in erList) {
    print(i2);
  }
  //3,forEach
  //只能传入value，不能传入key
  erList.forEach((value) {
    print("$value");
  });
//--------------------------------
  List num = [1, 2, 3];
  //1
  List newList = [];
  for (var i = 0; i < num.length; i++) {
    newList.add(num[i] * 2);
  }
  print(newList); //[2, 4, 6]

  //2,map修改集合、数组里面的数据
  var newList1 = num.map((value) {
    return value * 2;
  });
  print(newList1.toList()); //[2, 4, 6]

  //where将满足条件的元素提取出来组成一个新的数组
  List num2 = [1, 2, 3, 5, 6, 7, 8];
  var newList2 = num2.where((value) {
    return value > 4;
  });
  print(newList2.toList()); //[5, 6, 7, 8]
//any只要有一个元素满足条件就返回true
  var er = num2.any((value) {
    return value > 5;
  });
  print(er); //true
//every要求每一个元素都要满足条件则返回true，否则返回false
  var er2 = num2.every((value) {
    return value > 5;
  });
  print(er2); //false
}
