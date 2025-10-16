import 'dart:io';
void reverseString(String str){
  for(int i = str.length-1; i >= 0; i--){
    stdout.write(str[i]);
  }
}

void main(){
  stdout.write("Enter a String: ");
  String str = stdin.readLineSync()!;
  reverseString(str);
}