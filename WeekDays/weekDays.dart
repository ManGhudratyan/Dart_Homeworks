import 'dart:io';

enum WeekDays {Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday}

WeekDays? getDay(int number) {
  switch (number) {
    case 1:
      return WeekDays.Monday;
    case 2:
      return WeekDays.Tuesday;
    case 3:
      return WeekDays.Wednesday;
    case 4:
      return WeekDays.Thursday;
    case 5:
      return WeekDays.Friday;
    case 6:
      return WeekDays.Saturday;
    case 7:
      return WeekDays.Sunday;
    default:
      return null;
  }
}

void main(){
  stdout.write('Write the number of day of the week: ');
  int? number = int.tryParse(stdin.readLineSync()!);
  if (number == null || number.runtimeType == String){
    print("Please write valid number");
  }
  else if(number < 1 || number > 7){
    print("Please write a number only between 1-7, because there are 7 days in a week.");
  }
  else{
    WeekDays? day = getDay(number);
    print("The day is $day.");
  }
}