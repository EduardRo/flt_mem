import 'package:flutter/material.dart';
import 'answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    print('am apasat butonul');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite country?',
        'answer': ['US', 'UK', 'Itally', 'France'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('This is the title'),
          ),
          body: Column(
            children: [
              Answer(
                  selectHandler: _answerQuestion,
                  nrButton: questions[1]['questionText'].toString()),
              Answer(selectHandler: _answerQuestion, nrButton: '1'),
              Answer(selectHandler: _answerQuestion, nrButton: '1'),
            ],
          )),
    );
  }
}
