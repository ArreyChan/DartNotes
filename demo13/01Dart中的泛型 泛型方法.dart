/*

通俗理解：泛型就是解决 类 接口 方法的复用性、以及对不特定数据类型的支持(类型校验)

*/

//1.只能返回string类型的数据

// String getData(String value){
//     return value;
// }

//2.同时支持返回 string类型 和int类型  （代码冗余）

// String getData1(String value){
//     return value;
// }

// int getData2(int value){
//     return value;
// }

//3.同时返回 string类型 和number类型       不指定类型可以解决这个问题

// getData(value){
//     return value;
// }

//4.不指定类型放弃了类型检查。我们现在想实现的是传入什么 返回什么。比如:传入number 类型必须返回number类型  传入 string类型必须返回string类型
//使用泛型可以解决以上诉求

//参数和返回的类型都会校验
T getData<T>(T value) {
  return value;
}

//方法名前不带T，则不会检验返回的类型
// getData<T>(T value) {
//   return value;
// }

void main() {
  print(getData<int>(12)); //指定数据类型，系统会检查你传入和传出的类型
}
