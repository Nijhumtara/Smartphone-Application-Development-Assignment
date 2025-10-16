import 'dart:io';

void main(){
  File file1 = File("hello.txt");
  File file2 = File("hello_copy.txt");
  String copyText = file1.readAsStringSync();

  file2.writeAsString(copyText);
}