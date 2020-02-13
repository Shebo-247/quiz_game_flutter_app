import 'package:flutter/material.dart';
import 'package:quiz_game/model/answer.dart';
import 'package:quiz_game/model/question.dart';
import 'package:quiz_game/model/question_bank.dart';
import 'package:quiz_game/screens/selection_page.dart';
import 'package:quiz_game/utils/question_card.dart';
import 'package:back_button_interceptor/back_button_interceptor.dart';
import 'dart:async';

import 'package:rflutter_alert/rflutter_alert.dart';

class HomePage extends StatefulWidget {
  final quizType;

  HomePage(this.quizType);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  QuestionBank questionBank = QuestionBank();

  List<Question> currentQuestionType = [];
  List<Answer> currentAnswers = [];

  List<Widget> scoreBoard = [];
  int _score = 0;

  Color mainColor;

  Timer _timer;
  int _start = 20;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          if (_start < 1) {
            timer.cancel();
          } else {
            _start -= 1;
          }
        },
      ),
    );
  }

  String getBGColor() {
    if (widget.quizType == 'Math') {
      return 'math_bg';
    } else if (widget.quizType == 'Art') {
      return 'art_bg';
    } else {
      return 'sport_bg';
    }
  }

  void checkAnswerCorrection(bool isTrue) {
    setState(() {
      if (questionBank.getCurrentQuestion() < 9) {
        if (isTrue == true) {
          _score += 1;
          scoreBoard.add(Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              constraints: BoxConstraints.tightFor(width: 30.0, height: 30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white),
              child: Icon(
                Icons.check,
                color: Colors.lightGreen,
                size: 25.0,
              ),
            ),
          ));
          _start = 20;
        } else {
          scoreBoard.add(Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              constraints: BoxConstraints.tightFor(width: 30.0, height: 30.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white),
              child: Icon(
                Icons.clear,
                color: Colors.redAccent,
                size: 25.0,
              ),
            ),
          ));
          _start = 20;
        }

        //questionBank.nextQuestion();
        getAnswerType();
      } else {
        Alert(
          context: context,
          type: AlertType.warning,
          title: "Quiz End",
          desc: "Your Score is : $_score / 10",
          buttons: [
            DialogButton(
              child: Text(
                "OK",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectionPage(),
                  ),
                );
                questionBank.reset();
              },
              width: 120,
            )
          ],
        ).show();
      }
    });
  }

  void checkTimer() {
    if (questionBank.getCurrentQuestion() < 9 && _start == 0) {
      scoreBoard.add(Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Container(
          constraints: BoxConstraints.tightFor(width: 30.0, height: 30.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0), color: Colors.white),
          child: Icon(
            Icons.clear,
            color: Colors.redAccent,
            size: 25.0,
          ),
        ),
      ));
      getAnswerType();
      _start = 20;
    }
  }

  void getAnswerType() {
    questionBank.nextQuestion();

    if (widget.quizType == 'Math') {
      currentQuestionType = questionBank.getMathQuestions();
      currentAnswers = questionBank.getMathAnswers();
      mainColor = Colors.amber;
    } else if (widget.quizType == 'Art') {
      currentQuestionType = questionBank.getArtQuestions();
      currentAnswers = questionBank.getArtAnswers();
      mainColor = Colors.lightBlue;
    } else if (widget.quizType == 'Sport') {
      currentQuestionType = questionBank.getSportQuestions();
      currentAnswers = questionBank.getSportAnswers();
      mainColor = Colors.lightGreen;
    }
  }

  @override
  void initState() {
    super.initState();

    getAnswerType();

    BackButtonInterceptor.add(myInterceptor);

    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => checkTimer());
    startTimer();
  }

  @override
  void dispose() {
    BackButtonInterceptor.remove(myInterceptor);
    super.dispose();
    _timer.cancel();
  }

  bool myInterceptor(bool stopDefaultButtonEvent) {
    Navigator.pop(context);
    questionBank.reset();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/${getBGColor()}.png'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                        questionBank.reset();
                      },
                      child: Icon(
                        Icons.clear,
                        size: 40.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                    Text(
                      '00:$_start',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Submit'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        QuestionCard(
                          questionTitle: currentQuestionType[
                                  questionBank.getCurrentQuestion()]
                              .questionTitle,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 25.0, right: 25.0),
                          child: FlatButton(
                            padding: EdgeInsets.all(20.0),
                            onPressed: () {
                              setState(() {
                                checkAnswerCorrection(currentAnswers[0].isTrue);
                              });
                            },
                            child: Text(
                              currentAnswers[0].answer,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            color: mainColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 25.0, right: 25.0),
                          child: FlatButton(
                            padding: EdgeInsets.all(20.0),
                            onPressed: () {
                              setState(() {
                                checkAnswerCorrection(currentAnswers[1].isTrue);
                              });
                            },
                            child: Text(
                              currentAnswers[1].answer,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            color: mainColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 25.0, right: 25.0),
                          child: FlatButton(
                            padding: EdgeInsets.all(20.0),
                            onPressed: () {
                              setState(() {
                                checkAnswerCorrection(currentAnswers[2].isTrue);
                              });
                            },
                            child: Text(
                              currentAnswers[2].answer,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            color: mainColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, left: 25.0, right: 25.0),
                          child: FlatButton(
                            padding: EdgeInsets.all(20.0),
                            onPressed: () {
                              setState(() {
                                checkAnswerCorrection(currentAnswers[3].isTrue);
                              });
                            },
                            child: Text(
                              currentAnswers[3].answer,
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  constraints: BoxConstraints.tightFor(
                    height: 60.0,
                  ),
                  color: Colors.grey,
                  child: Row(
                    children: scoreBoard,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
