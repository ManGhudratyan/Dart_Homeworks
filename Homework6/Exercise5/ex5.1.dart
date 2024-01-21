import 'dart:io';
import 'dart:convert';

void readFromJsonFile() {
  final File file = File("books.json");
  final readData = file.readAsStringSync();
  Map<String, dynamic> decodedData = json.decode(readData);
  List<dynamic> books = decodedData["books"];
  
  print("Books published in 1937\n");
  for (var i = 0; i < books.length; i++) {
    var book = books[i];
    if (book["publication_year"] == 1937) {
      print("Title: ${book["title"]}");
    }
  }
}

void main() {
  readFromJsonFile();
}
