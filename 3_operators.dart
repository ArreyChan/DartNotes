void main() {
  var str2 = true;
  // ignore: unnecessary_type_check
  if (str2 is! bool) {
    print("不是Boolean类型");
  } else {
    print(str2); //true
  }
}
