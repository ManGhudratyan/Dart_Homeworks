import 'dart:io';
import 'dart:convert';

void readFromJsonFile() {
  final File file = File("books.json");
  final readData = file.readAsStringSync();
  Map<String, dynamic> decodedData = json.decode(readData);
  List<dynamic> books = decodedData["books"];
  
  for (var i = 0; i < books.length; i++) {
    var book = books[i];
    print("\nBook: ${i + 1}");
    print("Title: ${book["title"]}");
    print("Author: ${book["author"]}");
    print("Publication year: ${book["publication_year"]}");
  }
}

void main() {
  readFromJsonFile();
}

