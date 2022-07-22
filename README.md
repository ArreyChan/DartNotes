# Dart快速上手笔记

<p align="left"><img src="https://img.shields.io/badge/dart-v2.17.x-%2358B2DC"/></p>

**参考链接**：https://dart.dev/guides/language/language-tour

## 一、安装

安装SDK路径：**https://dart.dev/get-dart**

```dart 
//mac
brew tap dart-lang/dart
brew install dart
//vscode
安装"Dart"，"Code Debugger"，"Code Runner"三个扩展插件
```

- 出现乱码需要在`settings.json`文件中配置：`"code-runner.runInTerminal":true`

## 二、数据类型

### 1、main()

>Every app must have a top-level main() function, which serves as the entrypoint to the app.<br />每个应用程序都必须具有一个顶级函数main()，这个函数是应用程序的入口函数

```dart
//当入口函数没有返回值时，建议添加void约束，令返回类型为空
//没有使用void约束，返回值会是动态类型，dynamic不是在编译时确定类型的，而是在运行时
//一个变量被dynamic修饰，相当于告诉系统“相信我，我知道我自己在做什么”。所以在大多数情况下，不推荐直接使用它。
main() {
  //runtimeType可以获取当前对象的数据类型
  print(main.runtimeType);//() => dynamic,返回动态类型
}
//在不需要显式返回值的函数中，应当使用void加以约束
void main() {
  print(main.runtimeType); //() => void,返回值为void
}
```

- 关于dart注释的三种写法

```dart
/**
 * 备注1
 */ 
int num = 123;
print(num);///备注2
//备注3
```

### 2、标识符（Identifiers）

1. 标识符以字母或下划线（_）开头，后跟任意字母，数字，下划线，$组合。
2. 标识符开头不是能数字，`var 2er='arrey' //error`。
3. 标识符不能是关键字，如有必要下图带上标的关键字也被允许使用，`var if='1234' //error`。

![dart1](https://img.errui.xin/BlogImage/frontend/dart/dart1.png)

4. 任何存在于变量中的内容都是一个对象，所有的对象都是对应一个类的实例；数字，函数，null都是对象，且除了null，其他对象都是继承Object类。（除非声明了null safety)。
5. 标识符严格区分大小写。

```dart
var Name='Arrey';
var name='errui';
print(Name);//Arrey
print(name);//errui
```

6. 标识符名称建议见名思义，变量，常量名建议用名词，函数名用动词。

#### 2.1、变量（Variables）

1. 常见定义变量的两种方式:
   - 显式声明变量类型，`String str = 'arrey';//声明字符串类型变量`
   - 通过var关键字声明，自动推断类型，`var str = 'arrey';`

2. 空安全（null safety）
3. late 变量

#### 2.2、常量（Constant）：final & const 

>If you never intend to change a variable, use final or const, either instead of var or in addition to a type.<br />如果你不改变一个变量，使用final或者const，用于代替var或者作为一个类型补充

```dart
//const
const num=1;
num=12//error, 常量不可以修改
print(num);//1

//const可用于修饰常量值
var foo= [1,2,3];
//等价于var foo= const [1,2,3];
//遵循两个条件
var a = 1;
var foo = const [a,2,3];//error, 集合元素必须是编译时常数。
foo[1]=3;//error, 不允许对集合做任何改变。
//final
//1.与const相同的写法
final num=1;
print(num);//1
//2.与const的区别
//初始变量可不赋值, 赋值仍和const一样赋值后不允许修改
final name;
const name;//error
//const在编译时就固定变量的值, 而final属于惰性初始化, 可以在运行时才固定变量值
final a = new DateTime.now();
print(a); //2022-03-12 18:43:31.182958
const a=new DateTime.now();   //error
```

### 3、内置类型（Built-in types）

#### 3.1、Numbers (int, double)

1. int 整型
2. double 浮点型
3. 运算符：+ - * / %

```dart 
var a = 0xDEADBEEF;
var b = 1.42e5;
//double 既可以是整型 也可是浮点型
double b1 = 1; //等价于 double b1 = 1.0
var b2 = a + b1;
print(a.runtimeType); //int
print(b.runtimeType); //double
print(b1); //1.0
print(b2.runtimeType); //double
```

#### 3.2、Strings (String)

1. 字符串定义方式

```dart 
var s1 = 'Single quotes work well for string literals.';
var s2 = "Double quotes work just as well.";
String s3 = 'It\'s easy to escape the string delimiter.';
String s4 = "It's even easier to use the other delimiter.";
print(s1 + s2 + s3 + s4);
//使用三个单引号或者三个双引号可以打印多行代码
var s5 = '''
  this is s5
  this is s5
  this is s5
''';
print(s5);
```

2. 字符串拼接

```dart
var s6 = 'arrey';
String s7 = "chan";
print("$s6 $s7");//arrey chan
print(s6 + ' ' + s7);//arrey chan
```

#### 3.3、Booleans (bool)

```dart 
bool b1 = true;

print(b1);

var b2 = 123; //int

var b3 = '123'; //string

if (b2 == b3) {
 print('b2=b3');
} else {
//在dart中不会进行类型的转化，int和string在类型上就不相等
 print('b2!=b3'); //b2!=b3 
}

var b4 = 0 / 0;
print(b4.isNaN); //true
```

#### 3.4、Lists (List)

  1. 直接定义

  ```dart
  var l1 = ["arrey", 120, true];
  print(l1); //[arrey, 120, true]
  print(l1.length); //3
  print(l1[1]); //120
  ```

  2. 指定类型

  ```dart
  var l2 = <String>["arrey", "errui"];
  print(l2); //[arrey, errui]
  var l2int = <int>[50, 30];
  print(l2int); //[50, 30]
  ```

  3. 增加数据，通过[]直接定义的list的容量可以增减

  ```dart
  var l3 = [];
  print(l3); //[]
  print(l3.length); //0
  l3.add("arrey");
  l3.add("errui");
  l3.add(120);
  print(l3); //[arrey, errui, 120]
  print(l3.length); //3
  ```

  4. 扩展运算符支持

  ```dart
  //扩展运算符用于链接两个列表
  var l4 = [true, ...l3];
  print(l4); //[true, arrey, errui, 120]

  //如果l3s是空值，则可以使用？来避免错误异常
  var l3s;
  var l4s = [999, ...?l3s];
  print(l4s.length);//1
  ```

  5. 使用内置方法filled创建一个固定长度的列表

  ```dart
  var l5 = List.filled(2, "1"); //创建一个固定长度的集合
  print(l5); //[1, 1]
  //注意：不指定list的类型，会根据创建的初始数据自动推导数据类型

  //创建指定类型的列表
  var l5s=List<String>.filled(2, "");
  l5s[0]="string";
  l5s[0]=222;//error
  print(l5s);//[string, ]

  //注意：通过List.filled创建的集合长度是固定,无法修改长度
  l5[0] = "arrey"; //修改集合的内容
  //l5.add("王五");  //error
  print(l5); //[1, 1]
  ```

  6. List支持使用if&for语法

  ```dart 
  var l6OfInts = [1, 2, 3];
  var l6 = ['#0', for (var i in l6OfInts) '#$i'];
  print(l6); //[#0, #1, #2, #3]
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);//[Home, Furniture, Plants, Outlet]
  ```

#### 3.5、Sets (Set)

> 在 Dart 中 Set 是一个元素唯一且无序的集合。 Dart 为 Set 提供了 Set 字面量和 Set 类型。

1. 新建一个Set类型的集合
   
```dart 
var e1 = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(e1.runtimeType); //_CompactLinkedHashSet<String>，这个集合的类型是Set类型
print(e1); //{fluorine, chlorine, bromine, iodine, astatine}
```

2. 写法规范

```dart 
var e2 = <String>{};
Set<String> e2s = {}; //也支持这种写法

var e3 = {}; //这样会创建一个 Map ，而不是 Set 。
print(e3.runtimeType); //_InternalLinkedHashMap<dynamic, dynamic>
```

>因为先有的 Map 字母量语法，所以 {} 默认是 Map 类型。<br />如果忘记在 {} 上注释类型或赋值到一个未声明类型的变量上， 那么 Dart 会创建一个类型为 Map<dynamic, dynamic> 的对象。

3. 内置方法

```dart 
e2.add('fluorine');
e2.addAll(e1);
print(e2.length); //5

final e4 = const {'111', '2222', 222, 3};
//在字面量前添加const，会创建一个编译时 Set 常量，不可以添加新的值
e4.add('sss'); //error
print(e4); //{111, 2222, 222, 3}
```

#### 3.6、Maps(Map)

>一个map（字典）是一个关联键值的对象，Dart 中 Map 通过 Map 字面量 和 Map 类型来实现。

```dart
//定义Map的方式
//第一种
var person = {
 "name": "arrey",
 "age": 120,
 "work": ["开发", "背锅侠"]
};
print(person); //{name: arrey, age: 120, work: [开发, 背锅侠]}
print(person["work"]); //[开发, 背锅侠]
//第二种
var p = new Map();

p["name"] = "errui";
p["age"] = 23;
p["work"] = ["产品", "提需求"];
print(p); //{name: errui, age: 23, work: [产品, 提需求]}
print(p["age"]); //23
//如果 Map 中不包含所要查找的 key，那么 Map 返回 null
print(p["address"]);//null
//使用 .length 函数获取当前 Map 中的键值对数量
print(p.length);//3

//第三种，创建Map类型的常量
final constantMap = const {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};
//constantMap[2] = 'Helium';不支持修改值
```

- *Map类型和List一样支持扩展运算符(... and ...?)和集合if&for*

#### 3.7、Runes(Runes)

> Because a Dart string is a sequence of UTF-16 code units, expressing Unicode code points within a string requires special syntax.<br />因为Dart字符串是一系列的UTF-16代码单元，因此要在字符串中表示Unicode（32位）值需要特殊语法支持。

```dart 
var r = '\u{1f44f}';
print(r); //👏
print(r.codeUnits); //[55357, 56399]
print(r.runes.toList()); //[128079]

//表示Unicode常用方式是\uXXXX，这里 XXXX 是一个4位的16进制数。
//对于非4数值的情况，可以将编码值用{}约束。
Runes r2 = new Runes(
    '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
print(new String.fromCharCodes(r2)); //♥  😅  😎  👻  🖖  👍
```

#### 3.8、Symbol

>一个 Symbol 对象表示 Dart 程序中声明的运算符或者标识符<br />通过字面量 Symbol ，也就是标识符前面添加一个 # 号，来获取标识符的 Symbol，如：#radix。<br />Symbol 字面量是编译时常量。

## 三、运算符（Operators）

### 1、算术运算符（Arithmetic operators）

```dart 
int a = 13;
int b = 5;

print(a + b); //加
print(a - b); //减
print(a * b); //乘
print(a / b); //除
print(a % b); //取余
print(a ~/ b); //取整

var c = a * b;
print('--------');
print(c);
```

### 2、关系运算符（Relational operators）

```dart 
int a = 5;
int b = 3;

print(a == b); //判断是否相等
print(a != b); //判断是否不等
print(a > b); //判断是否大于
print(a < b); //判断是否小于
print(a >= b); //判断是否大于等于
print(a <= b); //判断是否小于等于

if (a > b) {
  print('a大于b');//right
} else {
  print('a小于b');
}
```

### 3、类型判断运算符（Type test operators）

- `is`，`is!`关键词判断从服务器或用户输入获取数据的类型

```dart 
var str1 = '1234';
// ignore: unnecessary_type_check
if (str1 is String) {
  print('是string类型'); //right
} else if (str1 is int) {
  print('int');
} else {
  print('其他类型');
}

var str = 123;

if (str is String) {
  print('是string类型');
// ignore: unnecessary_type_check
} else if (str is int) {
  print('int'); //right
} else {
  print('其他类型');
}

var str2 = true;
// ignore: unnecessary_type_check
if (str2 is! bool) {
  print("不是Boolean类型");
} else {
  print(str2); //true
}
```

- `as` 是当且仅当你确定这个未知对象属于某种类型的时候，使用其将这个对象转为该类型；也可以给包起别名时使用，例如：`import 'package:http/http.dart' as erhttp;`

### 4、逻辑运算符（Logical operators）

```dart
//取反 !
bool flag = false;
print(!flag); //取反,true

//或者 || 
//全为false的话值为false 否则值为true
bool a1 = false;
bool b1 = false;

print(a1 || b1); //false

//并且 && 
//全部为true的话值为true 否则值为false
bool a = true;
bool b = true;

print(a && b); //true
```

```dart
//example
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
```

### 5、赋值运算符（Assignment operators）

- 基础：`=`，`??=`

```dart 
var b;
b ??= 23; //表示如果b为空的话把 23赋值给b，
print(b); //23

var b1=1;
b1 ??= 23;//错误写法
print(b1);//1
```

- 复合：其他运算符与赋值运算符`=`的组合

![dart2](https://img.errui.xin/BlogImage/frontend/dart/dart2.png)

```dart 
var a1 = 4;
a1 *= 3; //等价于a1=a1*3;
print(a1); //12

var a2 = 49;
a2 ~/= 10;//除法，返回一个整数结果
print(a2); //4
```

### 6、位运算符（Bitwise and shift operators）

```dart 
final value = 0x22;
print(value); //34(10进制)
print(value >> 4); //2
print(value << 4); //544

print(value ^ 0x0f); //45 --- 0x2d
print(value & 0x0f); //2 --- 0x02
print(value & ~0x0f); //32 --- 0x20
print(value | 0x0f); //47 --- 0x2f
```

### 7、条件表达式（Conditional expressions）

- 条件表达式：`if  else`，`switch case`

```dart 
if (flag) {
  print('true'); //right
  // ignore: dead_code
} else {
  print('false');
}

```

- Dart简化条件判断运算符

  1.`condition ? expr1 : expr2`，如果条件为true，则返回expr1的结果，否则就返回expr2（适合应用在判断条件为Boolean型的场景）

  ```dart 
  bool tree = false;
  // ignore: dead_code
  String c = tree ? '我是true' : '我是false';
  print(c); //我是false
  ```

  2.`expr1 ?? expr2`，如果expr1不为空值，则返回它的结果，否则就返回expr2的值（适合用于判断是否为null的场景）

  ```dart 
  var a;
  var b = a ?? 10;
  
  print(b); //10
  
  var a1 = 22;
  //错误写法，仅限举例
  var b1 = a1 ?? 10; //a1不是null，不适用??判断
  
  print(b1); //22
  ```


### 8、级联符号（Cascade notation）

- `..  ?..`允许访问级联对象的属性或调用该对象的方法，省去创建临时变量的步骤（此举目的时写出更加优雅的code）
- 严格来说，`..`这种符号并不是运算符，只是Dart语法的一部分

```dart
void main(){
   Person person = new Person('arrey', 120)
    ..name = 'errui'
    ..getInfo();//errui----120
    person.setInfo(12)..getInfo();//error person.setInfo() 函数调用返回 void， 不能在 void 对象上进行级联操作。
  //普通写法
  Person person = new Person('arrey', 120);
  person.name = 'errui';
  person.getInfo(); //errui----120
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

```
```dart 
//进阶，级联符号可支持嵌套写法
final addressBook = (AddressBookBuilder()
  ..name = 'jenny'
  ..email = 'jenny@example.com'
  ..phone = (PhoneNumberBuilder()
        ..number = '415-555-0100'
        ..label = 'home')
      .build())
.build();
```

### 9、其他运算符

- `!`：空断言运算符：将表达转化成底层非空类型，如果转换失败则抛出异常，`fun!.bar`表示fun非null并选择属性bar，除非fun为null，否则不会抛出异常。

### 10、类型转换

1. `int/double.parse()`将String类型转换成int类型

```dart 
String str = '123';
var num = int.parse(str);
print(num.runtimeType); //int

String str1 = '23.1';
var num1 = double.parse(str1);
print(num1.runtimeType); //double
```

- 如果服务器传给数据为空值...

```dart 
String price = '';

var myNum = double.parse(price);

print(myNum is double);//error:Invalid double
```
```dart 
//使用try...catch...结构，如果传入空值，则抛出异常，输出结果为0
String price1 = '';
try {
  var myNum = double.parse(price1);

  print(myNum);
} catch (err) {
  print(0);
}
```

2. `toString()`将Number类型转换成String类型 

```dart 
var num4 = 12;

var str4 = num4.toString();

print(str4 is String); //true
```

1. 一些特殊情况

  - `isEmpty`被用来判断得到的字符串是否为空

  ```dart 
  var str = '';
  //不可以使用null，null是空值，不是一个实例化的对象，''是空字符串，是一个已经实例化的数据对象
  if (str.isEmpty) {
  print('str空');//right
  } else {
  print('str不为空');
  }
  ```

   - 一种特殊情况

  ```dart 
  var myNum2 = 0 / 0;
  print(myNum2); //返回结果是NaN
  ```

## 四、控制流程语句

### 1、自增自减

- 在赋值运算里面 如果++ -- 写在前面 这时候先运算 再赋值，如果++ --写在后面 先赋值后运行运算

```dart 
//不进行赋值没有区别，结果和a++相同
var a = 10;
++a;
print(a);//11

var b = 10;
b++;
print(b);//11
```

### 2、if&else和for循环

1. Dart支持if-else语句，并且else是可选的

```dart 
var c = 20;
if (c.runtimeType == int) {
 print('正确的');
}
//简化写法参考 ### 三——>7、条件表达式（Conditional expressions）
```

2. for循环

```dart 
//template
for (int i=1;i<=100;i++){
  print(i);
}
//step01:声明变量int i = 1;
//step02:判断i <=100;
//step03:print(i);
//step04:i++;
//step05:进行step02,直到判断为false;
```

- 例子

```dart 
//打印List内容
List d = [
  {"title": "舅舅111"},
  {"title": "舅舅222"},
  {"title": "舅舅333"}
];

for (var i = 0; i < d.length; i++) {
  print(d[i]['title']);
}
//打印一个二维列表
List e = [
  {
    "cate": '省份',
    "news": [
      {"title": "安徽"},
      {"title": "江苏"},
      {"title": "浙江"}
    ]
  },
  {
    "cate": '城市',
    "news": [
      {"title": "合肥"},
      {"title": "南京"},
      {"title": "杭州"}
    ]
  }
];

for (var i = 0; i < e.length; i++) {
  print(e[i]["cate"]);
  print('···············');
  for (var j = 0; j < e[i]["news"].length; j++) {
    print(e[i]["news"][j]["title"]);
  }
}
```

### 3、while and do-while 循环

```dart 
/**
while(表达式/循环条件){语句/循环体}	
		
do{语句/循环体}while(表达式/循环条件);
		
注意： 循环条件中使用的变量需要经过初始化;循环体中，应有结束循环的条件，否则会造成死循环。
*/
void main(){
  /*
  //死循环
  int f = 1;
  while (f <= 10) {
    print(f);
  }
  */
  int f = 1;
  while (f <= 10) {
    print(f);
    ++f;
  }
}
```

- while和do...while的区别

```dart 
//第一次循环条件不成立的情况下
int g = 10;
while (g < 2) {
  print('g执行代码');
}

var g1 = 10;
do {
  print('g1执行代码');
} while (g1 < 2);

//输出结果：g1执行代码
```

### 4、break和continue

```dart 
/*
	break:
    1、在switch语句中使流程跳出switch结构。
    2、在循环语句中使流程跳出当前循环,遇到break 循环终止，后面代码也不会执行 
    3、在多层循环中,一个break语句只能向外跳出一层
    4、break可以用在switch case中 也可以用在 for 循环和 while循环中

  continue:
  1、只能在循环语句中使用,使本次循环结束，即跳过循环体重下面尚未执行的语句，接着进行下次的是否执行循环的判断。
  2、continue可以用在for循环以及 while循环中，但是不建议用在while循环中，不小心容易死循环
*/

//break语句只能向外跳出一层
for (var i = 0; i < 5; i++) {
  print('外层---$i');
  for (var j = 0; j < 3; j++) {
    if (j == 1) {
      break;
    }
    print('里层---$j');
  }
}
//while...break跳出循环
var i = 1;

while (i <= 10) {
  if (i == 4) {
    break;
  }
  print(i);
  i++;
}//123
```

- 区别

```dart 
//break:如果i=4跳出循环
for (var i = 1; i <= 10; i++) {
  if (i == 4) {
    break; /*跳出循环体*/
  }
  print(i);
}//123

//continue:如果i等于4的话跳过
for (var i = 1; i <= 10; i++) {
  if (i == 4) {
    continue; /*跳过当前循环体 然后循环还会继续执行*/
  }
  print(i);
}//1235678910
```

### 5、switch语句

```dart 
//一个简单的例子
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
```

- 特殊情况

```dart 
//丢失break会报错
var command = 'OPEN';
switch (command) {
  case 'OPEN':
    executeOpen();
    // ERROR: 丢失 break
  case 'CLOSED':
    executeClosed();
    break;
}

//但是支持空case语句，允许程序以 fall-through 的形式执行，意思是如果case语句后面不加break，就依次执行下去，以满足某些特殊情况的要求。（不建议）
var command = 'CLOSED';
switch (command) {
  case 'CLOSED': // Empty case falls through.
  case 'NOW_CLOSED':
    // 运行 CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}

//如果需要在非空case中实现fall-through，可以使用 continue 语句结合 lable 的方式实现（很扭曲不建议）
var command = 'CLOSED';
switch (command) {
  case 'CLOSED':
    executeClosed();
    continue nowClosed;
  // Continues executing at the nowClosed label.

  nowClosed:
  case 'NOW_CLOSED':
    // Runs for both CLOSED and NOW_CLOSED.
    executeNowClosed();
    break;
}
```

_一个case子句允许有局部变量，该局部变量只在该子句范围内可见_

### 6、Assert

- dart可以使用`assert`在debug时进行类型断言，`assert`只在开发环境中有效，在生产环境中无效

```dart
var p = {
    "name": "arrey",
    "age": 23,
    "work": ["开发", "背锅侠"]
  };
assert(p["age"] == 23);
assert(p["age"] == 22); //出现异常

// 确认变量值不为空。
assert(text != null);

// 确认变量值小于100。
assert(number < 100);

// 确认 URL 是否是 https 类型。
assert(urlString.startsWith('https'));

```

