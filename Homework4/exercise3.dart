import 'dart:io';

String getReversedString(String mstr) {
  String newMstr = '';
  for (var i = mstr.length - 1; i >= 0; i--) {
    newMstr += mstr[i];
  }
  return newMstr;
}

void main() {
  stdout.write("Enter long string: ");
  String? sentence = stdin.readLineSync();
  print(getReversedString(sentence!));
}
