import 'dart:io';

void main() {
  File file = File("student.csv");
  
  file.writeAsStringSync('Name, Age, Address\n');
  stdout.write("Enter name of the student: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter age of the student: ");
  int? age = int.parse(stdin.readLineSync()!);
  stdout.write("Enter address of the student: ");
  String? address = stdin.readLineSync();
  file.writeAsStringSync('$name, $age, $address');
  
  print("Congratulations!! CSV file written successfully.");
}