void func({String? arg1, double? arg2, int? arg3}){
  String def1 = arg1 ?? "Default value";
  double def2 = arg2 ?? 50.5;
  int def3 = arg3 ?? 60;

  print('First argument: $def1');
  print('Second argument: $def2');
  print('Third argument: $def3');
}

void main(){
  func();
  print('---------------------');
  func(arg1 : 'Hello', arg3 : 70);
}