import 'dart:math';

int? doubleInteger(int? number){
  if (number != null){
    return number * 2;
  } else{
    return null;
  }
}

int? squareInteger(int? number){
  if (number != null){
    return pow(number, 2).toInt();
  } else{
    return null;
  }
}

int? doubleAndSquare(int? number){
  int? doubleNumber = doubleInteger(number);
  int? squareNumber = squareInteger(doubleNumber);
  return squareNumber;
}

void main(){
  int number = 5;
  print('Given number: ${number}');
  print("Double of number: ${doubleInteger(number)}");
  print("Square of number: ${squareInteger(number)}");
  print("Doubled and square the number is: ${doubleAndSquare(number)}");  
}