import 'dart:io';
import 'MathQuestion.dart';

enum Grade { A, B, F }

void main() {
  List<MathQuestion> questions = [
    MathQuestion(
      "(125 * 8) + (450 / 5) = ?",
      1090,
      hint: "Solve multiplication and division first",
    ),

    MathQuestion("((75 + 25) * 12) - 350 = ?", 850),

    MathQuestion("(999 * 9) + 1111 = ?", 10102, hint: "Multiply before adding"),

    MathQuestion("(12345 + 67890) - 5555 = ?", 74680),

    MathQuestion(
      "(250 * 40) + (8000 / 2) - 150 = ?",
      13850,
      hint: "Follow order of operations",
    ),
  ];

  print("welcome to the math Quiz we wish you all luck");
  print("now lets start");

  DateTime startingTime = DateTime.now();

  for (int i = 0; i < questions.length; i++) {
    print("\nQuestion :");

    print(questions[i].questionText);
    print(questions[i].defficulty);

    if (questions[i].hint != null) {
      print(questions[i].hint);
    }

    print("answer:");
    String? input = stdin.readLineSync();
    double userInput = double.tryParse(input ?? "") ?? double.nan;
    questions[i].checkAnswer(userInput);
  }
  DateTime endingTime = DateTime.now();
  print("congrats you have finally ended the quiz now lets see your result:");
  print(
    "after spending : ${endingTime.difference(startingTime).inSeconds} seconds",
  );
  switch (MathQuestion.correctAnswersCount) {
    case 5:
      print("Your final grade is A :5/5");
      break;
    case 4:
      print("Your final grade is ${Grade.A}:4/5 ");
      break;

    case 3:
      print("Your final grade is ${Grade.B} : 3/5");
      break;

    default:
      print("Your final grade is ${Grade.F}");
  }
}
