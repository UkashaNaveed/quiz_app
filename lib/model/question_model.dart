class QuestionModel {
  const QuestionModel({required this.text, required this.answer});

  final String text;
  final List<String> answer;

  List<String> getShufleAnswer() {
    final shufleAnswer = List.of(answer);
    shufleAnswer.shuffle();
    return shufleAnswer;
  }
}
