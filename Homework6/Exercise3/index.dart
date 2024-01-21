import 'dart:io';

void checkFile() {
  final File outputFile = File("output.txt");
  final File inputFile = File("input.txt");

  if (outputFile.existsSync()) {
    final readContent = inputFile.readAsStringSync();
    outputFile.writeAsStringSync(readContent, mode: FileMode.append);
    print("Content input.txt append to the output.txt");
  } else {
    outputFile.createSync();
    final readContent = inputFile.readAsStringSync();
    outputFile.writeAsStringSync(readContent);
    print("Created new output.txt.");
  }
}

void main() {
  checkFile();
}
