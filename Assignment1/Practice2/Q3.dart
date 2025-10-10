import 'dart:io';
void main(){
  print("Enter a number");
  int ? num = int.parse(stdin.readLineSync()!);

  if(num == 0){
    print("$num is zero");
  }
  else if(num > 0){
    print("$num is positive");
  }
  else{
    print("$num is negative");
  }
}