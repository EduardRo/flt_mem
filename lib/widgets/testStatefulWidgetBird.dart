import 'package:flutter/material.dart';
// this is a test --- must be deleted at the end

class Bird extends StatefulWidget {
  const Bird({Key? key, this.color = const Color(0xFFFFE306), this.child})
      : super(key: key);

  final Color color;
  final Widget? child;
  @override
  _BirdState createState() => _BirdState();
}

class _BirdState extends State<Bird> {
  double _size = 1.0;
  void grow() {
    setState(() {
      _size += 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      transform: Matrix4.diagonal3Values(_size, _size, 1.0),
      child: widget.child,
    );
  }
}
