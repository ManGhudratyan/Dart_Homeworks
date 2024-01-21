import 'dart:io';

void readInfoFromFile(){
  final File file = File("input.txt");
  final readData = file.readAsStringSync();
  print(readData);
}

void main(){
  readInfoFromFile();
}