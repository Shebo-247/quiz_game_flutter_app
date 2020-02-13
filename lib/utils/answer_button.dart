import 'package:flutter/material.dart';
import 'package:quiz_game/model/question_bank.dart';

class AnswerButton extends StatefulWidget {

  final String title;
  final bool isTrue;

  AnswerButton(this.title, this.isTrue);

  @override
  _AnswerButtonState createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
      child: FlatButton(
        padding: EdgeInsets.all(20.0),
        onPressed: () {
          setState(() {
            if (widget.isTrue == false){
              print('You Lose');
            }
            else{
              print('Right Answer');
              QuestionBank().nextQuestion();
              print(QuestionBank().getCurrentQuestion());
              //QuestionBank().nextQuestion();
            }
          });
        },
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        color: Colors.amberAccent,
      ),
    );
  }
}

