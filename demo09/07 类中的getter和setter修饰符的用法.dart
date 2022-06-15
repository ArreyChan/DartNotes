//普通方法计算结果
// class Rect{
//   num height;
//   num width;
//   Rect(this.height,this.width);
//   area(){
//     return this.height*this.width;
//   }
// }

// void main(){
//   Rect r=new Rect(10,2);
//   print("面积:${r.area}");      //注意调用直接通过访问属性的方式访问area需要使用${}
// }

//使用get和set完成矩形的计算
class Rect {
  late num height;
  late num width;
  Rect(this.height, this.width);

  get area {
    return this.height * this.width;
  }

  set areaHeight(value) {
    this.height = value;
  }
}

void main() {
  Rect r = new Rect(10.5, 4.4);
  r.areaHeight = 6;

  print(r.area); //26.400000000000002
}
