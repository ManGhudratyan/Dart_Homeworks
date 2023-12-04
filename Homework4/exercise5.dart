import 'dart:io';

int getFactorial(int number) {
  int fact = 1;
  for (var i = 1; i <= number; i++) {
    fact *= i;
  }
  return fact;
}

void main() {
  int? number;
  while (number == null) {
    stdout.write("Enter a number: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    number = int.tryParse(input);
    if (number == null) {
      print("Invalid input. Please enter a valid number.");
    }
  }
  print("Factorial of the given number is ${getFactorial(number)}.");
}
