import 'dart:io';

void add(List list){
  print("Enter the name of days: ");
  for(int i = 0; i < 7; i++){
    list[i] = stdin.readLineSync();
  }
  stdout.write("The 7 Days: ");
  list.forEach((value){
    stdout.write(value+" ");
  });
}
void main(){
  List<String> list = List.filled(7, "");
  add(list);
}