// Dart中我们也可以在构造函数体运行之前初始化实例变量

class Rect {
  int height;
  int width;
  //实例化之前在默认构造函数中初始化属性值
  Rect()
      : height = 2,
        width = 10 {
    print("${this.height}---${this.width}");
  }
  getArea() {
    return this.height * this.width;
  }
}

void main() {
  Rect r = new Rect(); //2---10
  print(r.getArea()); //20
}
