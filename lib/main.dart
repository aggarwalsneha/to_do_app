import 'package:flutter/material.dart';
import 'package:to_do_app/screens/tasks_screen.dart';

void main() {
  runApp(const ToDoApp()
  );
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: TasksScreen(),
    );
  }
}