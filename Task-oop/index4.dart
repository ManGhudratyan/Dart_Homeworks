import 'dart:io';

class MathUtils {
  static double add(double a, double b) {
    double msum = a + b;
    return msum;
  }

  static double subtract(double a, double b) {
    double subtract = a - b;
    return subtract;
  }

  static double multiply(double a, double b) {
    double multiply = a * b;
    return multiply;
  }

  static double? divide(double a, double b) {
    if (b == 0) {
      return null;
    }
    return a / b;
  }
}

void main() {
  stdout.write("Which math operation do you want to perform(add, subtract, multiply, divide)? ");
  String? operation = stdin.readLineSync();

  if (operation != null) {
    stdout.write("Enter first number: ");
    double a = double.parse(stdin.readLineSync()!);
    stdout.write("Enter second number: ");
    double b = double.parse(stdin.readLineSync()!);

    switch (operation) {
      case 'add':
        print("Result of addition: ${MathUtils.add(a, b)}");
        break;
      case 'subtract':
        print("Result of subtraction: ${MathUtils.subtract(a, b)}");
        break;
      case 'multiply':
        print("Result of multiplication: ${MathUtils.multiply(a, b)}");
        break;
      case 'divide':
        double? result = MathUtils.divide(a, b);
        if (result != null) {
          print("Result of division: $result");
        }
        print("Number can not divide by zero.");
        break;
      default:
        print("You have selected invalid operation.");
    }
  }
}
