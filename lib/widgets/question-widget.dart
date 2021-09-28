import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {Key? key,
      required this.idx,
      required this.enunt,
      required this.var1,
      required this.path,
      required this.selectHandler})
      : super(key: key);

  final int idx;
  final var1;
  final enunt;
  final path;
  final VoidCallback selectHandler;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        children: [
          Text(idx.toString()),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.network(
              "https://matematicon.ro/m/mem/" +
                  path.toString() +
                  enunt.toString() +
                  ".png",
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
