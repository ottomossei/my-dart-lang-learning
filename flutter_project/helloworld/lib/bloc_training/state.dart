abstract class AnswerState {
  final String answer;
  const AnswerState(this.answer);
}

class AnswerInit extends AnswerState {
  AnswerInit() : super("No Data");
}

class AnswerChange extends AnswerState {
  AnswerChange(String answer) : super(answer);
}
