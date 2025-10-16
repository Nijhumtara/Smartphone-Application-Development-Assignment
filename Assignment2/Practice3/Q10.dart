import 'dart:io';
bool isEven(int num){
  if(num%2 == 0){
    return true;
  }
  else{
    return false;
  }
}
void main(){
  stdout.write("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);
  bool even = isEven(n);
  print("The value $n is even it's $even");
}