abstract class BaseQuestion {
  BaseQuestion(this.questionText);
  late String questionText;
  bool checkAnswer(double userInput);
}
