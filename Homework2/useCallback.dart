void printMessage(String Function() callback){
  String result = callback();
  print("Result from callback: $result");
}

String myFunc(){
  return "Hello World!";
}

void main(){
  printMessage(myFunc);
}
