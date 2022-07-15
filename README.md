# Dart快速上手笔记

<p align="left"><img src="https://img.shields.io/badge/dart-v2.17.x-%2358B2DC"/></p>

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

### 4、类型判断

- `is`关键词判断从服务器或用户输入获取数据的类型

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
```

- dart可以使用assert在debug时进行类型断言

```dart
var p = {
    "name": "arrey",
    "age": 23,
    "work": ["开发", "背锅侠"]
  };
assert(p["age"] == 23);
assert(p["age"] == 22); //出现异常
```