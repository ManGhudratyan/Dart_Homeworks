void myFunction(int args1, {int? args2}) {
  int def1 = args1;
  int def2 = args2 ?? 40;

  print('args1: $def1, args2: $def2');
}

void main() {
  myFunction(40, args2 : 10);
}