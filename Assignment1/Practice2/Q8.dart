import 'dart:io';
void main(){
  bool isExit = false;

  while(!isExit){
    print("Calculator");
    print("Perform Operations: ");
    print("1. (+)\n2. (-)\n3. (*)\n4. (/)\n5. Exit");
    int ? opt = int.parse(stdin.readLineSync()!);

    if(opt == 1){
      print("Enter two numbers: ");
      int ? n1 = int.parse(stdin.readLineSync()!);
      int ? n2 = int.parse(stdin.readLineSync()!);
      int sum = n1 + n2;
      print("Summation = $sum");
    } 
    else if (opt == 2) {
      print("Enter two numbers: ");
      int ? n1 = int.parse(stdin.readLineSync()!);
      int ? n2 = int.parse(stdin.readLineSync()!);
      int sub = n1 - n2;
      print("Subtraction = $sub");
    }
    else if (opt == 3) {
      print("Enter two numbers: ");
      int ? n1 = int.parse(stdin.readLineSync()!);
      int ? n2 = int.parse(stdin.readLineSync()!);
      int mult = n1 * n2;
      print("Multiplication = $mult");
    }
    else if(opt == 4){
      print("Enter two numbers: ");
      int ? n1 = int.parse(stdin.readLineSync()!);
      int ? n2 = int.parse(stdin.readLineSync()!);
      double div = n1/n2;
      print("Division = $div");
    }
    else if(opt == 5){
      isExit = true;
    }
    else{
      print("You chose wrong option");
    }

  }
  

}