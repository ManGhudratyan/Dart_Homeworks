import 'dart:convert';
import 'dart:io';

void main() {
  List<dynamic> decodedData = [];
  bool isLoggedIn = false;
  bool isRegistrationSuccessful = false;

  while (true) {
    if (isLoggedIn || isRegistrationSuccessful) {
      break;
    }

    stdout.writeln("You have two options \n1. Login \n2. Registration");
    stdout.write("Enter your choice (1 or 2): ");
    final File myFile = File("auth.json");

    String? userInput = stdin.readLineSync();

    if (userInput == '1') {
      print("You have chosen Login");
      stdout.write("Please enter your login: ");
      String? login = stdin.readLineSync();
      stdout.write("Please enter your password: ");
      String? password = stdin.readLineSync();

      final readData = myFile.readAsStringSync();
      decodedData = jsonDecode(readData);

      for (var user in decodedData) {
        if (user["login"] == login && user["password"] == password) {
          print("Successfully logged in");
          isLoggedIn = true;
          break;
        }
      }

      if (!isLoggedIn) {
        print("Invalid credentials");
      }
    } else if (userInput == '2') {
      print("You have chosen Registration");
      stdout.write("Please enter your login: ");
      String? login = stdin.readLineSync();
      stdout.write("Please enter your password: ");
      String? password = stdin.readLineSync();
      stdout.write("Please enter your email: ");
      String? email = stdin.readLineSync();

      decodedData.add({
        "login": login,
        "password": password,
        "email": email,
      });

      myFile.writeAsStringSync(jsonEncode(decodedData));

      print("Registration successful");
      isRegistrationSuccessful = true;
    } else {
      print("Invalid choice. Please enter 1 or 2.");
    }
  }
}
