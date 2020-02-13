import 'package:quiz_game/model/answer.dart';

class Question {
  String questionTitle;
  List<Answer> answers;


  Question({this.questionTitle, this.answers});

  String getQuestionTitle(){
    return this.questionTitle;
  }

  List<Answer> getAnswers(){
    return answers;
  }
}
