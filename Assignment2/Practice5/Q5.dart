import 'dart:io';

void main(){
  for(int i = 1; i <= 100; i++){
    stdout.write("Enter the file$i name: ");
    String path = stdin.readLineSync()!;
    File file = File(path);
    stdout.write("write the content: ");
    String content = stdin.readLineSync()!;
    file.writeAsStringSync(content);
  }
}