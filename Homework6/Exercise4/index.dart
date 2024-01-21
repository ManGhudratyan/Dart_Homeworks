import 'dart:io';
import 'dart:convert';

void readJsonFromFile(){
  final File file = File("person.json");
  final readData = file.readAsStringSync();
  Map<String, dynamic> decodedData = json.decode(readData);
  List<dynamic> employees = decodedData["employees"];
  for (var person in employees){
    print("Name: ${person["name"]}, Email: ${person["email"]}");
  }
}

void main(){
  readJsonFromFile();
}