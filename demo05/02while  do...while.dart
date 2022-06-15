/*
	语法格式:
		
		while(表达式/循环条件){			
			
		}	
		
    		
		do{
			语句/循环体
			
		}while(表达式/循环条件);
		
				

		注意： 1、最后的分号不要忘记
			    2、循环条件中使用的变量需要经过初始化
		      3、循环体中，应有结束循环的条件，否则会造成死循环。
*/

void main() {
  /*
  //死循环
  int i = 1;
  while (i <= 10) {
    print(i);
  }
  */

  int i = 1;
  while (i <= 10) {
    print(i);
    ++i;
  }

//求1+2+3+4 ...+100的和
//1
  int i1 = 1;
  var sum1 = 0;
  while (i1 <= 100) {
    sum1 += i1;
    i1++;
  }
  print(sum1); //5050
//2
  int i2 = 1;
  var sum2 = 0;
  do {
    sum2 += i2;
    i2++;
  } while (i2 <= 100);
  print(sum2); //5050

  //while 和 do while的区别   第一次循环条件不成立的情况下
  int s = 10;
  while (s < 2) {
    print('s执行代码');
  }

  var j = 10;
  do {
    print('j执行代码');
  } while (j < 2);
}
