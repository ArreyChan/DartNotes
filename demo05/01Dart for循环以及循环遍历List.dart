/*

// for基本语法
          for (int i = 1; i<=100; i++) {   
            print(i);
          }

        	//第一步，声明变量int i = 1;
        	//第二步，判断i <=100
        	//第三步，print(i);
        	//第四步，i++
        	//第五步 从第二步再来，直到判断为false

*/
void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print('-------------------');
  //1、打印0-50所有的偶数

  // for(int i=0;i<=50;i++){
  //     if(i%2==0){
  //       print(i);
  //     }
  // }

  //2、求 1+2+3+4 +...100的和

  var sum = 0;
  for (var i = 1; i <= 100; i++) {
    sum += i;
  }
  print(sum);
  print('-------------------');

  // 3、计算5的阶乘   (1*2*3*4*5    n的阶乘1*2……*n)
/*
  算法思路：
    sum=1*1;

    sum=1*1*2;

    sum=1*1*2*3;

    sum=1*1*2*3*4*5;
    */
  var sum1 = 1;
  for (var i = 1; i <= 5; i++) {
    sum1 *= i;
  }
  print(sum1);
  print('-------------------');

  //4、打印List  ['张三','李四','王五'] 里面的内容

  List list = ['张三', '李四', '王五'];

  // print(list[1]);

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('-------------------');
  //5、打印List

  List list1 = [
    {"title": "新闻111"},
    {"title": "新闻222"},
    {"title": "新闻333"}
  ];

  // print(list1[1]);

  for (var i = 0; i < list1.length; i++) {
    print(list1[i]['title']);
  }
  print('-------------------');
  //4、定义一个二维数组 打印里面的内容

  List list2 = [
    {
      "cate": '国内',
      "news": [
        {"title": "国内新闻1"},
        {"title": "国内新闻2"},
        {"title": "国内新闻3"}
      ]
    },
    {
      "cate": '国际',
      "news": [
        {"title": "国际新闻1"},
        {"title": "国际新闻2"},
        {"title": "国际新闻3"}
      ]
    }
  ];

  /*
        国内
            国内新闻1
            国内新闻2
            国内新闻3
        国际
            国际新闻1
            国际新闻2
        */

  for (var i = 0; i < list2.length; i++) {
    print(list2[i]["cate"]);
    print('···············');
    for (var j = 0; j < list2[i]["news"].length; j++) {
      print(list2[i]["news"][j]["title"]);
    }
  }
}
