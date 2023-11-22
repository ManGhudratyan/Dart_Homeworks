void myFunction(dynamic value) {
  if (value == null) {
    print("Input is null");
  } else if (value.runtimeType == int || value.runtimeType == double) {
    dynamic mult = value * 2;
    print(mult);
  } else if (value.runtimeType == String) {
    print(value.length);
  } else {
    print("Unsupported type");
  }
}

void main() {
  myFunction(12);
  myFunction(12.25);
  myFunction("Hello world!!");
  myFunction(null);
}
