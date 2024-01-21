// import 'dart:io';
// import 'dart:convert';

// void func() {
//   final File file = File("books.json");
//   final File newBooks = File("new-books.json");
//   final File oldBooks = File("old-books.json");
//   final readData = file.readAsStringSync();
//   Map<String, dynamic> decodedData = json.decode(readData);
//   List<dynamic> books = decodedData["books"];

//   for (var i = 0; i < books.length; i++) {
//     var book = books[i];
//     var bookJson = json.encode(book); 

//     if (book["publication_year"] >= 1950) {
//       newBooks.writeAsStringSync(bookJson);
//     } else {
//       oldBooks.writeAsStringSync(bookJson);
//     }
//   }
// }

// void main() {
//   func();
// }



