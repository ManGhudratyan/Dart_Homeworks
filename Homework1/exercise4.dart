import 'dart:io';

void main() {
  stdout.write('Hey user, please enter your age: ');
  String? userInput = stdin.readLineSync();
  
  int? age = userInput != null ? int.tryParse(userInput) : null;
  
  if (age != null) {
    if (age > 0 && age < 18) {
      print('User is a minor');
    } else if (age < 0) {
      print('User age cannot be a negative number.');
    } else {
      print('User is an adult');
    }
  } else {
    print('Unknown');
  }
}

