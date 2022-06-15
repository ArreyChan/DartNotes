/*
Dart数据类型：布尔类型

bool 值true/false
 
*/



void main(){

  //1、bool

        // bool flag1=true;

        // print(flag1);

        // bool flag2=false;

        // print(flag2);


  //2、条件判断语句


      var flag=true;

      if(flag){
        print('真');
      // ignore: dead_code
      }else{
        print('假');
      }


      // var a=123; //int

      // var b='123'; //string

      // if(a==b){
      //   print('a=b');
      // }else{
      //    print('a!=b');//true 在dart中不会进行类型的转化，int和string在类型上就不相等
      // }
      

      var a=123;

      var b=123;

      if(a==b){
        print('a=b'); //true
      }else{
         print('a!=b');
      }

}

