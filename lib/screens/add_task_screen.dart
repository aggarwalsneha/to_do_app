import 'package:flutter/material.dart';
class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  const AddTaskScreen(this.addTaskCallback);


  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      color:const Color(0xff757575),
      child:Container(
        padding: const EdgeInsets.all(20.0),
        decoration:const BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Add Task',
                textAlign: TextAlign.center,
                style:TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
            )),
            TextField(
              cursorHeight: 30.0,
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(child: const Text('Add',style:TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color:Colors.white
            )),
              style: ButtonStyle(backgroundColor:MaterialStateProperty.all<Color>(Colors.pinkAccent) ),
              onPressed: (){
               addTaskCallback(newTaskTitle);
              } ,
            ),
          ],
        )
      )
    );
  }
}
