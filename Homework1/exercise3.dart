import 'dart:io';

int? convertToInteger(String? numericString) {
  if (numericString == null || numericString.isEmpty) {
    return null; 
  }
  int? parser = int.tryParse(numericString);
  return parser;
}

void main() {
  stdout.write('Enter numeric string: ');
  String? input = stdin.readLineSync();
  
  int? num = convertToInteger(input);

  if (num != null) {
    print('Numeric string convert to ${num.runtimeType}: $num');
  } else {
    print('Invalid input. Please enter a numeric string.');
  }
}
