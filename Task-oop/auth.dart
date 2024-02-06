import 'dart:io';
import 'dart:convert';

abstract class Authentication {
  void login();
  void register();
}

class AuthenticationImp implements Authentication {
  final String username;
  final String password;

  AuthenticationImp(this.username, this.password);

  @override
  void login() {
    stdout.write("Please write username: ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Please write password: ");
    String inputPassword = stdin.readLineSync()!;

    final File file = File("users.json");
    try {
      final data = file.readAsStringSync();
      final decodedData = jsonDecode(data);
      if (decodedData["username"] == inputUsername && decodedData["password"] == inputPassword) {
        print("Success");
      } else {
        print("Invalid");
      }
    } catch (e) {
      print("Error reading file: $e");
    }
  }

  @override
  void register() {
    stdout.write("Please write username: ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Please write password: ");
    String inputPassword = stdin.readLineSync()!;

    final File file = File("users.json");
    try {
      if (file.existsSync()) {
        final data = file.readAsStringSync();
        final decodedData = jsonDecode(data);
        if (decodedData["username"] == inputUsername) {
          print("User already exists");
          return;
        }
      }
      file.writeAsStringSync(
          jsonEncode({'username': inputUsername, 'password': inputPassword}));
      print("Success");
    } catch (error) {
      print("Error writing file: $error");
    }
  }
}

void main() {
  AuthenticationImp auth = AuthenticationImp('username', 'password');
  auth.register();
}
