void main() {
  //Numbers
  var n1 = 0xDEADBEEF;
  var n2 = 1.42e5;
  double n3 = 1;
  var n4 = n1 + n3;
  print(n1.runtimeType); //int
  print(n2.runtimeType); //double
  print(n3); //1.0
  print(n4.runtimeType); //double

  //Strings
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  String s3 = 'It\'s easy to escape the string delimiter.';
  String s4 = "It's even easier to use the other delimiter.";
  print(s1 + s2 + s3 + s4);
  var s5 = '''
  this is s5
  this is s5
  this is s5
  ''';
  print(s5);
  var s6 = 'arrey';
  String s7 = "chan";
  print("$s6 $s7");
  print(s6 + ' ' + s7);

  //Booleans
  bool b1 = true;

  print(b1);

  var b2 = 123;

  var b3 = '123';

  if (b2 == b3) {
    print('b2=b3');
  } else {
    print('b2!=b3'); //b2!=b3
  }
  var b4 = 0 / 0;
  print(b4.isNaN); //true

  //Lists
  var l1 = ["arrey", 120, true];

  print(l1); //[arrey, 120, true]

  print(l1.length); //3

  print(l1[1]); //120

  var l2 = <String>["arrey", "errui"];

  print(l2); //[arrey, errui]

  var l3 = <int>[50, 30];
  print(l3); //[50, 30]

  var l4 = [];
  print(l4); //[]
  print(l4.length); //0

  l4.add("arrey");
  l4.add("errui");
  l4.add(120);
  print(l4); //[arrey, errui, 120]
  print(l4.length); //3

  var l5 = [true, ...l4];
  print(l5); //[true, arrey, errui, 120]

  var l4s;
  var l5s = [1, ...?l4s];
  print(l5s.length);

  var l6 = List.filled(2, "1");
  print(l6); //[1, 1]

  l6[0] = "arrey";

  print(l6); //[1, 1]

  var l8s = List<String>.filled(2, "");

  l8s[0] = "string";

  print(l8s);
  var l8 = List.filled(2, 22);
  l8[0] = 222;
  print(l8);
  var l9OfInts = [1, 2, 3];
  var l9 = ['#0', for (var i in l9OfInts) '#$i'];
  print(l9); //[#0, #1, #2, #3]
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  //Sets

  var e1 = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(e1.runtimeType); //_CompactLinkedHashSet<String>
  print(e1); //{fluorine, chlorine, bromine, iodine, astatine}

  var e2 = <String>{};

  e2.add('fluorine');
  e2.addAll(e1);
  print(e2.length); //5

  final e4 = const {'111', '2222', 222, 3};
  //e4.add('sss'); //error
  print(e4); //{111, 2222, 222, 3}

  //Maps
  var person = {
    "name": "arrey",
    "age": 120,
    "work": ["开发", "背锅侠"]
  };
  print(person);
  print(person["work"]);

  var p = new Map();

  p["name"] = "errui";
  p["age"] = 23;
  p["work"] = ["产品", "提需求"];
  print(p);
  print(p["age"]);
  print(p["address"]);
  print(p.length);
  final constantMap = const {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
  print(constantMap);

  //Rune
  var r = '\u{1f44f}';
  print(r); //👏
  print(r.codeUnits); //[55357, 56399]
  print(r.runes.toList()); //[128079]

  Runes r2 = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(r2)); //♥  😅  😎  👻  🖖
}
