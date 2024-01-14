import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add_tasks_screen.dart';

class TasksList extends StatefulWidget {


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks =[
    Task(name: 'buy milk'),
    Task(name: 'bus bread'),

  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return TasksTile(taskTitle: tasks[index].name,isChecked:tasks[index].isDone,
          checkboxCallback:(checkboxState) {
        setState(() {
          tasks[index].toggleDone();

        });
      });
    },
    itemCount: tasks.length,);
  }
}



// ListView(
// children: [
// TasksTile(taskTitle: tasks[0].name,isChecked: tasks[0].isDone,),
// TasksTile(taskTitle: tasks[1].name,isChecked: tasks[0].isDone,),
//
// ],
// );