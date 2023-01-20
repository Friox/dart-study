void main() {
  final ex;
  // print(ex); error, allocated x
  ex = 1;
  print(ex);
  // ex = 2;  error
}