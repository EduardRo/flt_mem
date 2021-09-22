import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({Key? key, required this.selectHandler, required this.answerText})
      : super(key: key);
  final VoidCallback selectHandler;
  final String? answerText;
  //Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.red,
          ),
          onPressed: selectHandler,
          child: Text(answerText.toString()),
        ),
      ),
    );
  }
}
