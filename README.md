# Dart快速上手笔记

<p align="left"><img src="https://img.shields.io/badge/dart-v2.17.x-%2358B2DC"/></p>

## 一.安装

安装SDK路径：**https://dart.dev/get-dart**

```dart 
//mac
brew tap dart-lang/dart
brew install dart
//vscode
安装"Dart"，"Code Debugger"，"Code Runner"三个扩展插件
```

- 出现乱码需要在`settings.json`文件中配置：`"code-runner.runInTerminal":true`

## 二.数据类型

### 1.main()

>Every app must have a top-level main() function, which serves as the entrypoint to the app.
>每个应用程序都必须具有一个顶级函数main()，这个函数是应用程序的入口函数

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

### 2.标识符（Identifiers）

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

#### 2.1.变量（Variables）

1. 常见定义变量的两种方式:
   - 显式声明变量类型，`String str = 'arrey';//声明字符串类型变量`
   - 通过var关键字声明，自动推断类型，`var str = 'arrey';`

2. 空安全（null safety）
3. late 变量

#### 2.2.常量（Constant）：final & const

>If you never intend to change a variable, use final or const, either instead of var or in addition to a type.
>如果你不改变一个变量，使用final或者const，用于代替var或者作为一个类型补充

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

