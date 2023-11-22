import 'dart:io';

void main() {
    stdout.write('Please write first number: ');
    double number1 = double.parse(stdin.readLineSync()!);
    stdout.write('Please write second number: ');
    double number2 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter the operation (+, -, *, /): ");
    String? symb = stdin.readLineSync();

    if (symb == '-') {
      double minus = number1 - number2;
      print("Subtraction: $minus");
    } 
    else if(symb == '+'){
      double msum = number1 + number2;
      print('Sum is: $msum');
    } 
    else if(symb == '/'){
      double div = number1 / number2;
      print('Divide is: $div');
    }
    else if(symb == '*'){
      double mult = number1 * number2;
      print('Multiple is: $mult');
    }
    else {
      print("Invalid operation.");
    }
}
