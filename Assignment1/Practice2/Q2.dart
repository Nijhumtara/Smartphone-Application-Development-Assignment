import 'dart:io';

void main() {
  print("Enter a character:");
  String? char = stdin.readLineSync();

  if (char != null &&
      (char.toLowerCase() == 'a' ||
       char.toLowerCase() == 'e' ||
       char.toLowerCase() == 'i' ||
       char.toLowerCase() == 'o' ||
       char.toLowerCase() == 'u')) {
    print("Vowel");
  } else {
    print("Consonant");
  }
}
