import 'package:quiz_game/model/answer.dart';
import 'package:quiz_game/model/question.dart';

class QuestionBank {

  static int _currentQuestionNumber = -1;

  List<Question> _mathQuestions = [
    Question(
      questionTitle: 'Which is greater than 4?',
      answers: [
        Answer(answer: '5', isTrue: true),
        Answer(answer: '-5', isTrue: false),
        Answer(answer: '-1/2', isTrue: false),
        Answer(answer: '-25', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Which is the smallest?',
      answers: [
        Answer(answer: '-1', isTrue: true),
        Answer(answer: '-1/2', isTrue: false),
        Answer(answer: '0', isTrue: false),
        Answer(answer: '3', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Combine terms: 12a + 26b -4b – 16a.',
      answers: [
        Answer(answer: '4a + 22b', isTrue: false),
        Answer(answer: '-28a + 30b', isTrue: false),
        Answer(answer: '-4a + 22b', isTrue: true),
        Answer(answer: '28a + 30b', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Simplify: (4 – 5) – (13 – 18 + 2).',
      answers: [
        Answer(answer: '-1', isTrue: false),
        Answer(answer: '-2', isTrue: false),
        Answer(answer: '1', isTrue: false),
        Answer(answer: '2', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'What is |-26|?',
      answers: [
        Answer(answer: '-26', isTrue: false),
        Answer(answer: '26', isTrue: true),
        Answer(answer: '0', isTrue: false),
        Answer(answer: '1', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Multiply: (x – 4)(x + 5)',
      answers: [
        Answer(answer: 'x2 + 5x - 20', isTrue: false),
        Answer(answer: 'x2 - 4x - 20', isTrue: false),
        Answer(answer: 'x2 - x - 20', isTrue: false),
        Answer(answer: 'x2 + x - 20', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'Factor: 5x2 – 15x – 20.',
      answers: [
        Answer(answer: '5(x-4)(x+1)', isTrue: true),
        Answer(answer: '-2(x-4)(x+5)', isTrue: false),
        Answer(answer: '-5(x+4)(x-1)', isTrue: false),
        Answer(answer: '5(x+4)(x+1)', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Solve for x: 2x – y = (3/4)x + 6.',
      answers: [
        Answer(answer: '(y + 6)/5', isTrue: false),
        Answer(answer: '4(y + 6)/5', isTrue: true),
        Answer(answer: '(y + 6)', isTrue: false),
        Answer(answer: '4(y - 6)/5', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Find the value of 3 + 2 • (8 – 3)',
      answers: [
        Answer(answer: '25', isTrue: false),
        Answer(answer: '13', isTrue: false),
        Answer(answer: '17', isTrue: false),
        Answer(answer: '24', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'Factor: 3y(x – 3) -2(x – 3).',
      answers: [
        Answer(answer: '(x – 3)(x – 3)', isTrue: false),
        Answer(answer: '(x – 3)2', isTrue: false),
        Answer(answer: '(x – 3)(3y – 2)', isTrue: true),
        Answer(answer: '3y(x – 3)', isTrue: false),
      ],
    ),
  ];

  List<Question> _artQuestions = [
    Question(
      questionTitle: 'The Russo brothers Anthony and Joseph are best known for directing which 2018 Marvel box office hit?',
      answers: [
        Answer(answer: 'Deadpool', isTrue: false),
        Answer(answer: 'Avengers : Infinity War', isTrue: true),
        Answer(answer: 'Iron Man', isTrue: false),
        Answer(answer: 'Captain America', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Which Canadian actor will reprise his role as Wade Wilson in David Leitch\'s Deadpool 2?',
      answers: [
        Answer(answer: 'Chris Brat', isTrue: false),
        Answer(answer: 'Ryan Ronalds', isTrue: false),
        Answer(answer: 'Robert D. Junoir', isTrue: true),
        Answer(answer: 'Chris Evans', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Who played the role of Lucius Fox in the 2008 film The Dark Knight?',
      answers: [
        Answer(answer: 'Samuel L. Jackson', isTrue: false),
        Answer(answer: 'Denzil Washington', isTrue: false),
        Answer(answer: 'Will Smith', isTrue: false),
        Answer(answer: 'Morgan Freeman', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'Who played Jack Dawson in the 1997 film Titanic?',
      answers: [
        Answer(answer: 'Matt Dameon', isTrue: false),
        Answer(answer: 'Leonardo Di Caprio', isTrue: true),
        Answer(answer: 'Tom Cruise', isTrue: false),
        Answer(answer: 'Brad Pitt', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Sam Gamgee, Faramir and Legolas are characters from which Oscar winning film franchise?',
      answers: [
        Answer(answer: 'The Hobbit', isTrue: false),
        Answer(answer: 'The English Patient', isTrue: false),
        Answer(answer: 'Lord of the rings', isTrue: true),
        Answer(answer: 'Forest Gump', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'What is the title of the sequel to \'Dawn of the Planet of the Apes\' directed by Matt Reeves scheduled to be released in July 2017?',
      answers: [
        Answer(answer: 'Rise of the Planet of the Apes', isTrue: false),
        Answer(answer: 'Planet of the Apes', isTrue: false),
        Answer(answer: 'Dawn of the Planet of the Apes', isTrue: false),
        Answer(answer: 'War of the Planet of the Apes', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'Which young English actor will play Peter Parker and Spiderman in the summer 2017 film \'Spider-Man: Homecoming\'?',
      answers: [
        Answer(answer: 'Tom Hardy', isTrue: false),
        Answer(answer: 'Tom Holland', isTrue: true),
        Answer(answer: 'Tom Timberlake', isTrue: false),
        Answer(answer: 'Tom Hiddleston', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'In the cast of recently released Hail Ceaser this actress first won critical acclaim in The Horse Whisperer, and then in 2003 in Lost in Translation, with Bill Murray',
      answers: [
        Answer(answer: 'Emilia Clarke', isTrue: false),
        Answer(answer: 'Melissa McCarthy', isTrue: false),
        Answer(answer: 'Scarlet Johanson', isTrue: true),
        Answer(answer: 'Kate Winslet', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Famous British actress who starred in the film The Dressmaker in 2015.',
      answers: [
        Answer(answer: 'Cate Blanchet', isTrue: false),
        Answer(answer: 'Kate Winslet', isTrue: true),
        Answer(answer: 'Rachel McAdams', isTrue: false),
        Answer(answer: 'Jannifer Lawrenece', isTrue: false),
      ],
    ),
    Question(
      questionTitle: '"...That they may take our lives, but they\'ll never take our freedom.", Said at ?',
      answers: [
        Answer(answer: 'Gone With the Wind', isTrue: false),
        Answer(answer: 'Braveheart', isTrue: true),
        Answer(answer: 'Blazing Saddles', isTrue: false),
        Answer(answer: 'The Silence of the Lambs', isTrue: false),
      ],
    ),
  ];
  List<Question> _sportQuestions = [
    Question(
      questionTitle: 'In which year did Maradona score a goal with his hand ?',
      answers: [
        Answer(answer: '1987', isTrue: false),
        Answer(answer: '1985', isTrue: false),
        Answer(answer: '1990', isTrue: false),
        Answer(answer: '1986', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'In which country were the first Olympic Games held ?',
      answers: [
        Answer(answer: 'Greece', isTrue: true),
        Answer(answer: 'Japan', isTrue: false),
        Answer(answer: 'USA', isTrue: false),
        Answer(answer: 'France', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'How matches did Mohammed Ali lose in his career ?',
      answers: [
        Answer(answer: 'Two Matches', isTrue: false),
        Answer(answer: 'Three Matches', isTrue: false),
        Answer(answer: 'Only One', isTrue: true),
        Answer(answer: 'Four Matches', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'In which sport can you win the Davis Cup ?',
      answers: [
        Answer(answer: 'Basket Ball', isTrue: false),
        Answer(answer: 'Volley Ball', isTrue: false),
        Answer(answer: 'Ping Pong', isTrue: false),
        Answer(answer: 'Tennis', isTrue: true),
      ],
    ),
    Question(
      questionTitle: 'With which game does Santosh Trophy is associated',
      answers: [
        Answer(answer: 'National Football', isTrue: true),
        Answer(answer: 'Tennis', isTrue: false),
        Answer(answer: 'Circket', isTrue: false),
        Answer(answer: 'Golf', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'The National Game of Japan is',
      answers: [
        Answer(answer: 'Tennis', isTrue: false),
        Answer(answer: 'Kararte', isTrue: false),
        Answer(answer: 'Sumo wrestling', isTrue: true),
        Answer(answer: 'Ice hockey', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Which Premier League winner’s father played rugby for Wales ?',
      answers: [
        Answer(answer: 'Nani', isTrue: false),
        Answer(answer: 'Paul Schools', isTrue: false),
        Answer(answer: 'Ryan Giggs', isTrue: true),
        Answer(answer: 'Fernandes', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'Which player holds the record for the most goals in consecutive Premier League games ?',
      answers: [
        Answer(answer: 'Luis Suarez', isTrue: false),
        Answer(answer: 'Harry Kane', isTrue: false),
        Answer(answer: 'Jamie vardy', isTrue: true),
        Answer(answer: 'Mohammed Salah', isTrue: false),
      ],
    ),
    Question(
      questionTitle: 'The winners of the UEFA Champions League and the UEFA Europe League compete for which sporting trophy ?',
      answers: [
        Answer(answer: 'CAF Super Cup', isTrue: false),
        Answer(answer: 'UEFA Super Cup', isTrue: true),
        Answer(answer: 'ASC Super Cup', isTrue: false),
        Answer(answer: 'FA Cup', isTrue: false),
      ],
    ),
    Question(
      questionTitle: '“La Liga” is the name of which European country’s professional football association ?',
      answers: [
        Answer(answer: 'France', isTrue: false),
        Answer(answer: 'Italy', isTrue: false),
        Answer(answer: 'England', isTrue: false),
        Answer(answer: 'Spanish', isTrue: true),
      ],
    ),
  ];

  List<Question> getMathQuestions(){
    return this._mathQuestions;
  }

  List<Question> getArtQuestions(){
    return this._artQuestions;
  }

  List<Question> getSportQuestions(){
    return this._sportQuestions;
  }

  List<Answer> getMathAnswers(){
    List<Answer> answers = _mathQuestions[_currentQuestionNumber].answers;
    return answers;
  }
  List<Answer> getArtAnswers(){
    List<Answer> answers = _artQuestions[_currentQuestionNumber].answers;
    return answers;
  }
  List<Answer> getSportAnswers(){
    List<Answer> answers = _sportQuestions[_currentQuestionNumber].answers;
    return answers;
  }

  int getCurrentQuestion(){
    return _currentQuestionNumber;
  }

  void nextQuestion(){
    _currentQuestionNumber++;
  }


  void reset(){
    _currentQuestionNumber = -1;
  }
}
