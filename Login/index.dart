import 'dart:io';
import 'dart:convert';

void main() {
  stdout.write("Enter login: ");
  String? login = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? password = stdin.readLineSync();

  final file = File("loginPassword.json");
  final readData = file.readAsStringSync();
  final List<dynamic> data = jsonDecode(readData);
  bool successfulLogin = false;

  for (int i = 0; i < data.length; i++) {
    String storedPassword = data[i]["password"].toString();

    if (data[i]["login"] == login && storedPassword == password) {
      successfulLogin = true;
      break; 
    }
  }

  if (successfulLogin) {
    print("Successful login");
  } else {
    print("Fail");
  }
}
