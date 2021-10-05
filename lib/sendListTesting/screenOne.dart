import 'package:flutter/material.dart';
import 'screenTwo.dart';
import 'model.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'ScreenOne',
      home: ScreenOne(
        todos: List.generate(
          5,
          (i) => Todo(
            'Todo $i',
            'A description of what needs to be done for Todo $i',
          ),
        ),
      ),
    ),
  );
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key, required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDos'),
      ),
      body: ListView.builder(
          itemCount: todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenTwo(),
                    settings: RouteSettings(arguments: todos[index]),
                  ),
                );
              },
            );
          }),
    );
  }
}
