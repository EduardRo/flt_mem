import 'dart:collection';

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
  var questions = [
    'what\'s your favorite color?',
    'What\'s your favorite animal?',
  ];
//matricea enunturi si variante de raspuns

//matricea de raspunsuri
  HashMap raspuns = HashMap<int, int>();
  var index = 0;
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      if (questionIndex == 0) {
        questionIndex = 1;
      } else {
        questionIndex = 0;
      }
      index = index + 2;
    });
    setState(() {
      //newMap.update(2,(e)=>index);
      raspuns[index] = index;
    });
    print(raspuns);
  }

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
                textDirection: TextDirection.rtl,
                style: TextStyle(color: getMyColor(count)),
              ),
            ),
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton(
              onPressed: answerQuestion,
              child: Text(
                questions[questionIndex],
                textDirection: TextDirection.rtl,
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
  return Padding(
    padding: const EdgeInsets.all(38.0),
    child: Container(
      child: Text(
        'Count',
        style: TextStyle(color: cont > 2 ? Colors.green : Colors.yellow),
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
