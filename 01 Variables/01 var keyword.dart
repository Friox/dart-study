void main() {
  // var
  var ex1 = 1; // TYPE : int
  print('ex1 (var) : ${ex1.runtimeType}, ${ex1}');
  // 올바르지 않은 코드, 한번정해진 타입은 변하지 않는다.
  // ex1 = 'hello!';

  // 타입 지정
  int ex2 = 1234;
  print('ex2 (int) : ${ex2.runtimeType}, ${ex2}');

  double ex3 = 56.78;
  print('ex3 (double) : ${ex3.runtimeType}, ${ex3}');

  bool ex4 = true;
  print('ex4 (bool) : ${ex4.runtimeType}, ${ex4}');

  String ex5 = 'Hello!';
  print('ex5 (String) : ${ex5.runtimeType}, ${ex5}');

  // dynamic
  dynamic ex6 = 'Bye!'; // TYPE: String
  print('ex6 (dynamic) : ${ex6.runtimeType}, ${ex6}');
  ex6 = true; // TYPE: bool
  print('ex6 (dynamic) : ${ex6.runtimeType}, ${ex6}');
  ex6 = 1; // TYPE: int
  print('ex6 (dynamic) : ${ex6.runtimeType}, ${ex6}');

  var ex7; // TYPE: dynamic, Null
  print('ex7 (var, auto dynamic) : ${ex7.runtimeType}, ${ex7}');
  ex7 = 'This is dynamic';
  print('ex7 (var, auto dynamic) : ${ex7.runtimeType}, ${ex7}');
  ex7 = 1234;
  print('ex7 (var, auto dynamic) : ${ex7.runtimeType}, ${ex7}');

  if (ex7 is String) {
    // 이 스코프 내부에선 ex7은 String 타입으로 취급
    print('ex7 is String');
  }

  if (ex7 is int) {
    // 이 스코프 내부에선 ex7은 int 타입으로 취급
    print('ex7 is int');
  }
}
