//Set

//用它最主要的功能就是去除数组重复内容

void main() {
  var s = new Set();
  s.add('香蕉');
  s.add('苹果');
  s.add(
      '苹果'); //set类型可以对集合进行去重，所以这里添加两个相同属性的值只能保留一个结果，且Set是没有顺序且不能重复的集合，所以不能通过索引去获取值

  print(s); //{香蕉, 苹果}
  //转换成List类型
  print(s.toList()); //[香蕉, 苹果]

//对一个已知的数组进行去重操作
  List myList = ['香蕉', '苹果', '西瓜', '香蕉', '苹果', '香蕉', '苹果'];

  var s1 = new Set();

  s1.addAll(myList);

  print(s1); //{香蕉, 苹果, 西瓜}

  //将set集合转换成List类型
  print(s1.toList()); //[香蕉, 苹果, 西瓜]
}
