import 'dart:io';

// Question class
class Question {
  String question;
  List<String> options;
  int correctAnswerIndex;

  Question(this.question, this.options, this.correctAnswerIndex);
}

// Quiz class
class Quiz {
  List<Question> questions = [];
  int score = 0;

  Quiz() {
    // Adding questions
    questions.add(Question("What is the capital of Bangladesh?",
        ["Dhaka", "Chittagong", "Sylhet"], 0));
    questions.add(Question("Which language Dart is used for?",
        ["Web Dev", "Flutter", "Android"], 1));
    questions.add(Question(
        "Which one is OOP concept?", ["List", "Class", "double"], 1));
  }

  void start() {
    print("-------- Quiz Started --------");

    for (var q in questions) {
      print("\n${q.question}");

      for (int i = 0; i < q.options.length; i++) {
        print("$i. ${q.options[i]}");
      }

      stdout.write("Enter answer index: ");
      int userAns = int.parse(stdin.readLineSync()!);

      if (userAns == q.correctAnswerIndex) {
        score++;
      }
    }

    print("\n-------- Quiz Finished -------");
    print("Your Score: $score/${questions.length}");
  }
}

void main() {
  Quiz quiz = Quiz();
  quiz.start();
}
