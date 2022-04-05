import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final  bool isChecked;
  final String taskTitle;
  final Function(void)? checkboxCallback;

   const TaskTile({required this.isChecked,required this.taskTitle,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
  return ListTile(
  title:Text(
      taskTitle,
      style: TextStyle(
    decoration: isChecked ? TextDecoration.lineThrough:null,
  fontSize: 25.0,
  fontFamily: 'Lora',
  )
  ),
  trailing:Checkbox(
    value: isChecked,
    activeColor: Colors.pinkAccent,
    onChanged: checkboxCallback,
  )
  );
  }
  }
