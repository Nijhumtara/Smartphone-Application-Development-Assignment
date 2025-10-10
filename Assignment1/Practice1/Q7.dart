import 'dart:io';
void main(){
  print("Enter Two numbers:");
  int ? num1 = int.parse(stdin.readLineSync()!);
  int ? num2 = int.parse(stdin.readLineSync()!);

  double quotient = num1/num2;
  int remainder = num1%num2;
  print("Quotient = $quotient and Remainder = $remainder");
}