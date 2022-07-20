void main() {
  var str2 = true;
  // ignore: unnecessary_type_check
  if (str2 is! bool) {
    print("不是Boolean类型");
  } else {
    print(str2); //true
  }

  int score = 90;
  String subject = 'cs';
  if (score == 100 && subject == 'cs') {
    print("$score ---- $subject");
  } else {
    print('匹配错误'); //right
  }
  if (score == 90 || subject == 'cs') {
    print("$score ---- $subject"); //right
  } else {
    print('匹配错误');
  }

  int a2 = 49;
  a2 ~/= 10;
  print(a2); //4

  final value = 0x22;
  print(value); //34
  print(value >> 4); //2
  print(value << 4); //544
  print(value ^ 0x0f); //45 --- 0x2d
  print(value & 0x0f); //2 --- 0x02
  print(value & ~0x0f); //32 --- 0x20
  print(value | 0x0f); //47 --- 0x2f

  bool flag = true;

  if (flag) {
    print('true'); //right
    // ignore: dead_code
  } else {
    print('false');
  }

  var sex = "女";
  switch (sex) {
    case "男":
      print('性别是男');
      break;
    case "女":
      print('性别是女'); //right
      break;
    default:
      print('传入参数错误');
      break;
  }
  Person person = new Person('arrey', 120)
    ..name = 'errui'
    ..getInfo(); //errui----120
  person.setInfo(12);
  person.getInfo(); //errui----12

  Person person1 = new Person('arrey', 120);
  person1.name = 'errui';
  person1.getInfo(); //errui----120
}

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  void getInfo() {
    print("${this.name}----${this.age}");
  }

  void setInfo(int age) {
    this.age = age;
  }
}
