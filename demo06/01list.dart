/*
List里面常用的属性和方法：

    常用属性：
        length          长度
        reversed        翻转
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法：  
        add         增加
        addAll      拼接数组
        indexOf     查找  传入具体值
        remove      删除  传入具体值
        removeAt    删除  传入索引值
        fillRange   修改   
        insert(index,value);            指定位置插入    
        insertAll(index,list)           指定位置插入List
        toList()    其他类型转换成List  
        join()      List转换成字符串
        split()     字符串转化成List
        forEach   
        map
        where
        any
        every

*/

void main() {
//List常用属性：
  List myList = ['香蕉', '苹果', '西瓜'];
  print(myList.length); //3
  print(myList.isEmpty); //false
  print(myList.isNotEmpty); //true
  print(myList.reversed); //(西瓜, 苹果, 香蕉)
  //使用toList方法将reversed转化成List集合
  var newList = myList.reversed.toList();
  print(newList); //[西瓜, 苹果, 香蕉]

//List常用方法：
  List coolList = ['A', 'B', 'C'];
  coolList.add('D'); //只能增加一个数据
  coolList.addAll(['E', 'F']); //添加多个元素
  print(coolList); //[A, B, C, D, E, F]
  //indexOf查找数据，查找不到返回-1，查找到返回索引值
  print(coolList.indexOf('D')); //3
  print(coolList.indexOf('G')); //-1
  //删除方法
  coolList.remove('D'); //删除元素
  coolList.removeAt(1); //删除索引值对应的元素，这里是B
  print(coolList); //[A, C, E, F]
  //修改方法
  coolList.fillRange(0, 2, 'S');
  print(coolList); //[S, S, E, F],修改索引值0和1的元素

  //插入方法
  coolList.insert(1, 'F');
  coolList.insertAll(4, ['J', 'K']); //插入多个元素
  print(coolList); //[S, F, S, E, J, K, F]

  //转换方法
  var er = coolList.join('&');
  print(er); //S&F&S&E&J&K&F
  // ignore: unnecessary_type_check
  print(er is String); //true,验证转换成string类型的值
  var str = "A-B-C-D-E-F-G";
  var erList = str.split('-');
  print(erList); //[A, B, C, D, E, F, G]
  // ignore: unnecessary_type_check
  print(erList is List); //true
}
