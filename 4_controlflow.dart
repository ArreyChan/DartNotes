void main() {
  var a = 10;
  ++a;
  print(a); //11

  var b = 10;
  b++;
  print(b); //11

  var c = 20;
  if (c.runtimeType == int) {
    print('正确的');
  }

  List d = [
    {"title": "舅舅111"},
    {"title": "舅舅222"},
    {"title": "舅舅333"}
  ];

  for (var i = 0; i < d.length; i++) {
    print(d[i]['title']);
  }

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

  int f = 1;
  while (f <= 10) {
    print(f);
    ++f;
  }
  int g = 10;
  while (g < 2) {
    print('g执行代码');
  }

  var g1 = 10;
  do {
    print('g1执行代码');
  } while (g1 < 2);
  for (var i = 1; i <= 10; i++) {
    if (i == 4) {
      continue;
    }
    print(i);
  }

  for (var i = 1; i <= 10; i++) {
    if (i == 4) {
      break;
    }
    print(i);
  }

  for (var i = 0; i < 5; i++) {
    print('外层---$i');
    for (var j = 0; j < 3; j++) {
      if (j == 1) {
        break;
      }
      print('里层$j');
    }
  }
  var i = 1;

  while (i <= 10) {
    if (i == 4) {
      break;
    }
    print(i);
    i++;
  }
}
