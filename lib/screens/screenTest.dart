import 'package:flutter/material.dart';
import 'package:flt_mem_v1/widgets/test-widget.dart';

class Test extends StatelessWidget {
  const Test({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(child: TestWidget(idx: index));
  }
}
