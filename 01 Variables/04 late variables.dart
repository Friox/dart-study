void main() {
  late int ex;
  // print(ex); 아래와 같은 에러 출력
  /*
  The late local variable 'ex' is definitely unassigned at this point.
  Ensure that it is assigned on necessary execution paths.
  dart(definitely_unassigned_late_local_variable)
  */

  late int ex2;
  ex2 = 1;
  print(ex2);
}
