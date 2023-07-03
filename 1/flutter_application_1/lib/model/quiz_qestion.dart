class QuizQuestion {
  //퀴즈 데이터 저장
  final String text;
  final List<String> answers;

  const QuizQuestion(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
    //shuffled modifiy original list memory
  }
}
