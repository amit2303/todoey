import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  // final Function addNewTask;
  TasksTile({required this.taskTitle,this.isChecked=false,required this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        checkColor: Colors.white,
        activeColor: Colors.lightBlueAccent,
        onChanged:(newValue){
          checkboxCallback(newValue);
        },
      ),
    );
  }
}