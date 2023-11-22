import 'dart:io';

void main() {
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  stdout.write('Hello ${name} \n');

  stdout.write("Please enter your weight in kilograms: ");
  double? weight = double.parse(stdin.readLineSync()!);

  stdout.write("Please enter your height with sm: ");
  double? height = double.parse(stdin.readLineSync()!);

  double bmi = weight / (height * height);
  print("Your BMI is: ${bmi}");
}
