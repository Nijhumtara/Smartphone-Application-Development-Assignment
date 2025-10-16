import 'dart:io';

void main() {
  Map<int, String> toDoLists = {
    1: "Take Shower",
    2: "Do Breakfast",
    3: "Go to University",
    4: "Do Lunch",
    5: "Study",
  };

  int noOfTasks = toDoLists.keys.length;
  bool isContinue = true;
  print("<--- Welcome to the To-Do Application --->");

  while (isContinue) {
    print(
      "You have options:\n1. Add New Task.\n2. Remove a Task you have completed.\n3. View your tasks.\n4. Exit.",
    );

    stdout.write("Enter a choice: ");
    int n = int.parse(stdin.readLineSync()!);
    
    if (n == 1) {
      stdout.write("Enter the number of task you want to include: ");
      int tasks = int.parse(stdin.readLineSync()!);
      for (int i = 1; i <= tasks; i++) {
        noOfTasks = noOfTasks + 1;
        stdout.write("Write the task no. $noOfTasks: ");
        String task = stdin.readLineSync()!;
        toDoLists.addAll({noOfTasks: task});
      }
    } else if (n == 2) {
      stdout.write("Enter the task no. you want to remove: ");
      int key = int.parse(stdin.readLineSync()!);
      toDoLists.remove(key);
    } else if (n == 3) {
      toDoLists.forEach((k, v){
        print("$k: $v.");
      });
    } else if (n == 4) {
      isContinue = false;
    } else {
      print("You Chose The Wrong Option.");
    }
  }
}
