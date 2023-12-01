import 'dart:io';

enum MathOperators { addition, subtraction, multiplication, division }

num doMathOperations(num a, num b, MathOperators operators) {
  switch (operators) {
    case MathOperators.addition:
      return a + b;
    case MathOperators.subtraction:
      return a - b;
    case MathOperators.multiplication:
      return a * b;
    case MathOperators.division:
      if (b != 0) {
        return a / b;
      } else {
        print("Error: A number is not divisible by 0.");
        return double.nan;
      }
  }
}

void performOperation(num Function() operation) {
  num result = operation();
  print('Result: $result');
}

void main() {
  MathOperators operators;
  stdout.write("Enter first number: ");
  String? input1 = stdin.readLineSync();
  if (input1 == null || input1.isEmpty) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  num? number1 = num.tryParse(input1);
  if (number1 == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  stdout.write("Enter second number: ");
  String? input2 = stdin.readLineSync();
  if (input2 == null || input2.isEmpty) {
    print("Invalid input. Please enter a valid number.");
    return;
  }
  num? number2 = num.tryParse(input2);
  if (number2 == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  stdout.write("Enter the operation (+, -, *, /): ");
  String? symb = stdin.readLineSync();
  if (symb == null || symb.isEmpty) {
    print("Invalid input. Please enter a valid operation (+, -, *, /).");
    return;
  }
  switch (symb) {
    case "+":
      operators = MathOperators.addition;
      break;
    case "-":
      operators = MathOperators.subtraction;
      break;
    case "*":
      operators = MathOperators.multiplication;
      break;
    case "/":
      operators = MathOperators.division;
      break;
    default:
      print("Please enter only (+, -, *, /).");
      return;
  }
  performOperation(() => doMathOperations(number1, number2, operators));
}
