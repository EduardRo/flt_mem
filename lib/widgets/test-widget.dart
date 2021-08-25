import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key, required this.idx}) : super(key: key);

  final int idx;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Text(idx.toString())],
      ),
    );
  }
}
