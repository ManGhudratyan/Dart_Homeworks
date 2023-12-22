import 'dart:io';
import 'dart:convert';

List<dynamic> readData() {
  final file = File("loginPassword.json");
  if (file.existsSync()) {
    final readData = file.readAsStringSync();
    return jsonDecode(readData);
  } else {
    return [];
  }
}

void writeDataToFile(List<dynamic> data) {
  final file = File("loginPassword.json");
  file.writeAsStringSync(jsonEncode(data));
}

void registrationFunction() {
  stdout.write("Enter new login: ");
  String? newLogin = stdin.readLineSync();
  stdout.write("Enter new password: ");
  String? newPassword = stdin.readLineSync();
  final data = readData();

  bool loginExists = false;
  for (var user in data) {
    if (user["login"] == newLogin) {
      loginExists = true;
      break;
    }
  }

  if (loginExists) {
    print("Registration failed. The login already exists.");
  } else {
    data.add({
      "login": newLogin,
      "password": newPassword,
    });
    writeDataToFile(data);
    print("Registration successful");
  }
}

void main() {
  registrationFunction();
}
