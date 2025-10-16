import 'dart:io';

void main(){
  File file = File("hello.txt");
  file.writeAsStringSync("Arohi");

  String text = file.readAsStringSync();
  print(text);
}