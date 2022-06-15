void main() {
  //逻辑运算符 !  &&   ||
  /* ! 取反 */

  bool flag = false;
  print(!flag); //取反,true

  /* &&并且:全部为true的话值为true 否则值为false */

  bool a = true;
  bool b = true;

  print(a && b); //true

  /* ||或者：全为false的话值为false 否则值为true */

  bool a1 = false;
  bool b1 = false;

  print(a1 || b1); //false

//如果一个人的年龄是20 并且 sex是女的话我们打印这个人

  int age = 20;
  String sex = "女";
  if (age == 20 && sex == "女") {
    print("$age --- $sex");
  } else {
    print("不打印");
  }

//如果一个人的年龄是20 或者 sex是女的话我们打印这个人

  // int age=23;
  // String sex="女";
  // if(age==20 || sex=="女"){

  //   print("$age --- $sex");

  // }else{

  //   print("不打印");

  // }
}
