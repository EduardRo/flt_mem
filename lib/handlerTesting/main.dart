import 'package:flutter/material.dart';
import 'answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favorite country?',
      'answers': ['US', 'UK', 'Itally', 'France'],
    },
  ];
  var _questionIndex = 0;
  // functia chemata
  void _answerQuestion(String score) {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print('am apasat butonul $_questionIndex');
      print(score);
    } else {
      setState(() {
        _questionIndex = 0;
      });
      print('am apasat butonul $_questionIndex');
      print(score);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is the title'),
          ),
          body: Column(
            children: [
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(
                    selectHandler: () => _answerQuestion(answer),
                    answerText: answer);
              }).toList(),
            ],
          )),
    );
  }
}

/* Answer(
                  selectHandler: _answerQuestion,
                  nrButton: questions[1]['questionText'].toString()),
              Answer(selectHandler: _answerQuestion, nrButton: '1'),
              Answer(selectHandler: _answerQuestion, nrButton: '2'),*/