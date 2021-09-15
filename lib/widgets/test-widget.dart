import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget(
      {Key? key,
      required this.idx,
      required this.enunt,
      required this.var1,
      required this.path})
      : super(key: key);

  final int idx;
  final var1;
  final enunt;
  final path;
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        children: [
          Text(idx.toString()),
          Text(
            "https://matematicon.ro/m/mem/" +
                path.toString() +
                var1.toString() +
                ".png",
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.network(
              "https://matematicon.ro/m/mem/" +
                  path.toString() +
                  var1.toString() +
                  ".png",
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.network(
              "https://matematicon.ro/m/mem/" +
                  path.toString() +
                  var1.toString() +
                  ".png",
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Image.network(
              "https://matematicon.ro/m/mem/" +
                  path.toString() +
                  var1.toString() +
                  ".png",
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
