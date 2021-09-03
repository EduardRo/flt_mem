import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key, required this.idx, required this.var1})
      : super(key: key);

  final int idx;
  final String var1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(idx.toString()),
          Text(var1.toString()),
        ],
      ),
    );
  }
}
