import 'BaseQuestion.dart';

class MathQuestion extends BaseQuestion {
  double _correctAnswer;
  String? hint;
  static int correctAnswersCount = 0;

  MathQuestion(super.questionTexst, this._correctAnswer, {this.hint});

  String get defficulty {
    if (_correctAnswer.toString().length > 3) {
      return "hard qustion";
    } else {
      return "easy question";
    }
  }

  @override
  bool checkAnswer(double userInput) {
    if (userInput.isNaN) {
      print("wrong answer");
      return false;
    }
    if (userInput == _correctAnswer) {
      print("correct answer");
      correctAnswersCount++;
      return true;
    } else {
      print("wrong answer");
      return false;
    }
  }
}
