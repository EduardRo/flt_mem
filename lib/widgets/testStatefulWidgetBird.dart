import 'package:flutter/material.dart';

// this is a test --- must be deleted at the end
void main() => runApp(ItemCounter());

class ItemCounter extends StatefulWidget {
  final String name;
  ItemCounter({this.name = 'name'});

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Text(
                '${widget.name}:$count',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: getMyColor(count)),
              ),
            ),
          ),
          Expanded(child: theWidget(count)),
        ],
      ),
    );
  }
}

Color getMyColor(int moneyCounter) {
  if (moneyCounter > 5) {
    return Colors.blue;
  } else {
    return Colors.redAccent;
  }
}

Widget theWidget(int counter) {
  int cont = counter;
  print(cont);
  return Container(
    child: Text(
      'myWidget is show!',
      style: TextStyle(color: cont > 2 ? Colors.green : Colors.yellow),
      textDirection: TextDirection.ltr,
    ),
  );
}
