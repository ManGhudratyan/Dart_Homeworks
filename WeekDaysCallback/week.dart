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

void checkWeekDay(int number, Function(WeekDays? day) callback) {
  WeekDays? day = getDay(number);
  callback(day);
}

void printWeekDay(WeekDays? day) {
  if (day != null) {
    if (day.index >= 0 && day.index <= 4) {
      print("$day is a work day.");
    } else if (day.index == 5 || day.index == 6) {
      print("$day is a non-working day.");
    }
  } else {
    print("Invalid day");
  }
}

void main() {
  stdout.write('Write the number of day of the week: ');
  int? number = int.tryParse(stdin.readLineSync()!);
  if (number == null || number.runtimeType == String) {
    print("Please write a valid number");
  } else if (number < 1 || number > 7) {
    print("Please write a number only between 1-7, because there are 7 days in a week.");
  } else {
    checkWeekDay(number, printWeekDay);
  }
}
