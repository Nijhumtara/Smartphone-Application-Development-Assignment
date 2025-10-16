import 'dart:io';

void main(){
  File file = File('hello_copy.txt');
  if(file.existsSync()){
    file.deleteSync();
  }
  else{
    print("File not found.");
  }
  
}