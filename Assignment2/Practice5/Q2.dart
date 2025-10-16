import 'dart:io';
void main(){
  File file = File("hello.txt");
  file.writeAsStringSync("\nAkansha", mode: FileMode.append);
  print(file.readAsStringSync());

}