import 'dart:io';
import 'dart:math';
void powerNumber(int n, int p){
  int value = pow(n, p).toInt();
  print("Value = $value");
}

void main(){
  stdout.write("Enter the number: ");
  int n = int.parse(stdin.readLineSync()!);
  stdout.write("Enter the power: ");
  int p = int.parse(stdin.readLineSync()!);

  powerNumber(n, p);
}