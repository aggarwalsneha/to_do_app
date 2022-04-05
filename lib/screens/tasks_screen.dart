import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_task_screen.dart';
import 'package:to_do_app/widgets/tasks_list.dart';
import 'package:to_do_app/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);


  @override
  TasksScreenState createState() => TasksScreenState();
  }
  class TasksScreenState extends State<TasksScreen>{
  List<Task> tasks=[
    Task(name:'Complete Todo'),
    Task(name:'Read Interview question'),
    Task(name:'Leetcode question'),
    Task(name:'Study DS'),
  ];
 Widget buildBottomSheet(BuildContext context)
 {
   return SingleChildScrollView(
       child:Container(
         padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
         child: AddTaskScreen((newTaskTitle){
           setState(() {
             tasks.add(Task(name:newTaskTitle));
           });
           Navigator.pop(context);
         }
         ),
       )
   );
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pinkAccent,
        onPressed: (){
          showModalBottomSheet(context: context,
            isScrollControlled: true,
              builder:buildBottomSheet,
          );
      },
        child:const Icon(Icons.add),
      ),
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0,left: 30.0,right:30.0,bottom:30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                    child: Icon(Icons.list,
                      size:30.0,
                      color: Colors.pink,
                    ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text('ToDoS',
                style:TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Pacifico',
                )
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration:const BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(20.0),
                    topRight:Radius.circular(20.0),
                  )
              ),
              child:TasksList(tasks),
            ),
          ),
        ],
      ),
    );
  }

}




