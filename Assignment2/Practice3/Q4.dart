import 'dart:io';
void password(String? name, int? digits){
  print("Password = $name@$digits");
}

void main(){
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter your digits: ");
  int? digits = int.parse(stdin.readLineSync()!);
  password(name, digits);
}