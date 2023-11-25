import 'dart:io';

enum Operators { addition, multiplication, division, subtraction }

num calculate(num a, num b, Operators operator) {
  switch (operator) {
    case Operators.addition:
      return a + b;
    case Operators.multiplication:
      return a * b;
    case Operators.division:
      return a / b;
    case Operators.subtraction:
      return a - b;
  }
}

void main() {
  double? number1, number2;
  Operators? operator;

  stdout.write('Please write first number: ');
  number1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('Please write second number: ');
  number2 = double.tryParse(stdin.readLineSync()!);

  stdout.write("Enter the operation (+, -, *, /): ");
  String? operatorString = stdin.readLineSync();

  if (operatorString != null) {
    switch (operatorString) {
      case '+':
        operator = Operators.addition;
        break;
      case '-':
        operator = Operators.subtraction;
        break;
      case '*':
        operator = Operators.multiplication;
        break;
      case '/':
        operator = Operators.division;
        break;
      default:
        print('Invalid operator');
        return;
    }

    print(calculate(number1!, number2!, operator));
  } else {
    print('Invalid․');
  }
}
