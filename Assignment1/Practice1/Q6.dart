import 'dart:io';
void main(){
  print("Enter First and Last Name: ");
  String ? firstName = stdin.readLineSync();
  String ? lastName = stdin.readLineSync();

  print("FullName is $firstName $lastName");
}
