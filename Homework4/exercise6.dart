import 'dart:io';

int getSum(number){
  int msum = 0;
  for (var i = 0; i <= number; i++){
    if (i % 2 == 0){
      msum += i;
    }
  }
  return msum;
}


void main(){
  int? number;
  while (number == null){
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
  print("Sum of the numbers are ${getSum(number)}.");
}