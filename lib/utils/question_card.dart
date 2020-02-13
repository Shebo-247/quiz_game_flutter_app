import 'package:flutter/material.dart';
import 'package:quiz_game/model/question_bank.dart';

class QuestionCard extends StatelessWidget {

  final questionTitle;

  QuestionCard({this.questionTitle});

  QuestionBank questionBank = QuestionBank();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        elevation: 8.0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Q. ${questionBank.getCurrentQuestion() + 1} / 10',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                questionTitle,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
